package com.jme3.terrain.geomipmap;

import com.ardor3d.util.export.xml.XMLExporter;
import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Ray;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.WireBox;
import com.jme3.terrain.ProgressMonitor;
import com.jme3.terrain.Terrain;
import com.jme3.terrain.geomipmap.lodcalc.LodCalculator;
import com.jme3.terrain.geomipmap.picking.BresenhamTerrainPicker;
import com.jme3.terrain.geomipmap.picking.TerrainPickData;
import com.jme3.terrain.geomipmap.picking.TerrainPicker;
import com.jme3.util.SafeArrayList;
import com.jme3.util.TangentUtils;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TerrainQuad extends Node implements Terrain {
    private BoundingBox affectedAreaBBox;
    private Vector3f lastScale;
    private int maxLod;
    protected NeighbourFinder neighbourFinder;
    protected Vector2f offset;
    protected float offsetAmount;
    protected int patchSize;
    private TerrainPicker picker;
    protected int quadrant;
    protected int size;
    protected Vector3f stepScale;
    protected int totalSize;

    public class LocationHeight {

        float f81637h;

        int f81638x;

        int f81639z;

        public LocationHeight() {
        }

        public LocationHeight(int i10, int i11, float f10) {
            this.f81638x = i10;
            this.f81639z = i11;
            this.f81637h = f10;
        }
    }

    public class QuadrantChild {
        Spatial child;
        int col;
        int row;

        public QuadrantChild(int i10, int i11, Spatial spatial) {
            this.col = i10;
            this.row = i11;
            this.child = spatial;
        }
    }

    public TerrainQuad() {
        super(com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain.f76979i9);
        this.quadrant = 0;
        this.maxLod = -1;
        this.picker = new BresenhamTerrainPicker(this);
        this.lastScale = Vector3f.UNIT_XYZ;
    }

    private void attachBoundingBox(BoundingBox boundingBox, Node node) {
        WireBox wireBox = new WireBox(boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent());
        Geometry geometry = new Geometry();
        geometry.setMesh(wireBox);
        geometry.setLocalTranslation(boundingBox.getCenter());
        node.attachChild(geometry);
    }

    private int collideWithRay(Ray ray, CollisionResults collisionResults) {
        return this.picker.getTerrainIntersection(ray, collisionResults);
    }

    private QuadrantChild findMatchingChild(int i10, int i11) {
        Spatial spatial;
        int i12;
        boolean z10;
        int i13;
        int findQuadrant = findQuadrant(i10, i11);
        int i14 = (this.size + 1) >> 1;
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return null;
        }
        int size = safeArrayList.size();
        do {
            size--;
            if (size < 0) {
                return null;
            }
            spatial = this.children.get(size);
            int quadrant = spatial instanceof TerrainQuad ? ((TerrainQuad) spatial).getQuadrant() : spatial instanceof TerrainPatch ? ((TerrainPatch) spatial).getQuadrant() : 0;
            if (quadrant == 1 && (findQuadrant & 1) != 0) {
                i12 = i10;
            } else if (quadrant == 2 && (findQuadrant & 2) != 0) {
                z10 = true;
                i13 = (i11 - i14) + 1;
                i12 = i10;
            } else if (quadrant == 3 && (findQuadrant & 4) != 0) {
                i12 = (i10 - i14) + 1;
            } else if (quadrant != 4 || (findQuadrant & 8) == 0) {
                i12 = i10;
                z10 = false;
                i13 = i11;
            } else {
                i12 = (i10 - i14) + 1;
                i13 = (i11 - i14) + 1;
                z10 = true;
            }
            i13 = i11;
            z10 = true;
        } while (!z10);
        return new QuadrantChild(i12, i13, spatial);
    }

    private int findQuadrant(int i10, int i11) {
        int i12 = (this.size + 1) >> 1;
        int i13 = (i10 >= i12 || i11 >= i12) ? 0 : 1;
        if (i10 < i12 && i11 >= i12 - 1) {
            i13 |= 2;
        }
        int i14 = i12 - 1;
        if (i10 >= i14 && i11 < i12) {
            i13 |= 4;
        }
        return (i10 < i14 || i11 < i14) ? i13 : i13 | 8;
    }

    private float[] generateDefaultHeightMap(int i10) {
        return new float[i10 * i10];
    }

    private boolean isInside(int i10, int i11) {
        int i12;
        return i10 >= 0 && i11 >= 0 && i10 <= (i12 = this.totalSize) && i11 <= i12;
    }

    @Override
    public void adjustHeight(Vector2f vector2f, float f10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(vector2f);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Float.valueOf(f10));
        adjustHeight(arrayList, arrayList2);
    }

    public void attachBoundChildren(Node node) {
        for (int i10 = 0; i10 < getQuantity(); i10++) {
            if (getChild(i10) instanceof TerrainQuad) {
                ((TerrainQuad) getChild(i10)).attachBoundChildren(node);
            } else if (getChild(i10) instanceof TerrainPatch) {
                BoundingVolume worldBound = getChild(i10).getWorldBound();
                if (worldBound instanceof BoundingBox) {
                    attachBoundingBox((BoundingBox) worldBound, node);
                }
            }
        }
        BoundingVolume worldBound2 = getWorldBound();
        if (worldBound2 instanceof BoundingBox) {
            attachBoundingBox((BoundingBox) worldBound2, node);
        }
    }

    public void cacheTerrainTransforms() {
        int size = this.children.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                ((TerrainQuad) spatial).cacheTerrainTransforms();
            } else if (spatial instanceof TerrainPatch) {
                ((TerrainPatch) spatial).cacheTerrainTransforms();
            }
        }
    }

    public boolean calculateLod(List<Vector3f> list, HashMap<String, UpdatedTerrainPatch> hashMap, LodCalculator lodCalculator) {
        SafeArrayList<Spatial> safeArrayList = this.children;
        boolean z10 = false;
        if (safeArrayList != null) {
            int size = safeArrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                Spatial spatial = this.children.get(size);
                if (spatial instanceof TerrainQuad) {
                    if (((TerrainQuad) spatial).calculateLod(list, hashMap, lodCalculator)) {
                        z10 = true;
                    }
                } else if ((spatial instanceof TerrainPatch) && lodCalculator.calculateLod((TerrainPatch) spatial, list, hashMap)) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    public void clearCaches() {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                ((TerrainQuad) spatial).clearCaches();
            } else if (spatial instanceof TerrainPatch) {
                ((TerrainPatch) spatial).clearCaches();
            }
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.stepScale = (Vector3f) cloner.clone(this.stepScale);
        this.offset = (Vector2f) cloner.clone(this.offset);
        this.affectedAreaBBox = (BoundingBox) cloner.clone(this.affectedAreaBBox);
        this.picker = new BresenhamTerrainPicker(this);
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        if (collidable instanceof Ray) {
            return collideWithRay((Ray) collidable, collisionResults);
        }
        int i10 = 0;
        if ((collidable instanceof BoundingVolume) && !getWorldBound().intersects((BoundingVolume) collidable)) {
            return 0;
        }
        Iterator<Spatial> it = this.children.iterator();
        while (it.hasNext()) {
            i10 += it.next().collideWith(collidable, collisionResults);
        }
        return i10;
    }

    public float[] createHeightSubBlock(float[] fArr, int i10, int i11, int i12) {
        float[] fArr2 = new float[i12 * i12];
        int sqrt = (int) FastMath.sqrt(fArr.length);
        int i13 = 0;
        for (int i14 = i11; i14 < i12 + i11; i14++) {
            for (int i15 = i10; i15 < i12 + i10; i15++) {
                if (i15 < sqrt && i14 < sqrt) {
                    fArr2[i13] = fArr[(i14 * sqrt) + i15];
                }
                i13++;
            }
        }
        return fArr2;
    }

    public void createQuad(int i10, float[] fArr) {
        int i11 = this.size;
        int i12 = i11 >> 2;
        int i13 = (i11 + 1) >> 1;
        Vector2f vector2f = new Vector2f();
        float f10 = i12;
        this.offsetAmount += f10;
        float[] createHeightSubBlock = createHeightSubBlock(fArr, 0, 0, i13);
        float f11 = -i12;
        Vector3f vector3f = this.stepScale;
        Vector3f vector3f2 = new Vector3f(vector3f.f81611x * f11, 0.0f, vector3f.f81613z * f11);
        Vector2f vector2f2 = this.offset;
        float f12 = vector2f2.f81609x;
        vector2f.f81609x = f12;
        float f13 = vector2f2.f81610y;
        vector2f.f81609x = f12 + vector3f2.f81611x;
        vector2f.f81610y = f13 + vector3f2.f81613z;
        TerrainQuad terrainQuad = new TerrainQuad(getName() + "Quad1", i10, i13, this.stepScale, createHeightSubBlock, this.totalSize, vector2f, this.offsetAmount);
        terrainQuad.setLocalTranslation(vector3f2);
        terrainQuad.quadrant = 1;
        attachChild(terrainQuad);
        int i14 = i13 - 1;
        float[] createHeightSubBlock2 = createHeightSubBlock(fArr, 0, i14, i13);
        Vector3f vector3f3 = this.stepScale;
        Vector3f vector3f4 = new Vector3f(vector3f3.f81611x * f11, 0.0f, vector3f3.f81613z * f10);
        Vector2f vector2f3 = new Vector2f();
        Vector2f vector2f4 = this.offset;
        float f14 = vector2f4.f81609x;
        vector2f3.f81609x = f14;
        float f15 = vector2f4.f81610y;
        vector2f3.f81609x = f14 + vector3f4.f81611x;
        vector2f3.f81610y = f15 + vector3f4.f81613z;
        TerrainQuad terrainQuad2 = new TerrainQuad(getName() + "Quad2", i10, i13, this.stepScale, createHeightSubBlock2, this.totalSize, vector2f3, this.offsetAmount);
        terrainQuad2.setLocalTranslation(vector3f4);
        terrainQuad2.quadrant = 2;
        attachChild(terrainQuad2);
        float[] createHeightSubBlock3 = createHeightSubBlock(fArr, i14, 0, i13);
        Vector3f vector3f5 = this.stepScale;
        Vector3f vector3f6 = new Vector3f(vector3f5.f81611x * f10, 0.0f, vector3f5.f81613z * f11);
        Vector2f vector2f5 = new Vector2f();
        Vector2f vector2f6 = this.offset;
        float f16 = vector2f6.f81609x;
        vector2f5.f81609x = f16;
        float f17 = vector2f6.f81610y;
        vector2f5.f81609x = f16 + vector3f6.f81611x;
        vector2f5.f81610y = f17 + vector3f6.f81613z;
        TerrainQuad terrainQuad3 = new TerrainQuad(getName() + "Quad3", i10, i13, this.stepScale, createHeightSubBlock3, this.totalSize, vector2f5, this.offsetAmount);
        terrainQuad3.setLocalTranslation(vector3f6);
        terrainQuad3.quadrant = 3;
        attachChild(terrainQuad3);
        float[] createHeightSubBlock4 = createHeightSubBlock(fArr, i14, i14, i13);
        Vector3f vector3f7 = this.stepScale;
        Vector3f vector3f8 = new Vector3f(vector3f7.f81611x * f10, 0.0f, f10 * vector3f7.f81613z);
        Vector2f vector2f7 = new Vector2f();
        Vector2f vector2f8 = this.offset;
        float f18 = vector2f8.f81609x;
        vector2f7.f81609x = f18;
        float f19 = vector2f8.f81610y;
        vector2f7.f81609x = f18 + vector3f8.f81611x;
        vector2f7.f81610y = f19 + vector3f8.f81613z;
        TerrainQuad terrainQuad4 = new TerrainQuad(getName() + "Quad4", i10, i13, this.stepScale, createHeightSubBlock4, this.totalSize, vector2f7, this.offsetAmount);
        terrainQuad4.setLocalTranslation(vector3f8);
        terrainQuad4.quadrant = 4;
        attachChild(terrainQuad4);
    }

    public void createQuadPatch(float[] fArr) {
        int i10 = this.size;
        int i11 = i10 >> 2;
        int i12 = i10 >> 1;
        int i13 = (i10 + 1) >> 1;
        float f10 = i11;
        this.offsetAmount += f10;
        float[] createHeightSubBlock = createHeightSubBlock(fArr, 0, 0, i13);
        float f11 = -i12;
        Vector3f vector3f = this.stepScale;
        Vector3f vector3f2 = new Vector3f(vector3f.f81611x * f11, 0.0f, vector3f.f81613z * f11);
        Vector2f vector2f = new Vector2f();
        Vector2f vector2f2 = this.offset;
        float f12 = vector2f2.f81609x;
        vector2f.f81609x = f12;
        float f13 = vector2f2.f81610y;
        vector2f.f81609x = f12 + (vector3f2.f81611x / 2.0f);
        vector2f.f81610y = f13 + (vector3f2.f81613z / 2.0f);
        TerrainPatch terrainPatch = new TerrainPatch(getName() + "Patch1", i13, this.stepScale, createHeightSubBlock, vector3f2, this.totalSize, vector2f, this.offsetAmount);
        terrainPatch.setQuadrant((short) 1);
        attachChild(terrainPatch);
        terrainPatch.setModelBound(new BoundingBox());
        terrainPatch.updateModelBound();
        int i14 = i13 - 1;
        float[] createHeightSubBlock2 = createHeightSubBlock(fArr, 0, i14, i13);
        Vector3f vector3f3 = new Vector3f(this.stepScale.f81611x * f11, 0.0f, 0.0f);
        Vector2f vector2f3 = new Vector2f();
        Vector2f vector2f4 = this.offset;
        float f14 = vector2f4.f81609x;
        vector2f3.f81609x = f14;
        float f15 = vector2f4.f81610y;
        vector2f3.f81610y = f15;
        vector2f3.f81609x = f14 + (vector3f2.f81611x / 2.0f);
        vector2f3.f81610y = f15 + (this.stepScale.f81613z * f10);
        TerrainPatch terrainPatch2 = new TerrainPatch(getName() + "Patch2", i13, this.stepScale, createHeightSubBlock2, vector3f3, this.totalSize, vector2f3, this.offsetAmount);
        terrainPatch2.setQuadrant((short) 2);
        attachChild(terrainPatch2);
        terrainPatch2.setModelBound(new BoundingBox());
        terrainPatch2.updateModelBound();
        float[] createHeightSubBlock3 = createHeightSubBlock(fArr, i14, 0, i13);
        Vector3f vector3f4 = new Vector3f(0.0f, 0.0f, f11 * this.stepScale.f81613z);
        Vector2f vector2f5 = new Vector2f();
        Vector2f vector2f6 = this.offset;
        float f16 = vector2f6.f81609x;
        vector2f5.f81609x = f16;
        float f17 = vector2f6.f81610y;
        vector2f5.f81610y = f17;
        vector2f5.f81609x = f16 + (this.stepScale.f81611x * f10);
        vector2f5.f81610y = f17 + (vector3f4.f81613z / 2.0f);
        TerrainPatch terrainPatch3 = new TerrainPatch(getName() + "Patch3", i13, this.stepScale, createHeightSubBlock3, vector3f4, this.totalSize, vector2f5, this.offsetAmount);
        terrainPatch3.setQuadrant((short) 3);
        attachChild(terrainPatch3);
        terrainPatch3.setModelBound(new BoundingBox());
        terrainPatch3.updateModelBound();
        float[] createHeightSubBlock4 = createHeightSubBlock(fArr, i14, i14, i13);
        Vector3f vector3f5 = new Vector3f(0.0f, 0.0f, 0.0f);
        Vector2f vector2f7 = new Vector2f();
        Vector2f vector2f8 = this.offset;
        float f18 = vector2f8.f81609x;
        vector2f7.f81609x = f18;
        float f19 = vector2f8.f81610y;
        vector2f7.f81610y = f19;
        Vector3f vector3f6 = this.stepScale;
        vector2f7.f81609x = f18 + (vector3f6.f81611x * f10);
        vector2f7.f81610y = f19 + (f10 * vector3f6.f81613z);
        TerrainPatch terrainPatch4 = new TerrainPatch(getName() + "Patch4", i13, this.stepScale, createHeightSubBlock4, vector3f5, this.totalSize, vector2f7, this.offsetAmount);
        terrainPatch4.setQuadrant((short) 4);
        attachChild(terrainPatch4);
        terrainPatch4.setModelBound(new BoundingBox());
        terrainPatch4.updateModelBound();
    }

    public TerrainPatch findDownPatch(TerrainPatch terrainPatch) {
        TerrainQuad findDownQuad;
        if (terrainPatch.getQuadrant() == 1) {
            return getPatch(2);
        }
        if (terrainPatch.getQuadrant() == 3) {
            return getPatch(4);
        }
        if (terrainPatch.getQuadrant() == 2) {
            TerrainQuad findDownQuad2 = findDownQuad();
            if (findDownQuad2 != null) {
                return findDownQuad2.getPatch(1);
            }
            return null;
        }
        if (terrainPatch.getQuadrant() != 4 || (findDownQuad = findDownQuad()) == null) {
            return null;
        }
        return findDownQuad.getPatch(3);
    }

    public TerrainQuad findDownQuad() {
        boolean z10;
        if (getParent() != null && (getParent() instanceof TerrainQuad)) {
            z10 = false;
        } else {
            if (this.neighbourFinder == null) {
                return null;
            }
            z10 = true;
        }
        TerrainQuad terrainQuad = !z10 ? (TerrainQuad) getParent() : null;
        int i10 = this.quadrant;
        if (i10 == 1) {
            return terrainQuad.getQuad(2);
        }
        if (i10 == 3) {
            return terrainQuad.getQuad(4);
        }
        if (i10 == 2) {
            TerrainQuad findDownQuad = terrainQuad.findDownQuad();
            if (findDownQuad != null) {
                return findDownQuad.getQuad(1);
            }
        } else if (i10 == 4) {
            TerrainQuad findDownQuad2 = terrainQuad.findDownQuad();
            if (findDownQuad2 != null) {
                return findDownQuad2.getQuad(3);
            }
        } else if (i10 == 0 && z10) {
            return this.neighbourFinder.getDownQuad(this);
        }
        return null;
    }

    public TerrainPatch findLeftPatch(TerrainPatch terrainPatch) {
        TerrainQuad findLeftQuad;
        if (terrainPatch.getQuadrant() == 3) {
            return getPatch(1);
        }
        if (terrainPatch.getQuadrant() == 4) {
            return getPatch(2);
        }
        if (terrainPatch.getQuadrant() == 1) {
            TerrainQuad findLeftQuad2 = findLeftQuad();
            if (findLeftQuad2 != null) {
                return findLeftQuad2.getPatch(3);
            }
            return null;
        }
        if (terrainPatch.getQuadrant() != 2 || (findLeftQuad = findLeftQuad()) == null) {
            return null;
        }
        return findLeftQuad.getPatch(4);
    }

    public TerrainQuad findLeftQuad() {
        boolean z10;
        if (getParent() != null && (getParent() instanceof TerrainQuad)) {
            z10 = false;
        } else {
            if (this.neighbourFinder == null) {
                return null;
            }
            z10 = true;
        }
        TerrainQuad terrainQuad = !z10 ? (TerrainQuad) getParent() : null;
        int i10 = this.quadrant;
        if (i10 == 3) {
            return terrainQuad.getQuad(1);
        }
        if (i10 == 4) {
            return terrainQuad.getQuad(2);
        }
        if (i10 == 1) {
            TerrainQuad findLeftQuad = terrainQuad.findLeftQuad();
            if (findLeftQuad != null) {
                return findLeftQuad.getQuad(3);
            }
        } else if (i10 == 2) {
            TerrainQuad findLeftQuad2 = terrainQuad.findLeftQuad();
            if (findLeftQuad2 != null) {
                return findLeftQuad2.getQuad(4);
            }
        } else if (i10 == 0 && z10) {
            return this.neighbourFinder.getLeftQuad(this);
        }
        return null;
    }

    public synchronized void findNeighboursLod(HashMap<String, UpdatedTerrainPatch> hashMap) {
        try {
            SafeArrayList<Spatial> safeArrayList = this.children;
            if (safeArrayList != null) {
                int size = safeArrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    Spatial spatial = this.children.get(size);
                    if (spatial instanceof TerrainQuad) {
                        ((TerrainQuad) spatial).findNeighboursLod(hashMap);
                    } else if (spatial instanceof TerrainPatch) {
                        TerrainPatch terrainPatch = (TerrainPatch) spatial;
                        if (!terrainPatch.searchedForNeighboursAlready) {
                            terrainPatch.rightNeighbour = findRightPatch(terrainPatch);
                            terrainPatch.bottomNeighbour = findDownPatch(terrainPatch);
                            terrainPatch.leftNeighbour = findLeftPatch(terrainPatch);
                            terrainPatch.topNeighbour = findTopPatch(terrainPatch);
                            terrainPatch.searchedForNeighboursAlready = true;
                        }
                        TerrainPatch terrainPatch2 = terrainPatch.rightNeighbour;
                        TerrainPatch terrainPatch3 = terrainPatch.bottomNeighbour;
                        TerrainPatch terrainPatch4 = terrainPatch.leftNeighbour;
                        TerrainPatch terrainPatch5 = terrainPatch.topNeighbour;
                        UpdatedTerrainPatch updatedTerrainPatch = hashMap.get(terrainPatch.getName());
                        if (updatedTerrainPatch == null) {
                            updatedTerrainPatch = new UpdatedTerrainPatch(terrainPatch, terrainPatch.lod);
                            hashMap.put(updatedTerrainPatch.getName(), updatedTerrainPatch);
                        }
                        if (terrainPatch2 != null) {
                            UpdatedTerrainPatch updatedTerrainPatch2 = hashMap.get(terrainPatch2.getName());
                            if (updatedTerrainPatch2 == null) {
                                updatedTerrainPatch2 = new UpdatedTerrainPatch(terrainPatch2);
                                hashMap.put(updatedTerrainPatch2.getName(), updatedTerrainPatch2);
                                updatedTerrainPatch2.setNewLod(terrainPatch2.lod);
                            }
                            updatedTerrainPatch.setRightLod(updatedTerrainPatch2.getNewLod());
                            updatedTerrainPatch2.setLeftLod(updatedTerrainPatch.getNewLod());
                        }
                        if (terrainPatch3 != null) {
                            UpdatedTerrainPatch updatedTerrainPatch3 = hashMap.get(terrainPatch3.getName());
                            if (updatedTerrainPatch3 == null) {
                                updatedTerrainPatch3 = new UpdatedTerrainPatch(terrainPatch3);
                                hashMap.put(updatedTerrainPatch3.getName(), updatedTerrainPatch3);
                                updatedTerrainPatch3.setNewLod(terrainPatch3.lod);
                            }
                            updatedTerrainPatch.setBottomLod(updatedTerrainPatch3.getNewLod());
                            updatedTerrainPatch3.setTopLod(updatedTerrainPatch.getNewLod());
                        }
                        if (terrainPatch4 != null) {
                            UpdatedTerrainPatch updatedTerrainPatch4 = hashMap.get(terrainPatch4.getName());
                            if (updatedTerrainPatch4 == null) {
                                updatedTerrainPatch4 = new UpdatedTerrainPatch(terrainPatch4);
                                hashMap.put(updatedTerrainPatch4.getName(), updatedTerrainPatch4);
                                updatedTerrainPatch4.setNewLod(terrainPatch4.lod);
                            }
                            updatedTerrainPatch.setLeftLod(updatedTerrainPatch4.getNewLod());
                            updatedTerrainPatch4.setRightLod(updatedTerrainPatch.getNewLod());
                        }
                        if (terrainPatch5 != null) {
                            UpdatedTerrainPatch updatedTerrainPatch5 = hashMap.get(terrainPatch5.getName());
                            if (updatedTerrainPatch5 == null) {
                                updatedTerrainPatch5 = new UpdatedTerrainPatch(terrainPatch5);
                                hashMap.put(updatedTerrainPatch5.getName(), updatedTerrainPatch5);
                                updatedTerrainPatch5.setNewLod(terrainPatch5.lod);
                            }
                            updatedTerrainPatch.setTopLod(updatedTerrainPatch5.getNewLod());
                            updatedTerrainPatch5.setBottomLod(updatedTerrainPatch.getNewLod());
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void findPick(Ray ray, List<TerrainPickData> list) {
        if (getWorldBound() == null || !getWorldBound().intersects(ray)) {
            return;
        }
        for (int i10 = 0; i10 < getQuantity(); i10++) {
            if (this.children.get(i10) instanceof TerrainPatch) {
                TerrainPatch terrainPatch = (TerrainPatch) this.children.get(i10);
                terrainPatch.ensurePositiveVolumeBBox();
                if (terrainPatch.getWorldBound().intersects(ray)) {
                    CollisionResults collisionResults = new CollisionResults();
                    ray.collideWith(terrainPatch.getWorldBound(), collisionResults);
                    if (collisionResults.getClosestCollision() != null) {
                        collisionResults.getClosestCollision().getDistance();
                        list.add(new TerrainPickData(terrainPatch, collisionResults.getClosestCollision()));
                    }
                }
            } else if (this.children.get(i10) instanceof TerrainQuad) {
                ((TerrainQuad) this.children.get(i10)).findPick(ray, list);
            }
        }
    }

    public TerrainPatch findRightPatch(TerrainPatch terrainPatch) {
        TerrainQuad findRightQuad;
        if (terrainPatch.getQuadrant() == 1) {
            return getPatch(3);
        }
        if (terrainPatch.getQuadrant() == 2) {
            return getPatch(4);
        }
        if (terrainPatch.getQuadrant() == 3) {
            TerrainQuad findRightQuad2 = findRightQuad();
            if (findRightQuad2 != null) {
                return findRightQuad2.getPatch(1);
            }
            return null;
        }
        if (terrainPatch.getQuadrant() != 4 || (findRightQuad = findRightQuad()) == null) {
            return null;
        }
        return findRightQuad.getPatch(2);
    }

    public TerrainQuad findRightQuad() {
        boolean z10;
        if (getParent() != null && (getParent() instanceof TerrainQuad)) {
            z10 = false;
        } else {
            if (this.neighbourFinder == null) {
                return null;
            }
            z10 = true;
        }
        TerrainQuad terrainQuad = !z10 ? (TerrainQuad) getParent() : null;
        int i10 = this.quadrant;
        if (i10 == 1) {
            return terrainQuad.getQuad(3);
        }
        if (i10 == 2) {
            return terrainQuad.getQuad(4);
        }
        if (i10 == 3) {
            TerrainQuad findRightQuad = terrainQuad.findRightQuad();
            if (findRightQuad != null) {
                return findRightQuad.getQuad(1);
            }
        } else if (i10 == 4) {
            TerrainQuad findRightQuad2 = terrainQuad.findRightQuad();
            if (findRightQuad2 != null) {
                return findRightQuad2.getQuad(2);
            }
        } else if (i10 == 0 && z10) {
            return this.neighbourFinder.getRightQuad(this);
        }
        return null;
    }

    public TerrainPatch findTopPatch(TerrainPatch terrainPatch) {
        TerrainQuad findTopQuad;
        if (terrainPatch.getQuadrant() == 2) {
            return getPatch(1);
        }
        if (terrainPatch.getQuadrant() == 4) {
            return getPatch(3);
        }
        if (terrainPatch.getQuadrant() == 1) {
            TerrainQuad findTopQuad2 = findTopQuad();
            if (findTopQuad2 != null) {
                return findTopQuad2.getPatch(2);
            }
            return null;
        }
        if (terrainPatch.getQuadrant() != 3 || (findTopQuad = findTopQuad()) == null) {
            return null;
        }
        return findTopQuad.getPatch(4);
    }

    public TerrainQuad findTopQuad() {
        boolean z10;
        if (getParent() != null && (getParent() instanceof TerrainQuad)) {
            z10 = false;
        } else {
            if (this.neighbourFinder == null) {
                return null;
            }
            z10 = true;
        }
        TerrainQuad terrainQuad = !z10 ? (TerrainQuad) getParent() : null;
        int i10 = this.quadrant;
        if (i10 == 2) {
            return terrainQuad.getQuad(1);
        }
        if (i10 == 4) {
            return terrainQuad.getQuad(3);
        }
        if (i10 == 1) {
            TerrainQuad findTopQuad = terrainQuad.findTopQuad();
            if (findTopQuad != null) {
                return findTopQuad.getQuad(2);
            }
        } else if (i10 == 3) {
            TerrainQuad findTopQuad2 = terrainQuad.findTopQuad();
            if (findTopQuad2 != null) {
                return findTopQuad2.getQuad(4);
            }
        } else if (i10 == 0 && z10) {
            return this.neighbourFinder.getTopQuad(this);
        }
        return null;
    }

    public synchronized void fixEdges(HashMap<String, UpdatedTerrainPatch> hashMap) {
        try {
            SafeArrayList<Spatial> safeArrayList = this.children;
            if (safeArrayList != null) {
                int size = safeArrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    Spatial spatial = this.children.get(size);
                    if (spatial instanceof TerrainQuad) {
                        ((TerrainQuad) spatial).fixEdges(hashMap);
                    } else if (spatial instanceof TerrainPatch) {
                        TerrainPatch terrainPatch = (TerrainPatch) spatial;
                        UpdatedTerrainPatch updatedTerrainPatch = hashMap.get(terrainPatch.getName());
                        if (updatedTerrainPatch != null && updatedTerrainPatch.lodChanged()) {
                            if (!terrainPatch.searchedForNeighboursAlready) {
                                terrainPatch.rightNeighbour = findRightPatch(terrainPatch);
                                terrainPatch.bottomNeighbour = findDownPatch(terrainPatch);
                                terrainPatch.leftNeighbour = findLeftPatch(terrainPatch);
                                terrainPatch.topNeighbour = findTopPatch(terrainPatch);
                                terrainPatch.searchedForNeighboursAlready = true;
                            }
                            TerrainPatch terrainPatch2 = terrainPatch.rightNeighbour;
                            TerrainPatch terrainPatch3 = terrainPatch.bottomNeighbour;
                            TerrainPatch terrainPatch4 = terrainPatch.topNeighbour;
                            TerrainPatch terrainPatch5 = terrainPatch.leftNeighbour;
                            if (terrainPatch2 != null) {
                                UpdatedTerrainPatch updatedTerrainPatch2 = hashMap.get(terrainPatch2.getName());
                                if (updatedTerrainPatch2 == null) {
                                    updatedTerrainPatch2 = new UpdatedTerrainPatch(terrainPatch2);
                                    hashMap.put(updatedTerrainPatch2.getName(), updatedTerrainPatch2);
                                    updatedTerrainPatch2.setNewLod(terrainPatch2.lod);
                                }
                                updatedTerrainPatch2.setLeftLod(updatedTerrainPatch.getNewLod());
                                updatedTerrainPatch2.setFixEdges(true);
                            }
                            if (terrainPatch3 != null) {
                                UpdatedTerrainPatch updatedTerrainPatch3 = hashMap.get(terrainPatch3.getName());
                                if (updatedTerrainPatch3 == null) {
                                    updatedTerrainPatch3 = new UpdatedTerrainPatch(terrainPatch3);
                                    hashMap.put(updatedTerrainPatch3.getName(), updatedTerrainPatch3);
                                    updatedTerrainPatch3.setNewLod(terrainPatch3.lod);
                                }
                                updatedTerrainPatch3.setTopLod(updatedTerrainPatch.getNewLod());
                                updatedTerrainPatch3.setFixEdges(true);
                            }
                            if (terrainPatch4 != null) {
                                UpdatedTerrainPatch updatedTerrainPatch4 = hashMap.get(terrainPatch4.getName());
                                if (updatedTerrainPatch4 == null) {
                                    updatedTerrainPatch4 = new UpdatedTerrainPatch(terrainPatch4);
                                    hashMap.put(updatedTerrainPatch4.getName(), updatedTerrainPatch4);
                                    updatedTerrainPatch4.setNewLod(terrainPatch4.lod);
                                }
                                updatedTerrainPatch4.setBottomLod(updatedTerrainPatch.getNewLod());
                                updatedTerrainPatch4.setFixEdges(true);
                            }
                            if (terrainPatch5 != null) {
                                UpdatedTerrainPatch updatedTerrainPatch5 = hashMap.get(terrainPatch5.getName());
                                if (updatedTerrainPatch5 == null) {
                                    updatedTerrainPatch5 = new UpdatedTerrainPatch(terrainPatch5);
                                    hashMap.put(updatedTerrainPatch5.getName(), updatedTerrainPatch5);
                                    updatedTerrainPatch5.setNewLod(terrainPatch5.lod);
                                }
                                updatedTerrainPatch5.setRightLod(updatedTerrainPatch.getNewLod());
                                updatedTerrainPatch5.setFixEdges(true);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void fixNormalEdges(BoundingBox boundingBox) {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                if (boundingBox != null && boundingBox.intersects(spatial.getWorldBound())) {
                    ((TerrainQuad) spatial).fixNormalEdges(boundingBox);
                }
            } else if ((spatial instanceof TerrainPatch) && (boundingBox == null || boundingBox.intersects(spatial.getWorldBound()))) {
                TerrainPatch terrainPatch = (TerrainPatch) spatial;
                TerrainPatch findRightPatch = findRightPatch(terrainPatch);
                TerrainPatch findDownPatch = findDownPatch(terrainPatch);
                TerrainPatch findTopPatch = findTopPatch(terrainPatch);
                TerrainPatch findLeftPatch = findLeftPatch(terrainPatch);
                terrainPatch.fixNormalEdges(findRightPatch, findDownPatch, findTopPatch, findLeftPatch, findRightPatch != null ? findDownPatch(findRightPatch) : null, findLeftPatch != null ? findDownPatch(findLeftPatch) : null, findTopPatch != null ? findRightPatch(findTopPatch) : null, findTopPatch != null ? findLeftPatch(findTopPatch) : null);
            }
        }
    }

    public void fixNormals(BoundingBox boundingBox) {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                if (boundingBox != null && boundingBox.intersects(spatial.getWorldBound())) {
                    ((TerrainQuad) spatial).fixNormals(boundingBox);
                }
            } else if ((spatial instanceof TerrainPatch) && boundingBox != null && boundingBox.intersects(spatial.getWorldBound())) {
                ((TerrainPatch) spatial).updateNormals();
            }
        }
    }

    public void generateDebugTangents(Material material) {
        int size = this.children.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                ((TerrainQuad) spatial).generateDebugTangents(material);
            } else if (spatial instanceof TerrainPatch) {
                Geometry geometry = new Geometry("Debug " + this.name, TangentUtils.genTbnLines(((TerrainPatch) spatial).getMesh(), 0.8f));
                attachChild(geometry);
                geometry.setLocalTranslation(spatial.getLocalTranslation());
                geometry.setCullHint(Spatial.CullHint.Never);
                geometry.setMaterial(material);
            }
        }
    }

    @Override
    public void generateEntropy(ProgressMonitor progressMonitor) {
        if (isRootQuad() && progressMonitor != null) {
            int i10 = (this.totalSize - 1) / (this.patchSize - 1);
            progressMonitor.setMonitorMax(i10 * i10);
        }
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList != null) {
            int size = safeArrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                Spatial spatial = this.children.get(size);
                if (spatial instanceof TerrainQuad) {
                    ((TerrainQuad) spatial).generateEntropy(progressMonitor);
                } else if (spatial instanceof TerrainPatch) {
                    ((TerrainPatch) spatial).generateLodEntropies();
                    if (progressMonitor != null) {
                        progressMonitor.incrementProgress(1.0f);
                    }
                }
            }
        }
        if (!isRootQuad() || progressMonitor == null) {
            return;
        }
        progressMonitor.progressComplete();
    }

    public void getAllTerrainPatches(List<TerrainPatch> list) {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                ((TerrainQuad) spatial).getAllTerrainPatches(list);
            } else if (spatial instanceof TerrainPatch) {
                list.add((TerrainPatch) spatial);
            }
        }
    }

    public void getAllTerrainPatchesWithTranslation(Map<TerrainPatch, Vector3f> map, Vector3f vector3f) {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                ((TerrainQuad) spatial).getAllTerrainPatchesWithTranslation(map, vector3f.m1292clone().add(spatial.getLocalTranslation()));
            } else if (spatial instanceof TerrainPatch) {
                map.put((TerrainPatch) spatial, vector3f.m1292clone().add(spatial.getLocalTranslation()));
            }
        }
    }

    @Override
    public float getHeight(Vector2f vector2f) {
        float f10 = ((vector2f.f81609x - getWorldTranslation().f81611x) / getWorldScale().f81611x) + ((this.totalSize - 1) / 2.0f);
        float f11 = ((vector2f.f81610y - getWorldTranslation().f81613z) / getWorldScale().f81613z) + ((this.totalSize - 1) / 2.0f);
        int i10 = (int) f10;
        int i11 = (int) f11;
        if (isInside(i10, i11)) {
            return getHeight(i10, i11, f10 % 1.0f, f11 % 1.0f) * getWorldScale().f81612y;
        }
        return Float.NaN;
    }

    @Override
    public float[] getHeightMap() {
        float[] heightMap;
        float[] heightMap2;
        float[] heightMap3;
        float[] heightMap4;
        int i10 = this.size;
        int i11 = ((i10 - 1) / 2) + 1;
        float[] fArr = new float[i10 * i10];
        if (getChildren() != null && !getChildren().isEmpty()) {
            if (getChild(0) instanceof TerrainPatch) {
                Iterator<Spatial> it = getChildren().iterator();
                heightMap = null;
                heightMap3 = null;
                heightMap2 = null;
                heightMap4 = null;
                while (it.hasNext()) {
                    TerrainPatch terrainPatch = (TerrainPatch) it.next();
                    if (terrainPatch.getQuadrant() == 1) {
                        heightMap = terrainPatch.getHeightMap();
                    } else if (terrainPatch.getQuadrant() == 2) {
                        heightMap2 = terrainPatch.getHeightMap();
                    } else if (terrainPatch.getQuadrant() == 3) {
                        heightMap3 = terrainPatch.getHeightMap();
                    } else if (terrainPatch.getQuadrant() == 4) {
                        heightMap4 = terrainPatch.getHeightMap();
                    }
                }
            } else {
                heightMap = getQuad(1).getHeightMap();
                heightMap2 = getQuad(2).getHeightMap();
                heightMap3 = getQuad(3).getHeightMap();
                heightMap4 = getQuad(4).getHeightMap();
            }
            for (int i12 = 0; i12 < i11; i12++) {
                for (int i13 = 0; i13 < i11; i13++) {
                    fArr[(this.size * i12) + i13] = heightMap[(i12 * i11) + i13];
                }
                for (int i14 = 1; i14 < i11; i14++) {
                    fArr[(((this.size * i12) + i11) + i14) - 1] = heightMap3[(i12 * i11) + i14];
                }
            }
            int i15 = this.size * i11;
            for (int i16 = 1; i16 < i11; i16++) {
                for (int i17 = 0; i17 < i11; i17++) {
                    fArr[((i16 - 1) * this.size) + i15 + i17] = heightMap2[(i16 * i11) + i17];
                }
                for (int i18 = 1; i18 < i11; i18++) {
                    fArr[(((((i16 - 1) * this.size) + i11) + i15) + i18) - 1] = heightMap4[(i16 * i11) + i18];
                }
            }
        }
        return fArr;
    }

    @Override
    public float getHeightmapHeight(Vector2f vector2f) {
        float f10 = this.totalSize / 2;
        int round = Math.round((vector2f.f81609x / getWorldScale().f81611x) + f10);
        int round2 = Math.round((vector2f.f81610y / getWorldScale().f81613z) + f10);
        if (isInside(round, round2)) {
            return getHeightmapHeight(round, round2);
        }
        return Float.NaN;
    }

    @Override
    public Material getMaterial() {
        return getMaterial(null);
    }

    @Override
    public int getMaxLod() {
        if (this.maxLod < 0) {
            this.maxLod = Math.max(1, ((int) (FastMath.log(this.size - 1) / FastMath.log(2.0f))) - 1);
        }
        return this.maxLod;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Vector3f getMeshNormal(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int findQuadrant = findQuadrant(i10, i11);
        int i15 = (this.size + 1) >> 1;
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return null;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return null;
            }
            Spatial spatial = this.children.get(size);
            boolean z10 = spatial instanceof TerrainQuad;
            boolean z11 = false;
            int quadrant = z10 ? ((TerrainQuad) spatial).getQuadrant() : spatial instanceof TerrainPatch ? ((TerrainPatch) spatial).getQuadrant() : 0;
            if (quadrant == 1 && (findQuadrant & 1) != 0) {
                i12 = i10;
                i13 = i11;
            } else if (quadrant != 2 || (findQuadrant & 2) == 0) {
                if (quadrant == 3 && (findQuadrant & 4) != 0) {
                    i14 = (i10 - i15) + 1;
                    i13 = i11;
                } else if (quadrant != 4 || (findQuadrant & 8) == 0) {
                    i12 = i10;
                    i13 = i11;
                    if (z11) {
                        if (z10) {
                            return ((TerrainQuad) spatial).getMeshNormal(i12, i13);
                        }
                        if (spatial instanceof TerrainPatch) {
                            return ((TerrainPatch) spatial).getMeshNormal(i12, i13);
                        }
                    }
                } else {
                    i14 = (i10 - i15) + 1;
                    i13 = (i11 - i15) + 1;
                }
                i12 = i14;
            } else {
                i12 = i10;
                i13 = (i11 - i15) + 1;
            }
            z11 = true;
            if (z11) {
            }
        }
    }

    @Override
    public Vector3f getNormal(Vector2f vector2f) {
        return getNormal(((vector2f.f81609x - getWorldTranslation().f81611x) / getWorldScale().f81611x) + ((this.totalSize - 1) / 2.0f), ((vector2f.f81610y - getWorldTranslation().f81613z) / getWorldScale().f81613z) + ((this.totalSize - 1) / 2.0f), vector2f);
    }

    public int getNumMajorSubdivisions() {
        return 1;
    }

    public TerrainPatch getPatch(int i10) {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return null;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return null;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainPatch) {
                TerrainPatch terrainPatch = (TerrainPatch) spatial;
                if (terrainPatch.getQuadrant() == i10) {
                    return terrainPatch;
                }
            }
        }
    }

    public int getPatchSize() {
        return this.patchSize;
    }

    public TerrainQuad getQuad(int i10) {
        if (i10 == 0) {
            return this;
        }
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return null;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return null;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                TerrainQuad terrainQuad = (TerrainQuad) spatial;
                if (terrainQuad.getQuadrant() == i10) {
                    return terrainQuad;
                }
            }
        }
    }

    public int getQuadrant() {
        return this.quadrant;
    }

    @Override
    public int getTerrainSize() {
        return this.totalSize;
    }

    public int getTotalSize() {
        return this.totalSize;
    }

    public boolean isPointOnTerrain(int i10, int i11) {
        int i12;
        return i10 >= 0 && i10 <= (i12 = this.totalSize) && i11 >= 0 && i11 <= i12;
    }

    public boolean isRootQuad() {
        return (getParent() == null || (getParent() instanceof TerrainQuad)) ? false : true;
    }

    public boolean needToRecalculateNormals() {
        if (this.affectedAreaBBox != null) {
            return true;
        }
        if (this.lastScale.equals(getWorldScale())) {
            return false;
        }
        this.affectedAreaBBox = new BoundingBox(getWorldTranslation(), Float.MAX_VALUE, Float.MAX_VALUE, Float.MAX_VALUE);
        this.lastScale = getWorldScale();
        return true;
    }

    public synchronized void reIndexPages(HashMap<String, UpdatedTerrainPatch> hashMap, boolean z10) {
        try {
            SafeArrayList<Spatial> safeArrayList = this.children;
            if (safeArrayList != null) {
                int size = safeArrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    Spatial spatial = this.children.get(size);
                    if (spatial instanceof TerrainQuad) {
                        ((TerrainQuad) spatial).reIndexPages(hashMap, z10);
                    } else if (spatial instanceof TerrainPatch) {
                        ((TerrainPatch) spatial).reIndexGeometry(hashMap, z10);
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.size = capsule.readInt(XMLExporter.ATTRIBUTE_SIZE, 0);
        this.stepScale = (Vector3f) capsule.readSavable("stepScale", null);
        this.offset = (Vector2f) capsule.readSavable("offset", new Vector2f(0.0f, 0.0f));
        this.offsetAmount = capsule.readFloat("offsetAmount", 0.0f);
        this.quadrant = capsule.readInt("quadrant", 0);
        this.totalSize = capsule.readInt("totalSize", 0);
        this.patchSize = capsule.readInt("patchSize", 0);
        if (getParent() instanceof TerrainQuad) {
            return;
        }
        Vector3f worldTranslation = getWorldTranslation();
        int i10 = this.totalSize;
        this.affectedAreaBBox = new BoundingBox(worldTranslation, i10, i10, i10);
        updateNormals();
    }

    public void recalculateAllNormals() {
        Vector3f vector3f = new Vector3f(0.0f, 0.0f, 0.0f);
        int i10 = this.totalSize;
        this.affectedAreaBBox = new BoundingBox(vector3f, i10 * 2, Float.MAX_VALUE, i10 * 2);
    }

    public void resetCachedNeighbours() {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            Spatial spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                ((TerrainQuad) spatial).resetCachedNeighbours();
            } else if (spatial instanceof TerrainPatch) {
                ((TerrainPatch) spatial).searchedForNeighboursAlready = false;
            }
        }
    }

    @Override
    public void setHeight(Vector2f vector2f, float f10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(vector2f);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Float.valueOf(f10));
        setHeight(arrayList, arrayList2);
    }

    @Override
    public void setLocked(boolean z10) {
        for (int i10 = 0; i10 < getQuantity(); i10++) {
            if (getChild(i10) instanceof TerrainQuad) {
                ((TerrainQuad) getChild(i10)).setLocked(z10);
            } else if (getChild(i10) instanceof TerrainPatch) {
                if (z10) {
                    ((TerrainPatch) getChild(i10)).lockMesh();
                } else {
                    ((TerrainPatch) getChild(i10)).unlockMesh();
                }
            }
        }
    }

    public void setNeedToRecalculateNormals() {
        this.affectedAreaBBox = new BoundingBox(getWorldTranslation(), Float.MAX_VALUE, Float.MAX_VALUE, Float.MAX_VALUE);
    }

    public void setNeighbourFinder(NeighbourFinder neighbourFinder) {
        this.neighbourFinder = neighbourFinder;
        resetCachedNeighbours();
    }

    public void setNormalRecalcNeeded(Vector2f vector2f) {
        if (vector2f == null) {
            this.affectedAreaBBox = null;
            return;
        }
        Vector2f m1291clone = vector2f.m1291clone();
        m1291clone.multLocal(new Vector2f(getWorldScale().f81611x, getWorldScale().f81613z));
        m1291clone.addLocal(getWorldTranslation().f81611x, getWorldTranslation().f81613z);
        Quaternion worldRotation = getWorldRotation();
        if (worldRotation.getX() == 0.0f && worldRotation.getY() == 0.0f && worldRotation.getZ() == 0.0f) {
            BoundingBox boundingBox = this.affectedAreaBBox;
            if (boundingBox == null) {
                this.affectedAreaBBox = new BoundingBox(new Vector3f(m1291clone.f81609x, 0.0f, m1291clone.f81610y), 1.0f, Float.MAX_VALUE, 1.0f);
                return;
            } else {
                boundingBox.mergeLocal(new BoundingBox(new Vector3f(m1291clone.f81609x, 0.0f, m1291clone.f81610y), 1.0f, Float.MAX_VALUE, 1.0f));
                return;
            }
        }
        BoundingVolume worldBound = getWorldBound();
        if (!(worldBound instanceof BoundingSphere)) {
            this.affectedAreaBBox = (BoundingBox) worldBound.m1264clone();
            return;
        }
        BoundingSphere boundingSphere = (BoundingSphere) worldBound;
        float radius = boundingSphere.getRadius();
        this.affectedAreaBBox = new BoundingBox(boundingSphere.getCenter(), radius, radius, radius);
    }

    @Override
    public void setParent(Node node) {
        super.setParent(node);
        if (node == null) {
            clearCaches();
        }
    }

    public void setQuadrant(short s10) {
        this.quadrant = s10;
    }

    public void setSupportMultipleCollisions(boolean z10) {
        TerrainPicker terrainPicker = this.picker;
        if (terrainPicker == null) {
            throw new IllegalStateException("The TerrainPicker is null.");
        }
        if (!(terrainPicker instanceof BresenhamTerrainPicker)) {
            throw new IllegalStateException("The underlying picking implementation does not support multiple collisions");
        }
        ((BresenhamTerrainPicker) terrainPicker).setSupportMultipleCollisions(z10);
    }

    public void split(int i10, float[] fArr) {
        if ((this.size >> 1) + 1 <= i10) {
            createQuadPatch(fArr);
        } else {
            createQuad(i10, fArr);
        }
    }

    public void updateNormals() {
        if (needToRecalculateNormals()) {
            fixNormals(this.affectedAreaBBox);
            fixNormalEdges(this.affectedAreaBBox);
            setNormalRecalcNeeded(null);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.size, XMLExporter.ATTRIBUTE_SIZE, 0);
        capsule.write(this.totalSize, "totalSize", 0);
        capsule.write(this.patchSize, "patchSize", 0);
        capsule.write(this.stepScale, "stepScale", (Savable) null);
        capsule.write(this.offset, "offset", new Vector2f(0.0f, 0.0f));
        capsule.write(this.offsetAmount, "offsetAmount", 0.0f);
        capsule.write(this.quadrant, "quadrant", 0);
    }

    public Material getMaterial(Vector3f vector3f) {
        Spatial spatial;
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return null;
        }
        int size = safeArrayList.size();
        do {
            size--;
            if (size < 0) {
                return null;
            }
            spatial = this.children.get(size);
            if (spatial instanceof TerrainQuad) {
                return ((TerrainQuad) spatial).getMaterial(vector3f);
            }
        } while (!(spatial instanceof TerrainPatch));
        return ((TerrainPatch) spatial).getMaterial();
    }

    public Vector3f getNormal(float f10, float f11, Vector2f vector2f) {
        float f12 = f10 - 0.5f;
        float f13 = f11 - 0.5f;
        FastMath.floor(f12);
        FastMath.floor(f13);
        Vector3f meshNormal = getMeshNormal((int) FastMath.ceil(f12), (int) FastMath.ceil(f13));
        Vector3f meshNormal2 = getMeshNormal((int) FastMath.floor(f12), (int) FastMath.ceil(f13));
        Vector3f meshNormal3 = getMeshNormal((int) FastMath.ceil(f12), (int) FastMath.floor(f13));
        return meshNormal.add(meshNormal2).add(meshNormal3).add(getMeshNormal((int) FastMath.floor(f12), (int) FastMath.floor(f13))).normalize();
    }

    public TerrainQuad(String str, int i10, int i11, float[] fArr) {
        this(str, i10, i11, Vector3f.UNIT_XYZ, fArr);
        Vector3f vector3f = new Vector3f(0.0f, 0.0f, 0.0f);
        int i12 = this.size;
        BoundingBox boundingBox = new BoundingBox(vector3f, i12 * 2, Float.MAX_VALUE, i12 * 2);
        this.affectedAreaBBox = boundingBox;
        fixNormalEdges(boundingBox);
        addControl(new NormalRecalcControl(this));
    }

    public void adjustHeight(List<Vector2f> list, List<Float> list2) {
        setHeight(list, list2, false);
    }

    @Override
    public TerrainQuad mo1263clone() {
        return clone(true);
    }

    public float getHeight(int i10, int i11, float f10, float f11) {
        QuadrantChild findMatchingChild = findMatchingChild(i10, i11);
        if (findMatchingChild == null) {
            return Float.NaN;
        }
        Spatial spatial = findMatchingChild.child;
        if (spatial instanceof TerrainQuad) {
            return ((TerrainQuad) spatial).getHeight(findMatchingChild.col, findMatchingChild.row, f10, f11);
        }
        if (spatial instanceof TerrainPatch) {
            return ((TerrainPatch) spatial).getHeight(findMatchingChild.col, findMatchingChild.row, f10, f11);
        }
        return Float.NaN;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float getHeightmapHeight(int i10, int i11) {
        int quadrant;
        int i12;
        int i13;
        int i14;
        int findQuadrant = findQuadrant(i10, i11);
        int i15 = (this.size + 1) >> 1;
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList == null) {
            return Float.NaN;
        }
        int size = safeArrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return Float.NaN;
            }
            Spatial spatial = this.children.get(size);
            boolean z10 = spatial instanceof TerrainQuad;
            boolean z11 = false;
            if (z10) {
                quadrant = ((TerrainQuad) spatial).getQuadrant();
            } else {
                quadrant = spatial instanceof TerrainPatch ? ((TerrainPatch) spatial).getQuadrant() : 0;
            }
            if (quadrant == 1 && (findQuadrant & 1) != 0) {
                i12 = i10;
                i13 = i11;
            } else if (quadrant != 2 || (findQuadrant & 2) == 0) {
                if (quadrant == 3 && (findQuadrant & 4) != 0) {
                    i14 = (i10 - i15) + 1;
                    i13 = i11;
                } else if (quadrant != 4 || (findQuadrant & 8) == 0) {
                    i12 = i10;
                    i13 = i11;
                    if (z11) {
                        if (z10) {
                            return ((TerrainQuad) spatial).getHeightmapHeight(i12, i13);
                        }
                        if (spatial instanceof TerrainPatch) {
                            return ((TerrainPatch) spatial).getHeightmapHeight(i12, i13);
                        }
                    }
                } else {
                    i14 = (i10 - i15) + 1;
                    i13 = (i11 - i15) + 1;
                }
                i12 = i14;
            } else {
                i12 = i10;
                i13 = (i11 - i15) + 1;
            }
            z11 = true;
            if (z11) {
            }
        }
    }

    @Override
    public void setHeight(List<Vector2f> list, List<Float> list2) {
        setHeight(list, list2, true);
    }

    @Override
    public TerrainQuad clone(boolean z10) {
        TerrainQuad terrainQuad = (TerrainQuad) super.clone(z10);
        terrainQuad.name = this.name.toString();
        terrainQuad.size = this.size;
        terrainQuad.totalSize = this.totalSize;
        Vector3f vector3f = this.stepScale;
        if (vector3f != null) {
            terrainQuad.stepScale = vector3f.m1292clone();
        }
        Vector2f vector2f = this.offset;
        if (vector2f != null) {
            terrainQuad.offset = vector2f.m1291clone();
        }
        terrainQuad.offsetAmount = this.offsetAmount;
        terrainQuad.quadrant = this.quadrant;
        TerrainLodControl terrainLodControl = (TerrainLodControl) getControl(TerrainLodControl.class);
        if (terrainLodControl != null) {
            boolean z11 = getParent() instanceof TerrainQuad;
        }
        NormalRecalcControl normalRecalcControl = (NormalRecalcControl) getControl(NormalRecalcControl.class);
        if (normalRecalcControl != null) {
            normalRecalcControl.setTerrain(this);
        }
        return terrainQuad;
    }

    public void setHeight(List<Vector2f> list, List<Float> list2, boolean z10) {
        if (list.size() == list2.size()) {
            int i10 = this.totalSize / 2;
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < list.size(); i11++) {
                float f10 = i10;
                int round = Math.round((list.get(i11).f81609x / getWorldScale().f81611x) + f10);
                int round2 = Math.round((list.get(i11).f81610y / getWorldScale().f81613z) + f10);
                if (isInside(round, round2)) {
                    arrayList.add(new LocationHeight(round, round2, list2.get(i11).floatValue()));
                }
            }
            setHeight(arrayList, z10);
            for (int i12 = 0; i12 < list.size(); i12++) {
                setNormalRecalcNeeded(list.get(i12));
            }
            return;
        }
        throw new IllegalArgumentException("Both lists must be the same length!");
    }

    @Deprecated
    public TerrainQuad(String str, int i10, int i11, Vector3f vector3f, float[] fArr) {
        this(str, i10, i11, vector3f, fArr, i11, new Vector2f(), 0.0f);
    }

    @Deprecated
    public TerrainQuad(String str, int i10, int i11, int i12, Vector3f vector3f, float[] fArr) {
        this(str, i10, i12, vector3f, fArr, i11, new Vector2f(), 0.0f);
    }

    public TerrainQuad(String str, int i10, int i11, Vector3f vector3f, float[] fArr, int i12, Vector2f vector2f, float f10) {
        super(str);
        this.quadrant = 0;
        this.maxLod = -1;
        this.picker = new BresenhamTerrainPicker(this);
        this.lastScale = Vector3f.UNIT_XYZ;
        fArr = fArr == null ? generateDefaultHeightMap(i11) : fArr;
        if (FastMath.isPowerOfTwo(i11 - 1)) {
            if (FastMath.sqrt(fArr.length) > i11) {
                Logger.getLogger(getClass().getName()).log(Level.WARNING, "Heightmap size is larger than the terrain size. Make sure your heightmap image is the same size as the terrain!");
            }
            this.offset = vector2f;
            this.offsetAmount = f10;
            this.totalSize = i12;
            this.size = i11;
            this.patchSize = i10;
            this.stepScale = vector3f;
            split(i10, fArr);
            return;
        }
        throw new RuntimeException("size given: " + i11 + "  Terrain quad sizes may only be (2^N + 1)");
    }

    public void setHeight(List<LocationHeight> list, boolean z10) {
        int i10;
        Spatial spatial;
        Iterator<LocationHeight> it;
        int quadrant;
        if (this.children == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        int size = this.children.size();
        Spatial spatial2 = null;
        Spatial spatial3 = null;
        Spatial spatial4 = null;
        Spatial spatial5 = null;
        while (true) {
            size--;
            i10 = 1;
            if (size < 0) {
                break;
            }
            Spatial spatial6 = this.children.get(size);
            if (spatial6 instanceof TerrainQuad) {
                quadrant = ((TerrainQuad) spatial6).getQuadrant();
            } else {
                quadrant = spatial6 instanceof TerrainPatch ? ((TerrainPatch) spatial6).getQuadrant() : 0;
            }
            if (quadrant == 1) {
                spatial2 = spatial6;
            } else if (quadrant == 2) {
                spatial3 = spatial6;
            } else if (quadrant == 3) {
                spatial4 = spatial6;
            } else if (quadrant == 4) {
                spatial5 = spatial6;
            }
        }
        int i11 = (this.size + 1) >> 1;
        Iterator<LocationHeight> it2 = list.iterator();
        while (it2.hasNext()) {
            LocationHeight next = it2.next();
            int findQuadrant = findQuadrant(next.f81638x, next.f81639z);
            if ((findQuadrant & 1) != 0) {
                arrayList.add(next);
            }
            if ((findQuadrant & 2) != 0) {
                it = it2;
                spatial = spatial5;
                arrayList2.add(new LocationHeight(next.f81638x, (next.f81639z - i11) + i10, next.f81637h));
            } else {
                spatial = spatial5;
                it = it2;
            }
            if ((findQuadrant & 4) != 0) {
                arrayList3.add(new LocationHeight((next.f81638x - i11) + 1, next.f81639z, next.f81637h));
            }
            if ((findQuadrant & 8) != 0) {
                i10 = 1;
                arrayList4.add(new LocationHeight((next.f81638x - i11) + 1, (next.f81639z - i11) + 1, next.f81637h));
            } else {
                i10 = 1;
            }
            it2 = it;
            spatial5 = spatial;
        }
        Spatial spatial7 = spatial5;
        if (!arrayList.isEmpty()) {
            if (spatial2 instanceof TerrainQuad) {
                ((TerrainQuad) spatial2).setHeight(arrayList, z10);
            } else if (spatial2 instanceof TerrainPatch) {
                ((TerrainPatch) spatial2).setHeight(arrayList, z10);
            }
        }
        if (!arrayList2.isEmpty()) {
            if (spatial3 instanceof TerrainQuad) {
                ((TerrainQuad) spatial3).setHeight(arrayList2, z10);
            } else if (spatial3 instanceof TerrainPatch) {
                ((TerrainPatch) spatial3).setHeight(arrayList2, z10);
            }
        }
        if (!arrayList3.isEmpty()) {
            if (spatial4 instanceof TerrainQuad) {
                ((TerrainQuad) spatial4).setHeight(arrayList3, z10);
            } else if (spatial4 instanceof TerrainPatch) {
                ((TerrainPatch) spatial4).setHeight(arrayList3, z10);
            }
        }
        if (arrayList4.isEmpty()) {
            return;
        }
        if (spatial7 instanceof TerrainQuad) {
            ((TerrainQuad) spatial7).setHeight(arrayList4, z10);
        } else if (spatial7 instanceof TerrainPatch) {
            ((TerrainPatch) spatial7).setHeight(arrayList4, z10);
        }
    }
}
