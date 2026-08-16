package com.ardor3d.bounding;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.intersection.IntersectionRecord;
import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Quaternion;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyPlane;
import com.ardor3d.math.type.ReadOnlyRay3;
import com.ardor3d.math.type.ReadOnlyTransform;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;

public class OrientedBoundingBox extends BoundingVolume {
    private static final long serialVersionUID = 1;
    protected final Vector3 _xAxis = new Vector3(1.0d, 0.0d, 0.0d);
    protected final Vector3 _yAxis = new Vector3(0.0d, 1.0d, 0.0d);
    protected final Vector3 _zAxis = new Vector3(0.0d, 0.0d, 1.0d);
    protected final Vector3 _extent = new Vector3(0.0d, 0.0d, 0.0d);
    protected final Vector3[] _vectorStore = new Vector3[8];
    public boolean correctCorners = false;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type;

        static {
            int[] iArr = new int[BoundingVolume.Type.values().length];
            $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type = iArr;
            try {
                iArr[BoundingVolume.Type.OBB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.AABB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.Sphere.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public OrientedBoundingBox() {
        for (int i10 = 0; i10 < 8; i10++) {
            this._vectorStore[i10] = new Vector3();
        }
    }

    private boolean clip(double d10, double d11, double[] dArr) {
        if (d10 > 0.0d) {
            if (d11 > dArr[1] * d10) {
                return false;
            }
            if (d11 > dArr[0] * d10) {
                dArr[0] = d11 / d10;
            }
            return true;
        }
        if (d10 >= 0.0d) {
            return d11 <= 0.0d;
        }
        if (d11 > dArr[0] * d10) {
            return false;
        }
        if (d11 > dArr[1] * d10) {
            dArr[1] = d11 / d10;
        }
        return true;
    }

    private void containAABB(FloatBuffer floatBuffer) {
        if (floatBuffer == null || floatBuffer.limit() <= 2) {
            return;
        }
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        BufferUtils.populateFromBuffer(fetchTempInstance, floatBuffer, 0);
        double x10 = fetchTempInstance.getX();
        double y10 = fetchTempInstance.getY();
        double z10 = fetchTempInstance.getZ();
        double x11 = fetchTempInstance.getX();
        double y11 = fetchTempInstance.getY();
        double z11 = fetchTempInstance.getZ();
        int limit = floatBuffer.limit() / 3;
        for (int i10 = 1; i10 < limit; i10++) {
            BufferUtils.populateFromBuffer(fetchTempInstance, floatBuffer, i10);
            if (fetchTempInstance.getX() < x10) {
                x10 = fetchTempInstance.getX();
            } else if (fetchTempInstance.getX() > x11) {
                x11 = fetchTempInstance.getX();
            }
            if (fetchTempInstance.getY() < y10) {
                y10 = fetchTempInstance.getY();
            } else if (fetchTempInstance.getY() > y11) {
                y11 = fetchTempInstance.getY();
            }
            if (fetchTempInstance.getZ() < z10) {
                z10 = fetchTempInstance.getZ();
            } else if (fetchTempInstance.getZ() > z11) {
                z11 = fetchTempInstance.getZ();
            }
        }
        Vector3.releaseTempInstance(fetchTempInstance);
        this._center.set(x10 + x11, y10 + y11, z10 + z11);
        this._center.multiplyLocal(0.5d);
        this._extent.set(x11 - this._center.getX(), y11 - this._center.getY(), z11 - this._center.getZ());
        this._xAxis.set(1.0d, 0.0d, 0.0d);
        this._yAxis.set(0.0d, 1.0d, 0.0d);
        this._zAxis.set(0.0d, 0.0d, 1.0d);
        this.correctCorners = false;
    }

    private BoundingVolume mergeAABB(BoundingBox boundingBox) {
        if (Vector3.isInfinite(getExtent()) || Double.isInfinite(boundingBox.getXExtent()) || Double.isInfinite(boundingBox.getYExtent()) || Double.isInfinite(boundingBox.getZExtent())) {
            setCenter(Vector3.ZERO);
            this._extent.set(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
            return this;
        }
        if (!this.correctCorners) {
            computeCorners();
        }
        FloatBuffer createFloatBufferOnHeap = BufferUtils.createFloatBufferOnHeap(48);
        createFloatBufferOnHeap.rewind();
        for (int i10 = 0; i10 < 8; i10++) {
            createFloatBufferOnHeap.put((float) this._vectorStore[i10].getX());
            createFloatBufferOnHeap.put((float) this._vectorStore[i10].getY());
            createFloatBufferOnHeap.put((float) this._vectorStore[i10].getZ());
        }
        createFloatBufferOnHeap.put((float) (boundingBox._center.getX() + boundingBox.getXExtent())).put((float) (boundingBox._center.getY() + boundingBox.getYExtent())).put((float) (boundingBox._center.getZ() + boundingBox.getZExtent()));
        createFloatBufferOnHeap.put((float) (boundingBox._center.getX() - boundingBox.getXExtent())).put((float) (boundingBox._center.getY() + boundingBox.getYExtent())).put((float) (boundingBox._center.getZ() + boundingBox.getZExtent()));
        createFloatBufferOnHeap.put((float) (boundingBox._center.getX() + boundingBox.getXExtent())).put((float) (boundingBox._center.getY() - boundingBox.getYExtent())).put((float) (boundingBox._center.getZ() + boundingBox.getZExtent()));
        createFloatBufferOnHeap.put((float) (boundingBox._center.getX() + boundingBox.getXExtent())).put((float) (boundingBox._center.getY() + boundingBox.getYExtent())).put((float) (boundingBox._center.getZ() - boundingBox.getZExtent()));
        createFloatBufferOnHeap.put((float) (boundingBox._center.getX() - boundingBox.getXExtent())).put((float) (boundingBox._center.getY() - boundingBox.getYExtent())).put((float) (boundingBox._center.getZ() + boundingBox.getZExtent()));
        createFloatBufferOnHeap.put((float) (boundingBox._center.getX() - boundingBox.getXExtent())).put((float) (boundingBox._center.getY() + boundingBox.getYExtent())).put((float) (boundingBox._center.getZ() - boundingBox.getZExtent()));
        createFloatBufferOnHeap.put((float) (boundingBox._center.getX() + boundingBox.getXExtent())).put((float) (boundingBox._center.getY() - boundingBox.getYExtent())).put((float) (boundingBox._center.getZ() - boundingBox.getZExtent()));
        createFloatBufferOnHeap.put((float) (boundingBox._center.getX() - boundingBox.getXExtent())).put((float) (boundingBox._center.getY() - boundingBox.getYExtent())).put((float) (boundingBox._center.getZ() - boundingBox.getZExtent()));
        containAABB(createFloatBufferOnHeap);
        this.correctCorners = false;
        return this;
    }

    private BoundingVolume mergeOBB(OrientedBoundingBox orientedBoundingBox) {
        int i10;
        if (Vector3.isInfinite(getExtent()) || Vector3.isInfinite(orientedBoundingBox.getExtent())) {
            setCenter(Vector3.ZERO);
            this._extent.set(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
            return this;
        }
        Vector3 multiplyLocal = this._center.add(orientedBoundingBox._center, Vector3.fetchTempInstance()).multiplyLocal(0.5d);
        Quaternion fetchTempInstance = Quaternion.fetchTempInstance();
        Quaternion fetchTempInstance2 = Quaternion.fetchTempInstance();
        fetchTempInstance.fromAxes(this._xAxis, this._yAxis, this._zAxis);
        fetchTempInstance2.fromAxes(orientedBoundingBox._xAxis, orientedBoundingBox._yAxis, orientedBoundingBox._zAxis);
        if (fetchTempInstance.dot(fetchTempInstance2) < 0.0d) {
            fetchTempInstance2.multiplyLocal(-1.0d);
        }
        Quaternion addLocal = fetchTempInstance.addLocal(fetchTempInstance2);
        addLocal.normalizeLocal();
        Matrix3 rotationMatrix = addLocal.toRotationMatrix(Matrix3.fetchTempInstance());
        Vector3 column = rotationMatrix.getColumn(0, Vector3.fetchTempInstance());
        Vector3 column2 = rotationMatrix.getColumn(1, Vector3.fetchTempInstance());
        Vector3 column3 = rotationMatrix.getColumn(2, Vector3.fetchTempInstance());
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance4 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance5 = Vector3.fetchTempInstance();
        if (!this.correctCorners) {
            computeCorners();
        }
        int i11 = 0;
        while (true) {
            if (i11 >= 8) {
                break;
            }
            this._vectorStore[i11].subtract(multiplyLocal, fetchTempInstance3);
            double dot = fetchTempInstance3.dot(column);
            if (dot > fetchTempInstance5.getX()) {
                fetchTempInstance5.setX(dot);
            } else if (dot < fetchTempInstance4.getX()) {
                fetchTempInstance4.setX(dot);
            }
            double dot2 = fetchTempInstance3.dot(column2);
            if (dot2 > fetchTempInstance5.getY()) {
                fetchTempInstance5.setY(dot2);
            } else if (dot2 < fetchTempInstance4.getY()) {
                fetchTempInstance4.setY(dot2);
            }
            double dot3 = fetchTempInstance3.dot(column3);
            if (dot3 > fetchTempInstance5.getZ()) {
                fetchTempInstance5.setZ(dot3);
            } else if (dot3 < fetchTempInstance4.getZ()) {
                fetchTempInstance4.setZ(dot3);
            }
            i11++;
        }
        if (!orientedBoundingBox.correctCorners) {
            orientedBoundingBox.computeCorners();
        }
        int i12 = 0;
        for (i10 = 8; i12 < i10; i10 = 8) {
            orientedBoundingBox._vectorStore[i12].subtract(multiplyLocal, fetchTempInstance3);
            Vector3 vector3 = column2;
            double dot4 = fetchTempInstance3.dot(column);
            if (dot4 > fetchTempInstance5.getX()) {
                fetchTempInstance5.setX(dot4);
            } else if (dot4 < fetchTempInstance4.getX()) {
                fetchTempInstance4.setX(dot4);
            }
            double dot5 = fetchTempInstance3.dot(vector3);
            if (dot5 > fetchTempInstance5.getY()) {
                fetchTempInstance5.setY(dot5);
            } else if (dot5 < fetchTempInstance4.getY()) {
                fetchTempInstance4.setY(dot5);
            }
            double dot6 = fetchTempInstance3.dot(column3);
            if (dot6 > fetchTempInstance5.getZ()) {
                fetchTempInstance5.setZ(dot6);
            } else if (dot6 < fetchTempInstance4.getZ()) {
                fetchTempInstance4.setZ(dot6);
            }
            i12++;
            column2 = vector3;
        }
        Vector3 vector32 = column2;
        this._xAxis.set(column);
        this._yAxis.set(vector32);
        this._zAxis.set(column3);
        Vector3 fetchTempInstance6 = Vector3.fetchTempInstance();
        this._extent.setX((fetchTempInstance5.getX() - fetchTempInstance4.getX()) * 0.5d);
        multiplyLocal.addLocal(this._xAxis.multiply((fetchTempInstance5.getX() + fetchTempInstance4.getX()) * 0.5d, fetchTempInstance6));
        this._extent.setY((fetchTempInstance5.getY() - fetchTempInstance4.getY()) * 0.5d);
        multiplyLocal.addLocal(this._yAxis.multiply((fetchTempInstance5.getY() + fetchTempInstance4.getY()) * 0.5d, fetchTempInstance6));
        this._extent.setZ((fetchTempInstance5.getZ() - fetchTempInstance4.getZ()) * 0.5d);
        multiplyLocal.addLocal(this._zAxis.multiply((fetchTempInstance5.getZ() + fetchTempInstance4.getZ()) * 0.5d, fetchTempInstance6));
        this._center.set(multiplyLocal);
        this.correctCorners = false;
        Quaternion.releaseTempInstance(fetchTempInstance);
        Quaternion.releaseTempInstance(fetchTempInstance2);
        Matrix3.releaseTempInstance(rotationMatrix);
        Vector3.releaseTempInstance(multiplyLocal);
        Vector3.releaseTempInstance(column);
        Vector3.releaseTempInstance(vector32);
        Vector3.releaseTempInstance(column3);
        Vector3.releaseTempInstance(fetchTempInstance3);
        Vector3.releaseTempInstance(fetchTempInstance4);
        Vector3.releaseTempInstance(fetchTempInstance5);
        Vector3.releaseTempInstance(fetchTempInstance6);
        return this;
    }

    private BoundingVolume mergeSphere(BoundingSphere boundingSphere) {
        if (Vector3.isInfinite(getExtent()) || Double.isInfinite(boundingSphere.getRadius())) {
            setCenter(Vector3.ZERO);
            this._extent.set(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
            return this;
        }
        if (!this.correctCorners) {
            computeCorners();
        }
        FloatBuffer createFloatBufferOnHeap = BufferUtils.createFloatBufferOnHeap(48);
        createFloatBufferOnHeap.rewind();
        for (int i10 = 0; i10 < 8; i10++) {
            createFloatBufferOnHeap.put((float) this._vectorStore[i10].getX());
            createFloatBufferOnHeap.put((float) this._vectorStore[i10].getY());
            createFloatBufferOnHeap.put((float) this._vectorStore[i10].getZ());
        }
        createFloatBufferOnHeap.put((float) (boundingSphere._center.getX() + boundingSphere.getRadius())).put((float) (boundingSphere._center.getY() + boundingSphere.getRadius())).put((float) (boundingSphere._center.getZ() + boundingSphere.getRadius()));
        createFloatBufferOnHeap.put((float) (boundingSphere._center.getX() - boundingSphere.getRadius())).put((float) (boundingSphere._center.getY() + boundingSphere.getRadius())).put((float) (boundingSphere._center.getZ() + boundingSphere.getRadius()));
        createFloatBufferOnHeap.put((float) (boundingSphere._center.getX() + boundingSphere.getRadius())).put((float) (boundingSphere._center.getY() - boundingSphere.getRadius())).put((float) (boundingSphere._center.getZ() + boundingSphere.getRadius()));
        createFloatBufferOnHeap.put((float) (boundingSphere._center.getX() + boundingSphere.getRadius())).put((float) (boundingSphere._center.getY() + boundingSphere.getRadius())).put((float) (boundingSphere._center.getZ() - boundingSphere.getRadius()));
        createFloatBufferOnHeap.put((float) (boundingSphere._center.getX() - boundingSphere.getRadius())).put((float) (boundingSphere._center.getY() - boundingSphere.getRadius())).put((float) (boundingSphere._center.getZ() + boundingSphere.getRadius()));
        createFloatBufferOnHeap.put((float) (boundingSphere._center.getX() - boundingSphere.getRadius())).put((float) (boundingSphere._center.getY() + boundingSphere.getRadius())).put((float) (boundingSphere._center.getZ() - boundingSphere.getRadius()));
        createFloatBufferOnHeap.put((float) (boundingSphere._center.getX() + boundingSphere.getRadius())).put((float) (boundingSphere._center.getY() - boundingSphere.getRadius())).put((float) (boundingSphere._center.getZ() - boundingSphere.getRadius()));
        createFloatBufferOnHeap.put((float) (boundingSphere._center.getX() - boundingSphere.getRadius())).put((float) (boundingSphere._center.getY() - boundingSphere.getRadius())).put((float) (boundingSphere._center.getZ() - boundingSphere.getRadius()));
        containAABB(createFloatBufferOnHeap);
        this.correctCorners = false;
        return this;
    }

    @Override
    public BoundingVolume clone(BoundingVolume boundingVolume) {
        OrientedBoundingBox orientedBoundingBox = boundingVolume instanceof OrientedBoundingBox ? (OrientedBoundingBox) boundingVolume : new OrientedBoundingBox();
        orientedBoundingBox._extent.set(this._extent);
        orientedBoundingBox._xAxis.set(this._xAxis);
        orientedBoundingBox._yAxis.set(this._yAxis);
        orientedBoundingBox._zAxis.set(this._zAxis);
        orientedBoundingBox._center.set(this._center);
        orientedBoundingBox._checkPlane = this._checkPlane;
        int length = this._vectorStore.length;
        while (true) {
            length--;
            if (length < 0) {
                orientedBoundingBox.correctCorners = this.correctCorners;
                return orientedBoundingBox;
            }
            orientedBoundingBox._vectorStore[length].set(this._vectorStore[length]);
        }
    }

    public void computeCorners() {
        Vector3 multiply = this._xAxis.multiply(this._extent.getX(), Vector3.fetchTempInstance());
        Vector3 multiply2 = this._yAxis.multiply(this._extent.getY(), Vector3.fetchTempInstance());
        Vector3 multiply3 = this._zAxis.multiply(this._extent.getZ(), Vector3.fetchTempInstance());
        this._vectorStore[0].set(this._center).subtractLocal(multiply).subtractLocal(multiply2).subtractLocal(multiply3);
        this._vectorStore[1].set(this._center).addLocal(multiply).subtractLocal(multiply2).subtractLocal(multiply3);
        this._vectorStore[2].set(this._center).addLocal(multiply).addLocal(multiply2).subtractLocal(multiply3);
        this._vectorStore[3].set(this._center).subtractLocal(multiply).addLocal(multiply2).subtractLocal(multiply3);
        this._vectorStore[4].set(this._center).subtractLocal(multiply).subtractLocal(multiply2).addLocal(multiply3);
        this._vectorStore[5].set(this._center).addLocal(multiply).subtractLocal(multiply2).addLocal(multiply3);
        this._vectorStore[6].set(this._center).addLocal(multiply).addLocal(multiply2).addLocal(multiply3);
        this._vectorStore[7].set(this._center).subtractLocal(multiply).addLocal(multiply2).addLocal(multiply3);
        Vector3.releaseTempInstance(multiply);
        Vector3.releaseTempInstance(multiply2);
        Vector3.releaseTempInstance(multiply3);
        this.correctCorners = true;
    }

    @Override
    public void computeFromPoints(FloatBuffer floatBuffer) {
        containAABB(floatBuffer);
    }

    @Override
    public void computeFromPrimitives(MeshData meshData, int i10, int[] iArr, int i11, int i12) {
        if (i12 - i11 <= 0) {
            return;
        }
        int vertexCount = meshData.getIndexMode(i10).getVertexCount();
        Vector3 vector3 = Vector3.fetchTempInstance().set(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
        Vector3 vector32 = Vector3.fetchTempInstance().set(Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY);
        Vector3[] vector3Arr = new Vector3[vertexCount];
        int i13 = i11;
        while (true) {
            if (i13 >= i12) {
                this._center.set(vector3.addLocal(vector32));
                this._center.multiplyLocal(0.5d);
                this._extent.set(vector32.getX() - this._center.getX(), vector32.getY() - this._center.getY(), vector32.getZ() - this._center.getZ());
                this._xAxis.set(1.0d, 0.0d, 0.0d);
                this._yAxis.set(0.0d, 1.0d, 0.0d);
                this._zAxis.set(0.0d, 0.0d, 1.0d);
                Vector3.releaseTempInstance(vector3);
                Vector3.releaseTempInstance(vector32);
                this.correctCorners = false;
                return;
            }
            vector3Arr = meshData.getPrimitive(iArr[i13], i10, vector3Arr);
            for (int i14 = 0; i14 < vertexCount; i14++) {
                Vector3 vector33 = vector3Arr[i14];
                if (vector33.getX() < vector3.getX()) {
                    vector3.setX(vector33.getX());
                } else if (vector33.getX() > vector32.getX()) {
                    vector32.setX(vector33.getX());
                }
                if (vector33.getY() < vector3.getY()) {
                    vector3.setY(vector33.getY());
                } else if (vector33.getY() > vector32.getY()) {
                    vector32.setY(vector33.getY());
                }
                if (vector33.getZ() < vector3.getZ()) {
                    vector3.setZ(vector33.getZ());
                } else if (vector33.getZ() > vector32.getZ()) {
                    vector32.setZ(vector33.getZ());
                }
            }
            i13++;
        }
    }

    @Override
    public boolean contains(ReadOnlyVector3 readOnlyVector3) {
        Vector3 subtractLocal = Vector3.fetchTempInstance().set(readOnlyVector3).subtractLocal(this._center);
        if (Math.abs(subtractLocal.dot(this._xAxis)) > this._extent.getX() || Math.abs(subtractLocal.dot(this._yAxis)) > this._extent.getY() || Math.abs(subtractLocal.dot(this._zAxis)) > this._extent.getZ()) {
            return false;
        }
        Vector3.releaseTempInstance(subtractLocal);
        return true;
    }

    @Override
    public double distanceToEdge(ReadOnlyVector3 readOnlyVector3) {
        Vector3 subtract = readOnlyVector3.subtract(this._center, Vector3.fetchTempInstance());
        Vector3 vector3 = Vector3.fetchTempInstance().set(subtract.dot(this._xAxis), subtract.dot(this._yAxis), subtract.dot(this._zAxis));
        Vector3.releaseTempInstance(subtract);
        double d10 = 0.0d;
        if (vector3.getX() < (-this._extent.getX())) {
            double x10 = vector3.getX() + this._extent.getX();
            d10 = 0.0d + (x10 * x10);
            vector3.setX(-this._extent.getX());
        } else if (vector3.getX() > this._extent.getX()) {
            double x11 = vector3.getX() - this._extent.getX();
            d10 = 0.0d + (x11 * x11);
            vector3.setX(this._extent.getX());
        }
        if (vector3.getY() < (-this._extent.getY())) {
            double y10 = vector3.getY() + this._extent.getY();
            d10 += y10 * y10;
            vector3.setY(-this._extent.getY());
        } else if (vector3.getY() > this._extent.getY()) {
            double y11 = vector3.getY() - this._extent.getY();
            d10 += y11 * y11;
            vector3.setY(this._extent.getY());
        }
        if (vector3.getZ() < (-this._extent.getZ())) {
            double z10 = vector3.getZ() + this._extent.getZ();
            d10 += z10 * z10;
            vector3.setZ(-this._extent.getZ());
        } else if (vector3.getZ() > this._extent.getZ()) {
            double z11 = vector3.getZ() - this._extent.getZ();
            d10 += z11 * z11;
            vector3.setZ(this._extent.getZ());
        }
        Vector3.releaseTempInstance(vector3);
        return Math.sqrt(d10);
    }

    public ReadOnlyVector3 getExtent() {
        return this._extent;
    }

    @Override
    public BoundingVolume.Type getType() {
        return BoundingVolume.Type.OBB;
    }

    @Override
    public double getVolume() {
        return this._extent.getX() * 8.0d * this._extent.getY() * this._extent.getZ();
    }

    public ReadOnlyVector3 getXAxis() {
        return this._xAxis;
    }

    public ReadOnlyVector3 getYAxis() {
        return this._yAxis;
    }

    public ReadOnlyVector3 getZAxis() {
        return this._zAxis;
    }

    /* JADX WARN: Finally extract failed */
    public boolean intersection(OrientedBoundingBox orientedBoundingBox) {
        int i10;
        ReadOnlyVector3[] readOnlyVector3Arr = {getXAxis(), getYAxis(), getZAxis()};
        ReadOnlyVector3[] readOnlyVector3Arr2 = {orientedBoundingBox.getXAxis(), orientedBoundingBox.getYAxis(), orientedBoundingBox.getZAxis()};
        Vector3 vector3 = this._extent;
        Vector3 vector32 = orientedBoundingBox._extent;
        Vector3 subtract = orientedBoundingBox._center.subtract(this._center, Vector3.fetchTempInstance());
        double[][] dArr = {new double[3], new double[3], new double[3]};
        double[][] dArr2 = {new double[3], new double[3], new double[3]};
        double[] dArr3 = new double[3];
        int i11 = 0;
        boolean z10 = false;
        for (int i12 = 3; i11 < i12; i12 = 3) {
            try {
                dArr[0][i11] = readOnlyVector3Arr[0].dot(readOnlyVector3Arr2[i11]);
                dArr2[0][i11] = Math.abs(dArr[0][i11]);
                if (dArr2[0][i11] > 0.999999d) {
                    z10 = true;
                }
                i11++;
            } catch (Throwable th2) {
                Vector3.releaseTempInstance(subtract);
                throw th2;
            }
        }
        double dot = readOnlyVector3Arr[0].dot(subtract);
        dArr3[0] = dot;
        if (Math.abs(dot) > vector3.getX() + (vector32.getX() * dArr2[0][0]) + (vector32.getY() * dArr2[0][1]) + (vector32.getZ() * dArr2[0][2])) {
            Vector3.releaseTempInstance(subtract);
            return false;
        }
        int i13 = 0;
        for (int i14 = 3; i13 < i14; i14 = 3) {
            dArr[1][i13] = readOnlyVector3Arr[1].dot(readOnlyVector3Arr2[i13]);
            dArr2[1][i13] = Math.abs(dArr[1][i13]);
            if (dArr2[1][i13] > 0.999999d) {
                z10 = true;
            }
            i13++;
        }
        double dot2 = readOnlyVector3Arr[1].dot(subtract);
        dArr3[1] = dot2;
        if (Math.abs(dot2) > vector3.getY() + (vector32.getX() * dArr2[1][0]) + (vector32.getY() * dArr2[1][1]) + (vector32.getZ() * dArr2[1][2])) {
            Vector3.releaseTempInstance(subtract);
            return false;
        }
        int i15 = 0;
        while (i15 < 3) {
            dArr[2][i15] = readOnlyVector3Arr[2].dot(readOnlyVector3Arr2[i15]);
            dArr2[2][i15] = Math.abs(dArr[2][i15]);
            if (dArr2[2][i15] > 0.999999d) {
                i10 = 1;
                z10 = true;
            } else {
                i10 = 1;
            }
            i15 += i10;
        }
        double dot3 = readOnlyVector3Arr[2].dot(subtract);
        dArr3[2] = dot3;
        if (Math.abs(dot3) <= vector3.getZ() + (vector32.getX() * dArr2[2][0]) + (vector32.getY() * dArr2[2][1]) + (vector32.getZ() * dArr2[2][2])) {
            if (Math.abs(readOnlyVector3Arr2[0].dot(subtract)) > (vector3.getX() * dArr2[0][0]) + (vector3.getY() * dArr2[1][0]) + (vector3.getZ() * dArr2[2][0]) + vector32.getX()) {
                Vector3.releaseTempInstance(subtract);
                return false;
            }
            if (Math.abs(readOnlyVector3Arr2[1].dot(subtract)) <= (vector3.getX() * dArr2[0][1]) + (vector3.getY() * dArr2[1][1]) + (vector3.getZ() * dArr2[2][1]) + vector32.getY()) {
                if (Math.abs(readOnlyVector3Arr2[2].dot(subtract)) <= (vector3.getX() * dArr2[0][2]) + (vector3.getY() * dArr2[1][2]) + (vector3.getZ() * dArr2[2][2]) + vector32.getZ()) {
                    Vector3.releaseTempInstance(subtract);
                    if (z10) {
                        return true;
                    }
                    return Math.abs((dArr3[2] * dArr[1][0]) - (dArr3[1] * dArr[2][0])) <= ((vector3.getY() * dArr2[2][0]) + (vector3.getZ() * dArr2[1][0])) + ((vector32.getY() * dArr2[0][2]) + (vector32.getZ() * dArr2[0][1])) && Math.abs((dArr3[2] * dArr[1][1]) - (dArr3[1] * dArr[2][1])) <= ((vector3.getY() * dArr2[2][1]) + (vector3.getZ() * dArr2[1][1])) + ((vector32.getX() * dArr2[0][2]) + (vector32.getZ() * dArr2[0][0])) && Math.abs((dArr3[2] * dArr[1][2]) - (dArr3[1] * dArr[2][2])) <= ((vector3.getY() * dArr2[2][2]) + (vector3.getZ() * dArr2[1][2])) + ((vector32.getX() * dArr2[0][1]) + (vector32.getY() * dArr2[0][0])) && Math.abs((dArr3[0] * dArr[2][0]) - (dArr3[2] * dArr[0][0])) <= ((vector3.getX() * dArr2[2][0]) + (vector3.getZ() * dArr2[0][0])) + ((vector32.getY() * dArr2[1][2]) + (vector32.getZ() * dArr2[1][1])) && Math.abs((dArr3[0] * dArr[2][1]) - (dArr3[2] * dArr[0][1])) <= ((vector3.getX() * dArr2[2][1]) + (vector3.getZ() * dArr2[0][1])) + ((vector32.getX() * dArr2[1][2]) + (vector32.getZ() * dArr2[1][0])) && Math.abs((dArr3[0] * dArr[2][2]) - (dArr3[2] * dArr[0][2])) <= ((vector3.getX() * dArr2[2][2]) + (vector3.getZ() * dArr2[0][2])) + ((vector32.getX() * dArr2[1][1]) + (vector32.getY() * dArr2[1][0])) && Math.abs((dArr3[1] * dArr[0][0]) - (dArr3[0] * dArr[1][0])) <= ((vector3.getX() * dArr2[1][0]) + (vector3.getY() * dArr2[0][0])) + ((vector32.getY() * dArr2[2][2]) + (vector32.getZ() * dArr2[2][1])) && Math.abs((dArr3[1] * dArr[0][1]) - (dArr3[0] * dArr[1][1])) <= ((vector3.getX() * dArr2[1][1]) + (vector3.getY() * dArr2[0][1])) + ((vector32.getX() * dArr2[2][2]) + (vector32.getZ() * dArr2[2][0])) && Math.abs((dArr3[1] * dArr[0][2]) - (dArr3[0] * dArr[1][2])) <= ((vector3.getX() * dArr2[1][2]) + (vector3.getY() * dArr2[0][2])) + ((vector32.getX() * dArr2[2][1]) + (vector32.getY() * dArr2[2][0]));
                }
            }
        }
        Vector3.releaseTempInstance(subtract);
        return false;
    }

    @Override
    public boolean intersects(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return false;
        }
        return boundingVolume.intersectsOrientedBoundingBox(this);
    }

    @Override
    public boolean intersectsBoundingBox(BoundingBox boundingBox) {
        if (!Vector3.isValid(this._center) || !Vector3.isValid(boundingBox._center)) {
            return false;
        }
        ReadOnlyVector3[] readOnlyVector3Arr = {this._xAxis, this._yAxis, this._zAxis};
        Vector3[] vector3Arr = {Vector3.fetchTempInstance(), Vector3.fetchTempInstance(), Vector3.fetchTempInstance()};
        Vector3 vector3 = this._extent;
        Vector3 vector32 = Vector3.fetchTempInstance().set(boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent());
        Vector3 subtract = boundingBox.getCenter().subtract(this._center, Vector3.fetchTempInstance());
        double[][] dArr = {new double[3], new double[3], new double[3]};
        double[][] dArr2 = {new double[3], new double[3], new double[3]};
        double[] dArr3 = new double[3];
        int i10 = 0;
        boolean z10 = false;
        for (int i11 = 3; i10 < i11; i11 = 3) {
            try {
                dArr[0][i10] = readOnlyVector3Arr[0].dot(vector3Arr[i10]);
                dArr2[0][i10] = Math.abs(dArr[0][i10]);
                if (dArr2[0][i10] > 0.9999989867210388d) {
                    z10 = true;
                }
                i10++;
            } catch (Throwable th2) {
                Vector3.releaseTempInstance(subtract);
                Vector3.releaseTempInstance(vector32);
                for (int i12 = 0; i12 < 3; i12++) {
                    Vector3.releaseTempInstance(vector3Arr[i12]);
                }
                throw th2;
            }
        }
        double dot = readOnlyVector3Arr[0].dot(subtract);
        dArr3[0] = dot;
        if (Math.abs(dot) > vector3.getX() + (vector32.getX() * dArr2[0][0]) + (vector32.getY() * dArr2[0][1]) + (vector32.getZ() * dArr2[0][2])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i13 = 0; i13 < 3; i13++) {
                Vector3.releaseTempInstance(vector3Arr[i13]);
            }
            return false;
        }
        int i14 = 0;
        for (int i15 = 3; i14 < i15; i15 = 3) {
            dArr[1][i14] = readOnlyVector3Arr[1].dot(vector3Arr[i14]);
            dArr2[1][i14] = Math.abs(dArr[1][i14]);
            if (dArr2[1][i14] > 0.9999989867210388d) {
                z10 = true;
            }
            i14++;
        }
        double dot2 = readOnlyVector3Arr[1].dot(subtract);
        dArr3[1] = dot2;
        if (Math.abs(dot2) > vector3.getY() + (vector32.getX() * dArr2[1][0]) + (vector32.getY() * dArr2[1][1]) + (vector32.getZ() * dArr2[1][2])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i16 = 0; i16 < 3; i16++) {
                Vector3.releaseTempInstance(vector3Arr[i16]);
            }
            return false;
        }
        int i17 = 0;
        for (int i18 = 3; i17 < i18; i18 = 3) {
            dArr[2][i17] = readOnlyVector3Arr[2].dot(vector3Arr[i17]);
            dArr2[2][i17] = Math.abs(dArr[2][i17]);
            if (dArr2[2][i17] > 0.9999989867210388d) {
                z10 = true;
            }
            i17++;
        }
        double dot3 = readOnlyVector3Arr[2].dot(subtract);
        dArr3[2] = dot3;
        if (Math.abs(dot3) > vector3.getZ() + (vector32.getX() * dArr2[2][0]) + (vector32.getY() * dArr2[2][1]) + (vector32.getZ() * dArr2[2][2])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i19 = 0; i19 < 3; i19++) {
                Vector3.releaseTempInstance(vector3Arr[i19]);
            }
            return false;
        }
        if (Math.abs(vector3Arr[0].dot(subtract)) > (vector3.getX() * dArr2[0][0]) + (vector3.getY() * dArr2[1][0]) + (vector3.getZ() * dArr2[2][0]) + vector32.getX()) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i20 = 0; i20 < 3; i20++) {
                Vector3.releaseTempInstance(vector3Arr[i20]);
            }
            return false;
        }
        if (Math.abs(vector3Arr[1].dot(subtract)) > (vector3.getX() * dArr2[0][1]) + (vector3.getY() * dArr2[1][1]) + (vector3.getZ() * dArr2[2][1]) + vector32.getY()) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i21 = 0; i21 < 3; i21++) {
                Vector3.releaseTempInstance(vector3Arr[i21]);
            }
            return false;
        }
        if (Math.abs(vector3Arr[2].dot(subtract)) > (vector3.getX() * dArr2[0][2]) + (vector3.getY() * dArr2[1][2]) + (vector3.getZ() * dArr2[2][2]) + vector32.getZ()) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i22 = 0; i22 < 3; i22++) {
                Vector3.releaseTempInstance(vector3Arr[i22]);
            }
            return false;
        }
        if (z10) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            int i23 = 0;
            for (int i24 = 3; i23 < i24; i24 = 3) {
                Vector3.releaseTempInstance(vector3Arr[i23]);
                i23++;
            }
            return true;
        }
        if (Math.abs((dArr3[2] * dArr[1][0]) - (dArr3[1] * dArr[2][0])) > (vector3.getY() * dArr2[2][0]) + (vector3.getZ() * dArr2[1][0]) + (vector32.getY() * dArr2[0][2]) + (vector32.getZ() * dArr2[0][1])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i25 = 0; i25 < 3; i25++) {
                Vector3.releaseTempInstance(vector3Arr[i25]);
            }
            return false;
        }
        if (Math.abs((dArr3[2] * dArr[1][1]) - (dArr3[1] * dArr[2][1])) > (vector3.getY() * dArr2[2][1]) + (vector3.getZ() * dArr2[1][1]) + (vector32.getX() * dArr2[0][2]) + (vector32.getZ() * dArr2[0][0])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i26 = 0; i26 < 3; i26++) {
                Vector3.releaseTempInstance(vector3Arr[i26]);
            }
            return false;
        }
        if (Math.abs((dArr3[2] * dArr[1][2]) - (dArr3[1] * dArr[2][2])) > (vector3.getY() * dArr2[2][2]) + (vector3.getZ() * dArr2[1][2]) + (vector32.getX() * dArr2[0][1]) + (vector32.getY() * dArr2[0][0])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i27 = 0; i27 < 3; i27++) {
                Vector3.releaseTempInstance(vector3Arr[i27]);
            }
            return false;
        }
        if (Math.abs((dArr3[0] * dArr[2][0]) - (dArr3[2] * dArr[0][0])) > (vector3.getX() * dArr2[2][0]) + (vector3.getZ() * dArr2[0][0]) + (vector32.getY() * dArr2[1][2]) + (vector32.getZ() * dArr2[1][1])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i28 = 0; i28 < 3; i28++) {
                Vector3.releaseTempInstance(vector3Arr[i28]);
            }
            return false;
        }
        if (Math.abs((dArr3[0] * dArr[2][1]) - (dArr3[2] * dArr[0][1])) > (vector3.getX() * dArr2[2][1]) + (vector3.getZ() * dArr2[0][1]) + (vector32.getX() * dArr2[1][2]) + (vector32.getZ() * dArr2[1][0])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i29 = 0; i29 < 3; i29++) {
                Vector3.releaseTempInstance(vector3Arr[i29]);
            }
            return false;
        }
        if (Math.abs((dArr3[0] * dArr[2][2]) - (dArr3[2] * dArr[0][2])) > (vector3.getX() * dArr2[2][2]) + (vector3.getZ() * dArr2[0][2]) + (vector32.getX() * dArr2[1][1]) + (vector32.getY() * dArr2[1][0])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i30 = 0; i30 < 3; i30++) {
                Vector3.releaseTempInstance(vector3Arr[i30]);
            }
            return false;
        }
        if (Math.abs((dArr3[1] * dArr[0][0]) - (dArr3[0] * dArr[1][0])) > (vector3.getX() * dArr2[1][0]) + (vector3.getY() * dArr2[0][0]) + (vector32.getY() * dArr2[2][2]) + (vector32.getZ() * dArr2[2][1])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i31 = 0; i31 < 3; i31++) {
                Vector3.releaseTempInstance(vector3Arr[i31]);
            }
            return false;
        }
        if (Math.abs((dArr3[1] * dArr[0][1]) - (dArr3[0] * dArr[1][1])) > (vector3.getX() * dArr2[1][1]) + (vector3.getY() * dArr2[0][1]) + (vector32.getX() * dArr2[2][2]) + (vector32.getZ() * dArr2[2][0])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i32 = 0; i32 < 3; i32++) {
                Vector3.releaseTempInstance(vector3Arr[i32]);
            }
            return false;
        }
        if (Math.abs((dArr3[1] * dArr[0][2]) - (dArr3[0] * dArr[1][2])) > (vector3.getX() * dArr2[1][2]) + (vector3.getY() * dArr2[0][2]) + (vector32.getX() * dArr2[2][1]) + (vector32.getY() * dArr2[2][0])) {
            Vector3.releaseTempInstance(subtract);
            Vector3.releaseTempInstance(vector32);
            for (int i33 = 0; i33 < 3; i33++) {
                Vector3.releaseTempInstance(vector3Arr[i33]);
            }
            return false;
        }
        Vector3.releaseTempInstance(subtract);
        Vector3.releaseTempInstance(vector32);
        int i34 = 0;
        for (int i35 = 3; i34 < i35; i35 = 3) {
            Vector3.releaseTempInstance(vector3Arr[i34]);
            i34++;
        }
        return true;
    }

    /* JADX WARN: Finally extract failed */
    @Override
    public boolean intersectsOrientedBoundingBox(OrientedBoundingBox orientedBoundingBox) {
        if (!Vector3.isValid(this._center) || !Vector3.isValid(orientedBoundingBox._center)) {
            return false;
        }
        ReadOnlyVector3[] readOnlyVector3Arr = {this._xAxis, this._yAxis, this._zAxis};
        ReadOnlyVector3[] readOnlyVector3Arr2 = {orientedBoundingBox._xAxis, orientedBoundingBox._yAxis, orientedBoundingBox._zAxis};
        Vector3 vector3 = this._extent;
        Vector3 vector32 = orientedBoundingBox._extent;
        Vector3 subtract = orientedBoundingBox._center.subtract(this._center, Vector3.fetchTempInstance());
        double[][] dArr = {new double[3], new double[3], new double[3]};
        double[][] dArr2 = {new double[3], new double[3], new double[3]};
        double[] dArr3 = new double[3];
        int i10 = 0;
        boolean z10 = false;
        for (int i11 = 3; i10 < i11; i11 = 3) {
            try {
                dArr[0][i10] = readOnlyVector3Arr[0].dot(readOnlyVector3Arr2[i10]);
                dArr2[0][i10] = Math.abs(dArr[0][i10]);
                if (dArr2[0][i10] > 0.9999989867210388d) {
                    z10 = true;
                }
                i10++;
            } catch (Throwable th2) {
                Vector3.releaseTempInstance(subtract);
                throw th2;
            }
        }
        double dot = readOnlyVector3Arr[0].dot(subtract);
        dArr3[0] = dot;
        if (Math.abs(dot) > vector3.getX() + (vector32.getX() * dArr2[0][0]) + (vector32.getY() * dArr2[0][1]) + (vector32.getZ() * dArr2[0][2])) {
            Vector3.releaseTempInstance(subtract);
            return false;
        }
        int i12 = 0;
        for (int i13 = 3; i12 < i13; i13 = 3) {
            dArr[1][i12] = readOnlyVector3Arr[1].dot(readOnlyVector3Arr2[i12]);
            dArr2[1][i12] = Math.abs(dArr[1][i12]);
            if (dArr2[1][i12] > 0.9999989867210388d) {
                z10 = true;
            }
            i12++;
        }
        double dot2 = readOnlyVector3Arr[1].dot(subtract);
        dArr3[1] = dot2;
        if (Math.abs(dot2) <= vector3.getY() + (vector32.getX() * dArr2[1][0]) + (vector32.getY() * dArr2[1][1]) + (vector32.getZ() * dArr2[1][2])) {
            for (int i14 = 0; i14 < 3; i14++) {
                dArr[2][i14] = readOnlyVector3Arr[2].dot(readOnlyVector3Arr2[i14]);
                dArr2[2][i14] = Math.abs(dArr[2][i14]);
                if (dArr2[2][i14] > 0.9999989867210388d) {
                    z10 = true;
                }
            }
            double dot3 = readOnlyVector3Arr[2].dot(subtract);
            dArr3[2] = dot3;
            if (Math.abs(dot3) <= vector3.getZ() + (vector32.getX() * dArr2[2][0]) + (vector32.getY() * dArr2[2][1]) + (vector32.getZ() * dArr2[2][2])) {
                if (Math.abs(readOnlyVector3Arr2[0].dot(subtract)) > (vector3.getX() * dArr2[0][0]) + (vector3.getY() * dArr2[1][0]) + (vector3.getZ() * dArr2[2][0]) + vector32.getX()) {
                    Vector3.releaseTempInstance(subtract);
                    return false;
                }
                if (Math.abs(readOnlyVector3Arr2[1].dot(subtract)) <= (vector3.getX() * dArr2[0][1]) + (vector3.getY() * dArr2[1][1]) + (vector3.getZ() * dArr2[2][1]) + vector32.getY()) {
                    if (Math.abs(readOnlyVector3Arr2[2].dot(subtract)) <= (vector3.getX() * dArr2[0][2]) + (vector3.getY() * dArr2[1][2]) + (vector3.getZ() * dArr2[2][2]) + vector32.getZ()) {
                        Vector3.releaseTempInstance(subtract);
                        if (z10) {
                            return true;
                        }
                        return Math.abs((dArr3[2] * dArr[1][0]) - (dArr3[1] * dArr[2][0])) <= ((vector3.getY() * dArr2[2][0]) + (vector3.getZ() * dArr2[1][0])) + ((vector32.getY() * dArr2[0][2]) + (vector32.getZ() * dArr2[0][1])) && Math.abs((dArr3[2] * dArr[1][1]) - (dArr3[1] * dArr[2][1])) <= ((vector3.getY() * dArr2[2][1]) + (vector3.getZ() * dArr2[1][1])) + ((vector32.getX() * dArr2[0][2]) + (vector32.getZ() * dArr2[0][0])) && Math.abs((dArr3[2] * dArr[1][2]) - (dArr3[1] * dArr[2][2])) <= ((vector3.getY() * dArr2[2][2]) + (vector3.getZ() * dArr2[1][2])) + ((vector32.getX() * dArr2[0][1]) + (vector32.getY() * dArr2[0][0])) && Math.abs((dArr3[0] * dArr[2][0]) - (dArr3[2] * dArr[0][0])) <= ((vector3.getX() * dArr2[2][0]) + (vector3.getZ() * dArr2[0][0])) + ((vector32.getY() * dArr2[1][2]) + (vector32.getZ() * dArr2[1][1])) && Math.abs((dArr3[0] * dArr[2][1]) - (dArr3[2] * dArr[0][1])) <= ((vector3.getX() * dArr2[2][1]) + (vector3.getZ() * dArr2[0][1])) + ((vector32.getX() * dArr2[1][2]) + (vector32.getZ() * dArr2[1][0])) && Math.abs((dArr3[0] * dArr[2][2]) - (dArr3[2] * dArr[0][2])) <= ((vector3.getX() * dArr2[2][2]) + (vector3.getZ() * dArr2[0][2])) + ((vector32.getX() * dArr2[1][1]) + (vector32.getY() * dArr2[1][0])) && Math.abs((dArr3[1] * dArr[0][0]) - (dArr3[0] * dArr[1][0])) <= ((vector3.getX() * dArr2[1][0]) + (vector3.getY() * dArr2[0][0])) + ((vector32.getY() * dArr2[2][2]) + (vector32.getZ() * dArr2[2][1])) && Math.abs((dArr3[1] * dArr[0][1]) - (dArr3[0] * dArr[1][1])) <= ((vector3.getX() * dArr2[1][1]) + (vector3.getY() * dArr2[0][1])) + ((vector32.getX() * dArr2[2][2]) + (vector32.getZ() * dArr2[2][0])) && Math.abs((dArr3[1] * dArr[0][2]) - (dArr3[0] * dArr[1][2])) <= ((vector3.getX() * dArr2[1][2]) + (vector3.getY() * dArr2[0][2])) + ((vector32.getX() * dArr2[2][1]) + (vector32.getY() * dArr2[2][0]));
                    }
                }
            }
        }
        Vector3.releaseTempInstance(subtract);
        return false;
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere) {
        boolean z10 = false;
        if (Vector3.isValid(this._center) && Vector3.isValid(boundingSphere._center)) {
            Vector3 subtractLocal = Vector3.fetchTempInstance().set(boundingSphere.getCenter()).subtractLocal(this._center);
            Matrix3 fromAxes = Matrix3.fetchTempInstance().fromAxes(this._xAxis, this._yAxis, this._zAxis);
            fromAxes.applyPost(subtractLocal, subtractLocal);
            if (Math.abs(subtractLocal.getX()) < boundingSphere.getRadius() + this._extent.getX() && Math.abs(subtractLocal.getY()) < boundingSphere.getRadius() + this._extent.getY() && Math.abs(subtractLocal.getZ()) < boundingSphere.getRadius() + this._extent.getZ()) {
                z10 = true;
            }
            Vector3.releaseTempInstance(subtractLocal);
            Matrix3.releaseTempInstance(fromAxes);
        }
        return z10;
    }

    @Override
    public IntersectionRecord intersectsWhere(ReadOnlyRay3 readOnlyRay3) {
        Vector3 vector3;
        double d10;
        double d11;
        ReadOnlyVector3 direction = readOnlyRay3.getDirection();
        ReadOnlyVector3 origin = readOnlyRay3.getOrigin();
        Vector3 subtract = origin.subtract(getCenter(), Vector3.fetchTempInstance());
        subtract.set(this._xAxis.dot(subtract), this._yAxis.dot(subtract), this._zAxis.dot(subtract));
        Vector3 vector32 = Vector3.fetchTempInstance().set(this._xAxis.dot(direction), this._yAxis.dot(direction), this._zAxis.dot(direction));
        double[] dArr = {0.0d, Double.POSITIVE_INFINITY};
        try {
            d10 = dArr[0];
            d11 = dArr[1];
            vector3 = subtract;
        } catch (Throwable th2) {
            th = th2;
            vector3 = subtract;
        }
        try {
            if (clip(vector32.getX(), (-subtract.getX()) - this._extent.getX(), dArr) && clip(-vector32.getX(), vector3.getX() - this._extent.getX(), dArr) && clip(vector32.getY(), (-vector3.getY()) - this._extent.getY(), dArr) && clip(-vector32.getY(), vector3.getY() - this._extent.getY(), dArr) && clip(vector32.getZ(), (-vector3.getZ()) - this._extent.getZ(), dArr) && clip(-vector32.getZ(), vector3.getZ() - this._extent.getZ(), dArr)) {
                double d12 = dArr[0];
                if (d12 == d10) {
                    if (dArr[1] != d11) {
                    }
                }
                if (dArr[1] > d12) {
                    IntersectionRecord intersectionRecord = new IntersectionRecord(dArr, new Vector3[]{direction.multiply(d12, new Vector3()).addLocal(origin), direction.multiply(dArr[1], new Vector3()).addLocal(origin)});
                    Vector3.releaseTempInstance(vector3);
                    Vector3.releaseTempInstance(vector32);
                    return intersectionRecord;
                }
                double[] dArr2 = {d12};
                IntersectionRecord intersectionRecord2 = new IntersectionRecord(dArr2, new Vector3[]{direction.multiply(dArr2[0], new Vector3()).addLocal(origin)});
                Vector3.releaseTempInstance(vector3);
                Vector3.releaseTempInstance(vector32);
                return intersectionRecord2;
            }
            Vector3.releaseTempInstance(vector3);
            Vector3.releaseTempInstance(vector32);
            return null;
        } catch (Throwable th3) {
            th = th3;
            Vector3.releaseTempInstance(vector3);
            Vector3.releaseTempInstance(vector32);
            throw th;
        }
    }

    @Override
    public BoundingVolume merge(BoundingVolume boundingVolume) {
        return clone(new OrientedBoundingBox()).mergeLocal(boundingVolume);
    }

    @Override
    public BoundingVolume mergeLocal(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return this;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            return mergeOBB((OrientedBoundingBox) boundingVolume);
        }
        if (i10 == 2) {
            return mergeAABB((BoundingBox) boundingVolume);
        }
        if (i10 != 3) {
            return null;
        }
        return mergeSphere((BoundingSphere) boundingVolume);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._xAxis.set((Vector3) inputCapsule.readSavable("xAxis", new Vector3(Vector3.UNIT_X)));
        this._yAxis.set((Vector3) inputCapsule.readSavable("yAxis", new Vector3(Vector3.UNIT_Y)));
        this._zAxis.set((Vector3) inputCapsule.readSavable("zAxis", new Vector3(Vector3.UNIT_Z)));
        this._extent.set((Vector3) inputCapsule.readSavable("extent", new Vector3(Vector3.ZERO)));
        this.correctCorners = false;
    }

    public void setExtent(ReadOnlyVector3 readOnlyVector3) {
        this._extent.set(readOnlyVector3);
        this.correctCorners = false;
    }

    public void setXAxis(ReadOnlyVector3 readOnlyVector3) {
        this._xAxis.set(readOnlyVector3);
        this.correctCorners = false;
    }

    public void setYAxis(ReadOnlyVector3 readOnlyVector3) {
        this._yAxis.set(readOnlyVector3);
        this.correctCorners = false;
    }

    public void setZAxis(ReadOnlyVector3 readOnlyVector3) {
        this._zAxis.set(readOnlyVector3);
        this.correctCorners = false;
    }

    @Override
    public BoundingVolume transform(ReadOnlyTransform readOnlyTransform, BoundingVolume boundingVolume) {
        OrientedBoundingBox orientedBoundingBox = (OrientedBoundingBox) ((boundingVolume == null || boundingVolume.getType() != BoundingVolume.Type.OBB) ? new OrientedBoundingBox() : boundingVolume);
        Vector3 vector3 = new Vector3();
        vector3.set(1.0d, 0.0d, 0.0d);
        double length = readOnlyTransform.applyForwardVector(vector3).length();
        vector3.set(0.0d, 1.0d, 0.0d);
        double length2 = readOnlyTransform.applyForwardVector(vector3).length();
        vector3.set(0.0d, 0.0d, 1.0d);
        orientedBoundingBox._extent.set(Math.abs(this._extent.getX() * length), Math.abs(this._extent.getY() * length2), Math.abs(this._extent.getZ() * readOnlyTransform.applyForwardVector(vector3).length()));
        readOnlyTransform.getMatrix().applyPost(this._xAxis, orientedBoundingBox._xAxis);
        readOnlyTransform.getMatrix().applyPost(this._yAxis, orientedBoundingBox._yAxis);
        readOnlyTransform.getMatrix().applyPost(this._zAxis, orientedBoundingBox._zAxis);
        if (!readOnlyTransform.isRotationMatrix()) {
            orientedBoundingBox._xAxis.normalizeLocal();
            orientedBoundingBox._yAxis.normalizeLocal();
            orientedBoundingBox._zAxis.normalizeLocal();
        }
        readOnlyTransform.applyForward(this._center, orientedBoundingBox._center);
        orientedBoundingBox.correctCorners = false;
        orientedBoundingBox.computeCorners();
        return orientedBoundingBox;
    }

    @Override
    public ReadOnlyPlane.Side whichSide(ReadOnlyPlane readOnlyPlane) {
        ReadOnlyVector3 normal = readOnlyPlane.getNormal();
        double abs = Math.abs(this._extent.getX() * normal.dot(this._xAxis)) + Math.abs(this._extent.getY() * normal.dot(this._yAxis)) + Math.abs(this._extent.getZ() * normal.dot(this._zAxis));
        double pseudoDistance = readOnlyPlane.pseudoDistance(this._center);
        return pseudoDistance <= (-abs) ? ReadOnlyPlane.Side.Inside : pseudoDistance >= abs ? ReadOnlyPlane.Side.Outside : ReadOnlyPlane.Side.Neither;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._xAxis, "_xAxis", new Vector3(Vector3.UNIT_X));
        outputCapsule.write(this._yAxis, "yAxis", new Vector3(Vector3.UNIT_Y));
        outputCapsule.write(this._zAxis, "zAxis", new Vector3(Vector3.UNIT_Z));
        outputCapsule.write(this._extent, "extent", new Vector3(Vector3.ZERO));
    }

    @Override
    public boolean intersects(ReadOnlyRay3 readOnlyRay3) {
        if (!Vector3.isValid(this._center)) {
            return false;
        }
        ReadOnlyVector3 direction = readOnlyRay3.getDirection();
        Vector3 subtractLocal = Vector3.fetchTempInstance().set(readOnlyRay3.getOrigin()).subtractLocal(this._center);
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        double[] dArr = new double[3];
        double[] dArr2 = new double[3];
        double[] dArr3 = new double[3];
        double[] dArr4 = new double[3];
        try {
            double dot = direction.dot(this._xAxis);
            dArr[0] = dot;
            dArr2[0] = Math.abs(dot);
            double dot2 = subtractLocal.dot(this._xAxis);
            dArr3[0] = dot2;
            if (Math.abs(dot2) <= this._extent.getX() || dArr3[0] * dArr[0] < 0.0d) {
                double dot3 = direction.dot(this._yAxis);
                dArr[1] = dot3;
                dArr2[1] = Math.abs(dot3);
                double dot4 = subtractLocal.dot(this._yAxis);
                dArr3[1] = dot4;
                if (Math.abs(dot4) <= this._extent.getY() || dArr3[1] * dArr[1] < 0.0d) {
                    double dot5 = direction.dot(this._zAxis);
                    dArr[2] = dot5;
                    dArr2[2] = Math.abs(dot5);
                    double dot6 = subtractLocal.dot(this._zAxis);
                    dArr3[2] = dot6;
                    if (Math.abs(dot6) <= this._extent.getZ() || dArr3[2] * dArr[2] < 0.0d) {
                        direction.cross(subtractLocal, fetchTempInstance);
                        dArr4[0] = Math.abs(fetchTempInstance.dot(this._xAxis));
                        if (dArr4[0] <= (this._extent.getY() * dArr2[2]) + (this._extent.getZ() * dArr2[1])) {
                            dArr4[1] = Math.abs(fetchTempInstance.dot(this._yAxis));
                            if (dArr4[1] <= (this._extent.getX() * dArr2[2]) + (this._extent.getZ() * dArr2[0])) {
                                dArr4[2] = Math.abs(fetchTempInstance.dot(this._zAxis));
                                if (dArr4[2] <= (this._extent.getX() * dArr2[1]) + (this._extent.getY() * dArr2[0])) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
            return false;
        } finally {
            Vector3.releaseTempInstance(subtractLocal);
            Vector3.releaseTempInstance(fetchTempInstance);
        }
    }
}
