package org.eclipse.jdt.internal.core.search.indexing;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipError;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.env.AutomaticModuleNaming;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.index.IndexLocation;
import org.eclipse.jdt.internal.core.search.JavaSearchDocument;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class AddJarFileToIndex extends BinaryContainer {
    private static final char JAR_SEPARATOR = "|".charAt(0);
    private final boolean forceIndexUpdate;
    private IndexLocation indexFileURL;
    IFile resource;

    public AddJarFileToIndex(IFile iFile, IndexLocation indexLocation, IndexManager indexManager) {
        this(iFile, indexLocation, indexManager, false);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AddJarFileToIndex)) {
            return false;
        }
        IFile iFile = this.resource;
        if (iFile != null) {
            return iFile.equals(((AddJarFileToIndex) obj).resource);
        }
        IPath iPath = this.containerPath;
        if (iPath != null) {
            return iPath.equals(((AddJarFileToIndex) obj).containerPath);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:191:0x0482 A[Catch: ZipError -> 0x029e, IOException -> 0x02a1, TRY_ENTER, TryCatch #8 {IOException -> 0x02a1, ZipError -> 0x029e, blocks: (B:121:0x027c, B:123:0x0280, B:124:0x02a4, B:131:0x02f7, B:133:0x02fb, B:134:0x0318, B:171:0x03c6, B:173:0x03ca, B:174:0x03e7, B:158:0x0411, B:160:0x0415, B:161:0x0432, B:191:0x0482, B:193:0x0486, B:194:0x04a3, B:195:0x04a6, B:196:0x04a9), top: B:33:0x00a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x04ae  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean execute(IProgressMonitor iProgressMonitor) {
        Path path;
        String str;
        String str2;
        String str3;
        File file;
        String str4 = TypeConstants.AUTOMATIC_MODULE_NAME;
        if (this.isCancelled || (iProgressMonitor != null && iProgressMonitor.isCanceled())) {
            return true;
        }
        ZipFile zipFile = null;
        if (hasPreBuiltIndex()) {
            if (this.manager.addIndex(this.containerPath, this.indexFileURL)) {
                return true;
            }
            this.indexFileURL = null;
        }
        try {
            if (this.manager.getIndexForUpdate(this.containerPath, false, false) != null) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> no indexing required (index already exists) for " + ((Object) this.containerPath));
                }
                return true;
            }
            Index indexForUpdate = this.manager.getIndexForUpdate(this.containerPath, true, true);
            if (indexForUpdate == null) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> index could not be created for " + ((Object) this.containerPath));
                }
                return true;
            }
            ReadWriteMonitor readWriteMonitor = indexForUpdate.monitor;
            if (readWriteMonitor == null) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> index for " + ((Object) this.containerPath) + " just got deleted");
                }
                return true;
            }
            try {
                indexForUpdate.separator = JAR_SEPARATOR;
                try {
                    readWriteMonitor.enterWrite();
                    IFile iFile = this.resource;
                    try {
                        if (iFile != null) {
                            URI locationURI = iFile.getLocationURI();
                            if (locationURI == null) {
                                readWriteMonitor.exitWrite();
                                return false;
                            }
                            if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                                System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Creating ZipFile on " + locationURI.getPath());
                            }
                            try {
                                file = Util.toLocalFile(locationURI, iProgressMonitor);
                            } catch (CoreException e10) {
                                if (JobManager.VERBOSE) {
                                    Util.verbose("-> failed to index " + locationURI.getPath() + " because of the following exception:");
                                    e10.printStackTrace();
                                }
                                file = null;
                            }
                            if (file == null) {
                                if (JobManager.VERBOSE) {
                                    Util.verbose("-> failed to index " + locationURI.getPath() + " because the file could not be fetched");
                                }
                                readWriteMonitor.exitWrite();
                                return false;
                            }
                            if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                                System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Creating ZipFile on " + ((Object) this.containerPath));
                            }
                            zipFile = new ZipFile(file);
                            path = this.resource.getFullPath().makeRelative();
                        } else {
                            if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                                System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Creating ZipFile on " + ((Object) this.containerPath));
                            }
                            zipFile = new ZipFile(this.containerPath.toFile());
                            path = this.containerPath;
                        }
                        if (this.isCancelled) {
                            if (JobManager.VERBOSE) {
                                Util.verbose("-> indexing of " + zipFile.getName() + " has been cancelled");
                            }
                            if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                                System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Closing ZipFile " + ((Object) this.containerPath));
                            }
                            zipFile.close();
                            readWriteMonitor.exitWrite();
                            return false;
                        }
                        if (JobManager.VERBOSE) {
                            Util.verbose("-> indexing " + zipFile.getName());
                        }
                        long currentTimeMillis = System.currentTimeMillis();
                        String[] queryDocumentNames = indexForUpdate.queryDocumentNames("");
                        String str5 = " (";
                        if (queryDocumentNames != null) {
                            int length = queryDocumentNames.length;
                            String str6 = "OK";
                            try {
                                str = " has been cancelled";
                                str2 = "-> indexing of ";
                                SimpleLookupTable simpleLookupTable = new SimpleLookupTable(length == 0 ? 33 : length + 11);
                                int i10 = 0;
                                while (i10 < length) {
                                    simpleLookupTable.put(queryDocumentNames[i10], "DELETED");
                                    i10++;
                                    str6 = str6;
                                }
                                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                                while (entries.hasMoreElements()) {
                                    String name = entries.nextElement().getName();
                                    if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name) && isValidPackageNameForClassOrisModule(name)) {
                                        simpleLookupTable.put(name, str6);
                                    }
                                }
                                boolean z10 = simpleLookupTable.elementSize != length;
                                if (!z10) {
                                    Object[] objArr = simpleLookupTable.valueTable;
                                    int length2 = objArr.length;
                                    int i11 = 0;
                                    while (true) {
                                        if (i11 >= length2) {
                                            break;
                                        }
                                        if (objArr[i11] == "DELETED") {
                                            z10 = true;
                                            break;
                                        }
                                        i11++;
                                    }
                                    if (!z10) {
                                        if (JobManager.VERBOSE) {
                                            Util.verbose("-> no indexing required (index is consistent with library) for " + zipFile.getName() + " (" + (System.currentTimeMillis() - currentTimeMillis) + "ms)");
                                        }
                                        this.manager.saveIndex(indexForUpdate);
                                        if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                                            System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Closing ZipFile " + ((Object) this.containerPath));
                                        }
                                        zipFile.close();
                                        readWriteMonitor.exitWrite();
                                        return true;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (zipFile != null) {
                                    if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                                        System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Closing ZipFile " + ((Object) this.containerPath));
                                    }
                                    zipFile.close();
                                }
                                readWriteMonitor.exitWrite();
                                throw th;
                            }
                        } else {
                            str = " has been cancelled";
                            str2 = "-> indexing of ";
                        }
                        SearchParticipant defaultSearchParticipant = SearchEngine.getDefaultSearchParticipant();
                        if (!this.manager.resetIndex(this.containerPath)) {
                            this.manager.removeIndex(this.containerPath);
                            if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                                System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Closing ZipFile " + ((Object) this.containerPath));
                            }
                            zipFile.close();
                            readWriteMonitor.exitWrite();
                            return false;
                        }
                        indexForUpdate.separator = JAR_SEPARATOR;
                        IndexLocation indexLocation = indexForUpdate.getIndexLocation();
                        Path path2 = indexLocation != null ? new Path(indexLocation.getCanonicalFilePath()) : null;
                        Enumeration<? extends ZipEntry> entries2 = zipFile.entries();
                        boolean z11 = false;
                        while (entries2.hasMoreElements()) {
                            if (this.isCancelled) {
                                if (JobManager.VERBOSE) {
                                    Util.verbose(str2 + zipFile.getName() + str);
                                }
                                if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                                    System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Closing ZipFile " + ((Object) this.containerPath));
                                }
                                zipFile.close();
                                readWriteMonitor.exitWrite();
                                return false;
                            }
                            String str7 = str;
                            String str8 = str2;
                            String str9 = str4;
                            ZipEntry nextElement = entries2.nextElement();
                            Enumeration<? extends ZipEntry> enumeration = entries2;
                            String name2 = nextElement.getName();
                            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name2) && isValidPackageNameForClassOrisModule(name2)) {
                                str3 = str5;
                                z11 |= name2.contains("module-info");
                                this.manager.indexDocument(new JavaSearchDocument(nextElement, path, org.eclipse.jdt.internal.compiler.util.Util.getZipEntryByteContent(nextElement, zipFile), defaultSearchParticipant), defaultSearchParticipant, indexForUpdate, path2);
                            } else {
                                str3 = str5;
                            }
                            entries2 = enumeration;
                            str = str7;
                            str4 = str9;
                            str5 = str3;
                            str2 = str8;
                        }
                        if (!z11) {
                            try {
                                IFile iFile2 = this.resource;
                                this.manager.indexDocument(new JavaSearchDocument(new ZipEntry(str4), path, new String(CharOperation.append(CharOperation.append(str4.toCharArray(), ':'), AutomaticModuleNaming.determineAutomaticModuleName(iFile2 == null ? this.containerPath.toOSString() : JavaModelManager.getLocalFile(iFile2.getFullPath()).toPath().toAbsolutePath().toString()))).getBytes(Charset.defaultCharset()), defaultSearchParticipant), defaultSearchParticipant, indexForUpdate, path2);
                            } catch (CoreException unused) {
                            }
                        }
                        if (this.forceIndexUpdate) {
                            this.manager.savePreBuiltIndex(indexForUpdate);
                        } else {
                            this.manager.saveIndex(indexForUpdate);
                        }
                        if (JobManager.VERBOSE) {
                            Util.verbose("-> done indexing of " + zipFile.getName() + str5 + (System.currentTimeMillis() - currentTimeMillis) + "ms)");
                        }
                        if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                            System.out.println("(" + ((Object) Thread.currentThread()) + ") [AddJarFileToIndex.execute()] Closing ZipFile " + ((Object) this.containerPath));
                        }
                        zipFile.close();
                        readWriteMonitor.exitWrite();
                        return true;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    zipFile = null;
                    if (zipFile != null) {
                    }
                    readWriteMonitor.exitWrite();
                    throw th;
                }
            } catch (IOException e11) {
                e = e11;
                if (JobManager.VERBOSE) {
                }
                this.manager.removeIndex(this.containerPath);
                return false;
            } catch (ZipError e12) {
                e = e12;
                if (JobManager.VERBOSE) {
                }
                this.manager.removeIndex(this.containerPath);
                return false;
            }
        } catch (IOException e13) {
            e = e13;
            if (JobManager.VERBOSE) {
                Util.verbose("-> failed to index " + ((Object) this.containerPath) + " because of the following exception:");
                e.printStackTrace();
            }
            this.manager.removeIndex(this.containerPath);
            return false;
        } catch (ZipError e14) {
            e = e14;
            if (JobManager.VERBOSE) {
            }
            this.manager.removeIndex(this.containerPath);
            return false;
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

    public AddJarFileToIndex(IFile iFile, IndexLocation indexLocation, IndexManager indexManager, boolean z10) {
        super(iFile.getFullPath(), indexManager);
        this.resource = iFile;
        this.indexFileURL = indexLocation;
        this.forceIndexUpdate = z10;
    }

    public AddJarFileToIndex(IPath iPath, IndexLocation indexLocation, IndexManager indexManager) {
        this(iPath, indexLocation, indexManager, false);
    }

    public AddJarFileToIndex(IPath iPath, IndexLocation indexLocation, IndexManager indexManager, boolean z10) {
        super(iPath, indexManager);
        this.indexFileURL = indexLocation;
        this.forceIndexUpdate = z10;
    }
}
