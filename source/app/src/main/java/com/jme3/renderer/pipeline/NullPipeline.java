package com.jme3.renderer.pipeline;

import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;

public class NullPipeline implements RenderPipeline {
    private boolean rendered = false;

    @Override
    public void endRenderFrame(RenderManager renderManager) {
        this.rendered = false;
    }

    @Override
    public PipelineContext fetchPipelineContext(RenderManager renderManager) {
        return renderManager.getDefaultContext();
    }

    @Override
    public boolean hasRenderedThisFrame() {
        return this.rendered;
    }

    @Override
    public void pipelineRender(RenderManager renderManager, PipelineContext pipelineContext, ViewPort viewPort, float f10) {
        this.rendered = true;
    }

    @Override
    public void startRenderFrame(RenderManager renderManager) {
    }
}
