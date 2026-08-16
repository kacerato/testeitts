package com.jme3.terrain.geomipmap;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.AbstractControl;
import com.jme3.terrain.Terrain;
import com.jme3.terrain.executor.TerrainExecutorService;
import com.jme3.terrain.geomipmap.lodcalc.DistanceLodCalculator;
import com.jme3.terrain.geomipmap.lodcalc.LodCalculator;
import com.jme3.util.SafeArrayList;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TerrainLodControl extends AbstractControl {
    protected Camera camera;
    protected SafeArrayList<Vector3f> cameraLocations;
    protected SafeArrayList<Camera> cameras;
    protected boolean forceUpdate;
    protected boolean hasResetLod;
    protected Future<HashMap<String, UpdatedTerrainPatch>> indexer;
    protected SafeArrayList<Vector3f> lastCameraLocations;
    protected AtomicBoolean lodCalcRunning;
    protected LodCalculator lodCalculator;
    private int lodOffCount;
    protected Vector3f previousCameraLocation;
    protected Terrain terrain;
    protected boolean useRenderCamera;

    public class UpdateLOD implements Callable<HashMap<String, UpdatedTerrainPatch>> {
        protected final List<Vector3f> camLocations;
        protected final LodCalculator lodCalculator;

        public UpdateLOD(List<Vector3f> list, LodCalculator lodCalculator) {
            this.camLocations = list;
            this.lodCalculator = lodCalculator;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public HashMap<String, UpdatedTerrainPatch> call() throws Exception {
            TerrainQuad terrainQuad = (TerrainQuad) TerrainLodControl.this.getSpatial();
            HashMap<String, UpdatedTerrainPatch> hashMap = new HashMap<>();
            if (!terrainQuad.calculateLod(this.camLocations, hashMap, this.lodCalculator)) {
                TerrainLodControl.this.lodCalcRunning.set(false);
                return null;
            }
            terrainQuad.findNeighboursLod(hashMap);
            terrainQuad.fixEdges(hashMap);
            terrainQuad.reIndexPages(hashMap, this.lodCalculator.usesVariableLod());
            TerrainLodControl.this.lodCalcRunning.set(false);
            return hashMap;
        }
    }

    public TerrainLodControl() {
        this.hasResetLod = false;
        this.forceUpdate = true;
        this.previousCameraLocation = new Vector3f();
        this.cameras = new SafeArrayList<>(Camera.class);
        this.cameraLocations = new SafeArrayList<>(Vector3f.class);
        this.lastCameraLocations = new SafeArrayList<>(Vector3f.class);
        this.lodCalcRunning = new AtomicBoolean(false);
        this.lodOffCount = 0;
        this.lodCalculator = makeLodCalculator();
    }

    private List<Vector3f> cloneVectorList(SafeArrayList<Vector3f> safeArrayList) {
        ArrayList arrayList = new ArrayList(safeArrayList.size());
        for (Vector3f vector3f : safeArrayList.getArray()) {
            arrayList.add(vector3f.m1292clone());
        }
        return arrayList;
    }

    private void updateQuadLODs() {
        Future<HashMap<String, UpdatedTerrainPatch>> future = this.indexer;
        if (future == null || !future.isDone()) {
            return;
        }
        try {
            try {
                HashMap<String, UpdatedTerrainPatch> hashMap = this.indexer.get();
                if (hashMap != null) {
                    Iterator<UpdatedTerrainPatch> it = hashMap.values().iterator();
                    while (it.hasNext()) {
                        it.next().updateAll();
                    }
                }
            } finally {
                this.indexer = null;
            }
        } catch (InterruptedException | ExecutionException e10) {
            Logger.getLogger(TerrainLodControl.class.getName()).log(Level.SEVERE, (String) null, e10);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.lodCalculator = (LodCalculator) cloner.clone(this.lodCalculator);
        this.cameras = new SafeArrayList<>(Camera.class, this.cameras);
        this.cameraLocations = new SafeArrayList<>(Vector3f.class);
        this.lastCameraLocations = new SafeArrayList<>(Vector3f.class);
        this.lodCalcRunning = new AtomicBoolean();
        this.previousCameraLocation = new Vector3f();
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
        if (isUseRenderCamera() && this.camera != viewPort.getCamera()) {
            Camera camera = viewPort.getCamera();
            this.camera = camera;
            this.previousCameraLocation.set(camera.getLocation());
        }
    }

    @Override
    public void controlUpdate(float f10) {
        LodCalculator lodCalculator = this.lodCalculator;
        if (lodCalculator == null) {
            return;
        }
        if (!this.enabled && !this.hasResetLod) {
            this.hasResetLod = true;
            lodCalculator.turnOffLod();
        }
        if (isUseRenderCamera()) {
            updateLOD(this.lodCalculator);
            return;
        }
        if (this.cameras.isEmpty()) {
            return;
        }
        if (this.cameraLocations.size() != this.cameras.size()) {
            this.cameraLocations.clear();
            for (int i10 = 0; i10 < this.cameras.size(); i10++) {
                this.cameraLocations.add(new Vector3f());
            }
        }
        for (int i11 = 0; i11 < this.cameras.size(); i11++) {
            this.cameraLocations.get(i11).set(this.cameras.get(i11).getLocation());
        }
        updateLOD(this.cameraLocations, this.lodCalculator);
    }

    public UpdateLOD createLodUpdateTask(List<Vector3f> list, LodCalculator lodCalculator) {
        return new UpdateLOD(list, lodCalculator);
    }

    public void detachAndCleanUpControl() {
        Future<HashMap<String, UpdatedTerrainPatch>> future = this.indexer;
        if (future != null) {
            future.cancel(true);
            this.indexer = null;
        }
        getSpatial().removeControl(this);
    }

    public void forceUpdate() {
        this.forceUpdate = true;
    }

    public LodCalculator getLodCalculator() {
        return this.lodCalculator;
    }

    public boolean isUseRenderCamera() {
        return this.useRenderCamera;
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public DistanceLodCalculator makeLodCalculator() {
        return new DistanceLodCalculator(65, 2.7f);
    }

    public void prepareTerrain() {
        ((TerrainQuad) getSpatial()).cacheTerrainTransforms();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.terrain = (Terrain) capsule.readSavable("terrain", null);
        this.lodCalculator = (LodCalculator) capsule.readSavable("lodCalculator", new DistanceLodCalculator());
        this.useRenderCamera = capsule.readBoolean("useRenderCamera", false);
    }

    public void setCamera(Camera camera) {
        this.cameras.clear();
        this.cameras.add(camera);
    }

    public void setCameras(List<Camera> list) {
        this.cameras.clear();
        this.cameras.addAll(list);
    }

    @Override
    public void setEnabled(boolean z10) {
        this.enabled = z10;
        if (!z10) {
            this.hasResetLod = false;
        } else {
            this.hasResetLod = true;
            this.lodCalculator.turnOnLod();
        }
    }

    public void setLodCalculator(LodCalculator lodCalculator) {
        this.lodCalculator = lodCalculator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void setSpatial(Spatial spatial) {
        super.setSpatial(spatial);
        if (spatial instanceof Terrain) {
            this.terrain = (Terrain) spatial;
        }
    }

    public void setTerrain(Terrain terrain) {
        this.terrain = terrain;
    }

    public void setUseRenderCamera(boolean z10) {
        this.useRenderCamera = z10;
    }

    public void updateLOD(LodCalculator lodCalculator) {
        if (getSpatial() == null || this.camera == null) {
            return;
        }
        updateQuadLODs();
        if (updateLodOffCount(lodCalculator)) {
            return;
        }
        Vector3f location = this.camera.getLocation();
        if (this.forceUpdate || !this.previousCameraLocation.equals(location) || lodCalculator.isLodOff()) {
            this.previousCameraLocation.set(location);
            this.forceUpdate = false;
            if (this.lodCalcRunning.compareAndSet(false, true)) {
                prepareTerrain();
                this.indexer = TerrainExecutorService.getInstance().submit(createLodUpdateTask(Collections.singletonList(location), lodCalculator));
            }
        }
    }

    public boolean updateLodOffCount(LodCalculator lodCalculator) {
        if (lodCalculator.isLodOff()) {
            int i10 = this.lodOffCount;
            if (i10 == 1) {
                return true;
            }
            this.lodOffCount = i10 + 1;
        } else {
            this.lodOffCount = 0;
        }
        return false;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write((Node) this.terrain, "terrain", (Savable) null);
        capsule.write(this.lodCalculator, "lodCalculator", (Savable) null);
        capsule.write(this.useRenderCamera, "useRenderCamera", false);
    }

    public TerrainLodControl(Terrain terrain) {
        this();
        this.terrain = terrain;
    }

    public void updateLOD(SafeArrayList<Vector3f> safeArrayList, LodCalculator lodCalculator) {
        if (getSpatial() == null || safeArrayList.isEmpty()) {
            return;
        }
        updateQuadLODs();
        if (updateLodOffCount(lodCalculator)) {
            return;
        }
        if (this.forceUpdate || !safeArrayList.equals(this.lastCameraLocations) || lodCalculator.isLodOff()) {
            if (this.lastCameraLocations.size() != safeArrayList.size()) {
                this.lastCameraLocations.clear();
                for (int i10 = 0; i10 < safeArrayList.size(); i10++) {
                    this.lastCameraLocations.add(new Vector3f());
                }
            }
            for (int i11 = 0; i11 < safeArrayList.size(); i11++) {
                this.lastCameraLocations.get(i11).set(safeArrayList.get(i11));
            }
            this.forceUpdate = false;
            if (this.lodCalcRunning.compareAndSet(false, true)) {
                prepareTerrain();
                this.indexer = TerrainExecutorService.getInstance().submit(createLodUpdateTask(cloneVectorList(safeArrayList), lodCalculator));
            }
        }
    }

    public TerrainLodControl(Camera camera) {
        this();
        setCamera(camera);
    }

    public TerrainLodControl(Terrain terrain, Camera camera) {
        this(terrain);
        setCamera(camera);
    }

    public TerrainLodControl(Terrain terrain, List<Camera> list) {
        this(terrain);
        setCameras(list);
    }
}
