package org.eclipse.jdt.internal.core.search.indexing;

import java.io.IOException;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class RemoveFolderFromIndex extends IndexRequest {
    char[][] exclusionPatterns;
    IPath folderPath;
    char[][] inclusionPatterns;

    public RemoveFolderFromIndex(IPath iPath, char[][] cArr, char[][] cArr2, IProject iProject, IndexManager indexManager) {
        super(iProject.getFullPath(), indexManager);
        this.folderPath = iPath;
        this.inclusionPatterns = cArr;
        this.exclusionPatterns = cArr2;
    }

    @Override
    public boolean execute(IProgressMonitor iProgressMonitor) {
        Index index;
        if (this.isCancelled || ((iProgressMonitor != null && iProgressMonitor.isCanceled()) || (index = this.manager.getIndex(this.containerPath, true, false)) == null)) {
            return true;
        }
        ReadWriteMonitor readWriteMonitor = index.monitor;
        try {
            if (readWriteMonitor == null) {
                return true;
            }
            try {
                readWriteMonitor.enterRead();
                String[] queryDocumentNames = index.queryDocumentNames(Util.relativePath(this.folderPath, this.containerPath.segmentCount()));
                if (queryDocumentNames != null) {
                    if (this.exclusionPatterns == null && this.inclusionPatterns == null) {
                        for (String str : queryDocumentNames) {
                            this.manager.remove(str, this.containerPath);
                        }
                    } else {
                        int length = queryDocumentNames.length;
                        for (int i10 = 0; i10 < length; i10++) {
                            if (!Util.isExcluded(new Path(String.valueOf(this.containerPath.toString()) + '/' + queryDocumentNames[i10]), this.inclusionPatterns, this.exclusionPatterns, false)) {
                                this.manager.remove(queryDocumentNames[i10], this.containerPath);
                            }
                        }
                    }
                }
                return true;
            } catch (IOException e10) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> failed to remove " + ((Object) this.folderPath) + " from index because of the following exception:", System.err);
                    e10.printStackTrace();
                }
                readWriteMonitor.exitRead();
                return false;
            }
        } finally {
            readWriteMonitor.exitRead();
        }
    }

    public String toString() {
        return "removing " + ((Object) this.folderPath) + " from index " + ((Object) this.containerPath);
    }
}
