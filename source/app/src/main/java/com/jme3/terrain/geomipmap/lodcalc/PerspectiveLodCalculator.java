package com.jme3.terrain.geomipmap.lodcalc;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.terrain.geomipmap.TerrainPatch;
import com.jme3.terrain.geomipmap.UpdatedTerrainPatch;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

public class PerspectiveLodCalculator implements LodCalculator {
    private Camera cam;
    private float pixelError;
    private boolean turnOffLod = false;

    public PerspectiveLodCalculator() {
    }

    private float getCameraConstant(Camera camera, float f10) {
        return (camera.getFrustumNear() / FastMath.abs(camera.getFrustumTop())) / ((f10 * 2.0f) / camera.getHeight());
    }

    @Override
    public boolean calculateLod(TerrainPatch terrainPatch, List<Vector3f> list, HashMap<String, UpdatedTerrainPatch> hashMap) {
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
        float[] lodEntropies = terrainPatch.getLodEntropies();
        float cameraConstant = getCameraConstant(this.cam, this.pixelError);
        float distance = getCenterLocation(terrainPatch).distance(list.get(0));
        int i10 = 0;
        while (i10 <= terrainPatch.getMaxLod()) {
            if (distance < lodEntropies[i10] * cameraConstant || i10 == terrainPatch.getMaxLod()) {
                boolean z10 = i10 != terrainPatch.getLod();
                int lod2 = terrainPatch.getLod();
                UpdatedTerrainPatch updatedTerrainPatch2 = hashMap.get(terrainPatch.getName());
                if (updatedTerrainPatch2 == null) {
                    updatedTerrainPatch2 = new UpdatedTerrainPatch(terrainPatch);
                    hashMap.put(updatedTerrainPatch2.getName(), updatedTerrainPatch2);
                }
                updatedTerrainPatch2.setNewLod(i10);
                updatedTerrainPatch2.setPreviousLod(lod2);
                return z10;
            }
            i10++;
        }
        return false;
    }

    public Vector3f getCenterLocation(TerrainPatch terrainPatch) {
        Vector3f m1292clone = terrainPatch.getWorldTranslation().m1292clone();
        m1292clone.f81611x += terrainPatch.getSize() / 2;
        m1292clone.f81613z += terrainPatch.getSize() / 2;
        return m1292clone;
    }

    public float getPixelError() {
        return this.pixelError;
    }

    @Override
    public boolean isLodOff() {
        return this.turnOffLod;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
    }

    public void setCam(Camera camera) {
        this.cam = camera;
    }

    public void setPixelError(float f10) {
        this.pixelError = f10;
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
        return true;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
    }

    public PerspectiveLodCalculator(Camera camera, float f10) {
        this.cam = camera;
        this.pixelError = f10;
    }

    @Override
    public PerspectiveLodCalculator m1303clone() {
        try {
            return (PerspectiveLodCalculator) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
