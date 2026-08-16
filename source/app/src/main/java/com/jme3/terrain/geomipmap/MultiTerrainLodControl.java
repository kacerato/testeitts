package com.jme3.terrain.geomipmap;

import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.terrain.Terrain;
import com.jme3.terrain.geomipmap.TerrainLodControl;
import com.jme3.terrain.geomipmap.lodcalc.DistanceLodCalculator;
import com.jme3.terrain.geomipmap.lodcalc.LodCalculator;
import com.jme3.util.SafeArrayList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class MultiTerrainLodControl extends TerrainLodControl {
    private List<TerrainQuad> addedTerrains;
    private List<TerrainQuad> removedTerrains;
    private SafeArrayList<TerrainQuad> terrains;

    public class UpdateMultiLOD extends TerrainLodControl.UpdateLOD {
        public UpdateMultiLOD(List<Vector3f> list, LodCalculator lodCalculator) {
            super(list, lodCalculator);
        }

        @Override
        public HashMap<String, UpdatedTerrainPatch> call() throws Exception {
            HashMap<String, UpdatedTerrainPatch> hashMap = new HashMap<>();
            Iterator it = MultiTerrainLodControl.this.terrains.iterator();
            while (it.hasNext()) {
                ((TerrainQuad) it.next()).calculateLod(this.camLocations, hashMap, this.lodCalculator);
            }
            Iterator it2 = MultiTerrainLodControl.this.terrains.iterator();
            while (it2.hasNext()) {
                ((TerrainQuad) it2.next()).findNeighboursLod(hashMap);
            }
            Iterator it3 = MultiTerrainLodControl.this.terrains.iterator();
            while (it3.hasNext()) {
                ((TerrainQuad) it3.next()).fixEdges(hashMap);
            }
            Iterator it4 = MultiTerrainLodControl.this.terrains.iterator();
            while (it4.hasNext()) {
                ((TerrainQuad) it4.next()).reIndexPages(hashMap, this.lodCalculator.usesVariableLod());
            }
            MultiTerrainLodControl.this.lodCalcRunning.set(false);
            return hashMap;
        }
    }

    public MultiTerrainLodControl() {
        this.terrains = new SafeArrayList<>(TerrainQuad.class);
        this.removedTerrains = new ArrayList();
        this.addedTerrains = new ArrayList();
    }

    public void addTerrain(TerrainQuad terrainQuad) {
        this.addedTerrains.add(terrainQuad);
    }

    @Override
    public TerrainLodControl.UpdateLOD createLodUpdateTask(List<Vector3f> list, LodCalculator lodCalculator) {
        return new UpdateMultiLOD(list, lodCalculator);
    }

    @Override
    public DistanceLodCalculator makeLodCalculator() {
        return new DistanceLodCalculator(65, 2.7f);
    }

    @Override
    public void prepareTerrain() {
        if (!this.addedTerrains.isEmpty()) {
            for (TerrainQuad terrainQuad : this.addedTerrains) {
                if (!this.terrains.contains(terrainQuad)) {
                    this.terrains.add(terrainQuad);
                }
            }
            this.addedTerrains.clear();
        }
        if (!this.removedTerrains.isEmpty()) {
            this.terrains.removeAll(this.removedTerrains);
            this.removedTerrains.clear();
        }
        for (TerrainQuad terrainQuad2 : this.terrains.getArray()) {
            terrainQuad2.cacheTerrainTransforms();
        }
    }

    public void removeTerrain(TerrainQuad terrainQuad) {
        this.removedTerrains.add(terrainQuad);
    }

    public MultiTerrainLodControl(Terrain terrain) {
        this();
        setTerrain(terrain);
    }

    public MultiTerrainLodControl(Camera camera) {
        this();
        setCamera(camera);
    }

    public MultiTerrainLodControl(Terrain terrain, Camera camera) {
        this(terrain);
        setCamera(camera);
    }

    public MultiTerrainLodControl(Terrain terrain, List<Camera> list) {
        this(terrain);
        setCameras(list);
    }
}
