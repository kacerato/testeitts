package org.eclipse.jdt.internal.core.nd.indexer;

import android.icu.text.DateFormat;
import com.bumptech.glide.load.engine.GlideException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ICoreRunnable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobGroup;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.IndexException;
import org.eclipse.jdt.internal.core.nd.java.FileFingerprint;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.nd.java.JavaNames;
import org.eclipse.jdt.internal.core.nd.java.NdResourceFile;
import org.eclipse.jdt.internal.core.nd.java.NdType;
import org.eclipse.jdt.internal.core.nd.java.NdTypeId;
import org.eclipse.jdt.internal.core.nd.java.NdWorkspaceLocation;
import org.eclipse.jdt.internal.core.nd.java.TypeRef;
import org.eclipse.jdt.internal.core.nd.java.model.BinaryTypeDescriptor;
import org.eclipse.jdt.internal.core.nd.java.model.BinaryTypeFactory;
import org.eclipse.jdt.internal.core.nd.java.model.IndexBinaryType;

public final class Indexer {
    public static boolean DEBUG = false;
    public static boolean DEBUG_ALLOCATIONS = false;
    public static boolean DEBUG_INSERTIONS = false;
    public static int DEBUG_LOG_SIZE_MB = 0;
    public static boolean DEBUG_SCHEDULING = false;
    public static boolean DEBUG_SELFTEST = false;
    public static boolean DEBUG_TIMING = false;
    private static final int TOTAL_TICKS_TO_REPORT_DURING_INDEXING = 1000;
    private static Indexer indexer;
    private static final Object mutex = new Object();
    private final FileStateCache fileStateCache;

    private Nd f102556nd;
    private IWorkspaceRoot root;
    private boolean enableAutomaticIndexing = true;
    private boolean indexerDirtiedWhileDisabled = false;
    private final Object automaticIndexingMutex = new Object();
    private Object listenersMutex = new Object();
    private Set<Listener> listeners = Collections.newSetFromMap(new WeakHashMap());
    private JobGroup group = new JobGroup(Messages.Indexer_updating_index_job_name, 1, 1);
    private Job rescanJob = Job.create(Messages.Indexer_updating_index_job_name, new ICoreRunnable() {
        public final void a(IProgressMonitor iProgressMonitor) {
            Indexer.this.lambda$0(iProgressMonitor);
        }
    });
    private Job rebuildIndexJob = Job.create(Messages.Indexer_updating_index_job_name, new ICoreRunnable() {
        public final void a(IProgressMonitor iProgressMonitor) {
            Indexer.this.lambda$1(iProgressMonitor);
        }
    });

    public interface Listener {
        void consume(IndexerEvent indexerEvent);
    }

    public Indexer(Nd nd2, IWorkspaceRoot iWorkspaceRoot) {
        this.f102556nd = nd2;
        this.root = iWorkspaceRoot;
        this.rescanJob.setSystem(true);
        this.rescanJob.setJobGroup(this.group);
        this.rebuildIndexJob.setSystem(true);
        this.rebuildIndexJob.setJobGroup(this.group);
        this.fileStateCache = FileStateCache.getCache(nd2);
    }

