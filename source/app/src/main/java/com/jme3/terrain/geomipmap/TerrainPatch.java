package com.jme3.terrain.geomipmap;

import com.ardor3d.util.export.xml.XMLExporter;
import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.collision.UnsupportedCollisionException;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.math.FastMath;
import com.jme3.math.Ray;
import com.jme3.math.Triangle;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.terrain.geomipmap.TerrainQuad;
import com.jme3.terrain.geomipmap.lodcalc.util.EntropyComputeUtil;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TerrainPatch extends Geometry {
    private static final Logger logger = Logger.getLogger(TerrainPatch.class.getName());
    protected TerrainPatch bottomNeighbour;
    protected LODGeomap geomap;
    protected TerrainPatch leftNeighbour;
    protected int lod;
    protected int lodBottom;
    protected float[] lodEntropy;
    protected int lodLeft;
    protected int lodRight;
    protected int lodTop;
    private int maxLod;
    protected Vector2f offset;
    protected float offsetAmount;
    protected int previousLod;
    protected short quadrant;
    protected TerrainPatch rightNeighbour;
    protected boolean searchedForNeighboursAlready;
    protected int size;
    protected Vector3f stepScale;
    protected TerrainPatch topNeighbour;
    protected int totalSize;
    protected Vector3f worldScaleCached;
    protected Vector3f worldTranslationCached;

    public TerrainPatch() {
        super("TerrainPatch");
        this.lod = 0;
        this.maxLod = -1;
        this.previousLod = -1;
        this.quadrant = (short) 1;
        this.searchedForNeighboursAlready = false;
        setBatchHint(Spatial.BatchHint.Never);
    }

    private Vector3f calculateNormal(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        Vector3f vector3f4 = new Vector3f();
        vector3f4.set(vector3f).subtractLocal(vector3f2).crossLocal(vector3f3.subtract(vector3f2)).normalizeLocal();
        return vector3f4;
    }

    private int collideWithBoundingBox(BoundingBox boundingBox, CollisionResults collisionResults) {
        Triangle triangle;
        Vector3f worldCoordinateToLocal = worldCoordinateToLocal(new Vector3f(boundingBox.getCenter().f81611x - boundingBox.getXExtent(), 0.0f, boundingBox.getCenter().f81613z - boundingBox.getZExtent()));
        Vector3f worldCoordinateToLocal2 = worldCoordinateToLocal(new Vector3f(boundingBox.getCenter().f81611x + boundingBox.getXExtent(), 0.0f, boundingBox.getCenter().f81613z - boundingBox.getZExtent()));
        Vector3f worldCoordinateToLocal3 = worldCoordinateToLocal(new Vector3f(boundingBox.getCenter().f81611x - boundingBox.getXExtent(), 0.0f, boundingBox.getCenter().f81613z + boundingBox.getZExtent()));
        Vector3f worldCoordinateToLocal4 = worldCoordinateToLocal(new Vector3f(boundingBox.getCenter().f81611x + boundingBox.getXExtent(), 0.0f, boundingBox.getCenter().f81613z + boundingBox.getZExtent()));
        Triangle triangle2 = getTriangle(worldCoordinateToLocal.f81611x, worldCoordinateToLocal.f81613z);
        if (triangle2 != null && boundingBox.collideWith(triangle2, collisionResults) > 0) {
            return 1;
        }
        Triangle triangle3 = getTriangle(worldCoordinateToLocal2.f81611x, worldCoordinateToLocal2.f81613z);
        if (triangle3 != null && boundingBox.collideWith(triangle3, collisionResults) > 0) {
            return 1;
        }
        Triangle triangle4 = getTriangle(worldCoordinateToLocal3.f81611x, worldCoordinateToLocal3.f81613z);
        if (triangle4 != null && boundingBox.collideWith(triangle4, collisionResults) > 0) {
            return 1;
        }
        Triangle triangle5 = getTriangle(worldCoordinateToLocal4.f81611x, worldCoordinateToLocal4.f81613z);
        if (triangle5 != null && boundingBox.collideWith(triangle5, collisionResults) > 0) {
            return 1;
        }
        for (float f10 = worldCoordinateToLocal.f81613z; f10 < worldCoordinateToLocal3.f81613z; f10 += 1.0f) {
            for (float f11 = worldCoordinateToLocal.f81611x; f11 < worldCoordinateToLocal2.f81611x; f11 += 1.0f) {
                if (f11 >= 0.0f && f10 >= 0.0f) {
                    int i10 = this.size;
                    if (f11 < i10 && f10 < i10 && (triangle = getTriangle(f11, f10)) != null && boundingBox.collideWith(triangle, collisionResults) > 0) {
                        return 1;
                    }
                }
            }
        }
        return 0;
    }

    private int collideWithBoundingVolume(BoundingVolume boundingVolume, CollisionResults collisionResults) {
        if (boundingVolume instanceof BoundingBox) {
            return collideWithBoundingBox((BoundingBox) boundingVolume, collisionResults);
        }
        if (!(boundingVolume instanceof BoundingSphere)) {
            return 0;
        }
        BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
        return collideWithBoundingBox(new BoundingBox(boundingVolume.getCenter().m1292clone(), boundingSphere.getRadius(), boundingSphere.getRadius(), boundingSphere.getRadius()), collisionResults);
    }

    private int collideWithRay(Ray ray, CollisionResults collisionResults) {
        return 0;
    }

    private void setInBuffer(Mesh mesh, int i10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Normal);
        VertexBuffer buffer2 = mesh.getBuffer(VertexBuffer.Type.Tangent);
        VertexBuffer buffer3 = mesh.getBuffer(VertexBuffer.Type.Binormal);
        BufferUtils.setInBuffer(vector3f, (FloatBuffer) buffer.getData(), i10);
        BufferUtils.setInBuffer(vector3f2, (FloatBuffer) buffer2.getData(), i10);
        BufferUtils.setInBuffer(vector3f3, (FloatBuffer) buffer3.getData(), i10);
        buffer.setUpdateNeeded();
        buffer2.setUpdateNeeded();
        buffer3.setUpdateNeeded();
    }

    public void averageNormalsTangents(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, Vector3f vector3f5, Vector3f vector3f6, Vector3f vector3f7, Vector3f vector3f8) {
        Vector3f worldScale = getWorldScale();
        Vector3f vector3f9 = new Vector3f(0.0f, 0.0f, 0.0f);
        if (vector3f != null && vector3f3 != null) {
            vector3f9.set(calculateNormal(vector3f.mult(worldScale), vector3f2.mult(worldScale), vector3f3.mult(worldScale)));
        }
        Vector3f vector3f10 = new Vector3f(0.0f, 0.0f, 0.0f);
        if (vector3f3 != null && vector3f4 != null) {
            vector3f10.set(calculateNormal(vector3f3.mult(worldScale), vector3f2.mult(worldScale), vector3f4.mult(worldScale)));
        }
        Vector3f vector3f11 = new Vector3f(0.0f, 0.0f, 0.0f);
        if (vector3f5 != null && vector3f4 != null) {
            vector3f11.set(calculateNormal(vector3f4.mult(worldScale), vector3f2.mult(worldScale), vector3f5.mult(worldScale)));
        }
        Vector3f vector3f12 = new Vector3f(0.0f, 0.0f, 0.0f);
        if (vector3f5 != null && vector3f != null) {
            vector3f12.set(calculateNormal(vector3f5.mult(worldScale), vector3f2.mult(worldScale), vector3f.mult(worldScale)));
        }
        vector3f6.set(vector3f9.add(vector3f10).add(vector3f11).add(vector3f12).normalize());
        vector3f7.set(vector3f6.cross(new Vector3f(0.0f, 0.0f, 1.0f)).normalize());
        vector3f8.set(new Vector3f(1.0f, 0.0f, 0.0f).cross(vector3f6).normalize());
    }

    public void cacheTerrainTransforms() {
        this.worldScaleCached = getWorldScale().m1292clone();
        this.worldTranslationCached = getWorldTranslation().m1292clone();
    }

    public void clearCaches() {
        TerrainPatch terrainPatch = this.leftNeighbour;
        if (terrainPatch != null) {
            terrainPatch.rightNeighbour = null;
            this.leftNeighbour = null;
        }
        TerrainPatch terrainPatch2 = this.rightNeighbour;
        if (terrainPatch2 != null) {
            terrainPatch2.leftNeighbour = null;
            this.rightNeighbour = null;
        }
        TerrainPatch terrainPatch3 = this.topNeighbour;
        if (terrainPatch3 != null) {
            terrainPatch3.bottomNeighbour = null;
            this.topNeighbour = null;
        }
        TerrainPatch terrainPatch4 = this.bottomNeighbour;
        if (terrainPatch4 != null) {
            terrainPatch4.topNeighbour = null;
            this.bottomNeighbour = null;
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.stepScale = (Vector3f) cloner.clone(this.stepScale);
        this.offset = (Vector2f) cloner.clone(this.offset);
        this.leftNeighbour = null;
        this.topNeighbour = null;
        this.rightNeighbour = null;
        this.bottomNeighbour = null;
        LODGeomap lODGeomap = new LODGeomap(this.size, this.geomap.getHeightArray());
        this.geomap = lODGeomap;
        setMesh(lODGeomap.createMesh(this.stepScale, Vector2f.UNIT_XY, this.offset, this.offsetAmount, this.totalSize, false));
        Material material = this.material;
        this.material = material != null ? material.mo1263clone() : null;
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) throws UnsupportedCollisionException {
        if ((this.refreshFlags & 3) != 0) {
            logger.log(Level.WARNING, "Scene graph must be updated before checking collision");
            return 0;
        }
        boolean z10 = collidable instanceof BoundingVolume;
        if (z10 && !getWorldBound().intersects((BoundingVolume) collidable)) {
            return 0;
        }
        if (collidable instanceof Ray) {
            return collideWithRay((Ray) collidable, collisionResults);
        }
        if (z10) {
            return collideWithBoundingVolume((BoundingVolume) collidable, collisionResults);
        }
        throw new UnsupportedCollisionException("TerrainPatch cannot collide with " + collidable.getClass().getName());
    }

    public void ensurePositiveVolumeBBox() {
        if (!(getModelBound() instanceof BoundingBox) || ((BoundingBox) getModelBound()).getYExtent() >= 0.001f) {
            return;
        }
        ((BoundingBox) getModelBound()).setYExtent(0.001f);
        updateWorldBound();
    }

    public void fixNormalEdges(TerrainPatch terrainPatch, TerrainPatch terrainPatch2, TerrainPatch terrainPatch3, TerrainPatch terrainPatch4, TerrainPatch terrainPatch5, TerrainPatch terrainPatch6, TerrainPatch terrainPatch7, TerrainPatch terrainPatch8) {
        int i10;
        Vector3f vector3f;
        Vector3f vector3f2;
        Vector3f vector3f3;
        Vector3f vector3f4;
        int i11;
        Vector3f vector3f5;
        int i12;
        int i13;
        Vector3f vector3f6;
        Vector3f vector3f7;
        int i14;
        int i15;
        int i16;
        Vector3f vector3f8;
        Vector3f vector3f9;
        TerrainPatch terrainPatch9 = terrainPatch;
        TerrainPatch terrainPatch10 = terrainPatch2;
        TerrainPatch terrainPatch11 = terrainPatch3;
        Vector3f vector3f10 = new Vector3f();
        Vector3f vector3f11 = new Vector3f();
        Vector3f vector3f12 = new Vector3f();
        Vector3f vector3f13 = new Vector3f();
        Vector3f vector3f14 = new Vector3f();
        Vector3f vector3f15 = new Vector3f();
        Vector3f vector3f16 = new Vector3f();
        Vector3f vector3f17 = new Vector3f();
        int size = getSize();
        int i17 = size - 1;
        float f10 = 0.0f;
        if (terrainPatch9 != null) {
            int i18 = 0;
            while (i18 < size) {
                float f11 = i17;
                float f12 = i18;
                int i19 = i17;
                vector3f10.set(f10, getHeightmapHeight(f11, f12), f10);
                float f13 = size - 2;
                int i20 = size;
                Vector3f vector3f18 = vector3f13;
                vector3f12.set(-1.0f, getHeightmapHeight(f13, f12), f10);
                vector3f11.set(1.0f, terrainPatch9.getHeightmapHeight(1.0f, f12), f10);
                if (i18 == 0) {
                    vector3f14.set(f10, getHeightmapHeight(f11, i18 + 1), 1.0f);
                    if (terrainPatch11 == null) {
                        vector3f7 = vector3f12;
                        averageNormalsTangents(null, vector3f10, vector3f12, vector3f14, vector3f11, vector3f17, vector3f15, vector3f16);
                        setInBuffer(getMesh(), i19, vector3f17, vector3f15, vector3f16);
                        setInBuffer(terrainPatch.getMesh(), 0, vector3f17, vector3f15, vector3f16);
                        i15 = i19;
                        i14 = i18;
                        i16 = i20;
                        vector3f9 = vector3f14;
                        vector3f6 = vector3f18;
                    } else {
                        Vector3f vector3f19 = vector3f14;
                        vector3f7 = vector3f12;
                        vector3f18.set(0.0f, terrainPatch11.getHeightmapHeight(f11, f13), -1.0f);
                        vector3f6 = vector3f18;
                        averageNormalsTangents(vector3f18, vector3f10, vector3f7, vector3f19, vector3f11, vector3f17, vector3f15, vector3f16);
                        setInBuffer(getMesh(), i19, vector3f17, vector3f15, vector3f16);
                        setInBuffer(terrainPatch.getMesh(), 0, vector3f17, vector3f15, vector3f16);
                        setInBuffer(terrainPatch3.getMesh(), (i20 * i20) - 1, vector3f17, vector3f15, vector3f16);
                        i16 = i20;
                        i15 = i19;
                        i14 = i18;
                        vector3f9 = vector3f19;
                    }
                    vector3f8 = vector3f11;
                } else {
                    float f14 = f10;
                    Vector3f vector3f20 = vector3f14;
                    vector3f6 = vector3f18;
                    int i21 = i18;
                    vector3f7 = vector3f12;
                    if (i21 == i19) {
                        vector3f6.set(f14, getHeightmapHeight(f11, f13), -1.0f);
                        if (terrainPatch10 == null) {
                            i14 = i21;
                            i15 = i19;
                            i16 = i20;
                            averageNormalsTangents(vector3f6, vector3f10, vector3f7, null, vector3f11, vector3f17, vector3f15, vector3f16);
                            setInBuffer(getMesh(), (i16 * i16) - 1, vector3f17, vector3f15, vector3f16);
                            setInBuffer(terrainPatch.getMesh(), i16 * i15, vector3f17, vector3f15, vector3f16);
                            vector3f8 = vector3f11;
                            vector3f9 = vector3f20;
                        } else {
                            i14 = i21;
                            i15 = i19;
                            i16 = i20;
                            vector3f20.set(0.0f, terrainPatch10.getHeightmapHeight(f11, 1.0f), 1.0f);
                            vector3f9 = vector3f20;
                            vector3f8 = vector3f11;
                            averageNormalsTangents(vector3f6, vector3f10, vector3f7, vector3f20, vector3f11, vector3f17, vector3f15, vector3f16);
                            setInBuffer(getMesh(), (i16 * i16) - 1, vector3f17, vector3f15, vector3f16);
                            setInBuffer(terrainPatch.getMesh(), i16 * i15, vector3f17, vector3f15, vector3f16);
                            setInBuffer(terrainPatch2.getMesh(), i15, vector3f17, vector3f15, vector3f16);
                        }
                    } else {
                        i14 = i21;
                        i15 = i19;
                        i16 = i20;
                        vector3f8 = vector3f11;
                        vector3f9 = vector3f20;
                        vector3f6.set(0.0f, getHeightmapHeight(f11, i14 - 1), -1.0f);
                        vector3f9.set(0.0f, getHeightmapHeight(f11, i14 + 1), 1.0f);
                        averageNormalsTangents(vector3f6, vector3f10, vector3f7, vector3f9, vector3f8, vector3f17, vector3f15, vector3f16);
                        setInBuffer(getMesh(), (i16 * r8) - 1, vector3f17, vector3f15, vector3f16);
                        setInBuffer(terrainPatch.getMesh(), i16 * i14, vector3f17, vector3f15, vector3f16);
                    }
                    i18 = i14 + 1;
                    size = i16;
                    vector3f14 = vector3f9;
                    i17 = i15;
                    vector3f13 = vector3f6;
                    vector3f12 = vector3f7;
                    vector3f11 = vector3f8;
                    f10 = 0.0f;
                    terrainPatch9 = terrainPatch;
                    terrainPatch10 = terrainPatch2;
                    terrainPatch11 = terrainPatch3;
                }
                i18 = i14 + 1;
                size = i16;
                vector3f14 = vector3f9;
                i17 = i15;
                vector3f13 = vector3f6;
                vector3f12 = vector3f7;
                vector3f11 = vector3f8;
                f10 = 0.0f;
                terrainPatch9 = terrainPatch;
                terrainPatch10 = terrainPatch2;
                terrainPatch11 = terrainPatch3;
            }
        }
        int i22 = i17;
        int i23 = size;
        Vector3f vector3f21 = vector3f14;
        Vector3f vector3f22 = vector3f12;
        Vector3f vector3f23 = vector3f11;
        float f15 = 1.0f;
        TerrainPatch terrainPatch12 = terrainPatch4;
        Vector3f vector3f24 = vector3f13;
        if (terrainPatch12 != null) {
            int i24 = 0;
            while (i24 < i23) {
                float f16 = i24;
                vector3f10.set(0.0f, getHeightmapHeight(0.0f, f16), 0.0f);
                float f17 = i23 - 2;
                Vector3f vector3f25 = vector3f22;
                vector3f25.set(-1.0f, terrainPatch12.getHeightmapHeight(f17, f16), 0.0f);
                Vector3f vector3f26 = vector3f23;
                vector3f26.set(f15, getHeightmapHeight(f15, f16), 0.0f);
                if (i24 == 0) {
                    vector3f21.set(0.0f, getHeightmapHeight(0.0f, i24 + 1), f15);
                    if (terrainPatch3 == null) {
                        vector3f23 = vector3f26;
                        vector3f22 = vector3f25;
                        i13 = i24;
                        vector3f5 = vector3f24;
                        averageNormalsTangents(null, vector3f10, vector3f25, vector3f21, vector3f26, vector3f17, vector3f15, vector3f16);
                        setInBuffer(getMesh(), 0, vector3f17, vector3f15, vector3f16);
                        setInBuffer(terrainPatch4.getMesh(), i22, vector3f17, vector3f15, vector3f16);
                    } else {
                        vector3f23 = vector3f26;
                        vector3f22 = vector3f25;
                        i13 = i24;
                        vector3f5 = vector3f24;
                        vector3f5.set(0.0f, terrainPatch3.getHeightmapHeight(0.0f, f17), -1.0f);
                        averageNormalsTangents(vector3f5, vector3f10, vector3f22, vector3f21, vector3f26, vector3f17, vector3f15, vector3f16);
                        setInBuffer(getMesh(), 0, vector3f17, vector3f15, vector3f16);
                        setInBuffer(terrainPatch4.getMesh(), i22, vector3f17, vector3f15, vector3f16);
                        setInBuffer(terrainPatch3.getMesh(), i23 * i22, vector3f17, vector3f15, vector3f16);
                    }
                    i12 = i13;
                } else {
                    vector3f23 = vector3f26;
                    vector3f22 = vector3f25;
                    vector3f5 = vector3f24;
                    int i25 = i24;
                    if (i25 == i22) {
                        vector3f5.set(0.0f, getHeightmapHeight(0.0f, i25 - 1), -1.0f);
                        Vector3f vector3f27 = vector3f21;
                        if (terrainPatch2 == null) {
                            i12 = i25;
                            averageNormalsTangents(vector3f5, vector3f10, vector3f22, null, vector3f23, vector3f17, vector3f15, vector3f16);
                            setInBuffer(getMesh(), i23 * i22, vector3f17, vector3f15, vector3f16);
                            setInBuffer(terrainPatch4.getMesh(), (i23 * i23) - 1, vector3f17, vector3f15, vector3f16);
                            vector3f21 = vector3f27;
                        } else {
                            i12 = i25;
                            vector3f27.set(0.0f, terrainPatch2.getHeightmapHeight(0.0f, 1.0f), 1.0f);
                            vector3f21 = vector3f27;
                            averageNormalsTangents(vector3f5, vector3f10, vector3f22, vector3f27, vector3f23, vector3f17, vector3f15, vector3f16);
                            setInBuffer(getMesh(), i23 * i22, vector3f17, vector3f15, vector3f16);
                            setInBuffer(terrainPatch4.getMesh(), (i23 * i23) - 1, vector3f17, vector3f15, vector3f16);
                            setInBuffer(terrainPatch2.getMesh(), 0, vector3f17, vector3f15, vector3f16);
                        }
                    } else {
                        i12 = i25;
                        vector3f5.set(0.0f, getHeightmapHeight(0.0f, i12 - 1), -1.0f);
                        vector3f21.set(0.0f, getHeightmapHeight(0.0f, i12 + 1), 1.0f);
                        averageNormalsTangents(vector3f5, vector3f10, vector3f22, vector3f21, vector3f23, vector3f17, vector3f15, vector3f16);
                        setInBuffer(getMesh(), i23 * i12, vector3f17, vector3f15, vector3f16);
                        setInBuffer(terrainPatch4.getMesh(), (i23 * r8) - 1, vector3f17, vector3f15, vector3f16);
                    }
                }
                i24 = i12 + 1;
                vector3f24 = vector3f5;
                f15 = 1.0f;
                terrainPatch12 = terrainPatch4;
            }
        }
        TerrainPatch terrainPatch13 = terrainPatch3;
        Vector3f vector3f28 = vector3f24;
        if (terrainPatch13 != null) {
            int i26 = 0;
            while (i26 < i23) {
                float f18 = i26;
                vector3f10.set(0.0f, getHeightmapHeight(f18, 0.0f), 0.0f);
                vector3f28.set(0.0f, terrainPatch13.getHeightmapHeight(f18, i23 - 2), -1.0f);
                vector3f21.set(0.0f, getHeightmapHeight(f18, 1.0f), 1.0f);
                if (i26 == 0 || i26 == i22) {
                    vector3f2 = vector3f21;
                    vector3f4 = vector3f22;
                    vector3f3 = vector3f23;
                    i11 = i26;
                } else {
                    Vector3f vector3f29 = vector3f22;
                    vector3f29.set(-1.0f, getHeightmapHeight(i26 - 1, 0.0f), 0.0f);
                    Vector3f vector3f30 = vector3f23;
                    vector3f30.set(1.0f, getHeightmapHeight(i26 + 1, 0.0f), 0.0f);
                    Vector3f vector3f31 = vector3f21;
                    vector3f2 = vector3f21;
                    vector3f3 = vector3f30;
                    vector3f4 = vector3f29;
                    i11 = i26;
                    averageNormalsTangents(vector3f28, vector3f10, vector3f29, vector3f31, vector3f30, vector3f17, vector3f15, vector3f16);
                    setInBuffer(getMesh(), i11, vector3f17, vector3f15, vector3f16);
                    setInBuffer(terrainPatch3.getMesh(), (i23 * i22) + i11, vector3f17, vector3f15, vector3f16);
                }
                i26 = i11 + 1;
                vector3f23 = vector3f3;
                vector3f22 = vector3f4;
                vector3f21 = vector3f2;
                terrainPatch13 = terrainPatch3;
            }
        }
        Vector3f vector3f32 = vector3f21;
        Vector3f vector3f33 = vector3f22;
        Vector3f vector3f34 = vector3f23;
        TerrainPatch terrainPatch14 = terrainPatch2;
        Vector3f vector3f35 = vector3f32;
        if (terrainPatch14 != null) {
            int i27 = 0;
            while (i27 < i23) {
                float f19 = i27;
                float f20 = i22;
                vector3f10.set(0.0f, getHeightmapHeight(f19, f20), 0.0f);
                vector3f28.set(0.0f, getHeightmapHeight(f19, i23 - 2), -1.0f);
                vector3f35.set(0.0f, terrainPatch14.getHeightmapHeight(f19, 1.0f), 1.0f);
                if (i27 == 0 || i27 == i22) {
                    i10 = i27;
                    vector3f = vector3f35;
                } else {
                    vector3f33.set(-1.0f, getHeightmapHeight(i27 - 1, f20), 0.0f);
                    vector3f34.set(1.0f, getHeightmapHeight(i27 + 1, f20), 0.0f);
                    i10 = i27;
                    vector3f = vector3f35;
                    averageNormalsTangents(vector3f28, vector3f10, vector3f33, vector3f35, vector3f34, vector3f17, vector3f15, vector3f16);
                    setInBuffer(getMesh(), (i23 * i22) + i10, vector3f17, vector3f15, vector3f16);
                    setInBuffer(terrainPatch2.getMesh(), i10, vector3f17, vector3f15, vector3f16);
                }
                i27 = i10 + 1;
                terrainPatch14 = terrainPatch2;
                vector3f35 = vector3f;
            }
        }
    }

    public void generateLodEntropies() {
        float[] fArr = new float[getMaxLod() + 1];
        for (int i10 = 0; i10 <= getMaxLod(); i10++) {
            fArr[i10] = EntropyComputeUtil.computeLodEntropy(this.mesh, this.geomap.writeIndexArrayLodDiff((int) Math.pow(2.0d, i10), false, false, false, false, this.totalSize).getBuffer());
        }
        this.lodEntropy = fArr;
    }

    public Triangle[] getGridTriangles(float f10, float f11) {
        return this.geomap.getGridTrianglesAtPoint(f10, f11, getWorldScale(), getWorldTranslation());
    }

    public float getHeight(int i10, int i11, float f10, float f11) {
        return this.geomap.getHeight(i10, i11, f10, f11);
    }

    public float[] getHeightMap() {
        return this.geomap.getHeightArray();
    }

    public float getHeightmapHeight(float f10, float f11) {
        if (f10 >= 0.0f && f11 >= 0.0f) {
            int i10 = this.size;
            if (f10 < i10 && f11 < i10) {
                return getMesh().getFloatBuffer(VertexBuffer.Type.Position).get((((int) ((f11 * i10) + f10)) * 3) + 1);
            }
        }
        return 0.0f;
    }

    public int getLod() {
        return this.lod;
    }

    public int getLodBottom() {
        return this.lodBottom;
    }

    public float[] getLodEntropies() {
        if (this.lodEntropy == null) {
            generateLodEntropies();
        }
        return this.lodEntropy;
    }

    public int getLodLeft() {
        return this.lodLeft;
    }

    public int getLodRight() {
        return this.lodRight;
    }

    public int getLodTop() {
        return this.lodTop;
    }

    public int getMaxLod() {
        if (this.maxLod < 0) {
            this.maxLod = Math.max(1, ((int) (FastMath.log(this.size - 1) / FastMath.log(2.0f))) - 1);
        }
        return this.maxLod;
    }

    public Vector3f getMeshNormal(int i10, int i11) {
        int i12 = this.size;
        if (i10 >= i12 || i11 >= i12) {
            return null;
        }
        int i13 = ((i11 * i12) + i10) * 3;
        FloatBuffer floatBuffer = (FloatBuffer) getMesh().getBuffer(VertexBuffer.Type.Normal).getData();
        Vector3f vector3f = new Vector3f();
        vector3f.f81611x = floatBuffer.get(i13);
        vector3f.f81612y = floatBuffer.get(i13 + 1);
        vector3f.f81613z = floatBuffer.get(i13 + 2);
        return vector3f;
    }

    public Vector2f getOffset() {
        return this.offset;
    }

    public float getOffsetAmount() {
        return this.offsetAmount;
    }

    public int getPreviousLod() {
        return this.previousLod;
    }

    public short getQuadrant() {
        return this.quadrant;
    }

    public int getSize() {
        return this.size;
    }

    public Vector3f getStepScale() {
        return this.stepScale;
    }

    public Vector2f getTex(float f10, float f11, Vector2f vector2f) {
        if (f10 >= 0.0f && f11 >= 0.0f) {
            int i10 = this.size;
            if (f10 < i10 && f11 < i10) {
                int i11 = (int) ((f11 * i10) + f10);
                Mesh mesh = getMesh();
                VertexBuffer.Type type = VertexBuffer.Type.TexCoord;
                int i12 = i11 * 2;
                return vector2f.set(mesh.getFloatBuffer(type).get(i12), getMesh().getFloatBuffer(type).get(i12 + 1));
            }
        }
        vector2f.set(Vector2f.ZERO);
        return vector2f;
    }

    public int getTotalSize() {
        return this.totalSize;
    }

    public Triangle getTriangle(float f10, float f11) {
        return this.geomap.getTriangleAtPoint(f10, f11, getWorldScale(), getWorldTranslation());
    }

    public Vector3f getWorldScaleCached() {
        return this.worldScaleCached;
    }

    public Vector3f getWorldTranslationCached() {
        return this.worldTranslationCached;
    }

    public void lockMesh() {
        getMesh().setStatic();
    }

    public void reIndexGeometry(HashMap<String, UpdatedTerrainPatch> hashMap, boolean z10) {
        UpdatedTerrainPatch updatedTerrainPatch = hashMap.get(getName());
        if (updatedTerrainPatch == null || !updatedTerrainPatch.isReIndexNeeded()) {
            return;
        }
        int pow = (int) Math.pow(2.0d, updatedTerrainPatch.getNewLod());
        updatedTerrainPatch.setNewIndexBuffer((z10 ? this.geomap.writeIndexArrayLodVariable(pow, (int) Math.pow(2.0d, updatedTerrainPatch.getRightLod()), (int) Math.pow(2.0d, updatedTerrainPatch.getTopLod()), (int) Math.pow(2.0d, updatedTerrainPatch.getLeftLod()), (int) Math.pow(2.0d, updatedTerrainPatch.getBottomLod()), this.totalSize) : this.geomap.writeIndexArrayLodDiff(pow, updatedTerrainPatch.getRightLod() > updatedTerrainPatch.getNewLod(), updatedTerrainPatch.getTopLod() > updatedTerrainPatch.getNewLod(), updatedTerrainPatch.getLeftLod() > updatedTerrainPatch.getNewLod(), updatedTerrainPatch.getBottomLod() > updatedTerrainPatch.getNewLod(), this.totalSize)).getBuffer());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.size = capsule.readInt(XMLExporter.ATTRIBUTE_SIZE, 16);
        this.totalSize = capsule.readInt("totalSize", 16);
        this.quadrant = capsule.readShort("quadrant", (short) 0);
        Vector3f vector3f = Vector3f.UNIT_XYZ;
        this.stepScale = (Vector3f) capsule.readSavable("stepScale", vector3f);
        this.offset = (Vector2f) capsule.readSavable("offset", vector3f);
        this.offsetAmount = capsule.readFloat("offsetAmount", 0.0f);
        this.lodEntropy = capsule.readFloatArray("lodEntropy", null);
        LODGeomap lODGeomap = (LODGeomap) capsule.readSavable("geomap", null);
        this.geomap = lODGeomap;
        setMesh(lODGeomap.createMesh(this.stepScale, new Vector2f(1.0f, 1.0f), this.offset, this.offsetAmount, this.totalSize, false));
        ensurePositiveVolumeBBox();
    }

    public void setHeight(List<TerrainQuad.LocationHeight> list, boolean z10) {
        int i10;
        int i11;
        float[] heightArray = this.geomap.getHeightArray();
        Mesh mesh = this.mesh;
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        VertexBuffer buffer = mesh.getBuffer(type);
        FloatBuffer floatBuffer = this.mesh.getFloatBuffer(type);
        for (TerrainQuad.LocationHeight locationHeight : list) {
            int i12 = locationHeight.f81638x;
            if (i12 >= 0 && (i10 = locationHeight.f81639z) >= 0 && i12 < (i11 = this.size) && i10 < i11) {
                int i13 = (i10 * i11) + i12;
                if (z10) {
                    heightArray[i13] = locationHeight.f81637h;
                } else {
                    heightArray[i13] = floatBuffer.get((i13 * 3) + 1) + locationHeight.f81637h;
                }
            }
        }
        floatBuffer.clear();
        this.geomap.writeVertexArray(floatBuffer, this.stepScale, false);
        buffer.setUpdateNeeded();
    }

    public void setLod(int i10) {
        this.lod = i10;
    }

    public void setLodBottom(int i10) {
        this.lodBottom = i10;
    }

    public void setLodLeft(int i10) {
        this.lodLeft = i10;
    }

    public void setLodRight(int i10) {
        this.lodRight = i10;
    }

    public void setLodTop(int i10) {
        this.lodTop = i10;
    }

    public void setOffset(Vector2f vector2f) {
        this.offset = vector2f;
    }

    public void setOffsetAmount(float f10) {
        this.offsetAmount = f10;
    }

    public void setPreviousLod(int i10) {
        this.previousLod = i10;
    }

    public void setQuadrant(short s10) {
        this.quadrant = s10;
    }

    public void setSize(int i10) {
        this.size = i10;
        this.maxLod = -1;
    }

    public void setStepScale(Vector3f vector3f) {
        this.stepScale = vector3f;
    }

    public void setTotalSize(int i10) {
        this.totalSize = i10;
    }

    public void unlockMesh() {
        getMesh().setDynamic();
    }

    public void updateNormals() {
        FloatBuffer writeNormalArray = this.geomap.writeNormalArray(null, getWorldScale());
        getMesh().getBuffer(VertexBuffer.Type.Normal).updateData(writeNormalArray);
        FloatBuffer[] writeTangentArray = this.geomap.writeTangentArray(writeNormalArray, null, null, (FloatBuffer) getMesh().getBuffer(VertexBuffer.Type.TexCoord).getData(), getWorldScale());
        FloatBuffer floatBuffer = writeTangentArray[0];
        FloatBuffer floatBuffer2 = writeTangentArray[1];
        getMesh().getBuffer(VertexBuffer.Type.Tangent).updateData(floatBuffer);
        getMesh().getBuffer(VertexBuffer.Type.Binormal).updateData(floatBuffer2);
    }

    public Vector3f worldCoordinateToLocal(Vector3f vector3f) {
        Vector3f vector3f2 = new Vector3f();
        vector3f2.f81611x = (vector3f.f81611x / getWorldScale().f81611x) - getWorldTranslation().f81611x;
        vector3f2.f81612y = (vector3f.f81612y / getWorldScale().f81612y) - getWorldTranslation().f81612y;
        vector3f2.f81613z = (vector3f.f81613z / getWorldScale().f81613z) - getWorldTranslation().f81613z;
        return vector3f2;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        Mesh mesh = getMesh();
        this.mesh = null;
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.size, XMLExporter.ATTRIBUTE_SIZE, 16);
        capsule.write(this.totalSize, "totalSize", 16);
        capsule.write(this.quadrant, "quadrant", (short) 0);
        Vector3f vector3f = this.stepScale;
        Vector3f vector3f2 = Vector3f.UNIT_XYZ;
        capsule.write(vector3f, "stepScale", vector3f2);
        capsule.write(this.offset, "offset", vector3f2);
        capsule.write(this.offsetAmount, "offsetAmount", 0.0f);
        capsule.write(this.lodEntropy, "lodEntropy", (float[]) null);
        capsule.write(this.geomap, "geomap", (Savable) null);
        setMesh(mesh);
    }

    @Override
    public TerrainPatch mo1263clone() {
        TerrainPatch terrainPatch = new TerrainPatch();
        terrainPatch.name = this.name.toString();
        terrainPatch.size = this.size;
        terrainPatch.totalSize = this.totalSize;
        terrainPatch.quadrant = this.quadrant;
        terrainPatch.stepScale = this.stepScale.m1292clone();
        terrainPatch.offset = this.offset.m1291clone();
        terrainPatch.offsetAmount = this.offsetAmount;
        terrainPatch.geomap = new LODGeomap(this.size, this.geomap.getHeightArray());
        terrainPatch.setLocalTranslation(getLocalTranslation().m1292clone());
        terrainPatch.setMesh(terrainPatch.geomap.createMesh(terrainPatch.stepScale, Vector2f.UNIT_XY, terrainPatch.offset, terrainPatch.offsetAmount, terrainPatch.totalSize, false));
        Material material = this.material;
        terrainPatch.setMaterial(material == null ? null : material.mo1263clone());
        return terrainPatch;
    }

    public TerrainPatch(String str) {
        super(str);
        this.lod = 0;
        this.maxLod = -1;
        this.previousLod = -1;
        this.quadrant = (short) 1;
        this.searchedForNeighboursAlready = false;
        setBatchHint(Spatial.BatchHint.Never);
    }

    public TerrainPatch(String str, int i10) {
        this(str, i10, new Vector3f(1.0f, 1.0f, 1.0f), null, new Vector3f(0.0f, 0.0f, 0.0f));
    }

    public TerrainPatch(String str, int i10, Vector3f vector3f, float[] fArr, Vector3f vector3f2) {
        this(str, i10, vector3f, fArr, vector3f2, i10, new Vector2f(), 0.0f);
    }

    public TerrainPatch(String str, int i10, Vector3f vector3f, float[] fArr, Vector3f vector3f2, int i11, Vector2f vector2f, float f10) {
        super(str);
        this.lod = 0;
        this.maxLod = -1;
        this.previousLod = -1;
        this.quadrant = (short) 1;
        this.searchedForNeighboursAlready = false;
        setBatchHint(Spatial.BatchHint.Never);
        this.size = i10;
        this.stepScale = vector3f;
        this.totalSize = i11;
        this.offsetAmount = f10;
        this.offset = vector2f;
        setLocalTranslation(vector3f2);
        LODGeomap lODGeomap = new LODGeomap(i10, fArr);
        this.geomap = lODGeomap;
        setMesh(lODGeomap.createMesh(vector3f, new Vector2f(1.0f, 1.0f), vector2f, f10, i11, false));
    }
}
