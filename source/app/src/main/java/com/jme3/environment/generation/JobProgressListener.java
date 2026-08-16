package com.jme3.environment.generation;

public interface JobProgressListener<T> {
    void done(T t10);

    void progress(double d10);

    void start();

    void step(String str);
}