    private boolean addClassToIndex(NdResourceFile ndResourceFile, char[] cArr, char[] cArr2, ClassFileReader classFileReader, IProgressMonitor iProgressMonitor) throws ClassFormatException, CoreException {
        boolean z10;
        NdType ndType;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 100);
        ClassFileToIndexConverter classFileToIndexConverter = new ClassFileToIndexConverter(ndResourceFile);
        this.f102556nd.acquireWriteLock(convert.split(5));
        try {
            if (ndResourceFile.isInIndex()) {
                if (DEBUG_INSERTIONS) {
                    Package.logInfo("Inserting " + new String(cArr) + " into " + ndResourceFile.getLocation().getString() + " " + ndResourceFile.address);
                }
                classFileToIndexConverter.addType(classFileReader, cArr, convert.split(45));
                ndResourceFile.setJdkLevel(classFileReader.getVersion());
                z10 = true;
            } else {
                z10 = false;
            }
            this.f102556nd.releaseWriteLock();
            if (DEBUG_SELFTEST && z10) {
                JavaIndex index = JavaIndex.getIndex(this.f102556nd);
                Throwable th2 = null;
                try {
                    IReader acquireReadLock = this.f102556nd.acquireReadLock();
                    try {
                        NdTypeId findType = index.findType(cArr);
                        if (findType != null) {
                            Iterator<NdType> it = findType.getTypes().iterator();
                            while (it.hasNext()) {
                                ndType = it.next();
                                if (ndType.getResourceFile().equals(ndResourceFile)) {
                                    break;
                                }
                            }
                        }
                        ndType = null;
                        if (ndType != null) {
                            IndexTester.testType(classFileReader, new IndexBinaryType(TypeRef.create(ndType), cArr2));
                        } else {
                            Package.logInfo("Could not find class in index immediately after indexing it: " + new String(cArr2));
                        }
                        if (acquireReadLock != null) {
                            acquireReadLock.close();
                        }
                    } finally {
                    }
                } catch (Throwable th3) {
                    if (0 == 0) {
                        throw th3;
                    }
                    if (null != th3) {
                        try {
                            th2.addSuppressed(th3);
                        } catch (RuntimeException e10) {
                            Package.log("Error during indexing: " + new String(cArr2), e10);
                        }
                    }
                    throw null;
                }
            }
            return z10;
        } catch (Throwable th4) {
            this.f102556nd.releaseWriteLock();
            throw th4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x013a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0229  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int addElement(NdResourceFile ndResourceFile, IJavaElement iJavaElement, IProgressMonitor iProgressMonitor) throws JavaModelException, FileNotFoundException {
        JarPackageFragmentRoot jarPackageFragmentRoot;
        IProgressMonitor iProgressMonitor2;
        Throwable th2;
        int i10;
        int i11;
        ZipFile zipFile;
        Throwable th3;
        InputStream inputStream;
        int i12;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor);
        int i13 = 1;
        if (!(iJavaElement instanceof JarPackageFragmentRoot)) {
            if (!(iJavaElement instanceof IOrdinaryClassFile)) {
                Package.logInfo("Unable to index elements of type " + ((Object) iJavaElement));
                return 0;
            }
            IOrdinaryClassFile iOrdinaryClassFile = (IOrdinaryClassFile) iJavaElement;
            SubMonitor split = convert.split(1);
            BinaryTypeDescriptor createDescriptor = BinaryTypeFactory.createDescriptor(iOrdinaryClassFile);
            try {
                ClassFileReader rawReadTypeTestForExists = BinaryTypeFactory.rawReadTypeTestForExists(createDescriptor, true, false);
                if (rawReadTypeTestForExists != null) {
                    return addClassToIndex(ndResourceFile, createDescriptor.fieldDescriptor, createDescriptor.indexPath, rawReadTypeTestForExists, split) ? 1 : 0;
                }
            } catch (CoreException | ClassFormatException e10) {
                Package.log("Unable to index " + iOrdinaryClassFile.toString(), e10);
            }
            return 0;
        }
        JarPackageFragmentRoot jarPackageFragmentRoot2 = (JarPackageFragmentRoot) iJavaElement;
        IPath path = jarPackageFragmentRoot2.getPath();
        IPath locationForElement = JavaIndex.getLocationForElement(jarPackageFragmentRoot2);
        try {
            ZipFile zipFile2 = new ZipFile(JavaModelManager.getLocalFile(jarPackageFragmentRoot2.getPath()));
            try {
                if (JavaModelManager.throwIoExceptionsInGetZipFile) {
                    try {
                        if (DEBUG) {
                            Package.logInfo("Throwing simulated IOException for error handling test case");
                        }
                        throw new IOException();
                    } catch (Throwable th4) {
                        th2 = th4;
                        zipFile = zipFile2;
                        jarPackageFragmentRoot = jarPackageFragmentRoot2;
                        iProgressMonitor2 = null;
                        i11 = 0;
                        try {
                            zipFile.close();
                            throw th2;
                        } catch (Throwable th5) {
                            th = th5;
                            i10 = i11;
                            if (th2 != null) {
                            }
                        }
                    }
                } else {
                    convert.setWorkRemaining(zipFile2.size());
                    int i14 = 5;
                    this.f102556nd.acquireWriteLock(convert.split(5));
                    try {
                        ndResourceFile.allocateZipEntries(zipFile2.size());
                        this.f102556nd.releaseWriteLock();
                        Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                        i11 = 0;
                        while (entries.hasMoreElements()) {
                            try {
                                SubMonitor workRemaining = convert.split(i13).setWorkRemaining(2);
                                ZipEntry nextElement = entries.nextElement();
                                String name = nextElement.getName();
                                boolean isClassFileName = Util.isClassFileName(name);
                                try {
                                    if (!nextElement.isDirectory() && isClassFileName) {
                                        jarPackageFragmentRoot = jarPackageFragmentRoot2;
                                        if (!nextElement.isDirectory()) {
                                            try {
                                                workRemaining.split(1);
                                                if (isClassFileName) {
                                                    String substring = name.substring(0, name.length() - 6);
                                                    BinaryTypeDescriptor binaryTypeDescriptor = new BinaryTypeDescriptor(locationForElement.toString().toCharArray(), JavaNames.binaryNameToFieldDescriptor(substring.toCharArray()), path.toString().toCharArray(), (String.valueOf(jarPackageFragmentRoot.getHandleIdentifier()) + '|' + substring).toCharArray());
                                                    try {
                                                        i12 = i14;
                                                        zipFile = zipFile2;
                                                        iProgressMonitor2 = null;
                                                    } catch (CoreException | ClassFormatException e11) {
                                                        e = e11;
                                                        i12 = i14;
                                                        zipFile = zipFile2;
                                                    }
                                                    try {
                                                        try {
                                                            if (addClassToIndex(ndResourceFile, binaryTypeDescriptor.fieldDescriptor, binaryTypeDescriptor.indexPath, new ClassFileReader(Util.getZipEntryByteContent(nextElement, zipFile2), binaryTypeDescriptor.indexPath, true), workRemaining.split(1))) {
                                                                i11++;
                                                            }
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            th2 = th;
                                                            zipFile.close();
                                                            throw th2;
                                                        }
                                                    } catch (CoreException e12) {
                                                        e = e12;
                                                        Package.log("Unable to index " + binaryTypeDescriptor.toString(), e);
                                                        i14 = i12;
                                                        jarPackageFragmentRoot2 = jarPackageFragmentRoot;
                                                        zipFile2 = zipFile;
                                                        i13 = 1;
                                                    } catch (ClassFormatException e13) {
                                                        e = e13;
                                                        Package.log("Unable to index " + binaryTypeDescriptor.toString(), e);
                                                        i14 = i12;
                                                        jarPackageFragmentRoot2 = jarPackageFragmentRoot;
                                                        zipFile2 = zipFile;
                                                        i13 = 1;
                                                    }
                                                    i14 = i12;
                                                    jarPackageFragmentRoot2 = jarPackageFragmentRoot;
                                                    zipFile2 = zipFile;
                                                    i13 = 1;
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                zipFile = zipFile2;
                                                iProgressMonitor2 = null;
                                                th2 = th;
                                                zipFile.close();
                                                throw th2;
                                            }
                                        }
                                        i12 = i14;
                                        zipFile = zipFile2;
                                        i14 = i12;
                                        jarPackageFragmentRoot2 = jarPackageFragmentRoot;
                                        zipFile2 = zipFile;
                                        i13 = 1;
                                    }
                                    if (ndResourceFile.isInIndex()) {
                                        try {
                                            if (DEBUG_INSERTIONS) {
                                                StringBuilder sb2 = new StringBuilder("Inserting non-class file ");
                                                sb2.append(name);
                                                sb2.append(" into ");
                                                sb2.append(ndResourceFile.getLocation().getString());
                                                sb2.append(" ");
                                                jarPackageFragmentRoot = jarPackageFragmentRoot2;
                                                try {
                                                    sb2.append(ndResourceFile.address);
                                                    Package.logInfo(sb2.toString());
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    zipFile = zipFile2;
                                                    iProgressMonitor2 = null;
                                                    throw th;
                                                }
                                            } else {
                                                jarPackageFragmentRoot = jarPackageFragmentRoot2;
                                            }
                                            ndResourceFile.addZipEntry(name);
                                            if (name.equals("META-INF/MANIFEST.MF")) {
                                                try {
                                                    inputStream = zipFile2.getInputStream(nextElement);
                                                } catch (Throwable th9) {
                                                    th = th9;
                                                    th3 = null;
                                                }
                                                try {
                                                    ndResourceFile.setManifestContent(Util.getInputStreamAsCharArray(inputStream, -1, "UTF-8"));
                                                    if (inputStream != null) {
                                                        inputStream.close();
                                                    }
                                                } catch (Throwable th10) {
                                                    th3 = th10;
                                                    if (inputStream == null) {
                                                        throw th3;
                                                    }
                                                    try {
                                                        inputStream.close();
                                                        throw th3;
                                                    } catch (Throwable th11) {
                                                        th = th11;
                                                        if (th3 != null) {
                                                        }
                                                    }
                                                    th = th11;
                                                    if (th3 != null) {
                                                        throw th;
                                                    }
                                                    if (th3 == th) {
                                                        throw th3;
                                                    }
                                                    th3.addSuppressed(th);
                                                    throw th3;
                                                }
                                            }
                                        } catch (Throwable th12) {
                                            th = th12;
                                            jarPackageFragmentRoot = jarPackageFragmentRoot2;
                                        }
                                    } else {
                                        jarPackageFragmentRoot = jarPackageFragmentRoot2;
                                    }
                                    if (!nextElement.isDirectory()) {
                                    }
                                    i12 = i14;
                                    zipFile = zipFile2;
                                    i14 = i12;
                                    jarPackageFragmentRoot2 = jarPackageFragmentRoot;
                                    zipFile2 = zipFile;
                                    i13 = 1;
                                } catch (Throwable th13) {
                                    th = th13;
                                    zipFile = zipFile2;
                                    jarPackageFragmentRoot = jarPackageFragmentRoot2;
                                }
                                this.f102556nd.acquireWriteLock(convert.split(i14));
                            } catch (Throwable th14) {
                                th = th14;
                                zipFile = zipFile2;
                                jarPackageFragmentRoot = jarPackageFragmentRoot2;
                            }
                        }
                        try {
                            zipFile2.close();
                            if (DEBUG && i11 == 0) {
                                Package.logInfo("The path " + ((Object) iJavaElement.getPath()) + " contained no class files");
                            }
                            return i11;
                        } catch (Throwable th15) {
                            th = th15;
                            jarPackageFragmentRoot = jarPackageFragmentRoot2;
                            i10 = i11;
                            th2 = null;
                            iProgressMonitor2 = null;
                            if (th2 != null) {
                                throw th;
                            }
                            if (th2 == th) {
                                throw th2;
                            }
                            try {
                                th2.addSuppressed(th);
                                throw th2;
                            } catch (FileNotFoundException e14) {
                                throw e14;
                            } catch (ZipException e15) {
                                Package.log("The zip file " + ((Object) jarPackageFragmentRoot.getPath()) + " was corrupt", e15);
                                this.f102556nd.acquireWriteLock(iProgressMonitor2);
                                try {
                                    if (ndResourceFile.isInIndex()) {
                                        ndResourceFile.setFlags(1);
                                    }
                                    this.f102556nd.releaseWriteLock();
                                    i11 = i10;
                                } finally {
                                    this.f102556nd.releaseWriteLock();
                                }
                            } catch (IOException e16) {
                                throw new JavaModelException(e16, IJavaModelStatusConstants.IO_EXCEPTION);
                            } catch (CoreException e17) {
                                throw new JavaModelException(e17);
                            }
                        }
                    } catch (Throwable th16) {
                        zipFile = zipFile2;
                        jarPackageFragmentRoot = jarPackageFragmentRoot2;
                        iProgressMonitor2 = null;
                        try {
                            throw th16;
                        } catch (Throwable th17) {
                            th = th17;
                            th2 = th;
                            i11 = 0;
                            zipFile.close();
                            throw th2;
                        }
                    }
                }
            } catch (Throwable th18) {
                th = th18;
                zipFile = zipFile2;
                jarPackageFragmentRoot = jarPackageFragmentRoot2;
                iProgressMonitor2 = null;
            }
        } catch (Throwable th19) {
            th = th19;
            jarPackageFragmentRoot = jarPackageFragmentRoot2;
            iProgressMonitor2 = null;
            th2 = null;
            i10 = 0;
        }
    }

    private void attachWorkspaceFilesToResource(List<IJavaElement> list, NdResourceFile ndResourceFile) {
        Iterator<IJavaElement> it = list.iterator();
        while (it.hasNext()) {
            IResource resource = it.next().getResource();
            if (resource != null) {
                new NdWorkspaceLocation(this.f102556nd, ndResourceFile, resource.getFullPath().toString().toCharArray());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int cleanGarbage(long j10, Collection<IPath> collection, IProgressMonitor iProgressMonitor) {
        Throwable th2;
        Indexer indexer2 = this;
        JavaIndex index = JavaIndex.getIndex(indexer2.f102556nd);
        HashSet hashSet = new HashSet();
        hashSet.addAll(collection);
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 3);
        ArrayList arrayList = new ArrayList();
        ArrayList<NdResourceFile> arrayList2 = new ArrayList();
        long usageTimestampUpdatePeriod = getUsageTimestampUpdatePeriod();
        long garbageCleanupTimeout = getGarbageCleanupTimeout();
        try {
            IReader acquireReadLock = indexer2.f102556nd.acquireReadLock();
            try {
                List<NdResourceFile> allResourceFiles = index.getAllResourceFiles();
                int size = allResourceFiles.size();
                SubMonitor workRemaining = convert.split(1).setWorkRemaining(allResourceFiles.size());
                Iterator<NdResourceFile> it = allResourceFiles.iterator();
                while (it.hasNext()) {
                    NdResourceFile next = it.next();
                    workRemaining.split(1);
                    if (next.isDoneIndexing()) {
                        Iterator<NdResourceFile> it2 = it;
                        Path path = new Path(next.getLocation().toString());
                        long timeLastUsed = j10 - next.getTimeLastUsed();
                        if (hashSet.contains(path)) {
                            if (timeLastUsed > usageTimestampUpdatePeriod) {
                                arrayList2.add(next);
                            }
                        } else if (timeLastUsed > garbageCleanupTimeout) {
                            arrayList.add(next);
                        }
                        indexer2 = this;
                        it = it2;
                    } else {
                        arrayList.add(next);
                        indexer2 = this;
                    }
                }
                if (acquireReadLock != null) {
                    acquireReadLock.close();
                }
                int i10 = 1;
                SubMonitor workRemaining2 = convert.split(1).setWorkRemaining(arrayList.size());
                Iterator<E> it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    indexer2.deleteResource((NdResourceFile) it3.next(), workRemaining2.split(1));
                    i10 = 1;
                }
                SubMonitor workRemaining3 = convert.split(i10).setWorkRemaining(arrayList2.size());
                for (NdResourceFile ndResourceFile : arrayList2) {
                    indexer2.f102556nd.acquireWriteLock(workRemaining3.split(i10));
                    try {
                        if (ndResourceFile.isInIndex()) {
                            ndResourceFile.setTimeLastUsed(j10);
                        }
                        indexer2.f102556nd.releaseWriteLock();
                        i10 = 1;
                    } catch (Throwable th3) {
                        indexer2.f102556nd.releaseWriteLock();
                        throw th3;
                    }
                }
                return size;
            } catch (Throwable th4) {
                th2 = th4;
                if (acquireReadLock == null) {
                    throw th2;
                }
                try {
                    acquireReadLock.close();
                    throw th2;
                } catch (Throwable th5) {
                    th = th5;
                    if (th2 != null) {
                        throw th;
                    }
                    if (th2 == th) {
                        throw th2;
                    }
                    th2.addSuppressed(th);
                    throw th2;
                }
                th = th5;
                if (th2 != null) {
                }
            }
        } catch (Throwable th6) {
            th = th6;
            th2 = null;
        }
    }

    private void fireChange(IndexerEvent indexerEvent) {
        Set<Listener> set;
        synchronized (this.listenersMutex) {
            set = this.listeners;
        }
        Iterator<Listener> it = set.iterator();
        while (it.hasNext()) {
            it.next().consume(indexerEvent);
        }
    }

    private void fireDelta(Set<IPath> set, IProgressMonitor iProgressMonitor) {
        boolean z10;
        CoreException e10;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 1);
        IProject[] projects = this.root.getProjects();
        ArrayList<IProject> arrayList = new ArrayList();
        for (IProject iProject : projects) {
            if (iProject.isOpen()) {
                arrayList.add(iProject);
            }
        }
        JavaElementDelta javaElementDelta = new JavaElementDelta(JavaModelManager.getJavaModelManager().getJavaModel());
        SubMonitor workRemaining = convert.split(1).setWorkRemaining(arrayList.size());
        boolean z11 = false;
        for (IProject iProject2 : arrayList) {
            workRemaining.split(1);
            try {
                if (iProject2.isOpen() && iProject2.isNatureEnabled(JavaCore.NATURE_ID)) {
                    for (IPackageFragmentRoot iPackageFragmentRoot : JavaCore.create(iProject2).getAllPackageFragmentRoots()) {
                        if (iPackageFragmentRoot.isArchive() && set.contains(JavaIndex.getLocationForElement(iPackageFragmentRoot))) {
                            try {
                                javaElementDelta.changed(iPackageFragmentRoot, 32769);
                                z11 = true;
                            } catch (CoreException e11) {
                                e10 = e11;
                                z10 = true;
                                Package.log((Throwable) e10);
                                z11 = z10;
                            }
                        }
                    }
                }
            } catch (CoreException e12) {
                z10 = z11;
                e10 = e12;
            }
        }
        if (z11) {
            fireChange(IndexerEvent.createChange(javaElementDelta));
        }
    }

    private static long getGarbageCleanupTimeout() {
        return Platform.getPreferencesService().getLong(JavaCore.PLUGIN_ID, "garbageCleanupTimeoutMs", 259200000L, (IScopeContext[]) null);
    }

    private List<IPath> getIndexablesThatHaveChanged(Collection<IPath> collection, Map<IPath, FileFingerprint.FingerprintTestResult> map) {
        ArrayList arrayList = new ArrayList();
        for (IPath iPath : collection) {
            if (!map.get(iPath).matches()) {
                arrayList.add(iPath);
            }
        }
        return arrayList;
    }

    public static Indexer getInstance() {
        Indexer indexer2;
        synchronized (mutex) {
            try {
                if (indexer == null) {
                    indexer = new Indexer(JavaIndex.getGlobalNd(), ResourcesPlugin.getWorkspace().getRoot());
                }
                indexer2 = indexer;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return indexer2;
    }

    private static long getUsageTimestampUpdatePeriod() {
        return getGarbageCleanupTimeout() / 4;
    }

    public void lambda$0(IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor);
        try {
            rescan(convert);
        } catch (IndexException e10) {
            Package.log("Database corruption detected during indexing. Deleting and rebuilding the index.", e10);
            lambda$1(convert);
        }
    }

    private int rescanArchive(long j10, IPath iPath, List<IJavaElement> list, FileFingerprint fileFingerprint, IProgressMonitor iProgressMonitor) throws JavaModelException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 100);
        int i10 = 0;
        if (list.isEmpty()) {
            return 0;
        }
        IJavaElement iJavaElement = list.get(0);
        String obj = iPath.toString();
        JavaIndex index = JavaIndex.getIndex(this.f102556nd);
        this.f102556nd.acquireWriteLock(convert.split(5));
        try {
            NdResourceFile ndResourceFile = new NdResourceFile(this.f102556nd);
            ndResourceFile.setTimeLastUsed(j10);
            ndResourceFile.setLocation(obj);
            IPath locationForElement = JavaIndex.getLocationForElement((IPackageFragmentRoot) iJavaElement.getAncestor(3));
            if (!locationForElement.equals(iPath)) {
                ndResourceFile.setPackageFragmentRoot(locationForElement.toString().toCharArray());
            }
            attachWorkspaceFilesToResource(list, ndResourceFile);
            this.f102556nd.releaseWriteLock();
            if (DEBUG) {
                Package.logInfo("rescanning " + iPath.toString() + ", " + ((Object) fileFingerprint));
            }
            try {
                if (fileFingerprint.fileExists()) {
                    i10 = addElement(ndResourceFile, iJavaElement, convert.split(50));
                }
            } catch (FileNotFoundException unused) {
                fileFingerprint = FileFingerprint.getEmpty();
            } catch (RuntimeException e10) {
                if (DEBUG) {
                    Package.log("A RuntimeException occurred while indexing " + obj, e10);
                }
                throw e10;
            } catch (JavaModelException unused2) {
                if (DEBUG) {
                    Package.log("the file " + obj + " cannot be indexed due to a recoverable error", null);
                }
                this.f102556nd.acquireWriteLock(convert.split(5));
                try {
                    if (ndResourceFile.isInIndex()) {
                        ndResourceFile.delete();
                    }
                    return 0;
                } finally {
                }
            }
            if (DEBUG && !fileFingerprint.fileExists()) {
                Package.log("the file " + obj + " was not indexed because it does not exist", null);
            }
            List<NdResourceFile> emptyList = Collections.emptyList();
            this.f102556nd.acquireWriteLock(convert.split(1));
            try {
                if (ndResourceFile.isInIndex()) {
                    ndResourceFile.setFingerprint(fileFingerprint);
                    emptyList = index.findResourcesWithPath(obj);
                    this.fileStateCache.remove(ndResourceFile.getLocation().getString());
                }
                this.f102556nd.releaseWriteLock();
                SubMonitor workRemaining = convert.split(40).setWorkRemaining(emptyList.size() - 1);
                for (NdResourceFile ndResourceFile2 : emptyList) {
                    if (!ndResourceFile2.equals(ndResourceFile)) {
                        deleteResource(ndResourceFile2, workRemaining.split(1));
                    }
                }
                return i10;
            } finally {
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private Map<IPath, FileFingerprint.FingerprintTestResult> testFingerprints(Collection<IPath> collection, IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, collection.size());
        HashMap hashMap = new HashMap();
        for (IPath iPath : collection) {
            hashMap.put(iPath, testForChanges(iPath, convert.split(1)));
        }
        return hashMap;
    }

    private FileFingerprint.FingerprintTestResult testForChanges(IPath iPath, IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 100);
        JavaIndex index = JavaIndex.getIndex(this.f102556nd);
        String obj = iPath.toString();
        convert.split(50);
        FileFingerprint empty = FileFingerprint.getEmpty();
        this.f102556nd.acquireReadLock();
        try {
            NdResourceFile resourceFile = index.getResourceFile(obj.toCharArray());
            if (resourceFile != null) {
                empty = resourceFile.getFingerprint();
            }
            this.f102556nd.releaseReadLock();
            FileFingerprint.FingerprintTestResult test = empty.test(iPath, convert.split(40));
            if (resourceFile != null && test.matches() && test.needsNewFingerprint()) {
                this.f102556nd.acquireWriteLock(convert.split(10));
                try {
                    if (resourceFile.isInIndex()) {
                        if (DEBUG) {
                            Package.logInfo("Writing updated fingerprint for " + ((Object) iPath) + ": " + ((Object) test.getNewFingerprint()));
                        }
                        resourceFile.setFingerprint(test.getNewFingerprint());
                    }
                    this.f102556nd.releaseWriteLock();
                } catch (Throwable th2) {
                    this.f102556nd.releaseWriteLock();
                    throw th2;
                }
            }
            return test;
        } catch (Throwable th3) {
            this.f102556nd.releaseReadLock();
            throw th3;
        }
    }

    private void updateResourceMappings(Map<IPath, List<IJavaElement>> map, IProgressMonitor iProgressMonitor) {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, map.o().size());
        JavaIndex index = JavaIndex.getIndex(this.f102556nd);
        for (Map.Entry<IPath, List<IJavaElement>> entry : map.entrySet()) {
            this.f102556nd.acquireWriteLock(convert.split(1).setWorkRemaining(10).split(1));
            try {
                NdResourceFile resourceFile = index.getResourceFile(entry.getKey().toString().toCharArray());
                if (resourceFile != null) {
                    attachWorkspaceFilesToResource(entry.getValue(), resourceFile);
                }
            } finally {
                this.f102556nd.releaseWriteLock();
            }
        }
    }

