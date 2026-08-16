package org.eclipse.jdt.internal.core.search.processing;

import org.eclipse.core.runtime.IProgressMonitor;

public interface IJob {
    public static final boolean COMPLETE = true;
    public static final int CancelIfNotReady = 2;
    public static final boolean FAILED = false;
    public static final int ForceImmediate = 1;
    public static final int WaitUntilReady = 3;

    boolean belongsTo(String str);

    void cancel();

    void ensureReadyToRun();

    boolean execute(IProgressMonitor iProgressMonitor);

    String getJobFamily();

    default boolean waitNeeded() {
        return false;
    }
}
