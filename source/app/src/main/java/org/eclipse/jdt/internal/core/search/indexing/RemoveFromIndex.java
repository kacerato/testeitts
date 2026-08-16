package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.core.index.Index;

public class RemoveFromIndex extends IndexRequest {
    String resourceName;

    public RemoveFromIndex(String str, IPath iPath, IndexManager indexManager) {
        super(iPath, indexManager);
        this.resourceName = str;
    }

    @Override
    public boolean execute(IProgressMonitor iProgressMonitor) {
        Index index;
        ReadWriteMonitor readWriteMonitor;
        if (this.isCancelled || ((iProgressMonitor != null && iProgressMonitor.isCanceled()) || (index = this.manager.getIndex(this.containerPath, true, false)) == null || (readWriteMonitor = index.monitor) == null)) {
            return true;
        }
        try {
            readWriteMonitor.enterWrite();
            index.remove(this.resourceName);
            return true;
        } finally {
            readWriteMonitor.exitWrite();
        }
    }

    public String toString() {
        return "removing " + this.resourceName + " from index " + ((Object) this.containerPath);
    }
}
