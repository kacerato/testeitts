package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.internal.core.search.processing.IJob;

public abstract class IndexRequest implements IJob {
    protected IPath containerPath;
    protected boolean isCancelled = false;
    protected IndexManager manager;

    public IndexRequest(IPath iPath, IndexManager indexManager) {
        this.containerPath = iPath;
        this.manager = indexManager;
    }

    @Override
    public boolean belongsTo(String str) {
        return str.equals(this.containerPath.segment(0)) || str.equals(this.containerPath.toString());
    }

    @Override
    public void cancel() {
        this.manager.jobWasCancelled(this.containerPath);
        this.isCancelled = true;
    }

    @Override
    public void ensureReadyToRun() {
        this.manager.aboutToUpdateIndex(this.containerPath, updatedIndexState());
    }

    @Override
    public String getJobFamily() {
        return this.containerPath.toString();
    }

    public Integer updatedIndexState() {
        return IndexManager.UPDATING_STATE;
    }

    @Override
    public boolean waitNeeded() {
        return true;
    }
}
