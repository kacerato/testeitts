package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.material.Material;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.post.Filter;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.shadow.PssmShadowRenderer;
import com.jme3.texture.FrameBuffer;
import java.io.IOException;

@Deprecated
public class PssmShadowFilter extends Filter {
    private PssmShadowRenderer pssmRenderer;
    Vector4f tmpv;
    private ViewPort viewPort;

    public PssmShadowFilter() {
        this.tmpv = new Vector4f();
    }

    public Vector3f getDirection() {
        return this.pssmRenderer.getDirection();
    }

    public int getEdgesThickness() {
        return this.pssmRenderer.getEdgesThickness();
    }

    public float getLambda() {
        return this.pssmRenderer.getLambda();
    }

    @Override
    public Material getMaterial() {
        return this.material;
    }

    public float getShadowIntensity() {
        return this.pssmRenderer.getShadowIntensity();
    }

    public Material getShadowMaterial() {
        return this.material;
    }

    public float getShadowZExtend() {
        return this.pssmRenderer.getShadowZExtend();
    }

    public float getShadowZFadeLength() {
        return this.pssmRenderer.getShadowZFadeLength();
    }

    @Override
    public void initFilter(AssetManager assetManager, RenderManager renderManager, ViewPort viewPort, int i10, int i11) {
        this.pssmRenderer.initialize(renderManager, viewPort);
        this.viewPort = viewPort;
    }

    public boolean isFlushQueues() {
        return this.pssmRenderer.isFlushQueues();
    }

    @Override
    public boolean isRequiresDepthTexture() {
        return true;
    }

    @Override
    public void postFrame(RenderManager renderManager, ViewPort viewPort, FrameBuffer frameBuffer, FrameBuffer frameBuffer2) {
        this.pssmRenderer.setPostShadowParams();
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
        this.pssmRenderer.postQueue(renderQueue);
    }

    @Override
    public void preFrame(float f10) {
        this.pssmRenderer.preFrame(f10);
        this.material.setMatrix4("ViewProjectionMatrixInverse", this.viewPort.getCamera().getViewProjectionMatrix().invert());
        Matrix4f viewProjectionMatrix = this.viewPort.getCamera().getViewProjectionMatrix();
        this.material.setVector4("ViewProjectionMatrixRow2", this.tmpv.set(viewProjectionMatrix.m20, viewProjectionMatrix.m21, viewProjectionMatrix.m22, viewProjectionMatrix.m23));
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        jmeImporter.getCapsule(this);
    }

    public final void setCompareMode(PssmShadowRenderer.CompareMode compareMode) {
        this.pssmRenderer.setCompareMode(compareMode);
    }

    public void setDirection(Vector3f vector3f) {
        this.pssmRenderer.setDirection(vector3f);
    }

    public void setEdgesThickness(int i10) {
        this.pssmRenderer.setEdgesThickness(i10);
    }

    public final void setFilterMode(PssmShadowRenderer.FilterMode filterMode) {
        this.pssmRenderer.setFilterMode(filterMode);
    }

    public void setFlushQueues(boolean z10) {
        this.pssmRenderer.setFlushQueues(z10);
    }

    public void setLambda(float f10) {
        this.pssmRenderer.setLambda(f10);
    }

    public final void setShadowIntensity(float f10) {
        this.pssmRenderer.setShadowIntensity(f10);
    }

    public void setShadowZExtend(float f10) {
        this.pssmRenderer.setShadowZExtend(f10);
    }

    public void setShadowZFadeLength(float f10) {
        this.pssmRenderer.setShadowZFadeLength(f10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this);
    }

    public PssmShadowFilter(AssetManager assetManager, int i10, int i11) {
        super("Post Shadow");
        this.tmpv = new Vector4f();
        this.material = new Material(assetManager, "Common/MatDefs/Shadow/PostShadowFilter.j3md");
        PssmShadowRenderer pssmShadowRenderer = new PssmShadowRenderer(assetManager, i10, i11, this.material);
        this.pssmRenderer = pssmShadowRenderer;
        pssmShadowRenderer.needsfallBackMaterial = true;
    }
}
