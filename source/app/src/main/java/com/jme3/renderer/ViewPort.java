package com.jme3.renderer;

import com.jme3.math.ColorRGBA;
import com.jme3.post.SceneProcessor;
import com.jme3.renderer.pipeline.RenderPipeline;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.texture.FrameBuffer;
import com.jme3.util.SafeArrayList;
import java.util.Iterator;

public class ViewPort {
    protected final Camera cam;
    protected final String name;
    protected RenderPipeline pipeline;
    protected final RenderQueue queue = new RenderQueue();
    protected final SafeArrayList<Spatial> sceneList = new SafeArrayList<>(Spatial.class);
    protected final SafeArrayList<SceneProcessor> processors = new SafeArrayList<>(SceneProcessor.class);
    protected FrameBuffer out = null;
    protected final ColorRGBA backColor = new ColorRGBA(0.0f, 0.0f, 0.0f, 0.0f);
    protected boolean clearDepth = false;
    protected boolean clearColor = false;
    protected boolean clearStencil = false;
    private boolean enabled = true;

    public ViewPort(String str, Camera camera) {
        this.name = str;
        this.cam = camera;
    }

    public void addProcessor(SceneProcessor sceneProcessor) {
        if (sceneProcessor == null) {
            throw new IllegalArgumentException("Processor cannot be null.");
        }
        this.processors.add(sceneProcessor);
    }

    public void attachScene(Spatial spatial) {
        if (spatial == null) {
            throw new IllegalArgumentException("Scene cannot be null.");
        }
        this.sceneList.add(spatial);
        if (spatial instanceof Geometry) {
            spatial.forceRefresh(true, false, true);
        }
    }

    public void clearProcessors() {
        Iterator<SceneProcessor> it = this.processors.iterator();
        while (it.hasNext()) {
            it.next().cleanup();
        }
        this.processors.clear();
    }

    public void clearScenes() {
        this.sceneList.clear();
    }

    public void detachScene(Spatial spatial) {
        if (spatial == null) {
            throw new IllegalArgumentException("Scene cannot be null.");
        }
        this.sceneList.remove(spatial);
        if (spatial instanceof Geometry) {
            spatial.forceRefresh(true, false, true);
        }
    }

    public ColorRGBA getBackgroundColor() {
        return this.backColor;
    }

    public Camera getCamera() {
        return this.cam;
    }

    public String getName() {
        return this.name;
    }

    public FrameBuffer getOutputFrameBuffer() {
        return this.out;
    }

    public RenderPipeline getPipeline() {
        return this.pipeline;
    }

    public SafeArrayList<SceneProcessor> getProcessors() {
        return this.processors;
    }

    public RenderQueue getQueue() {
        return this.queue;
    }

    public SafeArrayList<Spatial> getScenes() {
        return this.sceneList;
    }

    public boolean isClearColor() {
        return this.clearColor;
    }

    public boolean isClearDepth() {
        return this.clearDepth;
    }

    public boolean isClearStencil() {
        return this.clearStencil;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void removeProcessor(SceneProcessor sceneProcessor) {
        if (sceneProcessor == null) {
            throw new IllegalArgumentException("Processor cannot be null.");
        }
        this.processors.remove(sceneProcessor);
        sceneProcessor.cleanup();
    }

    public void setBackgroundColor(ColorRGBA colorRGBA) {
        this.backColor.set(colorRGBA);
    }

    public void setClearColor(boolean z10) {
        this.clearColor = z10;
    }

    public void setClearDepth(boolean z10) {
        this.clearDepth = z10;
    }

    public void setClearFlags(boolean z10, boolean z11, boolean z12) {
        this.clearColor = z10;
        this.clearDepth = z11;
        this.clearStencil = z12;
    }

    public void setClearStencil(boolean z10) {
        this.clearStencil = z10;
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setOutputFrameBuffer(FrameBuffer frameBuffer) {
        this.out = frameBuffer;
    }

    public void setPipeline(RenderPipeline renderPipeline) {
        this.pipeline = renderPipeline;
    }
}
