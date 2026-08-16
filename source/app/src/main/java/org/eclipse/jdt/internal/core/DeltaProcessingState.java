package org.eclipse.jdt.internal.core;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.nd.indexer.Indexer;
import org.eclipse.jdt.internal.core.nd.indexer.IndexerEvent;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.util.Util;

public class DeltaProcessingState implements IResourceChangeListener, Indexer.Listener {
    private Set<IJavaElement> externalElementsToRefresh;
    public Hashtable<IPath, Long> externalTimeStamps;
    private Set<String> javaProjectNamesCache;
    public IElementChangedListener[] elementChangedListeners = new IElementChangedListener[5];
    public int[] elementChangedListenerMasks = new int[5];
    public int elementChangedListenerCount = 0;
    public IResourceChangeListener[] preResourceChangeListeners = new IResourceChangeListener[1];
    public int[] preResourceChangeEventMasks = new int[1];
    public int preResourceChangeListenerCount = 0;
    private ThreadLocal<DeltaProcessor> deltaProcessors = new ThreadLocal<>();
    public Map<IPath, DeltaProcessor.RootInfo> roots = new LinkedHashMap();
    public Map<IPath, List<DeltaProcessor.RootInfo>> otherRoots = new HashMap();
    public Map<IPath, DeltaProcessor.RootInfo> oldRoots = new LinkedHashMap();
    public Map<IPath, List<DeltaProcessor.RootInfo>> oldOtherRoots = new HashMap();
    public Map<IPath, IPath> sourceAttachments = new HashMap();
    public Map<IJavaProject, IJavaProject[]> projectDependencies = new HashMap();
    public boolean rootsAreStale = true;
    private Set<Thread> initializingThreads = Collections.synchronizedSet(new HashSet());
    private Map<IProject, ClasspathChange> classpathChanges = new LinkedHashMap();
    private Map<JavaProject, ClasspathValidation> classpathValidations = new LinkedHashMap();
    private Set<IJavaProject> projectReferenceChanges = new LinkedHashSet();
    private Map<JavaProject, ExternalFolderChange> externalFolderChanges = new LinkedHashMap();

    public static final class RootInfos {
        final Map<IPath, DeltaProcessor.RootInfo> roots = new LinkedHashMap();
        final Map<IPath, List<DeltaProcessor.RootInfo>> otherRoots = new HashMap();
        final Map<IPath, IPath> sourceAttachments = new HashMap();
        final Map<IJavaProject, IJavaProject[]> projectDependencies = new HashMap();
    }

