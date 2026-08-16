package com.jme3.terrain.geomipmap.lodcalc;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.terrain.geomipmap.TerrainPatch;
import com.jme3.terrain.geomipmap.UpdatedTerrainPatch;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

public class DistanceLodCalculator implements LodCalculator {
    private float lodMultiplier;
    private int size;
    private boolean turnOffLod;

    public DistanceLodCalculator() {
        this.lodMultiplier = 2.0f;
        this.turnOffLod = false;
    }

    @Override
    public boolean calculateLod(TerrainPatch terrainPatch, List<Vector3f> list, HashMap<String, UpdatedTerrainPatch> hashMap) {
        if (list != null && !list.isEmpty()) {
            float distance = getCenterLocation(terrainPatch).distance(list.get(0));
            if (this.turnOffLod) {
                int lod = terrainPatch.getLod();
                UpdatedTerrainPatch updatedTerrainPatch = hashMap.get(terrainPatch.getName());
                if (updatedTerrainPatch == null) {
                    updatedTerrainPatch = new UpdatedTerrainPatch(terrainPatch);
                    hashMap.put(updatedTerrainPatch.getName(), updatedTerrainPatch);
                }
                updatedTerrainPatch.setNewLod(0);
                updatedTerrainPatch.setPreviousLod(lod);
                return true;
            }
            int i10 = 0;
            while (i10 <= terrainPatch.getMaxLod()) {
                int i11 = i10 + 1;
                if (distance < getLodDistanceThreshold() * i11 * terrainPatch.getWorldScaleCached().f81611x || i10 == terrainPatch.getMaxLod()) {
                    r0 = i10 != terrainPatch.getLod();
                    int lod2 = terrainPatch.getLod();
                    UpdatedTerrainPatch updatedTerrainPatch2 = hashMap.get(terrainPatch.getName());
                    if (updatedTerrainPatch2 == null) {
                        updatedTerrainPatch2 = new UpdatedTerrainPatch(terrainPatch);
                        hashMap.put(updatedTerrainPatch2.getName(), updatedTerrainPatch2);
                    }
                    updatedTerrainPatch2.setNewLod(i10);
                    updatedTerrainPatch2.setPreviousLod(lod2);
                } else {
                    i10 = i11;
                }
            }
        }
        return r0;
    }

    public Vector3f getCenterLocation(TerrainPatch terrainPatch) {
        Vector3f worldTranslationCached = terrainPatch.getWorldTranslationCached();
        worldTranslationCached.f81611x += (terrainPatch.getSize() * terrainPatch.getWorldScaleCached().f81611x) / 2.0f;
        worldTranslationCached.f81613z += (terrainPatch.getSize() * terrainPatch.getWorldScaleCached().f81613z) / 2.0f;
        return worldTranslationCached;
    }

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
    public boolean isLodOff() {
        return this.turnOffLod;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.size = capsule.readInt("patchSize", 32);
        this.lodMultiplier = capsule.readFloat("lodMultiplier", 32.0f);
    }

    public void setLodMultiplier(float f10) {
        this.lodMultiplier = f10;
    }

    public void setSize(int i10) {
        this.size = i10;
    }

    public String toString() {
        return "DistanceLodCalculator " + this.size + "*" + this.lodMultiplier;
    }

    @Override
    public void turnOffLod() {
        this.turnOffLod = true;
    }

    @Override
    public void turnOnLod() {
        this.turnOffLod = false;
    }

    @Override
    public boolean usesVariableLod() {
        return false;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.size, "patchSize", 32);
        capsule.write(this.lodMultiplier, "lodMultiplier", 32.0f);
    }

    @Override
    public DistanceLodCalculator m1302clone() {
        return new DistanceLodCalculator(this.size, this.lodMultiplier);
    }

    public DistanceLodCalculator(int i10, float f10) {
        this.turnOffLod = false;
        this.size = i10;
        this.lodMultiplier = f10;
    }
}
