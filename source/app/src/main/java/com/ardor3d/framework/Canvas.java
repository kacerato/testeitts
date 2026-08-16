package com.ardor3d.framework;

import com.ardor3d.annotation.MainThread;
import java.util.concurrent.CountDownLatch;

public interface Canvas {
    @MainThread
    void draw(CountDownLatch countDownLatch);

    CanvasRenderer getCanvasRenderer();

    @MainThread
    void init();
}