    private RootInfos getRootInfos(boolean z10) {
        IClasspathEntry[] iClasspathEntryArr;
        int i10;
        int i11;
        IClasspathEntry[] iClasspathEntryArr2;
        IPath iPath;
        String str;
        Path sourceAttachmentPath;
        IJavaProject[] iJavaProjectArr;
        RootInfos rootInfos = new RootInfos();
        JavaModel javaModel = JavaModelManager.getJavaModelManager().getJavaModel();
        try {
            for (IJavaProject iJavaProject : javaModel.getJavaProjects()) {
                JavaProject javaProject = (JavaProject) iJavaProject;
                if (z10) {
                    try {
                        JavaModelManager.PerProjectInfo perProjectInfo = javaProject.getPerProjectInfo();
                        javaProject.resolveClasspath(perProjectInfo, true, false);
                        iClasspathEntryArr = perProjectInfo.resolvedClasspath;
                    } catch (JavaModelException unused) {
                    }
                } else {
                    iClasspathEntryArr = javaProject.getResolvedClasspath();
                }
                IClasspathEntry[] iClasspathEntryArr3 = iClasspathEntryArr;
                int length = iClasspathEntryArr3.length;
                int i12 = 0;
                while (i12 < length) {
                    IClasspathEntry iClasspathEntry = iClasspathEntryArr3[i12];
                    if (iClasspathEntry.getEntryKind() == 2) {
                        IJavaProject javaProject2 = javaModel.getJavaProject(iClasspathEntry.getPath().segment(0));
                        IJavaProject[] iJavaProjectArr2 = rootInfos.projectDependencies.get(javaProject2);
                        if (iJavaProjectArr2 == null) {
                            iJavaProjectArr = new IJavaProject[]{javaProject};
                        } else {
                            int length2 = iJavaProjectArr2.length;
                            IJavaProject[] iJavaProjectArr3 = new IJavaProject[length2 + 1];
                            System.arraycopy(iJavaProjectArr2, 0, iJavaProjectArr3, 0, length2);
                            iJavaProjectArr3[length2] = javaProject;
                            iJavaProjectArr = iJavaProjectArr3;
                        }
                        rootInfos.projectDependencies.put(javaProject2, iJavaProjectArr);
                        i10 = i12;
                        i11 = length;
                        iClasspathEntryArr2 = iClasspathEntryArr3;
                    } else {
                        IPath path = iClasspathEntry.getPath();
                        if (rootInfos.roots.get(path) == null) {
                            ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntry;
                            iPath = path;
                            i10 = i12;
                            i11 = length;
                            iClasspathEntryArr2 = iClasspathEntryArr3;
                            rootInfos.roots.put(iPath, new DeltaProcessor.RootInfo(javaProject, path, classpathEntry.fullInclusionPatternChars(), classpathEntry.fullExclusionPatternChars(), iClasspathEntry.getEntryKind()));
                        } else {
                            i10 = i12;
                            i11 = length;
                            iClasspathEntryArr2 = iClasspathEntryArr3;
                            List<DeltaProcessor.RootInfo> list = rootInfos.otherRoots.get(path);
                            if (list == null) {
                                list = new ArrayList<>();
                                rootInfos.otherRoots.put(path, list);
                            }
                            ClasspathEntry classpathEntry2 = (ClasspathEntry) iClasspathEntry;
                            iPath = path;
                            list.add(new DeltaProcessor.RootInfo(javaProject, path, classpathEntry2.fullInclusionPatternChars(), classpathEntry2.fullExclusionPatternChars(), iClasspathEntry.getEntryKind()));
                        }
                        if (iClasspathEntry.getEntryKind() == 1) {
                            try {
                                str = Util.getSourceAttachmentProperty(iPath);
                            } catch (JavaModelException e10) {
                                e10.printStackTrace();
                                str = null;
                            }
                            if (str != null) {
                                int lastIndexOf = str.lastIndexOf(42);
                                sourceAttachmentPath = lastIndexOf < 0 ? new Path(str) : new Path(str.substring(0, lastIndexOf));
                            } else {
                                sourceAttachmentPath = iClasspathEntry.getSourceAttachmentPath();
                            }
                            if (sourceAttachmentPath != null) {
                                rootInfos.sourceAttachments.put(sourceAttachmentPath, iPath);
                            }
                        }
                    }
                    i12 = i10 + 1;
                    length = i11;
                    iClasspathEntryArr3 = iClasspathEntryArr2;
                }
            }
            return rootInfos;
        } catch (JavaModelException unused2) {
            return null;
        }
    }

    private File getTimeStampsFile() {
        return JavaCore.getPlugin().getStateLocation().append("externalLibsTimeStamps").toFile();
    }

