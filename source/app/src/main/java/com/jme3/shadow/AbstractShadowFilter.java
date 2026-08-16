package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector4f;
import com.jme3.post.Filter;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.shadow.AbstractShadowRenderer;
import com.jme3.texture.FrameBuffer;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;

public abstract class AbstractShadowFilter<T extends AbstractShadowRenderer> extends Filter implements JmeCloneable {
    protected T shadowRenderer;
    private final Matrix4f tempMat4;
    private final Vector4f tempVec4;
    protected ViewPort viewPort;

    public AbstractShadowFilter() {
        this.tempVec4 = new Vector4f();
        this.tempMat4 = new Matrix4f();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.material = (Material) cloner.clone(this.material);
        T t10 = (T) cloner.clone(this.shadowRenderer);
        this.shadowRenderer = t10;
        t10.setPostShadowMaterial(this.material);
    }

    public void displayFrustum() {
        this.shadowRenderer.displayFrustum();
    }

    public EdgeFilteringMode getEdgeFilteringMode() {
        return this.shadowRenderer.getEdgeFilteringMode();
    }

    public int getEdgesThickness() {
        return this.shadowRenderer.getEdgesThickness();
    }

    @Override
    public Material getMaterial() {
        return this.material;
    }

    public int getNumShadowMaps() {
        return this.shadowRenderer.getNumShadowMaps();
    }

    public RenderState getPreShadowForcedRenderState() {
        return this.shadowRenderer.getPreShadowForcedRenderState();
    }

    public CompareMode getShadowCompareMode() {
        return this.shadowRenderer.getShadowCompareMode();
    }

    public float getShadowIntensity() {
        return this.shadowRenderer.getShadowIntensity();
    }

    public int getShadowMapSize() {
        return this.shadowRenderer.getShadowMapSize();
    }

    @Deprecated
    public Material getShadowMaterial() {
        return this.material;
    }

    public float getShadowZExtend() {
        return this.shadowRenderer.getShadowZExtend();
    }

    public float getShadowZFadeLength() {
        return this.shadowRenderer.getShadowZFadeLength();
    }

    @Override
    public void initFilter(AssetManager assetManager, RenderManager renderManager, ViewPort viewPort, int i10, int i11) {
        this.shadowRenderer.needsfallBackMaterial = true;
        Material material = new Material(assetManager, "Common/MatDefs/Shadow/PostShadowFilter.j3md");
        this.material = material;
        this.shadowRenderer.setPostShadowMaterial(material);
        this.shadowRenderer.initialize(renderManager, viewPort);
        this.viewPort = viewPort;
    }

    @Deprecated
    public boolean isFlushQueues() {
        return this.shadowRenderer.isFlushQueues();
    }

    public boolean isRenderBackFacesShadows() {
        return this.shadowRenderer.isRenderBackFacesShadows();
    }

    @Override
    public boolean isRequiresDepthTexture() {
        return true;
    }

    @Override
    public void postFrame(RenderManager renderManager, ViewPort viewPort, FrameBuffer frameBuffer, FrameBuffer frameBuffer2) {
        T t10 = this.shadowRenderer;
        if (t10.skipPostPass) {
            return;
        }
        t10.setPostShadowParams();
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
        this.shadowRenderer.postQueue(renderQueue);
        if (this.shadowRenderer.skipPostPass) {
            this.material.setTexture("ShadowMap0", null);
        }
    }

    @Override
    public void preFrame(float f10) {
        this.shadowRenderer.preFrame(f10);
        Matrix4f viewProjectionMatrix = this.viewPort.getCamera().getViewProjectionMatrix();
        this.material.setMatrix4("ViewProjectionMatrixInverse", this.tempMat4.set(viewProjectionMatrix).invertLocal());
        this.material.setVector4("ViewProjectionMatrixRow2", this.tempVec4.set(viewProjectionMatrix.m20, viewProjectionMatrix.m21, viewProjectionMatrix.m22, viewProjectionMatrix.m23));
    }

    public final void setEdgeFilteringMode(EdgeFilteringMode edgeFilteringMode) {
        this.shadowRenderer.setEdgeFilteringMode(edgeFilteringMode);
    }

    public void setEdgesThickness(int i10) {
        this.shadowRenderer.setEdgesThickness(i10);
    }

    public void setRenderBackFacesShadows(boolean z10) {
        this.shadowRenderer.setRenderBackFacesShadows(z10);
    }

    public final void setShadowCompareMode(CompareMode compareMode) {
        this.shadowRenderer.setShadowCompareMode(compareMode);
    }

    public final void setShadowIntensity(float f10) {
        this.shadowRenderer.setShadowIntensity(f10);
    }

    public void setShadowZExtend(float f10) {
        this.shadowRenderer.setShadowZExtend(f10);
    }

    public void setShadowZFadeLength(float f10) {
        this.shadowRenderer.setShadowZFadeLength(f10);
    }

    @Override
    public AbstractShadowFilter<T> jmeClone() {
        try {
            return (AbstractShadowFilter) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public AbstractShadowFilter(AssetManager assetManager, int i10, T t10) {
        super("Post Shadow");
        this.tempVec4 = new Vector4f();
        this.tempMat4 = new Matrix4f();
        this.shadowRenderer = t10;
        t10.setRenderBackFacesShadows(true);
    }
}
