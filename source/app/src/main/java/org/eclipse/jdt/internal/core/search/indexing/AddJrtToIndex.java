package org.eclipse.jdt.internal.core.search.indexing;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.file.FileVisitResult;
import java.nio.file.attribute.BasicFileAttributes;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.index.IndexLocation;
import org.eclipse.jdt.internal.core.search.JavaSearchDocument;
import org.eclipse.jdt.internal.core.search.processing.JobManager;

public class AddJrtToIndex extends BinaryContainer {
    static final char JAR_SEPARATOR = "|".charAt(0);
    private final boolean forceIndexUpdate;
    private IndexLocation indexFileURL;
    IFile resource;

    public enum FILE_INDEX_STATE {
        EXISTS,
        DELETED;

        public static FILE_INDEX_STATE[] valuesCustom() {
            FILE_INDEX_STATE[] valuesCustom = values();
            int length = valuesCustom.length;
            FILE_INDEX_STATE[] file_index_stateArr = new FILE_INDEX_STATE[length];
            System.arraycopy(valuesCustom, 0, file_index_stateArr, 0, length);
            return file_index_stateArr;
        }
    }

    public class JrtIndexer extends JrtTraverser {
        final IPath container;
        final Index index;
        final IndexManager indexManager;
        final IPath indexPath;
        final File jrt;
        final SearchParticipant participant;

        public JrtIndexer(File file, SearchParticipant searchParticipant, Index index, IPath iPath, IndexManager indexManager) {
            super();
            this.jrt = file;
            this.participant = searchParticipant == null ? SearchEngine.getDefaultSearchParticipant() : searchParticipant;
            this.index = index;
            IndexLocation indexLocation = index.getIndexLocation();
            this.indexPath = indexLocation != null ? new Path(indexLocation.getCanonicalFilePath()) : null;
            this.container = iPath;
            this.indexManager = indexManager;
        }

