package com.jme3.renderer.pipeline;

import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.pipeline.PipelineContext;

public interface RenderPipeline<T extends PipelineContext> {
    void endRenderFrame(RenderManager renderManager);

    T fetchPipelineContext(RenderManager renderManager);

    boolean hasRenderedThisFrame();

    void pipelineRender(RenderManager renderManager, T t10, ViewPort viewPort, float f10);

    void startRenderFrame(RenderManager renderManager);
}
