package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.light.SpotLight;
import java.io.IOException;

public class SpotLightShadowFilter extends AbstractShadowFilter<SpotLightShadowRenderer> {
    public SpotLightShadowFilter() {
    }

    public SpotLight getLight() {
        return ((SpotLightShadowRenderer) this.shadowRenderer).getLight();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.shadowRenderer = (SpotLightShadowRenderer) jmeImporter.getCapsule(this).readSavable("shadowRenderer", null);
    }

    public void setLight(SpotLight spotLight) {
        ((SpotLightShadowRenderer) this.shadowRenderer).setLight(spotLight);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.shadowRenderer, "shadowRenderer", (Savable) null);
    }

    public SpotLightShadowFilter(AssetManager assetManager, int i10) {
        super(assetManager, i10, new SpotLightShadowRenderer(assetManager, i10));
    }
}
