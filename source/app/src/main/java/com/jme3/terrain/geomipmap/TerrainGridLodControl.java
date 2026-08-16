package com.jme3.terrain.geomipmap;

import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.terrain.Terrain;
import com.jme3.terrain.geomipmap.lodcalc.LodCalculator;
import com.jme3.util.SafeArrayList;
import java.util.Iterator;

public class TerrainGridLodControl extends TerrainLodControl {
    public TerrainGridLodControl(Terrain terrain, Camera camera) {
        super(terrain, camera);
    }

    @Override
    public void updateLOD(SafeArrayList<Vector3f> safeArrayList, LodCalculator lodCalculator) {
        TerrainGrid terrainGrid = (TerrainGrid) getSpatial();
        Vector3f camCell = terrainGrid.getCamCell(safeArrayList.isEmpty() ? Vector3f.ZERO.m1292clone() : safeArrayList.get(0));
        if (terrainGrid.cellsLoaded > 1) {
            terrainGrid.gridOffset[0] = Math.round(camCell.f81611x * (terrainGrid.size / 2));
            terrainGrid.gridOffset[1] = Math.round(camCell.f81613z * (terrainGrid.size / 2));
            terrainGrid.cellsLoaded = 0;
        }
        float f10 = camCell.f81611x;
        Vector3f vector3f = terrainGrid.currentCamCell;
        if (f10 != vector3f.f81611x || camCell.f81613z != vector3f.f81613z || !terrainGrid.runOnce) {
            terrainGrid.updateChildren(camCell);
            Iterator<TerrainGridListener> it = terrainGrid.listeners.iterator();
            while (it.hasNext()) {
                it.next().gridMoved(camCell);
            }
        }
        terrainGrid.runOnce = true;
        super.updateLOD(safeArrayList, lodCalculator);
    }
}
