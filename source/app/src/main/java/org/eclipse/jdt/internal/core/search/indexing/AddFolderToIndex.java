package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class AddFolderToIndex extends IndexRequest {
    char[][] exclusionPatterns;
    IPath folderPath;
    char[][] inclusionPatterns;
    IProject project;

    public AddFolderToIndex(IPath iPath, IProject iProject, char[][] cArr, char[][] cArr2, IndexManager indexManager) {
        super(iProject.getFullPath(), indexManager);
        this.folderPath = iPath;
        this.project = iProject;
        this.inclusionPatterns = cArr;
        this.exclusionPatterns = cArr2;
    }

    @Override
    public boolean execute(IProgressMonitor iProgressMonitor) {
        IResource findMember;
        Index index;
        ReadWriteMonitor readWriteMonitor;
        if (this.isCancelled || ((iProgressMonitor != null && iProgressMonitor.isCanceled()) || !this.project.isAccessible() || (findMember = this.project.getParent().findMember(this.folderPath)) == null || findMember.getType() == 1 || (index = this.manager.getIndex(this.containerPath, true, true)) == null || (readWriteMonitor = index.monitor) == null)) {
            return true;
        }
        try {
            try {
                readWriteMonitor.enterRead();
                final IPath iPath = this.containerPath;
                final IndexManager indexManager = this.manager;
                final SourceElementParser sourceElementParser = indexManager.getSourceElementParser(JavaCore.create(this.project), null);
                if (this.exclusionPatterns == null && this.inclusionPatterns == null) {
                    findMember.accept(new IResourceProxyVisitor() {
                        public boolean visit(IResourceProxy iResourceProxy) {
                            if (iResourceProxy.getType() != 1) {
                                return true;
                            }
                            if (!Util.isJavaLikeFileName(iResourceProxy.getName())) {
                                return false;
                            }
                            indexManager.addSource((IFile) iResourceProxy.requestResource(), iPath, sourceElementParser);
                            return false;
                        }
                    }, 0);
                } else {
                    findMember.accept(new IResourceProxyVisitor() {
                        public boolean visit(IResourceProxy iResourceProxy) {
                            int type = iResourceProxy.getType();
                            if (type == 1) {
                                if (Util.isJavaLikeFileName(iResourceProxy.getName())) {
                                    IFile requestResource = iResourceProxy.requestResource();
                                    AddFolderToIndex addFolderToIndex = AddFolderToIndex.this;
                                    if (!Util.isExcluded(requestResource, addFolderToIndex.inclusionPatterns, addFolderToIndex.exclusionPatterns)) {
                                        indexManager.addSource(requestResource, iPath, sourceElementParser);
                                    }
                                }
                                return false;
                            }
                            if (type == 2) {
                                AddFolderToIndex addFolderToIndex2 = AddFolderToIndex.this;
                                if (addFolderToIndex2.exclusionPatterns != null && addFolderToIndex2.inclusionPatterns == null) {
                                    IPath requestFullPath = iResourceProxy.requestFullPath();
                                    AddFolderToIndex addFolderToIndex3 = AddFolderToIndex.this;
                                    if (Util.isExcluded(requestFullPath, addFolderToIndex3.inclusionPatterns, addFolderToIndex3.exclusionPatterns, true)) {
                                        return false;
                                    }
                                }
                            }
                            return true;
                        }
                    }, 0);
                }
                readWriteMonitor.exitRead();
                return true;
            } catch (CoreException e10) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> failed to add " + ((Object) this.folderPath) + " to index because of the following exception:", System.err);
                    e10.printStackTrace();
                }
                readWriteMonitor.exitRead();
                return false;
            }
        } catch (Throwable th2) {
            readWriteMonitor.exitRead();
            throw th2;
        }
    }

    public String toString() {
        return "adding " + ((Object) this.folderPath) + " to index " + ((Object) this.containerPath);
    }
}
