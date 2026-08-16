package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;

public class BatchInitializationMonitor implements IProgressMonitor {
    public ThreadLocal initializeAfterLoadMonitor = new ThreadLocal();
    public String subTaskName = "";
    public int worked = 0;

    private IProgressMonitor getMonitor() {
        return (IProgressMonitor) this.initializeAfterLoadMonitor.get();
    }

    public void beginTask(String str, int i10) {
        IProgressMonitor monitor = getMonitor();
        if (monitor != null) {
            monitor.beginTask(str, i10);
        }
    }

    public void done() {
        IProgressMonitor monitor = getMonitor();
        if (monitor != null) {
            monitor.done();
        }
        this.worked = 0;
        this.subTaskName = "";
    }

    public synchronized int getWorked() {
        int i10;
        i10 = this.worked;
        this.worked = 0;
        return i10;
    }

    public void internalWorked(double d10) {
        IProgressMonitor monitor = getMonitor();
        if (monitor != null) {
            monitor.internalWorked(d10);
        }
    }

    public boolean isCanceled() {
        IProgressMonitor monitor = getMonitor();
        if (monitor != null) {
            return monitor.isCanceled();
        }
        return false;
    }

    public void setCanceled(boolean z10) {
        IProgressMonitor monitor = getMonitor();
        if (monitor != null) {
            monitor.setCanceled(z10);
        }
    }

    public void setTaskName(String str) {
        IProgressMonitor monitor = getMonitor();
        if (monitor != null) {
            monitor.setTaskName(str);
        }
    }

    public void subTask(String str) {
        IProgressMonitor monitor = getMonitor();
        if (monitor != null) {
            monitor.subTask(str);
        }
        this.subTaskName = str;
    }

    public void worked(int i10) {
        IProgressMonitor monitor = getMonitor();
        if (monitor != null) {
            monitor.worked(i10);
        }
        synchronized (this) {
            this.worked += i10;
        }
    }
}
