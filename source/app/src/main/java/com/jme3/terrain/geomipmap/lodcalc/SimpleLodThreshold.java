package com.jme3.terrain.geomipmap.lodcalc;

import com.ardor3d.util.export.xml.XMLExporter;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.terrain.Terrain;
import com.jme3.terrain.geomipmap.TerrainQuad;
import java.io.IOException;

public class SimpleLodThreshold implements LodThreshold {
    private float lodMultiplier = 2.0f;
    private int size;

    public SimpleLodThreshold() {
    }

    @Override
    public float getLodDistanceThreshold() {
        return this.size * this.lodMultiplier;
    }

    public float getLodMultiplier() {
        return this.lodMultiplier;
    }

    public int getSize() {
        return this.size;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        this.size = jmeImporter.getCapsule(this).readInt(XMLExporter.ATTRIBUTE_SIZE, 16);
        this.lodMultiplier = r3.readInt("lodMultiplier", 2);
    }

    public void setLodMultiplier(float f10) {
        this.lodMultiplier = f10;
    }

    public void setSize(int i10) {
        this.size = i10;
    }

    public String toString() {
        return "SimpleLodThreshold " + this.size + ", " + this.lodMultiplier;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.size, XMLExporter.ATTRIBUTE_SIZE, 16);
        capsule.write(this.lodMultiplier, "lodMultiplier", 2.0f);
    }

    @Override
    public LodThreshold m1304clone() {
        SimpleLodThreshold simpleLodThreshold = new SimpleLodThreshold();
        simpleLodThreshold.size = this.size;
        simpleLodThreshold.lodMultiplier = this.lodMultiplier;
        return simpleLodThreshold;
    }

    public SimpleLodThreshold(Terrain terrain) {
        if (terrain instanceof TerrainQuad) {
            this.size = ((TerrainQuad) terrain).getPatchSize();
        }
    }

    public SimpleLodThreshold(int i10, float f10) {
        this.size = i10;
    }
}
