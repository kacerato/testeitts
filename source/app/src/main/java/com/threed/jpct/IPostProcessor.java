package com.threed.jpct;

public interface IPostProcessor {
    void dispose();

    void init(FrameBuffer frameBuffer);

    boolean isInitialized();

    void process();
}
