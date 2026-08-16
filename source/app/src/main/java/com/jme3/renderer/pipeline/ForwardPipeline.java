package com.jme3.renderer.pipeline;

import com.jme3.post.SceneProcessor;
import com.jme3.profile.AppProfiler;
import com.jme3.profile.SpStep;
import com.jme3.profile.VpStep;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.util.SafeArrayList;

public class ForwardPipeline implements RenderPipeline {
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
        AppProfiler profiler = renderManager.getProfiler();
        SafeArrayList<SceneProcessor> processors = viewPort.getProcessors();
        if (processors.isEmpty()) {
            processors = null;
        }
        if (processors != null) {
            if (profiler != null) {
                profiler.vpStep(VpStep.PreFrame, viewPort, null);
            }
            for (SceneProcessor sceneProcessor : processors.getArray()) {
                if (!sceneProcessor.isInitialized()) {
                    sceneProcessor.initialize(renderManager, viewPort);
                }
                sceneProcessor.setProfiler(profiler);
                if (profiler != null) {
                    profiler.spStep(SpStep.ProcPreFrame, sceneProcessor.getClass().getSimpleName());
                }
                sceneProcessor.preFrame(f10);
            }
        }
        renderManager.applyViewPort(viewPort);
        if (profiler != null) {
            profiler.vpStep(VpStep.RenderScene, viewPort, null);
        }
        SafeArrayList<Spatial> scenes = viewPort.getScenes();
        for (int size = scenes.size() - 1; size >= 0; size--) {
            renderManager.renderScene(scenes.get(size), viewPort);
        }
        if (processors != null) {
            if (profiler != null) {
                profiler.vpStep(VpStep.PostQueue, viewPort, null);
            }
            for (SceneProcessor sceneProcessor2 : processors.getArray()) {
                if (profiler != null) {
                    profiler.spStep(SpStep.ProcPostQueue, sceneProcessor2.getClass().getSimpleName());
                }
                sceneProcessor2.postQueue(viewPort.getQueue());
            }
        }
        if (profiler != null) {
            profiler.vpStep(VpStep.FlushQueue, viewPort, null);
        }
        renderManager.flushQueue(viewPort);
        if (processors != null) {
            if (profiler != null) {
                profiler.vpStep(VpStep.PostFrame, viewPort, null);
            }
            for (SceneProcessor sceneProcessor3 : processors.getArray()) {
                if (profiler != null) {
                    profiler.spStep(SpStep.ProcPostFrame, sceneProcessor3.getClass().getSimpleName());
                }
                sceneProcessor3.postFrame(viewPort.getOutputFrameBuffer());
            }
            if (profiler != null) {
                profiler.vpStep(VpStep.ProcEndRender, viewPort, null);
            }
        }
        renderManager.renderTranslucentQueue(viewPort);
        renderManager.clearQueue(viewPort);
        this.rendered = true;
        renderManager.getRenderer().clearClipRect();
        if (profiler != null) {
            profiler.vpStep(VpStep.EndRender, viewPort, null);
        }
    }

    @Override
    public void startRenderFrame(RenderManager renderManager) {
    }
}