    public ClasspathChange addClasspathChange(IProject iProject, IClasspathEntry[] iClasspathEntryArr, IPath iPath, IClasspathEntry[] iClasspathEntryArr2) {
        ClasspathChange classpathChange;
        synchronized (this.classpathChanges) {
            try {
                classpathChange = this.classpathChanges.get(iProject);
                if (classpathChange == null) {
                    classpathChange = new ClasspathChange((JavaProject) JavaModelManager.getJavaModelManager().getJavaModel().getJavaProject((IResource) iProject), iClasspathEntryArr, iPath, iClasspathEntryArr2);
                    this.classpathChanges.put(iProject, classpathChange);
                } else {
                    if (classpathChange.oldRawClasspath == null) {
                        classpathChange.oldRawClasspath = iClasspathEntryArr;
                    }
                    if (classpathChange.oldOutputLocation == null) {
                        classpathChange.oldOutputLocation = iPath;
                    }
                    if (classpathChange.oldResolvedClasspath == null) {
                        classpathChange.oldResolvedClasspath = iClasspathEntryArr2;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return classpathChange;
    }

    public synchronized ClasspathValidation addClasspathValidation(JavaProject javaProject) {
        ClasspathValidation classpathValidation;
        classpathValidation = this.classpathValidations.get(javaProject);
        if (classpathValidation == null) {
            classpathValidation = new ClasspathValidation(javaProject);
            this.classpathValidations.put(javaProject, classpathValidation);
        }
        return classpathValidation;
    }

    public synchronized void addElementChangedListener(IElementChangedListener iElementChangedListener, int i10) {
        int i11 = 0;
        while (true) {
            try {
                int i12 = this.elementChangedListenerCount;
                if (i11 >= i12) {
                    IElementChangedListener[] iElementChangedListenerArr = this.elementChangedListeners;
                    int length = iElementChangedListenerArr.length;
                    if (length == i12) {
                        int i13 = length * 2;
                        IElementChangedListener[] iElementChangedListenerArr2 = new IElementChangedListener[i13];
                        this.elementChangedListeners = iElementChangedListenerArr2;
                        System.arraycopy(iElementChangedListenerArr, 0, iElementChangedListenerArr2, 0, length);
                        int[] iArr = this.elementChangedListenerMasks;
                        int[] iArr2 = new int[i13];
                        this.elementChangedListenerMasks = iArr2;
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                    }
                    IElementChangedListener[] iElementChangedListenerArr3 = this.elementChangedListeners;
                    int i14 = this.elementChangedListenerCount;
                    iElementChangedListenerArr3[i14] = iElementChangedListener;
                    this.elementChangedListenerMasks[i14] = i10;
                    this.elementChangedListenerCount = i14 + 1;
                    return;
                }
                if (this.elementChangedListeners[i11] == iElementChangedListener) {
                    int[] iArr3 = this.elementChangedListenerMasks;
                    int length2 = iArr3.length;
                    int[] iArr4 = new int[length2];
                    this.elementChangedListenerMasks = iArr4;
                    System.arraycopy(iArr3, 0, iArr4, 0, length2);
                    int[] iArr5 = this.elementChangedListenerMasks;
                    iArr5[i11] = i10 | iArr5[i11];
                    return;
                }
                i11++;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized void addExternalFolderChange(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr) {
        if (this.externalFolderChanges.get(javaProject) == null) {
            this.externalFolderChanges.put(javaProject, new ExternalFolderChange(javaProject, iClasspathEntryArr));
        }
    }

    public synchronized void addForRefresh(IJavaElement iJavaElement) {
        try {
            if (this.externalElementsToRefresh == null) {
                this.externalElementsToRefresh = new LinkedHashSet();
            }
            this.externalElementsToRefresh.add(iJavaElement);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void addPreResourceChangedListener(IResourceChangeListener iResourceChangeListener, int i10) {
        int i11 = 0;
        while (true) {
            try {
                int i12 = this.preResourceChangeListenerCount;
                if (i11 >= i12) {
                    IResourceChangeListener[] iResourceChangeListenerArr = this.preResourceChangeListeners;
                    int length = iResourceChangeListenerArr.length;
                    if (length == i12) {
                        int i13 = length * 2;
                        IResourceChangeListener[] iResourceChangeListenerArr2 = new IResourceChangeListener[i13];
                        this.preResourceChangeListeners = iResourceChangeListenerArr2;
                        System.arraycopy(iResourceChangeListenerArr, 0, iResourceChangeListenerArr2, 0, length);
                        int[] iArr = this.preResourceChangeEventMasks;
                        int[] iArr2 = new int[i13];
                        this.preResourceChangeEventMasks = iArr2;
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                    }
                    IResourceChangeListener[] iResourceChangeListenerArr3 = this.preResourceChangeListeners;
                    int i14 = this.preResourceChangeListenerCount;
                    iResourceChangeListenerArr3[i14] = iResourceChangeListener;
                    this.preResourceChangeEventMasks[i14] = i10;
                    this.preResourceChangeListenerCount = i14 + 1;
                    return;
                }
                if (this.preResourceChangeListeners[i11] == iResourceChangeListener) {
                    int[] iArr3 = this.preResourceChangeEventMasks;
                    iArr3[i11] = i10 | iArr3[i11];
                    return;
                }
                i11++;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized void addProjectReferenceChange(IJavaProject iJavaProject) {
        this.projectReferenceChanges.add(iJavaProject);
    }

    @Override
    public void consume(IndexerEvent indexerEvent) {
        if (JavaIndex.isEnabled()) {
            DeltaProcessor deltaProcessor = getDeltaProcessor();
            JavaElementDelta javaElementDelta = (JavaElementDelta) indexerEvent.getDelta();
            javaElementDelta.ignoreFromTests = true;
            deltaProcessor.notifyAndFire(javaElementDelta);
            this.deltaProcessors.set(null);
        }
    }

    public void doNotUse() {
        this.deltaProcessors.set(null);
    }

    public IJavaProject findJavaProject(String str) {
        if (getOldJavaProjecNames().contains(str)) {
            return JavaModelManager.getJavaModelManager().getJavaModel().getJavaProject(str);
        }
        return null;
    }

    public ClasspathChange getClasspathChange(IProject iProject) {
        ClasspathChange classpathChange;
        synchronized (this.classpathChanges) {
            classpathChange = this.classpathChanges.get(iProject);
        }
        return classpathChange;
    }

    public DeltaProcessor getDeltaProcessor() {
        DeltaProcessor deltaProcessor = this.deltaProcessors.get();
        if (deltaProcessor != null) {
            return deltaProcessor;
        }
        DeltaProcessor deltaProcessor2 = new DeltaProcessor(this, JavaModelManager.getJavaModelManager());
        this.deltaProcessors.set(deltaProcessor2);
        return deltaProcessor2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        if (r3 != null) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Hashtable<IPath, Long> getExternalLibTimeStamps() {
        DataInputStream dataInputStream;
        IOException e10;
        int readInt;
        if (this.externalTimeStamps == null) {
            Hashtable<IPath, Long> hashtable = new Hashtable<>();
            File timeStampsFile = getTimeStampsFile();
            DataInputStream dataInputStream2 = null;
            try {
                dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(timeStampsFile)));
                try {
                    try {
                        readInt = dataInputStream.readInt();
                    } catch (IOException e11) {
                        e10 = e11;
                        if (timeStampsFile.exists()) {
                            Util.log(e10, "Unable to read external time stamps");
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream2 = dataInputStream;
                    if (dataInputStream2 != null) {
                        try {
                            dataInputStream2.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e12) {
                dataInputStream = null;
                e10 = e12;
            } catch (Throwable th3) {
                th = th3;
                if (dataInputStream2 != null) {
                }
                throw th;
            }
            while (true) {
                int i10 = readInt - 1;
                if (readInt > 0) {
                    hashtable.put(Path.fromPortableString(dataInputStream.readUTF()), Long.valueOf(dataInputStream.readLong()));
                    readInt = i10;
                }
                try {
                    break;
                } catch (IOException unused2) {
                    this.externalTimeStamps = hashtable;
                    return this.externalTimeStamps;
                }
            }
            dataInputStream.close();
        }
        return this.externalTimeStamps;
    }

    public synchronized Set<String> getOldJavaProjecNames() {
        Set<String> set = this.javaProjectNamesCache;
        if (set != null) {
            return set;
        }
        try {
            IJavaProject[] javaProjects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (IJavaProject iJavaProject : javaProjects) {
                linkedHashSet.add(iJavaProject.getElementName());
            }
            this.javaProjectNamesCache = linkedHashSet;
            return linkedHashSet;
        } catch (JavaModelException unused) {
            return this.javaProjectNamesCache;
        }
    }

    public void initializeRoots(boolean z10) {
        RootInfos rootInfos;
        boolean z11 = false;
        if (this.rootsAreStale) {
            Thread currentThread = Thread.currentThread();
            try {
                if (!this.initializingThreads.add(currentThread)) {
                    return;
                }
                try {
                    JavaModelManager.getJavaModelManager().forceBatchInitializations(z10);
                    rootInfos = getRootInfos(false);
                    this.initializingThreads.remove(currentThread);
                } catch (Throwable th2) {
                    th = th2;
                    z11 = true;
                    if (z11) {
                        this.initializingThreads.remove(currentThread);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            rootInfos = null;
        }
        synchronized (this) {
            try {
                this.oldRoots = this.roots;
                this.oldOtherRoots = this.otherRoots;
                if (this.rootsAreStale && rootInfos != null) {
                    this.roots = rootInfos.roots;
                    this.otherRoots = rootInfos.otherRoots;
                    this.sourceAttachments = rootInfos.sourceAttachments;
                    this.projectDependencies = rootInfos.projectDependencies;
                    this.rootsAreStale = false;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    public synchronized void initializeRootsWithPreviousSession() {
        RootInfos rootInfos = getRootInfos(true);
        if (rootInfos != null) {
            this.roots = rootInfos.roots;
            this.otherRoots = rootInfos.otherRoots;
            this.sourceAttachments = rootInfos.sourceAttachments;
            this.projectDependencies = rootInfos.projectDependencies;
            this.rootsAreStale = false;
        }
    }

    public Map<IProject, ClasspathChange> removeAllClasspathChanges() {
        Map<IProject, ClasspathChange> map;
        synchronized (this.classpathChanges) {
            map = this.classpathChanges;
            this.classpathChanges = new LinkedHashMap(map.size());
        }
        return map;
    }

    public synchronized ClasspathValidation[] removeClasspathValidations() {
        int size = this.classpathValidations.size();
        if (size == 0) {
            return null;
        }
        ClasspathValidation[] classpathValidationArr = new ClasspathValidation[size];
        this.classpathValidations.values().toArray(classpathValidationArr);
        this.classpathValidations.clear();
        return classpathValidationArr;
    }

    public synchronized void removeElementChangedListener(IElementChangedListener iElementChangedListener) {
        for (int i10 = 0; i10 < this.elementChangedListenerCount; i10++) {
            try {
                IElementChangedListener[] iElementChangedListenerArr = this.elementChangedListeners;
                if (iElementChangedListenerArr[i10] == iElementChangedListener) {
                    int length = iElementChangedListenerArr.length;
                    IElementChangedListener[] iElementChangedListenerArr2 = new IElementChangedListener[length];
                    System.arraycopy(iElementChangedListenerArr, 0, iElementChangedListenerArr2, 0, i10);
                    int[] iArr = new int[length];
                    System.arraycopy(this.elementChangedListenerMasks, 0, iArr, 0, i10);
                    int i11 = (this.elementChangedListenerCount - i10) - 1;
                    if (i11 > 0) {
                        int i12 = i10 + 1;
                        System.arraycopy(this.elementChangedListeners, i12, iElementChangedListenerArr2, i10, i11);
                        System.arraycopy(this.elementChangedListenerMasks, i12, iArr, i10, i11);
                    }
                    this.elementChangedListeners = iElementChangedListenerArr2;
                    this.elementChangedListenerMasks = iArr;
                    this.elementChangedListenerCount--;
                    return;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized Set<IJavaElement> removeExternalElementsToRefresh() {
        Set<IJavaElement> set;
        set = this.externalElementsToRefresh;
        this.externalElementsToRefresh = null;
        return set;
    }

    public synchronized ExternalFolderChange[] removeExternalFolderChanges() {
        int size = this.externalFolderChanges.size();
        if (size == 0) {
            return null;
        }
        ExternalFolderChange[] externalFolderChangeArr = new ExternalFolderChange[size];
        this.externalFolderChanges.values().toArray(externalFolderChangeArr);
        this.externalFolderChanges.clear();
        return externalFolderChangeArr;
    }

    public synchronized void removePreResourceChangedListener(IResourceChangeListener iResourceChangeListener) {
        for (int i10 = 0; i10 < this.preResourceChangeListenerCount; i10++) {
            try {
                IResourceChangeListener[] iResourceChangeListenerArr = this.preResourceChangeListeners;
                if (iResourceChangeListenerArr[i10] == iResourceChangeListener) {
                    int length = iResourceChangeListenerArr.length;
                    IResourceChangeListener[] iResourceChangeListenerArr2 = new IResourceChangeListener[length];
                    int[] iArr = new int[length];
                    System.arraycopy(iResourceChangeListenerArr, 0, iResourceChangeListenerArr2, 0, i10);
                    System.arraycopy(this.preResourceChangeEventMasks, 0, iArr, 0, i10);
                    int i11 = (this.preResourceChangeListenerCount - i10) - 1;
                    if (i11 > 0) {
                        int i12 = i10 + 1;
                        System.arraycopy(this.preResourceChangeListeners, i12, iResourceChangeListenerArr2, i10, i11);
                        System.arraycopy(this.preResourceChangeEventMasks, i12, iArr, i10, i11);
                    }
                    this.preResourceChangeListeners = iResourceChangeListenerArr2;
                    this.preResourceChangeEventMasks = iArr;
                    this.preResourceChangeListenerCount--;
                    return;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized Set<IJavaProject> removeProjectReferenceChanges() {
        Set<IJavaProject> set;
        set = this.projectReferenceChanges;
        this.projectReferenceChanges = new HashSet();
        return set;
    }

    public synchronized void resetOldJavaProjectNames() {
        this.javaProjectNamesCache = null;
    }

    public void resourceChanged(final IResourceChangeEvent iResourceChangeEvent) {
        for (int i10 = 0; i10 < this.preResourceChangeListenerCount; i10++) {
            final IResourceChangeListener iResourceChangeListener = this.preResourceChangeListeners[i10];
            if ((this.preResourceChangeEventMasks[i10] & iResourceChangeEvent.getType()) != 0) {
                SafeRunner.run(new ISafeRunnable() {
                    public void handleException(Throwable th2) {
                        Util.log(th2, "Exception occurred in listener of pre Java resource change notification");
                    }

                    public void run() throws Exception {
                        iResourceChangeListener.resourceChanged(iResourceChangeEvent);
                    }
                });
            }
        }
        try {
            getDeltaProcessor().resourceChanged(iResourceChangeEvent);
            if (iResourceChangeEvent.getType() == 1) {
                this.deltaProcessors.set(null);
            } else {
                getDeltaProcessor().overridenEventType = -1;
            }
        } catch (Throwable th2) {
            if (iResourceChangeEvent.getType() == 1) {
                this.deltaProcessors.set(null);
            } else {
                getDeltaProcessor().overridenEventType = -1;
            }
            throw th2;
        }
    }

    public void saveExternalLibTimeStamps() throws CoreException {
        IOException iOException;
        DataOutputStream dataOutputStream;
        if (this.externalTimeStamps == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        if (this.roots != null) {
            Enumeration<IPath> keys = this.externalTimeStamps.keys();
            while (keys.hasMoreElements()) {
                IPath nextElement = keys.nextElement();
                if (this.roots.get(nextElement) == null) {
                    hashSet.add(nextElement);
                }
            }
        }
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(getTimeStampsFile())));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e10) {
            iOException = e10;
        }
        try {
            dataOutputStream.writeInt(this.externalTimeStamps.size() - hashSet.size());
            for (Map.Entry<IPath, Long> entry : this.externalTimeStamps.entrySet()) {
                IPath key = entry.getKey();
                if (!hashSet.contains(key)) {
                    dataOutputStream.writeUTF(key.toPortableString());
                    dataOutputStream.writeLong(entry.getValue().longValue());
                }
            }
            try {
                dataOutputStream.close();
            } catch (IOException unused) {
            }
        } catch (IOException e11) {
            iOException = e11;
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, 4, "Problems while saving timestamps", iOException));
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream2 = dataOutputStream;
            if (dataOutputStream2 != null) {
                try {
                    dataOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    public synchronized void updateRoots(IPath iPath, IResourceDelta iResourceDelta, DeltaProcessor deltaProcessor) {
        Map<IPath, DeltaProcessor.RootInfo> map;
        Map<IPath, List<DeltaProcessor.RootInfo>> map2;
        IResourceDelta findMember;
        try {
            if (iResourceDelta.getKind() == 2) {
                map = this.oldRoots;
                map2 = this.oldOtherRoots;
            } else {
                map = this.roots;
                map2 = this.otherRoots;
            }
            int segmentCount = iPath.segmentCount();
            boolean z10 = true;
            if (segmentCount != 1) {
                z10 = false;
            }
            for (Map.Entry<IPath, DeltaProcessor.RootInfo> entry : map.entrySet()) {
                IPath key = entry.getKey();
                if (iPath.isPrefixOf(key) && !iPath.equals(key) && (findMember = iResourceDelta.findMember(key.removeFirstSegments(segmentCount))) != null) {
                    DeltaProcessor.RootInfo value = entry.getValue();
                    if (!z10 || !value.project.getPath().isPrefixOf(key)) {
                        deltaProcessor.updateCurrentDeltaAndIndex(findMember, 3, value);
                    }
                    List<DeltaProcessor.RootInfo> list = map2.get(key);
                    if (list != null) {
                        for (DeltaProcessor.RootInfo rootInfo : list) {
                            if (!z10 || !rootInfo.project.getPath().isPrefixOf(key)) {
                                deltaProcessor.updateCurrentDeltaAndIndex(findMember, 3, rootInfo);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