        @Override
        public FileVisitResult visitFile(java.nio.file.Path path, java.nio.file.Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
            String sanitizedFileName = JRTUtil.sanitizedFileName(path);
            if (Util.isClassFileName(sanitizedFileName) && AddJrtToIndex.this.isValidPackageNameForClassOrisModule(sanitizedFileName)) {
                try {
                    String path3 = path.toString();
                    byte[] classfileContent = JRTUtil.getClassfileContent(this.jrt, path3, path2.toString());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(this.container.toString()));
                    char c10 = AddJrtToIndex.JAR_SEPARATOR;
                    sb2.append(c10);
                    sb2.append(path2.toString());
                    sb2.append(c10);
                    sb2.append(path3);
                    this.indexManager.indexDocument(new JavaSearchDocument(sb2.toString(), classfileContent, this.participant), this.participant, this.index, this.indexPath);
                } catch (IOException | ClassFormatException e10) {
                    e10.printStackTrace();
                }
            }
            return FileVisitResult.CONTINUE;
        }
    }

    public class JrtTraverser implements JRTUtil.JrtFileVisitor<java.nio.file.Path> {
        SimpleLookupTable indexedFileNames;

        public JrtTraverser() {
        }

        public JrtTraverser(SimpleLookupTable simpleLookupTable) {
            this.indexedFileNames = simpleLookupTable;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public FileVisitResult visitFile(java.nio.file.Path path, java.nio.file.Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
            String sanitizedFileName = JRTUtil.sanitizedFileName(path);
            if (Util.isClassFileName(sanitizedFileName) && AddJrtToIndex.this.isValidPackageNameForClassOrisModule(sanitizedFileName)) {
                this.indexedFileNames.put(sanitizedFileName, FILE_INDEX_STATE.EXISTS);
            }
            return FileVisitResult.CONTINUE;
        }

        @Override
        public FileVisitResult visitModule(java.nio.file.Path path, String str) throws IOException {
            return FileVisitResult.CONTINUE;
        }

        @Override
        public FileVisitResult visitPackage(java.nio.file.Path path, java.nio.file.Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
            return FileVisitResult.CONTINUE;
        }
    }

    public AddJrtToIndex(IFile iFile, IndexLocation indexLocation, IndexManager indexManager, boolean z10) {
        super(iFile.getFullPath(), indexManager);
        this.resource = iFile;
        this.indexFileURL = indexLocation;
        this.forceIndexUpdate = z10;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AddJrtToIndex)) {
            return false;
        }
        IFile iFile = this.resource;
        if (iFile != null) {
            return iFile.equals(((AddJrtToIndex) obj).resource);
        }
        IPath iPath = this.containerPath;
        if (iPath != null) {
            return iPath.equals(((AddJrtToIndex) obj).containerPath);
        }
        return false;
    }

    @Override
    public boolean execute(IProgressMonitor iProgressMonitor) {
        String oSString;
        IPath iPath;
        boolean z10 = true;
        if (this.isCancelled || (iProgressMonitor != null && iProgressMonitor.isCanceled())) {
            return true;
        }
        File file = null;
        if (hasPreBuiltIndex()) {
            if (this.manager.addIndex(this.containerPath, this.indexFileURL)) {
                return true;
            }
            this.indexFileURL = null;
        }
        try {
            if (this.manager.getIndexForUpdate(this.containerPath, false, false) != null) {
                if (JobManager.VERBOSE) {
                    org.eclipse.jdt.internal.core.util.Util.verbose("-> no indexing required (index already exists) for " + ((Object) this.containerPath));
                }
                return true;
            }
            Index indexForUpdate = this.manager.getIndexForUpdate(this.containerPath, true, true);
            if (indexForUpdate == null) {
                if (JobManager.VERBOSE) {
                    org.eclipse.jdt.internal.core.util.Util.verbose("-> index could not be created for " + ((Object) this.containerPath));
                }
                return true;
            }
            indexForUpdate.separator = JAR_SEPARATOR;
            ReadWriteMonitor readWriteMonitor = indexForUpdate.monitor;
            try {
                if (readWriteMonitor == null) {
                    if (JobManager.VERBOSE) {
                        org.eclipse.jdt.internal.core.util.Util.verbose("-> index for " + ((Object) this.containerPath) + " just got deleted");
                    }
                    return true;
                }
                try {
                    readWriteMonitor.enterWrite();
                    IFile iFile = this.resource;
                    if (iFile != null) {
                        URI locationURI = iFile.getLocationURI();
                        if (locationURI == null) {
                            readWriteMonitor.exitWrite();
                            return false;
                        }
                        if (JavaModelManager.JRT_ACCESS_VERBOSE) {
                            System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJrtFileToIndex.execute()] Creating ZipFile on " + locationURI.getPath());
                        }
                        try {
                            file = org.eclipse.jdt.internal.core.util.Util.toLocalFile(locationURI, iProgressMonitor);
                        } catch (CoreException e10) {
                            if (JobManager.VERBOSE) {
                                org.eclipse.jdt.internal.core.util.Util.verbose("-> failed to index " + locationURI.getPath() + " because of the following exception:");
                                e10.printStackTrace();
                            }
                        }
                        if (file == null) {
                            if (JobManager.VERBOSE) {
                                org.eclipse.jdt.internal.core.util.Util.verbose("-> failed to index " + locationURI.getPath() + " because the file could not be fetched");
                            }
                            readWriteMonitor.exitWrite();
                            return false;
                        }
                        oSString = file.getAbsolutePath();
                        iPath = this.resource.getFullPath().makeRelative();
                    } else {
                        oSString = this.containerPath.toOSString();
                        iPath = this.containerPath;
                    }
                    IPath iPath2 = iPath;
                    if (JobManager.VERBOSE) {
                        org.eclipse.jdt.internal.core.util.Util.verbose("-> indexing " + oSString);
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    String[] queryDocumentNames = indexForUpdate.queryDocumentNames("");
                    if (queryDocumentNames != null) {
                        int length = queryDocumentNames.length;
                        SimpleLookupTable simpleLookupTable = new SimpleLookupTable(length == 0 ? 33 : length + 11);
                        int i10 = 0;
                        while (i10 < length) {
                            simpleLookupTable.put(queryDocumentNames[i10], FILE_INDEX_STATE.DELETED);
                            i10++;
                            z10 = true;
                        }
                        JRTUtil.walkModuleImage(new File(oSString), new JrtTraverser(simpleLookupTable), JRTUtil.NOTIFY_FILES);
                        boolean z11 = simpleLookupTable.elementSize != length ? z10 : false;
                        if (!z11) {
                            Object[] objArr = simpleLookupTable.valueTable;
                            int length2 = objArr.length;
                            int i11 = 0;
                            while (true) {
                                if (i11 >= length2) {
                                    break;
                                }
                                if (objArr[i11] == FILE_INDEX_STATE.DELETED) {
                                    z11 = true;
                                    break;
                                }
                                i11++;
                            }
                            if (!z11) {
                                if (JobManager.VERBOSE) {
                                    org.eclipse.jdt.internal.core.util.Util.verbose("-> no indexing required (index is consistent with library) for " + oSString + " (" + (System.currentTimeMillis() - currentTimeMillis) + "ms)");
                                }
                                this.manager.saveIndex(indexForUpdate);
                                readWriteMonitor.exitWrite();
                                return true;
                            }
                        }
                    }
                    if (!this.manager.resetIndex(this.containerPath)) {
                        this.manager.removeIndex(this.containerPath);
                        readWriteMonitor.exitWrite();
                        return false;
                    }
                    File file2 = new File(oSString);
                    try {
                        JRTUtil.walkModuleImage(file2, new JrtIndexer(file2, SearchEngine.getDefaultSearchParticipant(), indexForUpdate, iPath2, this.manager), JRTUtil.NOTIFY_FILES);
                        if (this.forceIndexUpdate) {
                            this.manager.savePreBuiltIndex(indexForUpdate);
                        } else {
                            this.manager.saveIndex(indexForUpdate);
                        }
                        if (JobManager.VERBOSE) {
                            org.eclipse.jdt.internal.core.util.Util.verbose("-> done indexing of " + oSString + " (" + (System.currentTimeMillis() - currentTimeMillis) + "ms)");
                        }
                        readWriteMonitor.exitWrite();
                        return true;
                    } catch (Throwable th2) {
                        th = th2;
                        readWriteMonitor.exitWrite();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e11) {
                e = e11;
                if (JobManager.VERBOSE) {
                    org.eclipse.jdt.internal.core.util.Util.verbose("-> failed to index " + ((Object) this.containerPath) + " because of the following exception:");
                    e.printStackTrace();
                }
                this.manager.removeIndex(this.containerPath);
                return false;
            }
        } catch (IOException e12) {
            e = e12;
        }
    }

    @Override
    public String getJobFamily() {
        return this.resource != null ? super.getJobFamily() : this.containerPath.toOSString();
    }

    public boolean hasPreBuiltIndex() {
        IndexLocation indexLocation;
        return (this.forceIndexUpdate || (indexLocation = this.indexFileURL) == null || !indexLocation.exists()) ? false : true;
    }

    public int hashCode() {
        IFile iFile = this.resource;
        if (iFile != null) {
            return iFile.hashCode();
        }
        IPath iPath = this.containerPath;
        if (iPath != null) {
            return iPath.hashCode();
        }
        return -1;
    }

    public String toString() {
        return "indexing " + this.containerPath.toString();
    }

    @Override
    public Integer updatedIndexState() {
        return hasPreBuiltIndex() ? IndexManager.REUSE_STATE : IndexManager.REBUILDING_STATE;
    }

    public AddJrtToIndex(IPath iPath, IndexLocation indexLocation, IndexManager indexManager, boolean z10) {
        super(iPath, indexManager);
        this.indexFileURL = indexLocation;
        this.forceIndexUpdate = z10;
    }
}
