package com.jme3.terrain.geomipmap;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.AbstractControl;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class NormalRecalcControl extends AbstractControl {
    private TerrainQuad terrain;

    public NormalRecalcControl() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.terrain = (TerrainQuad) cloner.clone(this.terrain);
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public void controlUpdate(float f10) {
        this.terrain.updateNormals();
    }

    public TerrainQuad getTerrain() {
        return this.terrain;
    }

    @Override
    public Object jmeClone() {
        NormalRecalcControl normalRecalcControl = (NormalRecalcControl) super.jmeClone();
        normalRecalcControl.setEnabled(true);
        return normalRecalcControl;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.terrain = (TerrainQuad) jmeImporter.getCapsule(this).readSavable("terrain", null);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        super.setSpatial(spatial);
        if (spatial instanceof TerrainQuad) {
            this.terrain = (TerrainQuad) spatial;
        }
    }

    public void setTerrain(TerrainQuad terrainQuad) {
        this.terrain = terrainQuad;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.terrain, "terrain", (Savable) null);
    }

    public NormalRecalcControl(TerrainQuad terrainQuad) {
        this.terrain = terrainQuad;
    }
}