    public void addListener(Listener listener) {
        synchronized (this.listenersMutex) {
            Set<Listener> set = this.listeners;
            Set<Listener> newSetFromMap = Collections.newSetFromMap(new WeakHashMap());
            this.listeners = newSetFromMap;
            newSetFromMap.addAll(set);
            this.listeners.add(listener);
        }
    }

    public void deleteResource(NdResourceFile ndResourceFile, IProgressMonitor iProgressMonitor) {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 10);
        this.f102556nd.acquireWriteLock(convert.split(1));
        try {
            if (ndResourceFile.isInIndex()) {
                ndResourceFile.markAsInvalid();
            }
            this.f102556nd.releaseWriteLock();
            while (true) {
                this.f102556nd.acquireWriteLock(convert.split(1));
                try {
                    if (!ndResourceFile.isInIndex()) {
                        break;
                    }
                    int typeCount = ndResourceFile.getTypeCount();
                    convert.setWorkRemaining(typeCount + 1);
                    if (typeCount == 0) {
                        break;
                    }
                    NdType type = ndResourceFile.getType(typeCount - 1);
                    if (DEBUG_INSERTIONS) {
                        Package.logInfo("Deleting " + type.getTypeId().getFieldDescriptor().getString() + " from " + ndResourceFile.getLocation().getString() + " " + ndResourceFile.address);
                    }
                    type.delete();
                    this.f102556nd.releaseWriteLock();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f102556nd.releaseWriteLock();
            this.f102556nd.acquireWriteLock(convert.split(1));
            try {
                if (ndResourceFile.isInIndex()) {
                    ndResourceFile.delete();
                }
            } finally {
            }
        } finally {
        }
    }

    public void enableAutomaticIndexing(boolean z10) {
        synchronized (this.automaticIndexingMutex) {
            try {
                if (this.enableAutomaticIndexing == z10) {
                    return;
                }
                this.enableAutomaticIndexing = z10;
                boolean z11 = z10 && this.indexerDirtiedWhileDisabled;
                if (JavaIndex.isEnabled()) {
                    if (z11) {
                        this.rescanJob.schedule();
                    }
                    if (z10) {
                        return;
                    }
                    try {
                        this.rescanJob.join(0L, (IProgressMonitor) null);
                    } catch (OperationCanceledException | InterruptedException unused) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void makeDirty(IPath iPath) {
        this.fileStateCache.remove(iPath.toString());
        rescanAll();
    }

    public void makeWorkspacePathDirty(IPath iPath) {
        this.fileStateCache.clear();
        rescanAll();
    }

    public void lambda$1(IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 100);
        this.rescanJob.cancel();
        try {
            this.rescanJob.join(0L, convert.split(1));
        } catch (InterruptedException unused) {
        }
        this.f102556nd.acquireWriteLock(convert.split(1));
        try {
            this.f102556nd.clear(convert.split(2));
            this.f102556nd.getDB().flush();
            this.f102556nd.releaseWriteLock();
            if (JavaIndex.isEnabled()) {
                rescan(convert.split(97));
            }
        } catch (Throwable th2) {
            this.f102556nd.releaseWriteLock();
            throw th2;
        }
    }

    public void removeListener(Listener listener) {
        synchronized (this.listenersMutex) {
            try {
                if (this.listeners.contains(listener)) {
                    Set<Listener> set = this.listeners;
                    Set<Listener> newSetFromMap = Collections.newSetFromMap(new WeakHashMap());
                    this.listeners = newSetFromMap;
                    newSetFromMap.addAll(set);
                    this.listeners.remove(listener);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void requestRebuildIndex() {
        this.rebuildIndexJob.schedule();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void rescan(IProgressMonitor iProgressMonitor) throws CoreException {
        int i10;
        long j10;
        double d10;
        long j11;
        double d11;
        double d12;
        double size;
        long j12;
        double size2;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 100);
        Database db2 = this.f102556nd.getDB();
        db2.resetCacheCounters();
        db2.getLog().setBufferSize(DEBUG_LOG_SIZE_MB);
        synchronized (this.automaticIndexingMutex) {
            i10 = 0;
            this.indexerDirtiedWhileDisabled = false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (DEBUG) {
            Package.logInfo("Indexer running rescan");
        }
        this.fileStateCache.clear();
        WorkspaceSnapshot create = WorkspaceSnapshot.create(this.root, convert.split(1));
        Set<IPath> allLocations = create.allLocations();
        long currentTimeMillis2 = System.currentTimeMillis();
        int cleanGarbage = cleanGarbage(currentTimeMillis, allLocations, convert.split(1));
        long currentTimeMillis3 = System.currentTimeMillis();
        Map<IPath, FileFingerprint.FingerprintTestResult> testFingerprints = testFingerprints(allLocations, convert.split(1));
        Set<IPath> hashSet = new HashSet<>(getIndexablesThatHaveChanged(allLocations, testFingerprints));
        long currentTimeMillis4 = System.currentTimeMillis();
        Iterator<E> it = hashSet.iterator();
        WorkspaceSnapshot workspaceSnapshot = create;
        long j13 = 0;
        while (it.hasNext()) {
            j13 += testFingerprints.get((IPath) it.next()).getNewFingerprint().getSize();
            workspaceSnapshot = workspaceSnapshot;
            hashSet = hashSet;
            currentTimeMillis = currentTimeMillis;
            db2 = db2;
        }
        double d13 = j13 == 0 ? 0.0d : 1000.0d / j13;
        SubMonitor workRemaining = convert.split(94).setWorkRemaining(1000);
        for (IPath iPath : hashSet) {
            Database database = db2;
            long j14 = currentTimeMillis;
            WorkspaceSnapshot workspaceSnapshot2 = workspaceSnapshot;
            i10 += rescanArchive(j14, iPath, workspaceSnapshot2.get(iPath), testFingerprints.get(iPath).getNewFingerprint(), workRemaining.split((int) (testFingerprints.get(iPath).getNewFingerprint().getSize() * d13)));
            hashSet = hashSet;
            testFingerprints = testFingerprints;
            cleanGarbage = cleanGarbage;
            workRemaining = workRemaining;
            currentTimeMillis = j14;
            j13 = j13;
            workspaceSnapshot = workspaceSnapshot2;
            db2 = database;
        }
        long currentTimeMillis5 = System.currentTimeMillis();
        Map<IPath, List<IJavaElement>> hashMap = new HashMap<>();
        for (IPath iPath2 : allLocations) {
            Map<IPath, List<IJavaElement>> map = hashMap;
            Database database2 = db2;
            long j15 = currentTimeMillis;
            long j16 = j13;
            int i11 = i10;
            if (hashSet.contains(iPath2)) {
                db2 = database2;
                i10 = i11;
                currentTimeMillis = j15;
                j13 = j16;
                hashMap = map;
            } else {
                map.put(iPath2, workspaceSnapshot.get(iPath2));
                hashMap = map;
                i10 = i11;
                currentTimeMillis = j15;
                j13 = j16;
                db2 = database2;
            }
        }
        updateResourceMappings(hashMap, convert.split(1));
        this.f102556nd.acquireWriteLock(convert.split(1));
        try {
            this.f102556nd.getDB().flush();
            this.f102556nd.releaseWriteLock();
            fireDelta(hashSet, convert.split(1));
            if (DEBUG) {
                Package.logInfo("Rescan finished");
            }
            long currentTimeMillis6 = System.currentTimeMillis();
            Database database3 = db2;
            long j17 = currentTimeMillis2 - currentTimeMillis;
            long j18 = currentTimeMillis;
            long j19 = currentTimeMillis3 - currentTimeMillis2;
            long j20 = j13;
            long j21 = currentTimeMillis4 - currentTimeMillis3;
            Set<IPath> set = hashSet;
            long j22 = currentTimeMillis5 - currentTimeMillis4;
            long j23 = currentTimeMillis6 - currentTimeMillis5;
            if (cleanGarbage == 0) {
                j10 = j19;
                d10 = 0.0d;
            } else {
                j10 = j19;
                d10 = j19 / cleanGarbage;
            }
            if (i10 == 0) {
                j11 = j22;
                d11 = 0.0d;
            } else {
                j11 = j22;
                d11 = j22 / i10;
            }
            if (allLocations.size() == 0) {
                d12 = d11;
                size = 0.0d;
            } else {
                d12 = d11;
                size = j21 / allLocations.size();
            }
            if (hashMap.size() == 0) {
                j12 = j23;
                size2 = 0.0d;
            } else {
                j12 = j23;
                size2 = j23 / hashMap.size();
            }
            if (DEBUG_TIMING) {
                DecimalFormat decimalFormat = new DecimalFormat("#0.###");
                DecimalFormat decimalFormat2 = new DecimalFormat("#0.###");
                long j24 = j10;
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS\n");
                PrintStream printStream = System.out;
                double d14 = size2;
                StringBuilder sb2 = new StringBuilder("Indexing done at ");
                Map<IPath, List<IJavaElement>> map2 = hashMap;
                int i12 = i10;
                sb2.append(simpleDateFormat.format(new Date(currentTimeMillis6)));
                sb2.append("  Located ");
                sb2.append(allLocations.size());
                sb2.append(" indexables in ");
                sb2.append(j17);
                sb2.append(DateFormat.MINUTE_SECOND);
                printStream.println(sb2.toString());
                if (cleanGarbage != 0) {
                    printStream.println("  Collected garbage from " + cleanGarbage + " files in " + j24 + "ms, average time = " + decimalFormat.format(d10) + DateFormat.MINUTE_SECOND);
                }
                printStream.println("  Tested " + allLocations.size() + " fingerprints in " + j21 + "ms, average time = " + decimalFormat.format(size) + DateFormat.MINUTE_SECOND);
                if (i12 != 0) {
                    printStream.println("  Indexed " + i12 + " classes (from " + set.size() + " files containing " + Database.formatByteString(j20) + ") in " + j11 + "ms, average time per class = " + decimalFormat.format(d12) + DateFormat.MINUTE_SECOND);
                }
                if (map2.size() != 0) {
                    printStream.println("  Updated " + map2.size() + " paths in " + j12 + "ms, average time = " + decimalFormat.format(d14) + DateFormat.MINUTE_SECOND);
                }
                printStream.println(GlideException.a.f59088e + ((Object) database3.getChunkStats()));
                long cacheHits = database3.getCacheHits();
                long cacheMisses = database3.getCacheMisses();
                long j25 = cacheHits + cacheMisses;
                printStream.println("  Cache misses = " + cacheMisses + " (" + decimalFormat2.format(j25 == 0 ? 0.0d : (cacheMisses * 100.0d) / j25) + "%)");
                long bytesRead = database3.getBytesRead();
                long bytesWritten = database3.getBytesWritten();
                double d15 = (double) (currentTimeMillis6 - j18);
                long cumulativeFlushTimeMs = database3.getCumulativeFlushTimeMs();
                double d16 = d15 != 0.0d ? (cumulativeFlushTimeMs * 100.0d) / d15 : 0.0d;
                printStream.println("  Reads = " + Database.formatByteString(bytesRead) + ", writes = " + Database.formatByteString(bytesWritten));
                double averageReadBytesPerMs = database3.getAverageReadBytesPerMs() * 1000.0d;
                double averageWriteBytesPerMs = database3.getAverageWriteBytesPerMs() * 1000.0d;
                if (bytesRead > 409600) {
                    printStream.println("  Read speed = " + Database.formatByteString((long) averageReadBytesPerMs) + "/s");
                }
                if (bytesWritten > 409600) {
                    printStream.println("  Write speed = " + Database.formatByteString((long) averageWriteBytesPerMs) + "/s");
                }
                printStream.println("  Time spent performing flushes = " + decimalFormat.format(cumulativeFlushTimeMs) + "ms (" + decimalFormat2.format(d16) + "%)");
                StringBuilder sb3 = new StringBuilder("  Total indexing time = ");
                sb3.append(decimalFormat.format(d15));
                sb3.append(DateFormat.MINUTE_SECOND);
                printStream.println(sb3.toString());
            }
            if (!DEBUG_ALLOCATIONS) {
                return;
            }
            Throwable th2 = null;
            try {
                IReader acquireReadLock = this.f102556nd.acquireReadLock();
                try {
                    this.f102556nd.getDB().reportFreeBlocks();
                    this.f102556nd.getDB().getMemoryStats().printMemoryStats(this.f102556nd.getTypeRegistry());
                    if (acquireReadLock != null) {
                        acquireReadLock.close();
                    }
                } finally {
                }
            } catch (Throwable th3) {
                if (0 == 0) {
                    throw th3;
                }
                if (null == th3) {
                    throw null;
                }
                th2.addSuppressed(th3);
            }
        } catch (Throwable th4) {
            this.f102556nd.releaseWriteLock();
            throw th4;
        }
    }

    public void rescanAll() {
        if (DEBUG_SCHEDULING) {
            Package.logInfo("Scheduling rescanAll now");
        }
        synchronized (this.automaticIndexingMutex) {
            try {
                if (!this.enableAutomaticIndexing) {
                    if (!this.indexerDirtiedWhileDisabled) {
                        this.indexerDirtiedWhileDisabled = true;
                    }
                } else if (JavaIndex.isEnabled()) {
                    this.rescanJob.schedule();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void waitForIndex(IProgressMonitor iProgressMonitor) {
        boolean z10;
        try {
            synchronized (this.automaticIndexingMutex) {
                try {
                    z10 = !this.enableAutomaticIndexing && this.indexerDirtiedWhileDisabled;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z10) {
                this.rescanJob.schedule();
            }
            this.rescanJob.join(0L, iProgressMonitor);
        } catch (InterruptedException unused) {
            throw new OperationCanceledException();
        }
    }

    public void makeDirty(IProject iProject) {
        this.fileStateCache.clear();
        rescanAll();
    }

    public void waitForIndex(int i10, IProgressMonitor iProgressMonitor) {
        if (JavaIndex.isEnabled()) {
            if (i10 == 2) {
                if (this.rescanJob.getState() != 0) {
                    throw new OperationCanceledException();
                }
            } else {
                if (i10 != 3) {
                    return;
                }
                waitForIndex(iProgressMonitor);
            }
        }
    }
}
