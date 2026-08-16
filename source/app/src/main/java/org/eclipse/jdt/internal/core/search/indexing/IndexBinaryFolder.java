package org.eclipse.jdt.internal.core.search.indexing;

import java.io.IOException;
import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.processing.JobManager;

public class IndexBinaryFolder extends IndexRequest {
    IContainer folder;

    public IndexBinaryFolder(IContainer iContainer, IndexManager indexManager) {
        super(iContainer.getFullPath(), indexManager);
        this.folder = iContainer;
    }

    public boolean equals(Object obj) {
        if (obj instanceof IndexBinaryFolder) {
            return this.folder.equals(((IndexBinaryFolder) obj).folder);
        }
        return false;
    }

    @Override
    public boolean execute(IProgressMonitor iProgressMonitor) {
        Index indexForUpdate;
        ReadWriteMonitor readWriteMonitor;
        if (this.isCancelled || ((iProgressMonitor != null && iProgressMonitor.isCanceled()) || !this.folder.isAccessible() || (indexForUpdate = this.manager.getIndexForUpdate(this.containerPath, true, true)) == null || (readWriteMonitor = indexForUpdate.monitor) == null)) {
            return true;
        }
        try {
            try {
                readWriteMonitor.enterRead();
                String[] queryDocumentNames = indexForUpdate.queryDocumentNames("");
                int length = queryDocumentNames == null ? 0 : queryDocumentNames.length;
                final SimpleLookupTable simpleLookupTable = new SimpleLookupTable(length == 0 ? 33 : length + 11);
                if (queryDocumentNames == null) {
                    this.folder.accept(new IResourceProxyVisitor() {
                        public boolean visit(IResourceProxy iResourceProxy) {
                            if (IndexBinaryFolder.this.isCancelled) {
                                return false;
                            }
                            if (iResourceProxy.getType() != 1) {
                                return true;
                            }
                            if (Util.isClassFileName(iResourceProxy.getName())) {
                                IFile requestResource = iResourceProxy.requestResource();
                                simpleLookupTable.put(org.eclipse.jdt.internal.core.util.Util.relativePath(requestResource.getFullPath(), IndexBinaryFolder.this.containerPath.segmentCount()), requestResource);
                            }
                            return false;
                        }
                    }, 0);
                } else {
                    for (int i10 = 0; i10 < length; i10++) {
                        simpleLookupTable.put(queryDocumentNames[i10], "DELETED");
                    }
                    final long indexLastModified = indexForUpdate.getIndexLastModified();
                    this.folder.accept(new IResourceProxyVisitor() {
                        public boolean visit(IResourceProxy iResourceProxy) throws CoreException {
                            String str;
                            URI locationURI;
                            if (IndexBinaryFolder.this.isCancelled) {
                                return false;
                            }
                            if (iResourceProxy.getType() != 1) {
                                return true;
                            }
                            if (Util.isClassFileName(iResourceProxy.getName()) && (locationURI = (str = (IFile) iResourceProxy.requestResource()).getLocationURI()) != null) {
                                String relativePath = org.eclipse.jdt.internal.core.util.Util.relativePath(str.getFullPath(), IndexBinaryFolder.this.containerPath.segmentCount());
                                SimpleLookupTable simpleLookupTable2 = simpleLookupTable;
                                if (simpleLookupTable2.get(relativePath) != null && indexLastModified >= EFS.getStore(locationURI).fetchInfo().getLastModified()) {
                                    str = "OK";
                                }
                                simpleLookupTable2.put(relativePath, str);
                            }
                            return false;
                        }
                    }, 0);
                }
                Object[] objArr = simpleLookupTable.keyTable;
                Object[] objArr2 = simpleLookupTable.valueTable;
                int length2 = objArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    String str = (String) objArr[i11];
                    if (str != null) {
                        if (this.isCancelled) {
                            readWriteMonitor.exitRead();
                            return false;
                        }
                        Object obj = objArr2[i11];
                        if (obj != "OK") {
                            if (obj == "DELETED") {
                                this.manager.remove(str, this.containerPath);
                            } else {
                                this.manager.addBinary((IFile) obj, this.containerPath);
                            }
                        }
                    }
                }
                IndexManager indexManager = this.manager;
                indexManager.request(new SaveIndex(this.containerPath, indexManager));
                readWriteMonitor.exitRead();
                return true;
            } catch (IOException e10) {
                if (JobManager.VERBOSE) {
                    org.eclipse.jdt.internal.core.util.Util.verbose("-> failed to index " + ((Object) this.folder) + " because of the following exception:", System.err);
                    e10.printStackTrace();
                }
                this.manager.removeIndex(this.containerPath);
                readWriteMonitor.exitRead();
                return false;
            } catch (CoreException e11) {
                if (JobManager.VERBOSE) {
                    org.eclipse.jdt.internal.core.util.Util.verbose("-> failed to index " + ((Object) this.folder) + " because of the following exception:", System.err);
                    e11.printStackTrace();
                }
                this.manager.removeIndex(this.containerPath);
                readWriteMonitor.exitRead();
                return false;
            }
        } catch (Throwable th2) {
            readWriteMonitor.exitRead();
            throw th2;
        }
    }

    public int hashCode() {
        return this.folder.hashCode();
    }

    public String toString() {
        return "indexing binary folder " + ((Object) this.folder.getFullPath());
    }

    @Override
    public Integer updatedIndexState() {
        return IndexManager.REBUILDING_STATE;
    }
}
