package org.eclipse.jdt.internal.core.search.indexing;

import java.io.IOException;
import java.net.URI;
import java.util.HashSet;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class IndexAllProject extends IndexRequest {
    IProject project;

    public IndexAllProject(IProject iProject, IndexManager indexManager) {
        super(iProject.getFullPath(), indexManager);
        this.project = iProject;
    }

    public boolean equals(Object obj) {
        if (obj instanceof IndexAllProject) {
            return this.project.equals(((IndexAllProject) obj).project);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0236 A[Catch: all -> 0x004d, TryCatch #8 {all -> 0x004d, blocks: (B:25:0x0036, B:38:0x003d, B:40:0x0047, B:27:0x0057, B:29:0x005f, B:32:0x0069, B:35:0x0077, B:43:0x007c, B:70:0x0232, B:72:0x0236, B:73:0x024f, B:80:0x025d, B:82:0x0261, B:83:0x027a), top: B:11:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0261 A[Catch: all -> 0x004d, TryCatch #8 {all -> 0x004d, blocks: (B:25:0x0036, B:38:0x003d, B:40:0x0047, B:27:0x0057, B:29:0x005f, B:32:0x0069, B:35:0x0077, B:43:0x007c, B:70:0x0232, B:72:0x0236, B:73:0x024f, B:80:0x025d, B:82:0x0261, B:83:0x027a), top: B:11:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x028a  */
    /* JADX WARN: Type inference failed for: r14v11, types: [org.eclipse.jdt.internal.compiler.ISourceElementRequestor] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r1v19, types: [org.eclipse.jdt.internal.core.search.indexing.IndexManager] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [int] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean execute(IProgressMonitor iProgressMonitor) {
        ReadWriteMonitor readWriteMonitor;
        ReadWriteMonitor readWriteMonitor2;
        IClasspathEntry[] iClasspathEntryArr;
        ReadWriteMonitor readWriteMonitor3;
        JavaProject javaProject;
        int i10;
        IWorkspaceRoot iWorkspaceRoot;
        String str;
        final SimpleLookupTable simpleLookupTable;
        int i11;
        int i12;
        boolean z10 = true;
        if (this.isCancelled || (iProgressMonitor != null && iProgressMonitor.isCanceled())) {
            return true;
        }
        if (!this.project.isAccessible()) {
            return true;
        }
        ReadWriteMonitor readWriteMonitor4 = null;
        ReadWriteMonitor readWriteMonitor5 = null;
        boolean z11 = false;
        try {
            try {
                JavaProject javaProject2 = (JavaProject) JavaCore.create(this.project);
                IClasspathEntry[] rawClasspath = javaProject2.getRawClasspath();
                int length = rawClasspath.length;
                IClasspathEntry[] iClasspathEntryArr2 = new IClasspathEntry[length];
                int i13 = 0;
                int i14 = 0;
                while (i13 < length) {
                    JavaProject javaProject3 = javaProject2;
                    int i15 = i14;
                    IClasspathEntry iClasspathEntry = rawClasspath[i13];
                    if (iClasspathEntry.getEntryKind() == 3) {
                        i14 = i15 + 1;
                        iClasspathEntryArr2[i15] = iClasspathEntry;
                    } else {
                        i14 = i15;
                    }
                    i13++;
                    javaProject2 = javaProject3;
                    z10 = true;
                    readWriteMonitor5 = null;
                    z11 = false;
                }
                try {
                    if (i14 == 0) {
                        IPath path = javaProject2.getPath();
                        for (int i16 = z11 ? 1 : 0; i16 < length; i16++) {
                            IClasspathEntry iClasspathEntry2 = rawClasspath[i16];
                            if (iClasspathEntry2.getEntryKind() == z10 && iClasspathEntry2.getPath().equals(path)) {
                                this.manager.indexLibrary(path, this.project, ((ClasspathEntry) iClasspathEntry2).getLibraryIndexLocation());
                                return z10;
                            }
                        }
                        Index indexForUpdate = this.manager.getIndexForUpdate(this.containerPath, z10, z10);
                        if (indexForUpdate != null) {
                            this.manager.saveIndex(indexForUpdate);
                        }
                        return z10;
                    }
                    if (i14 != length) {
                        IClasspathEntry[] iClasspathEntryArr3 = new IClasspathEntry[i14];
                        System.arraycopy(iClasspathEntryArr2, z11 ? 1 : 0, iClasspathEntryArr3, z11 ? 1 : 0, i14);
                        iClasspathEntryArr = iClasspathEntryArr3;
                    } else {
                        iClasspathEntryArr = iClasspathEntryArr2;
                    }
                    Index indexForUpdate2 = this.manager.getIndexForUpdate(this.containerPath, z10, z10);
                    if (indexForUpdate2 == null) {
                        return z10;
                    }
                    ReadWriteMonitor readWriteMonitor6 = indexForUpdate2.monitor;
                    if (readWriteMonitor6 == null) {
                        if (readWriteMonitor6 != null) {
                            readWriteMonitor6.exitRead();
                        }
                        return z10;
                    }
                    try {
                        readWriteMonitor6.enterRead();
                        String[] queryDocumentNames = indexForUpdate2.queryDocumentNames("");
                        int length2 = queryDocumentNames == null ? z11 ? 1 : 0 : queryDocumentNames.length;
                        SimpleLookupTable simpleLookupTable2 = new SimpleLookupTable(length2 == 0 ? 33 : length2 + 11);
                        String str2 = "DELETED";
                        if (queryDocumentNames != null) {
                            for (int i17 = z11 ? 1 : 0; i17 < length2; i17++) {
                                try {
                                    simpleLookupTable2.put(queryDocumentNames[i17], "DELETED");
                                } catch (IOException e10) {
                                    e = e10;
                                    readWriteMonitor2 = readWriteMonitor6;
                                    if (JobManager.VERBOSE) {
                                    }
                                    this.manager.removeIndex(this.containerPath);
                                    if (readWriteMonitor2 != null) {
                                    }
                                } catch (CoreException e11) {
                                    e = e11;
                                    readWriteMonitor = readWriteMonitor6;
                                    if (JobManager.VERBOSE) {
                                    }
                                    this.manager.removeIndex(this.containerPath);
                                    if (readWriteMonitor != null) {
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    readWriteMonitor4 = readWriteMonitor6;
                                    if (readWriteMonitor4 != null) {
                                    }
                                    throw th;
                                }
                            }
                        }
                        final long indexLastModified = length2 == 0 ? 0L : indexForUpdate2.getIndexLastModified();
                        IWorkspaceRoot root = this.project.getWorkspace().getRoot();
                        int i18 = z11 ? 1 : 0;
                        ?? r14 = readWriteMonitor5;
                        while (i18 < i14) {
                            if (this.isCancelled) {
                                readWriteMonitor6.exitRead();
                                return z11;
                            }
                            IClasspathEntry iClasspathEntry3 = iClasspathEntryArr[i18];
                            IResource findMember = root.findMember(iClasspathEntry3.getPath());
                            if (findMember != null) {
                                final HashSet hashSet = new HashSet();
                                if (findMember.getType() == 4) {
                                    hashSet.add(javaProject2.getOutputLocation());
                                    for (int i19 = 0; i19 < i14; i19++) {
                                        IPath outputLocation = iClasspathEntryArr[i19].getOutputLocation();
                                        if (outputLocation != null) {
                                            hashSet.add(outputLocation);
                                        }
                                    }
                                }
                                final boolean z12 = !hashSet.isEmpty();
                                final char[][] fullInclusionPatternChars = ((ClasspathEntry) iClasspathEntry3).fullInclusionPatternChars();
                                final char[][] fullExclusionPatternChars = ((ClasspathEntry) iClasspathEntry3).fullExclusionPatternChars();
                                if (length2 == 0) {
                                    javaProject = javaProject2;
                                    i10 = i18;
                                    iWorkspaceRoot = root;
                                    str = str2;
                                    final SimpleLookupTable simpleLookupTable3 = simpleLookupTable2;
                                    simpleLookupTable = simpleLookupTable2;
                                    i11 = length2;
                                    findMember.accept(new IResourceProxyVisitor() {
                                        public boolean visit(IResourceProxy iResourceProxy) {
                                            if (IndexAllProject.this.isCancelled) {
                                                return false;
                                            }
                                            int type = iResourceProxy.getType();
                                            if (type != 1) {
                                                if (type == 2) {
                                                    if (fullExclusionPatternChars != null && fullInclusionPatternChars == null && Util.isExcluded(iResourceProxy.requestFullPath(), fullInclusionPatternChars, fullExclusionPatternChars, true)) {
                                                        return false;
                                                    }
                                                    if (z12 && hashSet.contains(iResourceProxy.requestFullPath())) {
                                                        return false;
                                                    }
                                                }
                                                return true;
                                            }
                                            if (Util.isJavaLikeFileName(iResourceProxy.getName())) {
                                                IFile requestResource = iResourceProxy.requestResource();
                                                char[][] cArr = fullExclusionPatternChars;
                                                if (!(cArr == null && fullInclusionPatternChars == null) && Util.isExcluded(requestResource, fullInclusionPatternChars, cArr)) {
                                                    return false;
                                                }
                                                simpleLookupTable3.put(Util.relativePath(requestResource.getFullPath(), 1), requestResource);
                                            }
                                            return false;
                                        }
                                    }, 0);
                                } else {
                                    javaProject = javaProject2;
                                    i10 = i18;
                                    iWorkspaceRoot = root;
                                    str = str2;
                                    simpleLookupTable = simpleLookupTable2;
                                    i11 = length2;
                                    readWriteMonitor3 = readWriteMonitor6;
                                    i12 = i14;
                                    try {
                                        findMember.accept(new IResourceProxyVisitor() {
                                            public boolean visit(IResourceProxy iResourceProxy) throws CoreException {
                                                String str3;
                                                URI locationURI;
                                                if (IndexAllProject.this.isCancelled) {
                                                    return false;
                                                }
                                                int type = iResourceProxy.getType();
                                                if (type != 1) {
                                                    if (type == 2) {
                                                        if (!(fullExclusionPatternChars == null && fullInclusionPatternChars == null) && Util.isExcluded(iResourceProxy.requestResource(), fullInclusionPatternChars, fullExclusionPatternChars)) {
                                                            return false;
                                                        }
                                                        if (z12 && hashSet.contains(iResourceProxy.requestFullPath())) {
                                                            return false;
                                                        }
                                                    }
                                                    return true;
                                                }
                                                if (!Util.isJavaLikeFileName(iResourceProxy.getName()) || (locationURI = (str3 = (IFile) iResourceProxy.requestResource()).getLocationURI()) == null) {
                                                    return false;
                                                }
                                                char[][] cArr = fullExclusionPatternChars;
                                                if (!(cArr == null && fullInclusionPatternChars == null) && Util.isExcluded(str3, fullInclusionPatternChars, cArr)) {
                                                    return false;
                                                }
                                                String relativePath = Util.relativePath(str3.getFullPath(), 1);
                                                SimpleLookupTable simpleLookupTable4 = simpleLookupTable;
                                                if (simpleLookupTable4.get(relativePath) != null && indexLastModified >= EFS.getStore(locationURI).fetchInfo().getLastModified()) {
                                                    str3 = "OK";
                                                }
                                                simpleLookupTable4.put(relativePath, str3);
                                                return false;
                                            }
                                        }, 0);
                                        i18 = i10 + 1;
                                        i14 = i12;
                                        readWriteMonitor6 = readWriteMonitor3;
                                        javaProject2 = javaProject;
                                        root = iWorkspaceRoot;
                                        str2 = str;
                                        simpleLookupTable2 = simpleLookupTable;
                                        length2 = i11;
                                        z10 = true;
                                        r14 = 0;
                                        z11 = false;
                                    } catch (IOException e12) {
                                        e = e12;
                                        readWriteMonitor2 = readWriteMonitor3;
                                        if (JobManager.VERBOSE) {
                                            Util.verbose("-> failed to index " + ((Object) this.project) + " because of the following exception:", System.err);
                                            e.printStackTrace();
                                        }
                                        this.manager.removeIndex(this.containerPath);
                                        if (readWriteMonitor2 != null) {
                                            return false;
                                        }
                                        readWriteMonitor2.exitRead();
                                        return false;
                                    } catch (CoreException e13) {
                                        e = e13;
                                        readWriteMonitor = readWriteMonitor3;
                                        if (JobManager.VERBOSE) {
                                            Util.verbose("-> failed to index " + ((Object) this.project) + " because of the following exception:", System.err);
                                            e.printStackTrace();
                                        }
                                        this.manager.removeIndex(this.containerPath);
                                        if (readWriteMonitor != null) {
                                            return false;
                                        }
                                        readWriteMonitor.exitRead();
                                        return false;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        readWriteMonitor4 = readWriteMonitor3;
                                        if (readWriteMonitor4 != null) {
                                            readWriteMonitor4.exitRead();
                                        }
                                        throw th;
                                    }
                                }
                            } else {
                                javaProject = javaProject2;
                                i10 = i18;
                                iWorkspaceRoot = root;
                                str = str2;
                                simpleLookupTable = simpleLookupTable2;
                                i11 = length2;
                            }
                            readWriteMonitor3 = readWriteMonitor6;
                            i12 = i14;
                            i18 = i10 + 1;
                            i14 = i12;
                            readWriteMonitor6 = readWriteMonitor3;
                            javaProject2 = javaProject;
                            root = iWorkspaceRoot;
                            str2 = str;
                            simpleLookupTable2 = simpleLookupTable;
                            length2 = i11;
                            z10 = true;
                            r14 = 0;
                            z11 = false;
                        }
                        SourceElementParser sourceElementParser = this.manager.getSourceElementParser(javaProject2, r14);
                        Object[] objArr = simpleLookupTable2.keyTable;
                        Object[] objArr2 = simpleLookupTable2.valueTable;
                        int length3 = objArr.length;
                        for (?? r42 = z11; r42 < length3; r42++) {
                            String str3 = (String) objArr[r42];
                            if (str3 != null) {
                                if (this.isCancelled) {
                                    readWriteMonitor6.exitRead();
                                    return z11;
                                }
                                Object obj = objArr2[r42];
                                if (obj != "OK") {
                                    if (obj == str2) {
                                        this.manager.remove(str3, this.containerPath);
                                    } else {
                                        this.manager.addSource((IFile) obj, this.containerPath, sourceElementParser);
                                    }
                                }
                            }
                        }
                        IndexManager indexManager = this.manager;
                        indexManager.request(new SaveIndex(this.containerPath, indexManager));
                        readWriteMonitor6.exitRead();
                        return z10;
                    } catch (CoreException e14) {
                        e = e14;
                        readWriteMonitor3 = readWriteMonitor6;
                    } catch (IOException e15) {
                        e = e15;
                        readWriteMonitor3 = readWriteMonitor6;
                    } catch (Throwable th4) {
                        th = th4;
                        readWriteMonitor3 = readWriteMonitor6;
                    }
                } catch (CoreException e16) {
                    e = e16;
                    readWriteMonitor = readWriteMonitor5;
                } catch (IOException e17) {
                    e = e17;
                    readWriteMonitor2 = readWriteMonitor5;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (IOException e18) {
            e = e18;
            readWriteMonitor2 = null;
        } catch (CoreException e19) {
            e = e19;
            readWriteMonitor = null;
        } catch (Throwable th6) {
            th = th6;
            readWriteMonitor4 = null;
        }
    }

    public int hashCode() {
        return this.project.hashCode();
    }

    public String toString() {
        return "indexing project " + ((Object) this.project.getFullPath());
    }

    @Override
    public Integer updatedIndexState() {
        return IndexManager.REBUILDING_STATE;
    }
}
