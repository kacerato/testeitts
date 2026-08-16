package com.jme3.post;

import com.jme3.asset.AssetManager;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.profile.AppProfiler;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.texture.FrameBuffer;

public class PreDepthProcessor implements SceneProcessor {
    private final RenderState forcedRS;
    private final Material preDepth;

    private RenderManager f81620rm;
    private ViewPort vp;

    public PreDepthProcessor(AssetManager assetManager) {
        Material material = new Material(assetManager, "Common/MatDefs/Shadow/PreShadow.j3md");
        this.preDepth = material;
        material.getAdditionalRenderState().setPolyOffset(0.0f, 0.0f);
        material.getAdditionalRenderState().setFaceCullMode(RenderState.FaceCullMode.Back);
        RenderState renderState = new RenderState();
        this.forcedRS = renderState;
        renderState.setDepthTest(true);
        renderState.setDepthWrite(false);
    }

    @Override
    public void cleanup() {
        this.vp = null;
    }

    @Override
    public void initialize(RenderManager renderManager, ViewPort viewPort) {
        this.f81620rm = renderManager;
        this.vp = viewPort;
    }

    @Override
    public boolean isInitialized() {
        return this.vp != null;
    }

    @Override
    public void postFrame(FrameBuffer frameBuffer) {
        this.f81620rm.setForcedRenderState(null);
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
        this.f81620rm.setForcedMaterial(this.preDepth);
        renderQueue.renderQueue(RenderQueue.Bucket.Opaque, this.f81620rm, this.vp.getCamera(), false);
        this.f81620rm.setForcedMaterial(null);
        this.f81620rm.setForcedRenderState(this.forcedRS);
    }

    @Override
    public void preFrame(float f10) {
    }

    @Override
    public void reshape(ViewPort viewPort, int i10, int i11) {
        this.vp = viewPort;
    }

    @Override
    public void setProfiler(AppProfiler appProfiler) {
    }
}
