package com.jme3.collision.bih;

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
import com.jme3.math.Matrix4f;
import com.jme3.math.Ray;
import com.jme3.math.Vector3f;
import com.jme3.scene.CollisionData;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.scene.mesh.VirtualIndexBuffer;
import com.jme3.scene.mesh.WrappedIndexBuffer;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.nio.FloatBuffer;

public class BIHTree implements CollisionData {
    public static final int MAX_TREE_DEPTH = 100;
    public static final int MAX_TRIS_PER_NODE = 21;
    private transient float[] bihSwapTmp;
    private int maxTrisPerNode;
    private Mesh mesh;
    private int numTris;
    private float[] pointData;
    private BIHNode root;
    private int[] triIndices;

    public BIHTree(Mesh mesh, int i10) {
        this.mesh = mesh;
        this.maxTrisPerNode = i10;
        if (i10 < 1) {
            throw new IllegalArgumentException("maxTrisPerNode cannot be less than 1");
        }
        if (mesh != null) {
            this.bihSwapTmp = new float[9];
            VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Position);
            if (buffer != null) {
                IndexBuffer indexBuffer = mesh.getIndexBuffer();
                FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
                if (indexBuffer == null) {
                    indexBuffer = new VirtualIndexBuffer(mesh.getVertexCount(), mesh.getMode());
                } else if (mesh.getMode() != Mesh.Mode.Triangles) {
                    indexBuffer = new WrappedIndexBuffer(mesh);
                }
                this.numTris = indexBuffer.size() / 3;
                initTriList(floatBuffer, indexBuffer);
                return;
            }
            throw new IllegalArgumentException("A mesh should at least contain a Position buffer");
        }
        throw new IllegalArgumentException("Mesh cannot be null");
    }

    private int collideWithBoundingVolume(BoundingVolume boundingVolume, Matrix4f matrix4f, CollisionResults collisionResults) {
        BoundingBox boundingBox;
        if (boundingVolume instanceof BoundingSphere) {
            BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
            boundingBox = new BoundingBox(boundingVolume.getCenter().m1292clone(), boundingSphere.getRadius(), boundingSphere.getRadius(), boundingSphere.getRadius());
        } else {
            if (!(boundingVolume instanceof BoundingBox)) {
                throw new UnsupportedCollisionException("BoundingVolume:" + ((Object) boundingVolume));
            }
            boundingBox = new BoundingBox((BoundingBox) boundingVolume);
        }
        BoundingBox boundingBox2 = boundingBox;
        boundingBox2.transform(matrix4f.invert(), boundingBox2);
        return this.root.intersectWhere(boundingVolume, boundingBox2, matrix4f, this, collisionResults);
    }

    private int collideWithRay(Ray ray, Matrix4f matrix4f, BoundingVolume boundingVolume, CollisionResults collisionResults) {
        TempVars tempVars = TempVars.get();
        try {
            CollisionResults collisionResults2 = tempVars.collisionResults;
            collisionResults2.clear();
            boundingVolume.collideWith(ray, collisionResults2);
            if (collisionResults2.size() <= 0) {
                return 0;
            }
            float distance = collisionResults2.getClosestCollision().getDistance();
            float distance2 = collisionResults2.getFarthestCollision().getDistance();
            if (distance2 <= 0.0f) {
                distance2 = Float.POSITIVE_INFINITY;
            } else if (distance == distance2) {
                distance = 0.0f;
            }
            float f10 = distance <= 0.0f ? 0.0f : distance;
            if (ray.getLimit() < Float.POSITIVE_INFINITY) {
                distance2 = Math.min(distance2, ray.getLimit());
                if (f10 > distance2) {
                    return 0;
                }
            }
            return this.root.intersectWhere(ray, matrix4f, this, f10, distance2, collisionResults);
        } finally {
            tempVars.release();
        }
    }

    private BoundingBox createBox(int i10, int i11) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1.set(new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY));
        Vector3f vector3f2 = tempVars.vect2.set(new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY));
        Vector3f vector3f3 = tempVars.vect3;
        Vector3f vector3f4 = tempVars.vect4;
        Vector3f vector3f5 = tempVars.vect5;
        while (i10 <= i11) {
            getTriangle(i10, vector3f3, vector3f4, vector3f5);
            BoundingBox.checkMinMax(vector3f, vector3f2, vector3f3);
            BoundingBox.checkMinMax(vector3f, vector3f2, vector3f4);
            BoundingBox.checkMinMax(vector3f, vector3f2, vector3f5);
            i10++;
        }
        BoundingBox boundingBox = new BoundingBox(vector3f, vector3f2);
        tempVars.release();
        return boundingBox;
    }

    private BIHNode createNode(int i10, int i11, BoundingBox boundingBox, int i12) {
        int i13;
        if (i11 - i10 < this.maxTrisPerNode || i12 > 100) {
            return new BIHNode(i10, i11);
        }
        BoundingBox createBox = createBox(i10, i11);
        Vector3f extent = boundingBox.getExtent(null);
        extent.subtractLocal(createBox.getExtent(null));
        float f10 = extent.f81611x;
        float f11 = extent.f81612y;
        if (f10 > f11) {
            if (f10 > extent.f81613z) {
                i13 = 0;
            }
            i13 = 2;
        } else {
            if (f11 > extent.f81613z) {
                i13 = 1;
            }
            i13 = 2;
        }
        if (extent.equals(Vector3f.ZERO)) {
            i13 = 0;
        }
        float f12 = createBox.getCenter().get(i13);
        int sortTriangles = sortTriangles(i10, i11, f12, i13);
        if (sortTriangles == i10 || sortTriangles == i11) {
            sortTriangles = (i11 + i10) / 2;
        }
        if (sortTriangles < i10) {
            BoundingBox boundingBox2 = new BoundingBox(createBox);
            setMinMax(boundingBox2, true, i13, f12);
            return createNode(i10, i11, boundingBox2, i12 + 1);
        }
        if (sortTriangles > i11) {
            BoundingBox boundingBox3 = new BoundingBox(createBox);
            setMinMax(boundingBox3, false, i13, f12);
            return createNode(i10, i11, boundingBox3, i12 + 1);
        }
        BIHNode bIHNode = new BIHNode(i13);
        BoundingBox boundingBox4 = new BoundingBox(createBox);
        setMinMax(boundingBox4, false, i13, f12);
        int i14 = sortTriangles - 1;
        bIHNode.setLeftPlane(getMinMax(createBox(i10, Math.max(i10, i14)), false, i13));
        int i15 = i12 + 1;
        bIHNode.setLeftChild(createNode(i10, Math.max(i10, i14), boundingBox4, i15));
        BoundingBox boundingBox5 = new BoundingBox(createBox);
        setMinMax(boundingBox5, true, i13, f12);
        bIHNode.setRightPlane(getMinMax(createBox(sortTriangles, i11), true, i13));
        bIHNode.setRightChild(createNode(sortTriangles, i11, boundingBox5, i15));
        return bIHNode;
    }

    private float getMinMax(BoundingBox boundingBox, boolean z10, int i10) {
        return z10 ? boundingBox.getMin(null).get(i10) : boundingBox.getMax(null).get(i10);
    }

    private void initTriList(FloatBuffer floatBuffer, IndexBuffer indexBuffer) {
        int i10;
        this.pointData = new float[this.numTris * 9];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.numTris;
            if (i11 >= i10 * 3) {
                break;
            }
            int i13 = indexBuffer.get(i11) * 3;
            this.pointData[i12] = floatBuffer.get(i13);
            this.pointData[i12 + 1] = floatBuffer.get(i13 + 1);
            this.pointData[i12 + 2] = floatBuffer.get(i13 + 2);
            int i14 = indexBuffer.get(i11 + 1) * 3;
            this.pointData[i12 + 3] = floatBuffer.get(i14);
            this.pointData[i12 + 4] = floatBuffer.get(i14 + 1);
            this.pointData[i12 + 5] = floatBuffer.get(i14 + 2);
            int i15 = indexBuffer.get(i11 + 2) * 3;
            this.pointData[i12 + 6] = floatBuffer.get(i15);
            int i16 = i12 + 8;
            this.pointData[i12 + 7] = floatBuffer.get(i15 + 1);
            i12 += 9;
            this.pointData[i16] = floatBuffer.get(i15 + 2);
            i11 += 3;
        }
        this.triIndices = new int[i10];
        for (int i17 = 0; i17 < this.numTris; i17++) {
            this.triIndices[i17] = i17;
        }
    }

    private void setMinMax(BoundingBox boundingBox, boolean z10, int i10, float f10) {
        Vector3f min = boundingBox.getMin(null);
        Vector3f max = boundingBox.getMax(null);
        if (z10) {
            min.set(i10, f10);
        } else {
            max.set(i10, f10);
        }
        boundingBox.setMinMax(min, max);
    }

    private int sortTriangles(int i10, int i11, float f10, int i12) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        Vector3f vector3f3 = tempVars.vect3;
        int i13 = i10;
        while (i13 <= i11) {
            getTriangle(i13, vector3f, vector3f2, vector3f3);
            vector3f.addLocal(vector3f2).addLocal(vector3f3).multLocal(0.33333334f);
            if (vector3f.get(i12) > f10) {
                swapTriangles(i13, i11);
                i11--;
            } else {
                i13++;
            }
        }
        tempVars.release();
        return (i13 != i10 || i11 >= i13) ? i13 : i11;
    }

    @Override
    public int collideWith(Collidable collidable, Matrix4f matrix4f, BoundingVolume boundingVolume, CollisionResults collisionResults) {
        if (collidable instanceof Ray) {
            return collideWithRay((Ray) collidable, matrix4f, boundingVolume, collisionResults);
        }
        if (collidable instanceof BoundingVolume) {
            return collideWithBoundingVolume((BoundingVolume) collidable, matrix4f, collisionResults);
        }
        throw new UnsupportedCollisionException("Collidable:" + ((Object) collidable));
    }

    public void construct() {
        this.root = createNode(0, this.numTris - 1, createBox(0, this.numTris - 1), 0);
    }

    public void getTriangle(int i10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        int i11 = i10 * 9;
        float[] fArr = this.pointData;
        vector3f.f81611x = fArr[i11];
        vector3f.f81612y = fArr[i11 + 1];
        vector3f.f81613z = fArr[i11 + 2];
        vector3f2.f81611x = fArr[i11 + 3];
        vector3f2.f81612y = fArr[i11 + 4];
        vector3f2.f81613z = fArr[i11 + 5];
        vector3f3.f81611x = fArr[i11 + 6];
        vector3f3.f81612y = fArr[i11 + 7];
        vector3f3.f81613z = fArr[i11 + 8];
    }

    public int getTriangleIndex(int i10) {
        return this.triIndices[i10];
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.mesh = (Mesh) capsule.readSavable("mesh", null);
        this.root = (BIHNode) capsule.readSavable("root", null);
        this.maxTrisPerNode = capsule.readInt("tris_per_node", 0);
        this.pointData = capsule.readFloatArray("points", null);
        this.triIndices = capsule.readIntArray("indices", null);
    }

    public void swapTriangles(int i10, int i11) {
        int i12 = i10 * 9;
        int i13 = i11 * 9;
        System.arraycopy(this.pointData, i12, this.bihSwapTmp, 0, 9);
        float[] fArr = this.pointData;
        System.arraycopy(fArr, i13, fArr, i12, 9);
        System.arraycopy(this.bihSwapTmp, 0, this.pointData, i13, 9);
        int[] iArr = this.triIndices;
        int i14 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = i14;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.mesh, "mesh", (Savable) null);
        capsule.write(this.root, "root", (Savable) null);
        capsule.write(this.maxTrisPerNode, "tris_per_node", 0);
        capsule.write(this.pointData, "points", (float[]) null);
        capsule.write(this.triIndices, "indices", (int[]) null);
    }

    public BIHTree(Mesh mesh) {
        this(mesh, 21);
    }

    public BIHTree() {
    }
}
