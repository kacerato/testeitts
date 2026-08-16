package com.jme3.terrain.geomipmap.picking;

import com.jme3.collision.CollisionResult;
import com.jme3.collision.CollisionResults;
import com.jme3.math.Ray;
import com.jme3.math.Triangle;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.terrain.geomipmap.TerrainPatch;
import com.jme3.terrain.geomipmap.TerrainQuad;
import com.jme3.terrain.geomipmap.picking.BresenhamYUpGridTracer;
import java.util.ArrayList;
import java.util.Collections;

public class BresenhamTerrainPicker implements TerrainPicker {
    private final TerrainQuad root;
    private final Triangle gridTriA = new Triangle(new Vector3f(), new Vector3f(), new Vector3f());
    private final Triangle gridTriB = new Triangle(new Vector3f(), new Vector3f(), new Vector3f());
    private final Vector3f calcVec1 = new Vector3f();
    private final Ray workRay = new Ray();
    private final Ray worldPickRay = new Ray();
    private final BresenhamYUpGridTracer tracer = new BresenhamYUpGridTracer();
    private boolean multipleCollisions = true;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$terrain$geomipmap$picking$BresenhamYUpGridTracer$Direction;

        static {
            int[] iArr = new int[BresenhamYUpGridTracer.Direction.values().length];
            $SwitchMap$com$jme3$terrain$geomipmap$picking$BresenhamYUpGridTracer$Direction = iArr;
            try {
                iArr[BresenhamYUpGridTracer.Direction.PositiveX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$terrain$geomipmap$picking$BresenhamYUpGridTracer$Direction[BresenhamYUpGridTracer.Direction.NegativeX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$terrain$geomipmap$picking$BresenhamYUpGridTracer$Direction[BresenhamYUpGridTracer.Direction.PositiveZ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$terrain$geomipmap$picking$BresenhamYUpGridTracer$Direction[BresenhamYUpGridTracer.Direction.NegativeZ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public BresenhamTerrainPicker(TerrainQuad terrainQuad) {
        this.root = terrainQuad;
    }

    private boolean addCollision(CollisionResults collisionResults, TerrainPatch terrainPatch, Vector3f vector3f, Triangle triangle, float f10) {
        CollisionResult collisionResult = new CollisionResult(vector3f.m1292clone(), f10);
        collisionResult.setGeometry(terrainPatch);
        collisionResult.setContactNormal(triangle.getNormal());
        collisionResult.setTriangleIndex(triangle.getIndex());
        for (int i10 = 0; i10 < collisionResults.size(); i10++) {
            CollisionResult collision = collisionResults.getCollision(i10);
            if (collision.getDistance() == collisionResult.getDistance() && collision.getGeometry() == collisionResult.getGeometry() && collision.getContactPoint().equals(collisionResult.getContactPoint()) && collision.getContactNormal().equals(collisionResult.getContactNormal())) {
                return false;
            }
        }
        collisionResults.addCollision(collisionResult);
        return true;
    }

    public boolean checkTriangles(float f10, float f11, Ray ray, Vector3f vector3f, TerrainPatch terrainPatch, Triangle triangle) {
        if (!getTriangles(f10, f11, terrainPatch)) {
            return false;
        }
        if (ray.intersectWhere(this.gridTriA, vector3f)) {
            triangle.set(this.gridTriA.get1(), this.gridTriA.get2(), this.gridTriA.get3());
            return true;
        }
        if (!ray.intersectWhere(this.gridTriB, vector3f)) {
            return false;
        }
        triangle.set(this.gridTriB.get1(), this.gridTriB.get2(), this.gridTriB.get3());
        return true;
    }

    public int findClosestHeightIndex(Vector3f vector3f, TerrainPatch terrainPatch) {
        int i10 = (int) vector3f.f81611x;
        int i11 = (int) vector3f.f81613z;
        if (i10 < 0 || i10 >= terrainPatch.getSize() - 1 || i11 < 0 || i11 >= terrainPatch.getSize() - 1) {
            return -1;
        }
        return (i11 * terrainPatch.getSize()) + i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01db A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getTerrainIntersection(Ray ray, CollisionResults collisionResults) {
        int i10;
        int i11;
        this.worldPickRay.set(ray);
        ArrayList<TerrainPickData> arrayList = new ArrayList();
        this.root.findPick(ray.m1286clone(), arrayList);
        Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            return 0;
        }
        this.workRay.set(ray);
        int i12 = 0;
        for (TerrainPickData terrainPickData : arrayList) {
            TerrainPatch terrainPatch = terrainPickData.targetPatch;
            this.tracer.getGridSpacing().set(terrainPatch.getWorldScale());
            this.tracer.setGridOrigin(terrainPatch.getWorldTranslation());
            this.workRay.getOrigin().set(ray.getDirection()).multLocal(terrainPickData.cr.getDistance() - 0.1f).addLocal(ray.getOrigin());
            this.tracer.startWalk(this.workRay);
            Vector3f vector3f = new Vector3f();
            Vector2f gridLocation = this.tracer.getGridLocation();
            int i13 = 1;
            if (this.tracer.isRayPerpendicularToGrid()) {
                Triangle triangle = new Triangle();
                if (checkTriangles(gridLocation.f81609x, gridLocation.f81610y, this.workRay, vector3f, terrainPatch, triangle)) {
                    float distance = this.worldPickRay.origin.distance(vector3f);
                    if (ray.getLimit() < Float.POSITIVE_INFINITY) {
                        if (distance <= ray.getLimit() && addCollision(collisionResults, terrainPatch, vector3f, triangle, distance)) {
                            if (!this.multipleCollisions) {
                                return 1;
                            }
                            i12++;
                        }
                    } else if (addCollision(collisionResults, terrainPatch, vector3f, triangle, distance)) {
                        if (!this.multipleCollisions) {
                            return 1;
                        }
                        i12++;
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            } else {
                while (true) {
                    float f10 = gridLocation.f81609x;
                    if (f10 >= -1.0f && f10 <= terrainPatch.getSize()) {
                        float f11 = gridLocation.f81610y;
                        if (f11 >= -1.0f && f11 <= terrainPatch.getSize()) {
                            Triangle triangle2 = new Triangle();
                            int i14 = i13;
                            if (checkTriangles(gridLocation.f81609x, gridLocation.f81610y, this.workRay, vector3f, terrainPatch, triangle2)) {
                                float distance2 = this.worldPickRay.origin.distance(vector3f);
                                if (ray.getLimit() < Float.POSITIVE_INFINITY) {
                                    if (distance2 <= ray.getLimit() && addCollision(collisionResults, terrainPatch, vector3f, triangle2, distance2)) {
                                        if (!this.multipleCollisions) {
                                            return i14;
                                        }
                                        i12++;
                                    }
                                } else if (addCollision(collisionResults, terrainPatch, vector3f, triangle2, distance2)) {
                                    if (!this.multipleCollisions) {
                                        return i14;
                                    }
                                    i12++;
                                }
                            }
                            int i15 = AnonymousClass1.$SwitchMap$com$jme3$terrain$geomipmap$picking$BresenhamYUpGridTracer$Direction[this.tracer.getLastStepDirection().ordinal()];
                            if (i15 == i14 || i15 == 2) {
                                i10 = i14;
                            } else if (i15 == 3 || i15 == 4) {
                                i11 = i14;
                                i10 = 0;
                                if (!checkTriangles(gridLocation.f81609x + i11, gridLocation.f81610y + i10, this.workRay, vector3f, terrainPatch, triangle2)) {
                                    float distance3 = this.worldPickRay.origin.distance(vector3f);
                                    if (ray.getLimit() < Float.POSITIVE_INFINITY) {
                                        if (distance3 <= ray.getLimit() && addCollision(collisionResults, terrainPatch, vector3f, triangle2, distance3)) {
                                            if (!this.multipleCollisions) {
                                                return i14;
                                            }
                                            i12++;
                                        }
                                    } else if (addCollision(collisionResults, terrainPatch, vector3f, triangle2, distance3)) {
                                        if (!this.multipleCollisions) {
                                            return i14;
                                        }
                                        i12++;
                                    } else {
                                        continue;
                                    }
                                }
                                this.tracer.next();
                                i13 = i14;
                            } else {
                                i10 = 0;
                            }
                            i11 = 0;
                            if (!checkTriangles(gridLocation.f81609x + i11, gridLocation.f81610y + i10, this.workRay, vector3f, terrainPatch, triangle2)) {
                            }
                            this.tracer.next();
                            i13 = i14;
                        }
                    }
                }
            }
        }
        return i12;
    }

    public boolean getTriangles(float f10, float f11, TerrainPatch terrainPatch) {
        Triangle[] gridTriangles;
        this.calcVec1.set(f10, 0.0f, f11);
        if (findClosestHeightIndex(this.calcVec1, terrainPatch) == -1 || (gridTriangles = terrainPatch.getGridTriangles(f10, f11)) == null || gridTriangles.length == 0) {
            return false;
        }
        this.gridTriA.set1(gridTriangles[0].get1());
        this.gridTriA.set2(gridTriangles[0].get2());
        this.gridTriA.set3(gridTriangles[0].get3());
        this.gridTriB.set1(gridTriangles[1].get1());
        this.gridTriB.set2(gridTriangles[1].get2());
        this.gridTriB.set3(gridTriangles[1].get3());
        return true;
    }

    public boolean isSupportingMultipleCollisions() {
        return this.multipleCollisions;
    }

    public void setSupportMultipleCollisions(boolean z10) {
        this.multipleCollisions = z10;
    }
}
