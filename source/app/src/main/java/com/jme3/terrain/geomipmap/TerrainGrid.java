package com.jme3.terrain.geomipmap;

import com.ardor3d.util.export.xml.XMLExporter;
import com.jme3.bounding.BoundingBox;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.math.FastMath;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.UpdateControl;
import com.jme3.terrain.Terrain;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TerrainGrid extends TerrainQuad {
    protected static final Logger log = Logger.getLogger(TerrainGrid.class.getCanonicalName());
    protected LRUCache<Vector3f, TerrainQuad> cache;
    protected ExecutorService cacheExecutor;
    protected int cellsLoaded;
    protected Vector3f currentCamCell;
    protected int[] gridOffset;
    private TerrainGridTileLoader gridTileLoader;
    protected Set<TerrainGridListener> listeners;
    protected Material material;
    protected Vector3f[] quadIndex;
    protected int quadSize;
    protected int quarterSize;
    protected boolean runOnce;

    public class UpdateQuadCache implements Runnable {
        protected final Vector3f location;

        public UpdateQuadCache(Vector3f vector3f) {
            this.location = vector3f;
        }

        @Override
        public void run() {
            for (int i10 = 0; i10 < 4; i10++) {
                for (int i11 = 0; i11 < 4; i11++) {
                    int i12 = (i10 * 4) + i11;
                    final Vector3f add = this.location.add(TerrainGrid.this.quadIndex[i12]);
                    final TerrainQuad terrainQuad = TerrainGrid.this.cache.get(add);
                    if (terrainQuad == null && TerrainGrid.this.gridTileLoader != null) {
                        terrainQuad = TerrainGrid.this.gridTileLoader.getTerrainQuadAt(add);
                        if (terrainQuad.getMaterial() == null) {
                            terrainQuad.setMaterial(TerrainGrid.this.material.mo1263clone());
                        }
                        TerrainGrid.log.log(Level.FINE, "Loaded TerrainQuad {0} from TerrainQuadGrid", terrainQuad.getName());
                    }
                    TerrainGrid.this.cache.put(add, terrainQuad);
                    final int quadrant = TerrainGrid.this.getQuadrant(i12);
                    if (TerrainGrid.this.isCenter(i12)) {
                        ((UpdateControl) TerrainGrid.this.getControl(UpdateControl.class)).enqueue(new Callable<Object>(this) {
                            final UpdateQuadCache this$1;

                            {
                                this.this$1 = this;
                            }

                            @Override
                            public Object call() throws Exception {
                                if (terrainQuad.getParent() != null) {
                                    TerrainGrid.this.attachQuadAt(terrainQuad, quadrant, add, true);
                                    return null;
                                }
                                TerrainGrid.this.attachQuadAt(terrainQuad, quadrant, add, false);
                                return null;
                            }
                        });
                    } else {
                        ((UpdateControl) TerrainGrid.this.getControl(UpdateControl.class)).enqueue(new Callable<Object>(this) {
                            final UpdateQuadCache this$1;

                            {
                                this.this$1 = this;
                            }

                            @Override
                            public Object call() throws Exception {
                                TerrainGrid.this.removeQuad(terrainQuad);
                                return null;
                            }
                        });
                    }
                }
            }
            ((UpdateControl) TerrainGrid.this.getControl(UpdateControl.class)).enqueue(new Callable<Object>() {
                @Override
                public Object call() throws Exception {
                    for (Spatial spatial : TerrainGrid.this.getChildren()) {
                        if (spatial instanceof TerrainQuad) {
                            ((TerrainQuad) spatial).resetCachedNeighbours();
                        }
                    }
                    System.out.println("fixed normals " + ((Object) UpdateQuadCache.this.location.m1292clone().mult(TerrainGrid.this.size)));
                    TerrainGrid.this.setNeedToRecalculateNormals();
                    return null;
                }
            });
        }
    }

    public TerrainGrid(String str, int i10, int i11, Vector3f vector3f, TerrainGridTileLoader terrainGridTileLoader, Vector2f vector2f, float f10) {
        this.currentCamCell = Vector3f.ZERO;
        this.listeners = new HashSet();
        this.cache = new LRUCache<>(20);
        this.cellsLoaded = 0;
        this.runOnce = false;
        this.name = str;
        this.patchSize = i10;
        this.size = i11;
        this.stepScale = vector3f;
        this.offset = vector2f;
        this.offsetAmount = f10;
        initData();
        this.gridTileLoader = terrainGridTileLoader;
        terrainGridTileLoader.setPatchSize(this.patchSize);
        terrainGridTileLoader.setQuadSize(this.quadSize);
        addControl(new UpdateControl());
        Vector3f vector3f2 = new Vector3f(0.0f, 0.0f, 0.0f);
        int i12 = this.size;
        fixNormalEdges(new BoundingBox(vector3f2, i12 * 2, Float.MAX_VALUE, i12 * 2));
        addControl(new NormalRecalcControl(this));
    }

    private void initData() {
        int i10 = this.size;
        this.quarterSize = i10 >> 2;
        this.quadSize = (i10 + 1) >> 1;
        this.totalSize = i10;
        this.gridOffset = new int[]{0, 0};
        this.quadIndex = new Vector3f[]{new Vector3f(-1.0f, 0.0f, -1.0f), new Vector3f(0.0f, 0.0f, -1.0f), new Vector3f(1.0f, 0.0f, -1.0f), new Vector3f(2.0f, 0.0f, -1.0f), new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(0.0f, 0.0f, 0.0f), new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(2.0f, 0.0f, 0.0f), new Vector3f(-1.0f, 0.0f, 1.0f), new Vector3f(0.0f, 0.0f, 1.0f), new Vector3f(1.0f, 0.0f, 1.0f), new Vector3f(2.0f, 0.0f, 1.0f), new Vector3f(-1.0f, 0.0f, 2.0f), new Vector3f(0.0f, 0.0f, 2.0f), new Vector3f(1.0f, 0.0f, 2.0f), new Vector3f(2.0f, 0.0f, 2.0f)};
    }

    public void addListener(TerrainGridListener terrainGridListener) {
        this.listeners.add(terrainGridListener);
    }

    @Override
    public void adjustHeight(List<Vector2f> list, List<Float> list2) {
        Vector3f multLocal = getCurrentCell().mult(getLocalScale()).multLocal(this.quadSize - 1);
        for (Vector2f vector2f : list) {
            vector2f.f81609x -= multLocal.f81611x;
            vector2f.f81610y -= multLocal.f81613z;
        }
        super.adjustHeight(list, list2);
    }

    public void attachQuadAt(TerrainQuad terrainQuad, int i10, Vector3f vector3f, boolean z10) {
        terrainQuad.setQuadrant((short) i10);
        if (!z10) {
            attachChild(terrainQuad);
        }
        Vector3f mult = vector3f.mult(this.quadSize - 1);
        int i11 = this.quarterSize;
        terrainQuad.setLocalTranslation(mult.subtract(i11, 0.0f, i11));
        if (!z10) {
            Iterator<TerrainGridListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().tileAttached(vector3f, terrainQuad);
            }
        }
        updateModelBound();
    }

    public ExecutorService createExecutorService() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactory() {
            @Override
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("jME TerrainGrid Thread");
                thread.setDaemon(true);
                return thread;
            }
        }) {
            @Override
            public void afterExecute(Runnable runnable, Throwable th2) {
                super.afterExecute(runnable, th2);
                if (th2 == null && (runnable instanceof Future)) {
                    try {
                        Future future = (Future) runnable;
                        if (future.isDone()) {
                            future.get();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    } catch (CancellationException e10) {
                        th2 = e10;
                    } catch (ExecutionException e11) {
                        th2 = e11.getCause();
                    }
                }
                if (th2 != null) {
                    th2.printStackTrace();
                }
            }
        };
    }

    public Vector3f getCamCell(Vector3f vector3f) {
        Vector3f subtract = getTileCell(vector3f).subtract(new Vector3f(-0.5f, 0.0f, -0.5f));
        return new Vector3f(FastMath.floor(subtract.f81611x), 0.0f, FastMath.floor(subtract.f81613z));
    }

    public Vector3f getCurrentCell() {
        return this.currentCamCell;
    }

    public TerrainGridTileLoader getGridTileLoader() {
        return this.gridTileLoader;
    }

    @Override
    public float getHeightmapHeight(int i10, int i11) {
        int[] iArr = this.gridOffset;
        return super.getHeightmapHeight(i10 - iArr[0], i11 - iArr[1]);
    }

    @Override
    public Material getMaterial(Vector3f vector3f) {
        if (vector3f == null) {
            return null;
        }
        TerrainQuad terrainQuad = this.cache.get(getTileCell(vector3f));
        if (terrainQuad == null) {
            return null;
        }
        return terrainQuad.getMaterial(vector3f);
    }

    @Override
    public int getNumMajorSubdivisions() {
        return 2;
    }

    public int getQuadrant(int i10) {
        if (i10 == 5) {
            return 1;
        }
        if (i10 == 9) {
            return 2;
        }
        if (i10 == 6) {
            return 3;
        }
        return i10 == 10 ? 4 : 0;
    }

    public Terrain getTerrainAt(Vector3f vector3f) {
        if (vector3f == null) {
            return null;
        }
        return this.cache.get(new Vector3f(Math.round(r4.f81611x), getTileCell(vector3f.setY(0.0f)).f81612y, Math.round(r4.f81613z)));
    }

    public Terrain getTerrainAtCell(Vector3f vector3f) {
        return this.cache.get(vector3f);
    }

    public Vector3f getTileCell(Vector3f vector3f) {
        return vector3f.divide(getWorldScale().mult(this.quadSize));
    }

    public boolean isCenter(int i10) {
        return i10 == 9 || i10 == 5 || i10 == 10 || i10 == 6;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        this.size = capsule.readInt(XMLExporter.ATTRIBUTE_SIZE, 0);
        this.patchSize = capsule.readInt("patchSize", 0);
        this.stepScale = (Vector3f) capsule.readSavable("stepScale", null);
        this.offset = (Vector2f) capsule.readSavable("offset", null);
        this.offsetAmount = capsule.readFloat("offsetAmount", 0.0f);
        this.gridTileLoader = (TerrainGridTileLoader) capsule.readSavable("terrainQuadGrid", null);
        this.material = (Material) capsule.readSavable("material", null);
        initData();
        TerrainGridTileLoader terrainGridTileLoader = this.gridTileLoader;
        if (terrainGridTileLoader != null) {
            terrainGridTileLoader.setPatchSize(this.patchSize);
            this.gridTileLoader.setQuadSize(this.quadSize);
        }
    }

    public void removeListener(TerrainGridListener terrainGridListener) {
        this.listeners.remove(terrainGridListener);
    }

    public void removeQuad(TerrainQuad terrainQuad) {
        if (terrainQuad != null) {
            if ((terrainQuad.getQuadrant() <= 0 || terrainQuad.getQuadrant() >= 5) && terrainQuad.getParent() == null) {
                return;
            }
            Iterator<TerrainGridListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().tileDetached(getTileCell(terrainQuad.getWorldTranslation()), terrainQuad);
            }
            terrainQuad.setQuadrant((short) 0);
            detachChild(terrainQuad);
            this.cellsLoaded++;
        }
    }

    @Override
    public void setMaterial(Material material) {
        this.material = material;
        super.setMaterial(material);
    }

    public void setQuadSize(int i10) {
        this.quadSize = i10;
    }

    public Vector3f toCellSpace(Vector3f vector3f) {
        return new Vector3f(Math.round(r4.f81611x), getTileCell(vector3f).f81612y, Math.round(r4.f81613z));
    }

    public Vector3f toWorldSpace(Vector3f vector3f) {
        return vector3f.mult(getLocalScale()).multLocal(this.quadSize - 1);
    }

    public void updateChildren(Vector3f vector3f) {
        int i10;
        int i11;
        int i12;
        int i13;
        Vector3f vector3f2 = this.currentCamCell;
        int i14 = 0;
        if (vector3f2 != null) {
            i11 = (int) (vector3f.f81611x - vector3f2.f81611x);
            i10 = (int) (vector3f.f81613z - vector3f2.f81613z);
        } else {
            i10 = 0;
            i11 = 0;
        }
        int i15 = 3;
        if (i11 == -1) {
            i12 = 0;
            i13 = 3;
        } else if (i11 == 1) {
            i13 = 4;
            i12 = 1;
        } else {
            i12 = 0;
            i13 = 4;
        }
        if (i10 != -1) {
            i15 = 4;
            if (i10 == 1) {
                i14 = 1;
            }
        }
        while (i14 < i15) {
            for (int i16 = i12; i16 < i13; i16++) {
                this.cache.get(vector3f.add(this.quadIndex[(i14 * 4) + i16]));
            }
            i14++;
        }
        if (this.cacheExecutor == null) {
            this.cacheExecutor = createExecutorService();
        }
        this.cacheExecutor.submit(new UpdateQuadCache(vector3f));
        this.currentCamCell = vector3f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.gridTileLoader, "terrainQuadGrid", (Savable) null);
        capsule.write(this.size, XMLExporter.ATTRIBUTE_SIZE, 0);
        capsule.write(this.patchSize, "patchSize", 0);
        capsule.write(this.stepScale, "stepScale", (Savable) null);
        capsule.write(this.offset, "offset", (Savable) null);
        capsule.write(this.offsetAmount, "offsetAmount", 0.0f);
        capsule.write(this.material, "material", (Savable) null);
    }

    public TerrainGrid(String str, int i10, int i11, Vector3f vector3f, TerrainGridTileLoader terrainGridTileLoader) {
        this(str, i10, i11, vector3f, terrainGridTileLoader, new Vector2f(), 0.0f);
    }

    public TerrainGrid(String str, int i10, int i11, TerrainGridTileLoader terrainGridTileLoader) {
        this(str, i10, i11, Vector3f.UNIT_XYZ, terrainGridTileLoader);
    }

    public TerrainGrid() {
        this.currentCamCell = Vector3f.ZERO;
        this.listeners = new HashSet();
        this.cache = new LRUCache<>(20);
        this.cellsLoaded = 0;
        this.runOnce = false;
    }
}
