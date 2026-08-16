package com.jme3.collision.bih;

import com.jme3.bounding.BoundingBox;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResult;
import com.jme3.collision.CollisionResults;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix4f;
import com.jme3.math.Ray;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.util.ArrayList;

public final class BIHNode implements Savable {
    private int axis;
    private BIHNode left;
    private int leftIndex;
    private float leftPlane;
    private BIHNode right;
    private int rightIndex;
    private float rightPlane;

    public static final class BIHStackData {
        private final float max;
        private final float min;
        private final BIHNode node;

        public BIHStackData(BIHNode bIHNode, float f10, float f11) {
            this.node = bIHNode;
            this.min = f10;
            this.max = f11;
        }
    }

    public BIHNode(int i10, int i11) {
        this.leftIndex = i10;
        this.rightIndex = i11;
        this.axis = 3;
    }

    public BIHNode getLeftChild() {
        return this.left;
    }

    public float getLeftPlane() {
        return this.leftPlane;
    }

    public BIHNode getRightChild() {
        return this.right;
    }

    public float getRightPlane() {
        return this.rightPlane;
    }

    public final int intersectBrute(Ray ray, Matrix4f matrix4f, BIHTree bIHTree, float f10, float f11, CollisionResults collisionResults) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        Vector3f vector3f3 = tempVars.vect3;
        ArrayList<BIHStackData> arrayList = tempVars.bihStack;
        arrayList.clear();
        arrayList.add(new BIHStackData(this, 0.0f, 0.0f));
        float f12 = Float.POSITIVE_INFINITY;
        int i10 = 0;
        while (arrayList.size() > 0) {
            BIHNode bIHNode = arrayList.remove(arrayList.size() - 1).node;
            while (bIHNode.axis != 3) {
                BIHNode bIHNode2 = bIHNode.left;
                arrayList.add(new BIHStackData(bIHNode.right, 0.0f, 0.0f));
                bIHNode = bIHNode2;
            }
            for (int i11 = bIHNode.leftIndex; i11 <= bIHNode.rightIndex; i11++) {
                bIHTree.getTriangle(i11, vector3f, vector3f2, vector3f3);
                if (matrix4f != null) {
                    matrix4f.mult(vector3f, vector3f);
                    matrix4f.mult(vector3f2, vector3f2);
                    matrix4f.mult(vector3f3, vector3f3);
                }
                float intersects = ray.intersects(vector3f, vector3f2, vector3f3);
                if (intersects < f12) {
                    CollisionResult collisionResult = new CollisionResult(new Vector3f(ray.direction).multLocal(intersects).addLocal(ray.origin), intersects);
                    collisionResult.setTriangleIndex(bIHTree.getTriangleIndex(i11));
                    collisionResults.addCollision(collisionResult);
                    i10++;
                    f12 = intersects;
                }
            }
        }
        tempVars.release();
        return i10;
    }

    public final int intersectWhere(Collidable collidable, BoundingBox boundingBox, Matrix4f matrix4f, BIHTree bIHTree, CollisionResults collisionResults) {
        int i10;
        BIHNode bIHNode;
        Matrix4f matrix4f2 = matrix4f;
        TempVars tempVars = TempVars.get();
        ArrayList<BIHStackData> arrayList = tempVars.bihStack;
        arrayList.clear();
        int i11 = 3;
        int i12 = 0;
        int i13 = 1;
        float[] fArr = {boundingBox.getCenter().f81611x - boundingBox.getXExtent(), boundingBox.getCenter().f81612y - boundingBox.getYExtent(), boundingBox.getCenter().f81613z - boundingBox.getZExtent()};
        float[] fArr2 = {boundingBox.getCenter().f81611x + boundingBox.getXExtent(), boundingBox.getCenter().f81612y + boundingBox.getYExtent(), boundingBox.getCenter().f81613z + boundingBox.getZExtent()};
        float f10 = 0.0f;
        arrayList.add(new BIHStackData(this, 0.0f, 0.0f));
        Triangle triangle = new Triangle();
        while (arrayList.size() > 0) {
            BIHNode bIHNode2 = arrayList.remove(arrayList.size() - i13).node;
            while (true) {
                int i14 = bIHNode2.axis;
                if (i14 != i11) {
                    float f11 = fArr2[i14];
                    float f12 = fArr[i14];
                    float f13 = bIHNode2.leftPlane;
                    float f14 = bIHNode2.rightPlane;
                    if (f13 >= f14 || f12 <= f13 || f11 >= f14) {
                        if (f11 < f14) {
                            bIHNode = bIHNode2.left;
                        } else if (f12 > f13) {
                            bIHNode = bIHNode2.right;
                        } else {
                            arrayList.add(new BIHStackData(bIHNode2.right, f10, f10));
                            bIHNode = bIHNode2.left;
                        }
                        bIHNode2 = bIHNode;
                        i11 = 3;
                    }
                } else {
                    int i15 = bIHNode2.leftIndex;
                    while (i15 <= bIHNode2.rightIndex) {
                        bIHTree.getTriangle(i15, triangle.get1(), triangle.get2(), triangle.get3());
                        if (matrix4f2 != null) {
                            matrix4f2.mult(triangle.get1(), triangle.get1());
                            matrix4f2.mult(triangle.get2(), triangle.get2());
                            matrix4f2.mult(triangle.get3(), triangle.get3());
                        }
                        int collideWith = collidable.collideWith(triangle, collisionResults);
                        if (collideWith > 0) {
                            int triangleIndex = bIHTree.getTriangleIndex(i15);
                            for (int size = collisionResults.size() - collideWith; size < collisionResults.size(); size++) {
                                collisionResults.getCollisionDirect(size).setTriangleIndex(triangleIndex);
                            }
                            i10 = 1;
                            i12 += collideWith;
                        } else {
                            i10 = 1;
                        }
                        i15 += i10;
                        matrix4f2 = matrix4f;
                        f10 = 0.0f;
                    }
                    matrix4f2 = matrix4f;
                }
            }
            i13 = 1;
            i11 = 3;
        }
        tempVars.release();
        return i12;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.leftIndex = capsule.readInt("left_index", 0);
        this.rightIndex = capsule.readInt("right_index", 0);
        this.leftPlane = capsule.readFloat("left_plane", 0.0f);
        this.rightPlane = capsule.readFloat("right_plane", 0.0f);
        this.axis = capsule.readInt("axis", 0);
        this.left = (BIHNode) capsule.readSavable("left_node", null);
        this.right = (BIHNode) capsule.readSavable("right_node", null);
    }

    public void setLeftChild(BIHNode bIHNode) {
        this.left = bIHNode;
    }

    public void setLeftPlane(float f10) {
        this.leftPlane = f10;
    }

    public void setRightChild(BIHNode bIHNode) {
        this.right = bIHNode;
    }

    public void setRightPlane(float f10) {
        this.rightPlane = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.leftIndex, "left_index", 0);
        capsule.write(this.rightIndex, "right_index", 0);
        capsule.write(this.leftPlane, "left_plane", 0.0f);
        capsule.write(this.rightPlane, "right_plane", 0.0f);
        capsule.write(this.axis, "axis", 0);
        capsule.write(this.left, "left_node", (Savable) null);
        capsule.write(this.right, "right_node", (Savable) null);
    }

    public BIHNode(int i10) {
        this.axis = i10;
    }

    public BIHNode() {
    }

    public final int intersectWhere(Ray ray, Matrix4f matrix4f, BIHTree bIHTree, float f10, float f11, CollisionResults collisionResults) {
        TempVars tempVars;
        int i10;
        BIHNode bIHNode;
        float f12;
        BIHNode bIHNode2;
        float f13;
        float[] fArr;
        TempVars tempVars2 = TempVars.get();
        ArrayList<BIHStackData> arrayList = tempVars2.bihStack;
        arrayList.clear();
        Vector3f vector3f = tempVars2.vect1.set(ray.getOrigin());
        Vector3f vector3f2 = tempVars2.vect2.set(ray.getDirection());
        Matrix4f invertLocal = tempVars2.tempMat4.set(matrix4f).invertLocal();
        invertLocal.mult(ray.getOrigin(), ray.getOrigin());
        invertLocal.multNormal(ray.getDirection(), ray.getDirection());
        float[] fArr2 = {ray.getOrigin().f81611x, ray.getOrigin().f81612y, ray.getOrigin().f81613z};
        float[] fArr3 = {1.0f / ray.getDirection().f81611x, 1.0f / ray.getDirection().f81612y, 1.0f / ray.getDirection().f81613z};
        ray.getDirection().normalizeLocal();
        Vector3f vector3f3 = tempVars2.vect3;
        Vector3f vector3f4 = tempVars2.vect4;
        Vector3f vector3f5 = tempVars2.vect5;
        arrayList.add(new BIHStackData(this, f10, f11));
        int i11 = 0;
        while (arrayList.size() > 0) {
            BIHStackData remove = arrayList.remove(arrayList.size() - 1);
            BIHNode bIHNode3 = remove.node;
            float f14 = remove.min;
            float f15 = remove.max;
            if (f15 < f14) {
                tempVars = tempVars2;
            } else {
                while (true) {
                    int i12 = bIHNode3.axis;
                    tempVars = tempVars2;
                    if (i12 != 3) {
                        float f16 = fArr2[i12];
                        float f17 = fArr3[i12];
                        float f18 = (bIHNode3.leftPlane - f16) * f17;
                        float f19 = (bIHNode3.rightPlane - f16) * f17;
                        BIHNode bIHNode4 = bIHNode3.left;
                        BIHNode bIHNode5 = bIHNode3.right;
                        if (f17 < 0.0f) {
                            bIHNode = bIHNode4;
                            f13 = f19;
                            bIHNode2 = bIHNode5;
                            f12 = f18;
                        } else {
                            bIHNode = bIHNode5;
                            f12 = f19;
                            bIHNode2 = bIHNode4;
                            f13 = f18;
                        }
                        if (f14 > f13 && f15 < f12) {
                            break;
                        }
                        if (f14 > f13) {
                            f14 = Math.max(f14, f12);
                            fArr = fArr2;
                            bIHNode3 = bIHNode;
                        } else {
                            if (f15 < f12) {
                                f15 = Math.min(f15, f13);
                                fArr = fArr2;
                            } else {
                                fArr = fArr2;
                                arrayList.add(new BIHStackData(bIHNode, Math.max(f14, f12), f15));
                                f15 = Math.min(f15, f13);
                            }
                            bIHNode3 = bIHNode2;
                        }
                        tempVars2 = tempVars;
                        fArr2 = fArr;
                    } else {
                        float[] fArr4 = fArr2;
                        int i13 = bIHNode3.leftIndex;
                        while (i13 <= bIHNode3.rightIndex) {
                            bIHTree.getTriangle(i13, vector3f3, vector3f4, vector3f5);
                            float intersects = ray.intersects(vector3f3, vector3f4, vector3f5);
                            if (!Float.isInfinite(intersects)) {
                                if (matrix4f != null) {
                                    matrix4f.mult(vector3f3, vector3f3);
                                    matrix4f.mult(vector3f4, vector3f4);
                                    matrix4f.mult(vector3f5, vector3f5);
                                    intersects = new Ray(vector3f, vector3f2).intersects(vector3f3, vector3f4, vector3f5);
                                }
                                if (!Float.isInfinite(intersects)) {
                                    Vector3f computeTriangleNormal = Triangle.computeTriangleNormal(vector3f3, vector3f4, vector3f5, null);
                                    Vector3f addLocal = new Vector3f(vector3f2).multLocal(intersects).addLocal(vector3f);
                                    CollisionResult collisionResult = new CollisionResult(addLocal, vector3f.distance(addLocal));
                                    collisionResult.setContactNormal(computeTriangleNormal);
                                    collisionResult.setTriangleIndex(bIHTree.getTriangleIndex(i13));
                                    collisionResults.addCollision(collisionResult);
                                    i10 = 1;
                                    i11++;
                                    i13 += i10;
                                }
                            }
                            i10 = 1;
                            i13 += i10;
                        }
                        tempVars2 = tempVars;
                        fArr2 = fArr4;
                    }
                }
            }
            tempVars2 = tempVars;
        }
        tempVars2.release();
        ray.setOrigin(vector3f);
        ray.setDirection(vector3f2);
        return i11;
    }
}
