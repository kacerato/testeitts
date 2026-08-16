package com.jme3.environment.generation;

public abstract class JobProgressAdapter<T> implements JobProgressListener<T> {
    @Override
    public abstract void done(T t10);

    @Override
    public void progress(double d10) {
    }

    @Override
    public void start() {
    }

    @Override
    public void step(String str) {
    }
}
