package com.jme3.input;

public interface Input {
    void destroy();

    long getInputTimeNanos();

    void initialize();

    boolean isInitialized();

    void setInputListener(RawInputListener rawInputListener);

    void update();
}
