package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.light.DirectionalLight;
import java.io.IOException;

public class DirectionalLightShadowFilter extends AbstractShadowFilter<DirectionalLightShadowRenderer> {
    public DirectionalLightShadowFilter() {
    }

    public float getLambda() {
        return ((DirectionalLightShadowRenderer) this.shadowRenderer).getLambda();
    }

    public DirectionalLight getLight() {
        return ((DirectionalLightShadowRenderer) this.shadowRenderer).getLight();
    }

    public boolean isEnabledStabilization() {
        return ((DirectionalLightShadowRenderer) this.shadowRenderer).isEnabledStabilization();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.shadowRenderer = (DirectionalLightShadowRenderer) jmeImporter.getCapsule(this).readSavable("shadowRenderer", null);
    }

    public void setEnabledStabilization(boolean z10) {
        ((DirectionalLightShadowRenderer) this.shadowRenderer).setEnabledStabilization(z10);
    }

    public void setLambda(float f10) {
        ((DirectionalLightShadowRenderer) this.shadowRenderer).setLambda(f10);
    }

    public void setLight(DirectionalLight directionalLight) {
        ((DirectionalLightShadowRenderer) this.shadowRenderer).setLight(directionalLight);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.shadowRenderer, "shadowRenderer", (Savable) null);
    }

    public DirectionalLightShadowFilter(AssetManager assetManager, int i10, int i11) {
        super(assetManager, i10, new DirectionalLightShadowRenderer(assetManager, i10, i11));
    }
}
