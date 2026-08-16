package com.ardor3d.bounding;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.intersection.IntersectionRecord;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyPlane;
import com.ardor3d.math.type.ReadOnlyRay3;
import com.ardor3d.math.type.ReadOnlyTransform;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BoundingSphere extends BoundingVolume {
    private static final Logger logger = Logger.getLogger(BoundingSphere.class.getName());
    private static final double radiusEpsilon = 1.00001d;
    private static final long serialVersionUID = 1;
    private double _radius;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type;

        static {
            int[] iArr = new int[BoundingVolume.Type.values().length];
            $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type = iArr;
            try {
                iArr[BoundingVolume.Type.Sphere.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.AABB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.OBB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public BoundingSphere() {
    }

    private double maxAxis(ReadOnlyVector3 readOnlyVector3) {
        return Math.max(Math.abs(readOnlyVector3.getX()), Math.max(Math.abs(readOnlyVector3.getY()), Math.abs(readOnlyVector3.getZ())));
    }

    private BoundingSphere mergeLocalOBB(OrientedBoundingBox orientedBoundingBox) {
        if (Double.isInfinite(getRadius()) || Vector3.isInfinite(orientedBoundingBox.getExtent())) {
            setCenter(Vector3.ZERO);
            setRadius(Double.POSITIVE_INFINITY);
            return this;
        }
        if (!orientedBoundingBox.correctCorners) {
            orientedBoundingBox.computeCorners();
        }
        FloatBuffer createFloatBufferOnHeap = BufferUtils.createFloatBufferOnHeap(24);
        for (int i10 = 0; i10 < 8; i10++) {
            createFloatBufferOnHeap.put((float) orientedBoundingBox._vectorStore[i10].getX());
            createFloatBufferOnHeap.put((float) orientedBoundingBox._vectorStore[i10].getY());
            createFloatBufferOnHeap.put((float) orientedBoundingBox._vectorStore[i10].getZ());
        }
        double radius = getRadius();
        Vector3 vector3 = Vector3.fetchTempInstance().set(this._center);
        computeFromPoints(createFloatBufferOnHeap);
        Vector3 vector32 = Vector3.fetchTempInstance().set(this._center);
        double radius2 = getRadius();
        this._center.set(vector3);
        setRadius(radius);
        merge(radius2, vector32, this);
        Vector3.releaseTempInstance(vector3);
        Vector3.releaseTempInstance(vector32);
        return this;
    }

    public static void populateFromBuffer(Vector3 vector3, float[] fArr, int i10) {
        int i11 = i10 * 3;
        vector3.setX(fArr[i11]);
        vector3.setY(fArr[i11 + 1]);
        vector3.setZ(fArr[i11 + 2]);
    }

    private void recurseMini(float[] fArr, int i10, int i11, int i12) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        if (i11 == 0) {
            setRadius(0.0d);
            this._center.set(0.0d, 0.0d, 0.0d);
        } else if (i11 == 1) {
            setRadius(-1.0000000000065512E-5d);
            populateFromBuffer(this._center, fArr, i12 - 1);
        } else if (i11 == 2) {
            populateFromBuffer(fetchTempInstance, fArr, i12 - 1);
            populateFromBuffer(fetchTempInstance2, fArr, i12 - 2);
            setSphere(fetchTempInstance, fetchTempInstance2);
        } else if (i11 == 3) {
            populateFromBuffer(fetchTempInstance, fArr, i12 - 1);
            populateFromBuffer(fetchTempInstance2, fArr, i12 - 2);
            populateFromBuffer(fetchTempInstance3, fArr, i12 - 3);
            setSphere(fetchTempInstance, fetchTempInstance2, fetchTempInstance3);
        } else if (i11 == 4) {
            Vector3 fetchTempInstance4 = Vector3.fetchTempInstance();
            populateFromBuffer(fetchTempInstance, fArr, i12 - 1);
            populateFromBuffer(fetchTempInstance2, fArr, i12 - 2);
            populateFromBuffer(fetchTempInstance3, fArr, i12 - 3);
            populateFromBuffer(fetchTempInstance4, fArr, i12 - 4);
            setSphere(fetchTempInstance, fetchTempInstance2, fetchTempInstance3, fetchTempInstance4);
            Vector3.releaseTempInstance(fetchTempInstance);
            Vector3.releaseTempInstance(fetchTempInstance2);
            Vector3.releaseTempInstance(fetchTempInstance3);
            Vector3.releaseTempInstance(fetchTempInstance4);
            return;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            populateFromBuffer(fetchTempInstance, fArr, i13 + i12);
            if (fetchTempInstance.distanceSquared(this._center) - (getRadius() * getRadius()) > 1.0000000000065512E-5d) {
                for (int i14 = i13; i14 > 0; i14--) {
                    int i15 = i14 + i12;
                    populateFromBuffer(fetchTempInstance2, fArr, i15);
                    int i16 = (i14 - 1) + i12;
                    populateFromBuffer(fetchTempInstance3, fArr, i16);
                    setInBuffer(fetchTempInstance3, fArr, i15);
                    setInBuffer(fetchTempInstance2, fArr, i16);
                }
                recurseMini(fArr, i13, i11 + 1, i12 + 1);
            }
        }
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance3);
    }

    public static void setInBuffer(ReadOnlyVector3 readOnlyVector3, float[] fArr, int i10) {
        if (fArr == null) {
            return;
        }
        if (readOnlyVector3 == null) {
            int i11 = i10 * 3;
            fArr[i11] = 0.0f;
            fArr[i11 + 1] = 0.0f;
            fArr[i11 + 2] = 0.0f;
            return;
        }
        int i12 = i10 * 3;
        fArr[i12] = readOnlyVector3.getXf();
        fArr[i12 + 1] = readOnlyVector3.getYf();
        fArr[i12 + 2] = readOnlyVector3.getZf();
    }

    private void setSphere(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        Vector3 subtract = vector32.subtract(vector3, null);
        Vector3 subtract2 = vector33.subtract(vector3, null);
        Vector3 subtract3 = vector34.subtract(vector3, null);
        double x10 = (((subtract.getX() * ((subtract2.getY() * subtract3.getZ()) - (subtract3.getY() * subtract2.getZ()))) - (subtract2.getX() * ((subtract.getY() * subtract3.getZ()) - (subtract3.getY() * subtract.getZ())))) + (subtract3.getX() * ((subtract.getY() * subtract2.getZ()) - (subtract2.getY() * subtract.getZ())))) * 2.0d;
        if (x10 == 0.0d) {
            this._center.set(0.0d, 0.0d, 0.0d);
            setRadius(0.0d);
        } else {
            Vector3 divideLocal = subtract.cross(subtract2, null).multiplyLocal(subtract3.lengthSquared()).addLocal(subtract3.cross(subtract, null).multiplyLocal(subtract2.lengthSquared())).addLocal(subtract2.cross(subtract3, null).multiplyLocal(subtract.lengthSquared())).divideLocal(x10);
            setRadius(divideLocal.length() * radiusEpsilon);
            vector3.add(divideLocal, this._center);
        }
    }

    public void averagePoints(Vector3[] vector3Arr) {
        this._center.set(vector3Arr[0]);
        for (int i10 = 1; i10 < vector3Arr.length; i10++) {
            this._center.addLocal(vector3Arr[i10]);
        }
        this._center.multiplyLocal(1.0d / vector3Arr.length);
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        double d10 = 0.0d;
        for (Vector3 vector3 : vector3Arr) {
            double lengthSquared = vector3.subtract(this._center, fetchTempInstance).lengthSquared();
            if (lengthSquared > d10) {
                d10 = lengthSquared;
            }
        }
        Vector3.releaseTempInstance(fetchTempInstance);
        setRadius((Math.sqrt(d10) + radiusEpsilon) - 1.0d);
    }

    public void calcWelzl(FloatBuffer floatBuffer) {
        int limit = floatBuffer.limit();
        float[] fArr = new float[limit];
        floatBuffer.rewind();
        floatBuffer.get(fArr);
        recurseMini(fArr, limit / 3, 0, 0);
    }

    @Override
    public BoundingVolume clone(BoundingVolume boundingVolume) {
        if (boundingVolume == null || boundingVolume.getType() != BoundingVolume.Type.Sphere) {
            return new BoundingSphere(getRadius(), this._center);
        }
        BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
        boundingSphere._center.set(this._center);
        boundingSphere.setRadius(this._radius);
        boundingSphere._checkPlane = this._checkPlane;
        return boundingSphere;
    }

    @Override
    public void computeFromPoints(FloatBuffer floatBuffer) {
        calcWelzl(floatBuffer);
    }

    @Override
    public void computeFromPrimitives(MeshData meshData, int i10, int[] iArr, int i11, int i12) {
        int i13 = i12 - i11;
        if (i13 <= 0) {
            return;
        }
        int vertexCount = meshData.getIndexMode(i10).getVertexCount();
        int i14 = i13 * vertexCount;
        Vector3[] vector3Arr = new Vector3[i14];
        Vector3[] vector3Arr2 = new Vector3[vertexCount];
        int i15 = 0;
        while (i11 < i12) {
            vector3Arr2 = meshData.getPrimitive(iArr[i11], i10, vector3Arr2);
            int i16 = 0;
            while (i16 < vertexCount) {
                vector3Arr[i15] = Vector3.fetchTempInstance().set(vector3Arr2[0]);
                i16++;
                i15++;
            }
            i11++;
        }
        averagePoints(vector3Arr);
        for (int i17 = 0; i17 < i14; i17++) {
            Vector3.releaseTempInstance(vector3Arr[i17]);
        }
    }

    @Override
    public boolean contains(ReadOnlyVector3 readOnlyVector3) {
        return getCenter().distanceSquared(readOnlyVector3) < getRadius() * getRadius();
    }

    @Override
    public double distanceToEdge(ReadOnlyVector3 readOnlyVector3) {
        return this._center.distance(readOnlyVector3) - getRadius();
    }

    public double getRadius() {
        return this._radius;
    }

    @Override
    public BoundingVolume.Type getType() {
        return BoundingVolume.Type.Sphere;
    }

    @Override
    public double getVolume() {
        return getRadius() * 4.1887902047863905d * getRadius() * getRadius();
    }

    @Override
    public boolean intersects(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return false;
        }
        return boundingVolume.intersectsSphere(this);
    }

    @Override
    public boolean intersectsBoundingBox(BoundingBox boundingBox) {
        return Vector3.isValid(this._center) && Vector3.isValid(boundingBox._center) && Math.abs(boundingBox._center.getX() - getCenter().getX()) < getRadius() + boundingBox.getXExtent() && Math.abs(boundingBox._center.getY() - getCenter().getY()) < getRadius() + boundingBox.getYExtent() && Math.abs(boundingBox._center.getZ() - getCenter().getZ()) < getRadius() + boundingBox.getZExtent();
    }

    @Override
    public boolean intersectsOrientedBoundingBox(OrientedBoundingBox orientedBoundingBox) {
        return orientedBoundingBox.intersectsSphere(this);
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere) {
        if (Vector3.isValid(this._center) && Vector3.isValid(boundingSphere._center)) {
            Vector3 subtractLocal = Vector3.fetchTempInstance().set(getCenter()).subtractLocal(boundingSphere.getCenter());
            double radius = getRadius() + boundingSphere.getRadius();
            r1 = subtractLocal.dot(subtractLocal) <= radius * radius;
            Vector3.releaseTempInstance(subtractLocal);
        }
        return r1;
    }

    @Override
    public IntersectionRecord intersectsWhere(ReadOnlyRay3 readOnlyRay3) {
        Vector3 subtract = readOnlyRay3.getOrigin().subtract(getCenter(), Vector3.fetchTempInstance());
        double dot = subtract.dot(subtract) - (getRadius() * getRadius());
        if (dot <= 0.0d) {
            double dot2 = readOnlyRay3.getDirection().dot(subtract);
            double[] dArr = {Math.sqrt((dot2 * dot2) - dot) - dot2};
            IntersectionRecord intersectionRecord = new IntersectionRecord(dArr, new Vector3[]{readOnlyRay3.getDirection().multiply(dArr[0], new Vector3()).addLocal(readOnlyRay3.getOrigin())});
            Vector3.releaseTempInstance(subtract);
            return intersectionRecord;
        }
        double dot3 = readOnlyRay3.getDirection().dot(subtract);
        Vector3.releaseTempInstance(subtract);
        if (dot3 >= 0.0d) {
            return null;
        }
        double d10 = (dot3 * dot3) - dot;
        if (d10 < 0.0d) {
            return null;
        }
        if (d10 < 1.0E-4d) {
            double[] dArr2 = {-dot3};
            return new IntersectionRecord(dArr2, new Vector3[]{readOnlyRay3.getDirection().multiply(dArr2[0], new Vector3()).addLocal(readOnlyRay3.getOrigin())});
        }
        double sqrt = Math.sqrt(d10);
        double d11 = -dot3;
        double[] dArr3 = {d11 - sqrt, d11 + sqrt};
        return new IntersectionRecord(dArr3, new Vector3[]{readOnlyRay3.getDirection().multiply(dArr3[0], new Vector3()).addLocal(readOnlyRay3.getOrigin()), readOnlyRay3.getDirection().multiply(dArr3[1], new Vector3()).addLocal(readOnlyRay3.getOrigin())});
    }

    @Override
    public BoundingVolume merge(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return this;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
            return merge(boundingSphere.getRadius(), boundingSphere.getCenter(), new BoundingSphere());
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return null;
            }
            return ((BoundingSphere) clone(null)).mergeLocalOBB((OrientedBoundingBox) boundingVolume);
        }
        BoundingBox boundingBox = (BoundingBox) boundingVolume;
        Vector3 vector3 = new Vector3(boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent());
        return merge(vector3.length(), boundingBox._center, new BoundingSphere());
    }

    @Override
    public BoundingVolume mergeLocal(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return this;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
            return merge(boundingSphere.getRadius(), boundingSphere.getCenter(), this);
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return null;
            }
            return mergeLocalOBB((OrientedBoundingBox) boundingVolume);
        }
        BoundingBox boundingBox = (BoundingBox) boundingVolume;
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        fetchTempInstance.set(boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent());
        Vector3 vector3 = boundingBox._center;
        double length = fetchTempInstance.length();
        Vector3.releaseTempInstance(fetchTempInstance);
        return merge(length, vector3, this);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        try {
            setRadius(inputCapsule.readDouble(TestVFXEffect.f77524P, 0.0d));
        } catch (IOException e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "read(Ardor3DImporter)", "Exception", (Throwable) e10);
        }
    }

    public void setRadius(double d10) {
        this._radius = d10;
    }

    public String toString() {
        return "com.ardor3d.scene.BoundingSphere [Radius: " + getRadius() + " Center: " + ((Object) this._center) + "]";
    }

    @Override
    public BoundingVolume transform(ReadOnlyTransform readOnlyTransform, BoundingVolume boundingVolume) {
        BoundingSphere boundingSphere = (boundingVolume == null || boundingVolume.getType() != BoundingVolume.Type.Sphere) ? new BoundingSphere(1.0d, new Vector3(0.0d, 0.0d, 0.0d)) : (BoundingSphere) boundingVolume;
        readOnlyTransform.applyForward(this._center, boundingSphere._center);
        if (readOnlyTransform.isRotationMatrix()) {
            boundingSphere.setRadius((Math.abs(maxAxis(readOnlyTransform.getScale()) * getRadius()) + radiusEpsilon) - 1.0d);
        } else {
            Vector3 vector3 = new Vector3(1.0d, 1.0d, 1.0d);
            readOnlyTransform.applyForwardVector(vector3);
            boundingSphere.setRadius((Math.abs(maxAxis(vector3) * getRadius()) + radiusEpsilon) - 1.0d);
        }
        return boundingSphere;
    }

    @Override
    public ReadOnlyPlane.Side whichSide(ReadOnlyPlane readOnlyPlane) {
        double pseudoDistance = readOnlyPlane.pseudoDistance(this._center);
        return pseudoDistance <= (-getRadius()) ? ReadOnlyPlane.Side.Inside : pseudoDistance >= getRadius() ? ReadOnlyPlane.Side.Outside : ReadOnlyPlane.Side.Neither;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        try {
            outputCapsule.write(getRadius(), TestVFXEffect.f77524P, 0.0d);
        } catch (IOException e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "write(Ardor3DExporter)", "Exception", (Throwable) e10);
        }
    }

    public BoundingSphere(double d10, ReadOnlyVector3 readOnlyVector3) {
        this._center.set(readOnlyVector3);
        setRadius(d10);
    }

    @Override
    public boolean intersects(ReadOnlyRay3 readOnlyRay3) {
        if (!Vector3.isValid(this._center)) {
            return false;
        }
        Vector3 subtract = readOnlyRay3.getOrigin().subtract(getCenter(), Vector3.fetchTempInstance());
        double dot = subtract.dot(subtract) - (getRadius() * getRadius());
        if (dot <= 0.0d) {
            Vector3.releaseTempInstance(subtract);
            return true;
        }
        Vector3 vector3 = Vector3.fetchTempInstance().set(readOnlyRay3.getDirection());
        double dot2 = vector3.dot(subtract);
        Vector3.releaseTempInstance(vector3);
        Vector3.releaseTempInstance(subtract);
        return dot2 < 0.0d && dot2 * dot2 >= dot;
    }

    private void setSphere(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        Vector3 subtract = vector32.subtract(vector3, null);
        Vector3 subtract2 = vector33.subtract(vector3, null);
        Vector3 cross = subtract.cross(subtract2, null);
        double dot = cross.dot(cross) * 2.0d;
        if (dot == 0.0d) {
            this._center.set(0.0d, 0.0d, 0.0d);
            setRadius(0.0d);
        } else {
            Vector3 divideLocal = cross.cross(subtract, null).multiplyLocal(subtract2.lengthSquared()).addLocal(subtract2.cross(cross, null).multiplyLocal(subtract.lengthSquared())).divideLocal(dot);
            setRadius(divideLocal.length() * radiusEpsilon);
            vector3.add(divideLocal, this._center);
        }
    }

    private BoundingVolume merge(double d10, ReadOnlyVector3 readOnlyVector3, BoundingSphere boundingSphere) {
        if (!Double.isInfinite(d10) && !Double.isInfinite(getRadius())) {
            Vector3 subtract = readOnlyVector3.subtract(this._center, Vector3.fetchTempInstance());
            double lengthSquared = subtract.lengthSquared();
            double radius = d10 - getRadius();
            if (radius * radius >= lengthSquared) {
                Vector3.releaseTempInstance(subtract);
                if (radius <= 0.0d) {
                    boundingSphere.setCenter(this._center);
                    boundingSphere.setRadius(this._radius);
                    return boundingSphere;
                }
                boundingSphere.setCenter(readOnlyVector3);
                boundingSphere.setRadius(d10);
                return boundingSphere;
            }
            double sqrt = Math.sqrt(lengthSquared);
            Vector3 fetchTempInstance = Vector3.fetchTempInstance();
            fetchTempInstance.set(this._center);
            if (sqrt > 2.220446049250313E-16d) {
                fetchTempInstance.addLocal(subtract.multiplyLocal((radius + sqrt) / (2.0d * sqrt)));
            }
            Vector3.releaseTempInstance(subtract);
            boundingSphere.setCenter(fetchTempInstance);
            Vector3.releaseTempInstance(fetchTempInstance);
            boundingSphere.setRadius((sqrt + getRadius() + d10) * 0.5d);
            return boundingSphere;
        }
        boundingSphere.setCenter(Vector3.ZERO);
        boundingSphere.setRadius(Double.POSITIVE_INFINITY);
        return boundingSphere;
    }

    private void setSphere(Vector3 vector3, Vector3 vector32) {
        setRadius((Math.sqrt(((((vector32.getX() - vector3.getX()) * (vector32.getX() - vector3.getX())) + ((vector32.getY() - vector3.getY()) * (vector32.getY() - vector3.getY()))) + ((vector32.getZ() - vector3.getZ()) * (vector32.getZ() - vector3.getZ()))) / 4.0d) + radiusEpsilon) - 1.0d);
        Vector3.lerp(vector3, vector32, 0.5d, this._center);
    }
}
