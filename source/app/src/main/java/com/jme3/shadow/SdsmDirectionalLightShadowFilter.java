package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.light.DirectionalLight;
import com.jme3.material.Material;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Texture;
import java.io.IOException;

public class SdsmDirectionalLightShadowFilter extends AbstractShadowFilter<SdsmDirectionalLightShadowRenderer> {
    public SdsmDirectionalLightShadowFilter() {
    }

    @Override
    public void cleanUpFilter(Renderer renderer) {
        super.cleanUpFilter(renderer);
        T t10 = this.shadowRenderer;
        if (t10 != 0) {
            ((SdsmDirectionalLightShadowRenderer) t10).cleanup();
        }
    }

    public void displayAllFrustums() {
        ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).displayAllDebugFrustums();
    }

    public float getFitExpansionFactor() {
        return ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).getFitExpansionFactor();
    }

    public float getFitFrameDelayTolerance() {
        return ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).getFitFrameDelayTolerance();
    }

    public DirectionalLight getLight() {
        return ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).getLight();
    }

    @Override
    public void initFilter(AssetManager assetManager, RenderManager renderManager, ViewPort viewPort, int i10, int i11) {
        ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).needsfallBackMaterial = true;
        Material material = new Material(assetManager, "Common/MatDefs/Shadow/Sdsm/SdsmPostShadow.j3md");
        this.material = material;
        ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).setPostShadowMaterial(material);
        ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).initialize(renderManager, viewPort);
        this.viewPort = viewPort;
    }

    @Override
    public void postFrame(RenderManager renderManager, ViewPort viewPort, FrameBuffer frameBuffer, FrameBuffer frameBuffer2) {
        super.postQueue(null);
        super.postFrame(renderManager, viewPort, frameBuffer, frameBuffer2);
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.shadowRenderer = (SdsmDirectionalLightShadowRenderer) jmeImporter.getCapsule(this).readSavable("shadowRenderer", null);
    }

    @Override
    public void setDepthTexture(Texture texture) {
        super.setDepthTexture(texture);
        ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).setDepthTexture(texture);
    }

    public void setFitExpansionFactor(float f10) {
        ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).setFitExpansionFactor(f10);
    }

    public void setFitFrameDelayTolerance(float f10) {
        ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).setFitFrameDelayTolerance(f10);
    }

    public void setLight(DirectionalLight directionalLight) {
        ((SdsmDirectionalLightShadowRenderer) this.shadowRenderer).setLight(directionalLight);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.shadowRenderer, "shadowRenderer", (Savable) null);
    }

    public SdsmDirectionalLightShadowFilter(AssetManager assetManager, int i10, int i11) {
        super(assetManager, i10, new SdsmDirectionalLightShadowRenderer(assetManager, i10, i11));
    }
}
