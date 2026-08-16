package com.ardor3d.bounding;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.intersection.IntersectionRecord;
import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyMatrix3;
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

public class BoundingBox extends BoundingVolume {
    private static final long serialVersionUID = 1;
    private double _xExtent;
    private double _yExtent;
    private double _zExtent;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type;

        static {
            int[] iArr = new int[BoundingVolume.Type.values().length];
            $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type = iArr;
            try {
                iArr[BoundingVolume.Type.AABB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.Sphere.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.OBB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public BoundingBox() {
    }

    private void checkMinMax(Vector3 vector3, Vector3 vector32, ReadOnlyVector3 readOnlyVector3) {
        if (readOnlyVector3.getX() < vector3.getX()) {
            vector3.setX(readOnlyVector3.getX());
        }
        if (readOnlyVector3.getX() > vector32.getX()) {
            vector32.setX(readOnlyVector3.getX());
        }
        if (readOnlyVector3.getY() < vector3.getY()) {
            vector3.setY(readOnlyVector3.getY());
        }
        if (readOnlyVector3.getY() > vector32.getY()) {
            vector32.setY(readOnlyVector3.getY());
        }
        if (readOnlyVector3.getZ() < vector3.getZ()) {
            vector3.setZ(readOnlyVector3.getZ());
        }
        if (readOnlyVector3.getZ() > vector32.getZ()) {
            vector32.setZ(readOnlyVector3.getZ());
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

    private BoundingBox mergeOBB(OrientedBoundingBox orientedBoundingBox) {
        OrientedBoundingBox orientedBoundingBox2 = orientedBoundingBox;
        if (Double.isInfinite(getXExtent()) || Double.isInfinite(getYExtent()) || Double.isInfinite(getZExtent()) || Vector3.isInfinite(orientedBoundingBox.getExtent())) {
            setCenter(Vector3.ZERO);
            setXExtent(Double.POSITIVE_INFINITY);
            setYExtent(Double.POSITIVE_INFINITY);
            setZExtent(Double.POSITIVE_INFINITY);
            return this;
        }
        if (!orientedBoundingBox2.correctCorners) {
            orientedBoundingBox.computeCorners();
        }
        double x10 = this._center.getX() - getXExtent();
        double y10 = this._center.getY() - getYExtent();
        double z10 = this._center.getZ() - getZExtent();
        double x11 = this._center.getX() + getXExtent();
        double y11 = this._center.getY() + getYExtent();
        double z11 = this._center.getZ() + getZExtent();
        int i10 = 1;
        while (true) {
            Vector3[] vector3Arr = orientedBoundingBox2._vectorStore;
            if (i10 >= vector3Arr.length) {
                this._center.set(x10 + x11, y10 + y11, z10 + z11);
                this._center.multiplyLocal(0.5d);
                setXExtent(x11 - this._center.getX());
                setYExtent(y11 - this._center.getY());
                setZExtent(z11 - this._center.getZ());
                return this;
            }
            Vector3 vector3 = vector3Arr[i10];
            if (vector3.getX() < x10) {
                x10 = vector3.getX();
            } else if (vector3.getX() > x11) {
                x11 = vector3.getX();
            }
            if (vector3.getY() < y10) {
                y10 = vector3.getY();
            } else if (vector3.getY() > y11) {
                y11 = vector3.getY();
            }
            if (vector3.getZ() < z10) {
                z10 = vector3.getZ();
            } else if (vector3.getZ() > z11) {
                z11 = vector3.getZ();
            }
            i10++;
            orientedBoundingBox2 = orientedBoundingBox;
        }
    }

    @Override
    public BoundingVolume clone(BoundingVolume boundingVolume) {
        if (boundingVolume == null || boundingVolume.getType() != BoundingVolume.Type.AABB) {
            return new BoundingBox(this._center, getXExtent(), getYExtent(), getZExtent());
        }
        BoundingBox boundingBox = (BoundingBox) boundingVolume;
        boundingBox._center.set(this._center);
        boundingBox.setXExtent(this._xExtent);
        boundingBox.setYExtent(this._yExtent);
        boundingBox.setZExtent(this._zExtent);
        boundingBox._checkPlane = this._checkPlane;
        return boundingBox;
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
        Vector3 vector3 = Vector3.fetchTempInstance().set(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
        Vector3 vector32 = Vector3.fetchTempInstance().set(Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY);
        Vector3[] vector3Arr = new Vector3[meshData.getIndexMode(i10).getVertexCount()];
        while (i11 < i12) {
            vector3Arr = meshData.getPrimitive(iArr[i11], i10, vector3Arr);
            for (Vector3 vector33 : vector3Arr) {
                checkMinMax(vector3, vector32, vector33);
            }
            i11++;
        }
        this._center.set(vector3.addLocal(vector32));
        this._center.multiplyLocal(0.5d);
        setXExtent(vector32.getX() - this._center.getX());
        setYExtent(vector32.getY() - this._center.getY());
        setZExtent(vector32.getZ() - this._center.getZ());
        Vector3.releaseTempInstance(vector3);
        Vector3.releaseTempInstance(vector32);
    }

    public void containAABB(FloatBuffer floatBuffer) {
        if (floatBuffer == null) {
            return;
        }
        floatBuffer.rewind();
        if (floatBuffer.remaining() <= 2) {
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
        int remaining = floatBuffer.remaining() / 3;
        for (int i10 = 1; i10 < remaining; i10++) {
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
        setXExtent(x11 - this._center.getX());
        setYExtent(y11 - this._center.getY());
        setZExtent(z11 - this._center.getZ());
    }

    @Override
    public boolean contains(ReadOnlyVector3 readOnlyVector3) {
        return Math.abs(this._center.getX() - readOnlyVector3.getX()) < getXExtent() && Math.abs(this._center.getY() - readOnlyVector3.getY()) < getYExtent() && Math.abs(this._center.getZ() - readOnlyVector3.getZ()) < getZExtent();
    }

    @Override
    public double distanceToEdge(ReadOnlyVector3 readOnlyVector3) {
        Vector3 subtract = readOnlyVector3.subtract(this._center, Vector3.fetchTempInstance());
        double d10 = 0.0d;
        if (subtract.getX() < (-getXExtent())) {
            double x10 = subtract.getX() + getXExtent();
            d10 = 0.0d + (x10 * x10);
            subtract.setX(-getXExtent());
        } else if (subtract.getX() > getXExtent()) {
            double x11 = subtract.getX() - getXExtent();
            d10 = 0.0d + (x11 * x11);
            subtract.setX(getXExtent());
        }
        if (subtract.getY() < (-getYExtent())) {
            double y10 = subtract.getY() + getYExtent();
            d10 += y10 * y10;
            subtract.setY(-getYExtent());
        } else if (subtract.getY() > getYExtent()) {
            double y11 = subtract.getY() - getYExtent();
            d10 += y11 * y11;
            subtract.setY(getYExtent());
        }
        if (subtract.getZ() < (-getZExtent())) {
            double z10 = subtract.getZ() + getZExtent();
            d10 += z10 * z10;
            subtract.setZ(-getZExtent());
        } else if (subtract.getZ() > getZExtent()) {
            double z11 = subtract.getZ() - getZExtent();
            d10 += z11 * z11;
            subtract.setZ(getZExtent());
        }
        Vector3.releaseTempInstance(subtract);
        return Math.sqrt(d10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BoundingBox)) {
            return false;
        }
        BoundingBox boundingBox = (BoundingBox) obj;
        return this._center.equals(boundingBox._center) && this._xExtent == boundingBox._xExtent && this._yExtent == boundingBox._yExtent && this._zExtent == boundingBox._zExtent;
    }

    public Vector3 getExtent(Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.set(getXExtent(), getYExtent(), getZExtent());
        return vector3;
    }

    @Override
    public BoundingVolume.Type getType() {
        return BoundingVolume.Type.AABB;
    }

    @Override
    public double getVolume() {
        return getXExtent() * 8.0d * getYExtent() * getZExtent();
    }

    public double getXExtent() {
        return this._xExtent;
    }

    public double getYExtent() {
        return this._yExtent;
    }

    public double getZExtent() {
        return this._zExtent;
    }

    @Override
    public boolean intersects(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return false;
        }
        return boundingVolume.intersectsBoundingBox(this);
    }

    @Override
    public boolean intersectsBoundingBox(BoundingBox boundingBox) {
        return Vector3.isValid(this._center) && Vector3.isValid(boundingBox._center) && this._center.getX() + getXExtent() >= boundingBox._center.getX() - boundingBox.getXExtent() && this._center.getX() - getXExtent() <= boundingBox._center.getX() + boundingBox.getXExtent() && this._center.getY() + getYExtent() >= boundingBox._center.getY() - boundingBox.getYExtent() && this._center.getY() - getYExtent() <= boundingBox._center.getY() + boundingBox.getYExtent() && this._center.getZ() + getZExtent() >= boundingBox._center.getZ() - boundingBox.getZExtent() && this._center.getZ() - getZExtent() <= boundingBox._center.getZ() + boundingBox.getZExtent();
    }

    @Override
    public boolean intersectsOrientedBoundingBox(OrientedBoundingBox orientedBoundingBox) {
        return orientedBoundingBox.intersectsBoundingBox(this);
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere) {
        return Vector3.isValid(this._center) && Vector3.isValid(boundingSphere._center) && Math.abs(this._center.getX() - boundingSphere.getCenter().getX()) < boundingSphere.getRadius() + getXExtent() && Math.abs(this._center.getY() - boundingSphere.getCenter().getY()) < boundingSphere.getRadius() + getYExtent() && Math.abs(this._center.getZ() - boundingSphere.getCenter().getZ()) < boundingSphere.getRadius() + getZExtent();
    }

    @Override
    public IntersectionRecord intersectsWhere(ReadOnlyRay3 readOnlyRay3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 subtract = readOnlyRay3.getOrigin().subtract(this._center, fetchTempInstance);
        ReadOnlyVector3 direction = readOnlyRay3.getDirection();
        double[] dArr = {0.0d, Double.POSITIVE_INFINITY};
        double d10 = dArr[0];
        double d11 = dArr[1];
        if (!clip(direction.getX(), (-subtract.getX()) - getXExtent(), dArr) || !clip(-direction.getX(), subtract.getX() - getXExtent(), dArr) || !clip(direction.getY(), (-subtract.getY()) - getYExtent(), dArr) || !clip(-direction.getY(), subtract.getY() - getYExtent(), dArr) || !clip(direction.getZ(), (-subtract.getZ()) - getZExtent(), dArr) || !clip(-direction.getZ(), subtract.getZ() - getZExtent(), dArr)) {
            return null;
        }
        double d12 = dArr[0];
        if (d12 == d10 && dArr[1] == d11) {
            return null;
        }
        if (dArr[1] > d12) {
            IntersectionRecord intersectionRecord = new IntersectionRecord(dArr, new Vector3[]{new Vector3(readOnlyRay3.getDirection()).multiplyLocal(dArr[0]).addLocal(readOnlyRay3.getOrigin()), new Vector3(readOnlyRay3.getDirection()).multiplyLocal(dArr[1]).addLocal(readOnlyRay3.getOrigin())});
            Vector3.releaseTempInstance(fetchTempInstance);
            Vector3.releaseTempInstance(fetchTempInstance2);
            return intersectionRecord;
        }
        double[] dArr2 = {d12};
        IntersectionRecord intersectionRecord2 = new IntersectionRecord(dArr2, new Vector3[]{new Vector3(readOnlyRay3.getDirection()).multiplyLocal(dArr2[0]).addLocal(readOnlyRay3.getOrigin())});
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        return intersectionRecord2;
    }

    @Override
    public BoundingVolume merge(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return this;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            BoundingBox boundingBox = (BoundingBox) boundingVolume;
            return merge(boundingBox._center, boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent(), new BoundingBox(new Vector3(0.0d, 0.0d, 0.0d), 0.0d, 0.0d, 0.0d));
        }
        if (i10 == 2) {
            BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
            return merge(boundingSphere._center, boundingSphere.getRadius(), boundingSphere.getRadius(), boundingSphere.getRadius(), new BoundingBox(new Vector3(0.0d, 0.0d, 0.0d), 0.0d, 0.0d, 0.0d));
        }
        if (i10 != 3) {
            return null;
        }
        return ((BoundingBox) clone(null)).mergeOBB((OrientedBoundingBox) boundingVolume);
    }

    @Override
    public BoundingVolume mergeLocal(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return this;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            BoundingBox boundingBox = (BoundingBox) boundingVolume;
            return merge(boundingBox._center, boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent(), this);
        }
        if (i10 == 2) {
            BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
            return merge(boundingSphere._center, boundingSphere.getRadius(), boundingSphere.getRadius(), boundingSphere.getRadius(), this);
        }
        if (i10 != 3) {
            return null;
        }
        return mergeOBB((OrientedBoundingBox) boundingVolume);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        setXExtent(inputCapsule.readDouble("xExtent", 0.0d));
        setYExtent(inputCapsule.readDouble("yExtent", 0.0d));
        setZExtent(inputCapsule.readDouble("zExtent", 0.0d));
    }

    public void setXExtent(double d10) {
        this._xExtent = d10;
    }

    public void setYExtent(double d10) {
        this._yExtent = d10;
    }

    public void setZExtent(double d10) {
        this._zExtent = d10;
    }

    public String toString() {
        return "com.ardor3d.scene.BoundingBox [Center: " + ((Object) this._center) + "  xExtent: " + getXExtent() + "  yExtent: " + getYExtent() + "  zExtent: " + getZExtent() + "]";
    }

    @Override
    public BoundingVolume transform(ReadOnlyTransform readOnlyTransform, BoundingVolume boundingVolume) {
        if (readOnlyTransform.isRotationMatrix()) {
            return transformRotational(readOnlyTransform, boundingVolume);
        }
        BoundingBox boundingBox = (boundingVolume == null || boundingVolume.getType() != BoundingVolume.Type.AABB) ? new BoundingBox() : (BoundingBox) boundingVolume;
        int i10 = 8;
        Vector3[] vector3Arr = new Vector3[8];
        for (int i11 = 0; i11 < 8; i11++) {
            vector3Arr[i11] = Vector3.fetchTempInstance();
        }
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = 2;
            if (i12 >= 2) {
                break;
            }
            int i15 = 0;
            while (i15 < i14) {
                int i16 = 0;
                while (i16 < i14) {
                    int i17 = i13 + 1;
                    Vector3[] vector3Arr2 = vector3Arr;
                    int i18 = i12;
                    vector3Arr[i13].set(this._center.getX() + ((i12 == 0 ? 1 : -1) * this._xExtent), this._center.getY() + ((i15 == 0 ? 1 : -1) * this._yExtent), this._center.getZ() + ((i16 == 0 ? 1 : -1) * this._zExtent));
                    i16++;
                    i13 = i17;
                    vector3Arr = vector3Arr2;
                    i12 = i18;
                    i15 = i15;
                    i14 = 2;
                }
                i15++;
                i14 = 2;
            }
            i12++;
            i10 = 8;
        }
        Vector3[] vector3Arr3 = vector3Arr;
        int i19 = 0;
        while (i19 < i10) {
            readOnlyTransform.applyForward(vector3Arr3[i19]);
            i19++;
            i10 = 8;
        }
        double x10 = vector3Arr3[0].getX();
        double y10 = vector3Arr3[0].getY();
        double z10 = vector3Arr3[0].getZ();
        double d10 = z10;
        int i20 = 1;
        double d11 = x10;
        double d12 = y10;
        for (int i21 = 8; i20 < i21; i21 = 8) {
            double x11 = vector3Arr3[i20].getX();
            double d13 = z10;
            double y11 = vector3Arr3[i20].getY();
            double d14 = d12;
            double z11 = vector3Arr3[i20].getZ();
            d11 = Math.min(d11, x11);
            y10 = Math.min(y10, y11);
            d10 = Math.min(d10, z11);
            x10 = Math.max(x10, x11);
            double max = Math.max(d14, y11);
            z10 = Math.max(d13, z11);
            i20++;
            d12 = max;
            boundingBox = boundingBox;
        }
        BoundingBox boundingBox2 = boundingBox;
        double d15 = d12;
        double d16 = (d11 + x10) * 0.5d;
        double d17 = (y10 + d15) * 0.5d;
        double d18 = (d10 + z10) * 0.5d;
        boundingBox2._center.set(d16, d17, d18);
        boundingBox2._xExtent = x10 - d16;
        boundingBox2._yExtent = d15 - d17;
        boundingBox2._zExtent = z10 - d18;
        for (int i22 = 0; i22 < 8; i22++) {
            Vector3.releaseTempInstance(vector3Arr3[i22]);
        }
        return boundingBox2;
    }

    public BoundingVolume transformRotational(ReadOnlyTransform readOnlyTransform, BoundingVolume boundingVolume) {
        ReadOnlyMatrix3 matrix = readOnlyTransform.getMatrix();
        ReadOnlyVector3 scale = readOnlyTransform.getScale();
        ReadOnlyVector3 translation = readOnlyTransform.getTranslation();
        BoundingBox boundingBox = (boundingVolume == null || boundingVolume.getType() != BoundingVolume.Type.AABB) ? new BoundingBox() : (BoundingBox) boundingVolume;
        this._center.multiply(scale, boundingBox._center);
        Vector3 vector3 = boundingBox._center;
        matrix.applyPost(vector3, vector3);
        boundingBox._center.addLocal(translation);
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Matrix3 fetchTempInstance2 = Matrix3.fetchTempInstance();
        fetchTempInstance2.set(matrix);
        fetchTempInstance2.setValue(0, 0, Math.abs(fetchTempInstance2.getValue(0, 0)));
        fetchTempInstance2.setValue(0, 1, Math.abs(fetchTempInstance2.getValue(0, 1)));
        fetchTempInstance2.setValue(0, 2, Math.abs(fetchTempInstance2.getValue(0, 2)));
        fetchTempInstance2.setValue(1, 0, Math.abs(fetchTempInstance2.getValue(1, 0)));
        fetchTempInstance2.setValue(1, 1, Math.abs(fetchTempInstance2.getValue(1, 1)));
        fetchTempInstance2.setValue(1, 2, Math.abs(fetchTempInstance2.getValue(1, 2)));
        fetchTempInstance2.setValue(2, 0, Math.abs(fetchTempInstance2.getValue(2, 0)));
        fetchTempInstance2.setValue(2, 1, Math.abs(fetchTempInstance2.getValue(2, 1)));
        fetchTempInstance2.setValue(2, 2, Math.abs(fetchTempInstance2.getValue(2, 2)));
        fetchTempInstance.set(getXExtent() * scale.getX(), getYExtent() * scale.getY(), getZExtent() * scale.getZ());
        fetchTempInstance2.applyPost(fetchTempInstance, fetchTempInstance);
        boundingBox.setXExtent(Math.abs(fetchTempInstance.getX()));
        boundingBox.setYExtent(Math.abs(fetchTempInstance.getY()));
        boundingBox.setZExtent(Math.abs(fetchTempInstance.getZ()));
        Vector3.releaseTempInstance(fetchTempInstance);
        Matrix3.releaseTempInstance(fetchTempInstance2);
        return boundingBox;
    }

    @Override
    public ReadOnlyPlane.Side whichSide(ReadOnlyPlane readOnlyPlane) {
        ReadOnlyVector3 normal = readOnlyPlane.getNormal();
        double abs = Math.abs(getXExtent() * normal.getX()) + Math.abs(getYExtent() * normal.getY()) + Math.abs(getZExtent() * normal.getZ());
        double pseudoDistance = readOnlyPlane.pseudoDistance(this._center);
        return pseudoDistance < (-abs) ? ReadOnlyPlane.Side.Inside : pseudoDistance > abs ? ReadOnlyPlane.Side.Outside : ReadOnlyPlane.Side.Neither;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(getXExtent(), "xExtent", 0.0d);
        outputCapsule.write(getYExtent(), "yExtent", 0.0d);
        outputCapsule.write(getZExtent(), "zExtent", 0.0d);
    }

    public BoundingBox(BoundingBox boundingBox) {
        this(boundingBox.getCenter(), boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent());
    }

    @Override
    public boolean intersects(ReadOnlyRay3 readOnlyRay3) {
        if (!Vector3.isValid(this._center)) {
            return false;
        }
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        try {
            Vector3 subtract = readOnlyRay3.getOrigin().subtract(getCenter(), fetchTempInstance);
            ReadOnlyVector3 direction = readOnlyRay3.getDirection();
            ReadOnlyVector3 readOnlyVector3 = Vector3.UNIT_X;
            double dot = direction.dot(readOnlyVector3);
            double abs = Math.abs(dot);
            double dot2 = subtract.dot(readOnlyVector3);
            if (Math.abs(dot2) <= getXExtent() || dot2 * dot < 0.0d) {
                ReadOnlyVector3 direction2 = readOnlyRay3.getDirection();
                ReadOnlyVector3 readOnlyVector32 = Vector3.UNIT_Y;
                double dot3 = direction2.dot(readOnlyVector32);
                double abs2 = Math.abs(dot3);
                double dot4 = subtract.dot(readOnlyVector32);
                if (Math.abs(dot4) <= getYExtent() || dot4 * dot3 < 0.0d) {
                    ReadOnlyVector3 direction3 = readOnlyRay3.getDirection();
                    ReadOnlyVector3 readOnlyVector33 = Vector3.UNIT_Z;
                    double dot5 = direction3.dot(readOnlyVector33);
                    double abs3 = Math.abs(dot5);
                    double dot6 = subtract.dot(readOnlyVector33);
                    if (Math.abs(dot6) <= getZExtent() || dot6 * dot5 < 0.0d) {
                        Vector3 cross = readOnlyRay3.getDirection().cross(subtract, fetchTempInstance2);
                        if (Math.abs(cross.dot(readOnlyVector3)) <= (getYExtent() * abs3) + (getZExtent() * abs2) && Math.abs(cross.dot(readOnlyVector32)) <= (getXExtent() * abs3) + (getZExtent() * abs)) {
                            if (Math.abs(cross.dot(readOnlyVector33)) <= (getXExtent() * abs2) + (getYExtent() * abs)) {
                                Vector3.releaseTempInstance(fetchTempInstance);
                                Vector3.releaseTempInstance(fetchTempInstance2);
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        } finally {
            Vector3.releaseTempInstance(fetchTempInstance);
            Vector3.releaseTempInstance(fetchTempInstance2);
        }
    }

    public BoundingBox(ReadOnlyVector3 readOnlyVector3, double d10, double d11, double d12) {
        this._center.set(readOnlyVector3);
        setXExtent(d10);
        setYExtent(d11);
        setZExtent(d12);
    }

    private BoundingBox merge(Vector3 vector3, double d10, double d11, double d12, BoundingBox boundingBox) {
        if (!Double.isInfinite(getXExtent()) && !Double.isInfinite(getYExtent()) && !Double.isInfinite(getZExtent()) && !Double.isInfinite(d10) && !Double.isInfinite(d11) && !Double.isInfinite(d12)) {
            Vector3 fetchTempInstance = Vector3.fetchTempInstance();
            Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
            fetchTempInstance.setX(this._center.getX() - getXExtent());
            if (fetchTempInstance.getX() > vector3.getX() - d10) {
                fetchTempInstance.setX(vector3.getX() - d10);
            }
            fetchTempInstance.setY(this._center.getY() - getYExtent());
            if (fetchTempInstance.getY() > vector3.getY() - d11) {
                fetchTempInstance.setY(vector3.getY() - d11);
            }
            fetchTempInstance.setZ(this._center.getZ() - getZExtent());
            if (fetchTempInstance.getZ() > vector3.getZ() - d12) {
                fetchTempInstance.setZ(vector3.getZ() - d12);
            }
            fetchTempInstance2.setX(this._center.getX() + getXExtent());
            if (fetchTempInstance2.getX() < vector3.getX() + d10) {
                fetchTempInstance2.setX(vector3.getX() + d10);
            }
            fetchTempInstance2.setY(this._center.getY() + getYExtent());
            if (fetchTempInstance2.getY() < vector3.getY() + d11) {
                fetchTempInstance2.setY(vector3.getY() + d11);
            }
            fetchTempInstance2.setZ(this._center.getZ() + getZExtent());
            if (fetchTempInstance2.getZ() < vector3.getZ() + d12) {
                fetchTempInstance2.setZ(vector3.getZ() + d12);
            }
            boundingBox._center.set(fetchTempInstance2).addLocal(fetchTempInstance).multiplyLocal(0.5d);
            boundingBox.setXExtent(fetchTempInstance2.getX() - boundingBox._center.getX());
            boundingBox.setYExtent(fetchTempInstance2.getY() - boundingBox._center.getY());
            boundingBox.setZExtent(fetchTempInstance2.getZ() - boundingBox._center.getZ());
            Vector3.releaseTempInstance(fetchTempInstance);
            Vector3.releaseTempInstance(fetchTempInstance2);
            return boundingBox;
        }
        boundingBox.setCenter(Vector3.ZERO);
        boundingBox.setXExtent(Double.POSITIVE_INFINITY);
        boundingBox.setYExtent(Double.POSITIVE_INFINITY);
        boundingBox.setZExtent(Double.POSITIVE_INFINITY);
        return boundingBox;
    }
}
