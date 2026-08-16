package org.eclipse.jdt.internal.core.search.indexing;

import java.io.IOException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class SaveIndex extends IndexRequest {
    public SaveIndex(IPath iPath, IndexManager indexManager) {
        super(iPath, indexManager);
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
            readWriteMonitor.enterWrite();
            this.manager.saveIndex(index);
            return true;
        } catch (IOException e10) {
            if (JobManager.VERBOSE) {
                Util.verbose("-> failed to save index " + ((Object) this.containerPath) + " because of the following exception:", System.err);
                e10.printStackTrace();
            }
            return false;
        } finally {
            readWriteMonitor.exitWrite();
        }
    }

    public String toString() {
        return "saving index for " + ((Object) this.containerPath);
    }
}
