package com.jme3.renderer.pipeline;

import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import java.util.concurrent.atomic.AtomicBoolean;

public class DefaultPipelineContext implements PipelineContext {
    private final AtomicBoolean rendered = new AtomicBoolean(false);

    @Override
    public void endContextRenderFrame(RenderManager renderManager) {
        this.rendered.set(false);
    }

    @Override
    public void endViewPortRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public boolean startViewPortRender(RenderManager renderManager, ViewPort viewPort) {
        return this.rendered.getAndSet(true);
    }
}
