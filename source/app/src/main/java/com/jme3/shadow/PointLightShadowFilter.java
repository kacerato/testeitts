package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.light.PointLight;
import java.io.IOException;

public class PointLightShadowFilter extends AbstractShadowFilter<PointLightShadowRenderer> {
    public PointLightShadowFilter() {
    }

    public PointLight getLight() {
        return ((PointLightShadowRenderer) this.shadowRenderer).getLight();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.shadowRenderer = (PointLightShadowRenderer) jmeImporter.getCapsule(this).readSavable("shadowRenderer", null);
    }

    public void setLight(PointLight pointLight) {
        ((PointLightShadowRenderer) this.shadowRenderer).setLight(pointLight);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.shadowRenderer, "shadowRenderer", (Savable) null);
    }

    public PointLightShadowFilter(AssetManager assetManager, int i10) {
        super(assetManager, i10, new PointLightShadowRenderer(assetManager, i10));
    }
}
