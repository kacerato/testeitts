package com.jme3.post;

import com.jme3.profile.AppProfiler;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.texture.FrameBuffer;

public interface SceneProcessor {
    void cleanup();

    void initialize(RenderManager renderManager, ViewPort viewPort);

    boolean isInitialized();

    void postFrame(FrameBuffer frameBuffer);

    void postQueue(RenderQueue renderQueue);

    void preFrame(float f10);

    default void rescale(ViewPort viewPort, float f10, float f11) {
    }

    void reshape(ViewPort viewPort, int i10, int i11);

    void setProfiler(AppProfiler appProfiler);
}
