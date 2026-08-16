package com.jme3.environment.generation;

public abstract class RunnableWithProgress implements Runnable {
    private int end;
    protected JobProgressListener listener;
    private int progress;

    public RunnableWithProgress() {
    }

    public double getProgress() {
        return this.progress / this.end;
    }

    public void progress() {
        this.progress++;
        JobProgressListener jobProgressListener = this.listener;
        if (jobProgressListener != null) {
            jobProgressListener.progress(getProgress());
        }
    }

    public void reset() {
        this.progress = 0;
    }

    public void setEnd(int i10) {
        this.end = i10;
    }

    public RunnableWithProgress(JobProgressListener jobProgressListener) {
        this.listener = jobProgressListener;
    }
}
