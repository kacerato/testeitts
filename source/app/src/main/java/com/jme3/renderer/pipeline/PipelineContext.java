package com.jme3.renderer.pipeline;

import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;

public interface PipelineContext {
    void endContextRenderFrame(RenderManager renderManager);

    void endViewPortRender(RenderManager renderManager, ViewPort viewPort);

    boolean startViewPortRender(RenderManager renderManager, ViewPort viewPort);
}
