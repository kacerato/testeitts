package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyRing;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import ga.m;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public class Ring implements Cloneable, Savable, Externalizable, ReadOnlyRing, Poolable {
    private static final ObjectPool<Ring> RING_POOL = ObjectPool.create(Ring.class, Constants.maxPoolSize);
    private static final long serialVersionUID = 1;
    private final Vector3 _center;
    private double _innerRadius;
    private double _outerRadius;
    private final Vector3 _up;

    public Ring() {
        this._center = new Vector3();
        this._up = new Vector3(Vector3.UNIT_Y);
        this._innerRadius = 0.0d;
        this._outerRadius = 1.0d;
    }

    public static final Ring fetchTempInstance() {
        return Constants.useMathPools ? RING_POOL.fetch() : new Ring();
    }

    public static boolean isValid(ReadOnlyRing readOnlyRing) {
        return (readOnlyRing == null || Double.isNaN(readOnlyRing.getInnerRadius()) || Double.isInfinite(readOnlyRing.getInnerRadius()) || Double.isNaN(readOnlyRing.getOuterRadius()) || Double.isInfinite(readOnlyRing.getOuterRadius()) || !Vector3.isValid(readOnlyRing.getCenter()) || !Vector3.isValid(readOnlyRing.getUp())) ? false : true;
    }

    public static final void releaseTempInstance(Ring ring) {
        if (Constants.useMathPools) {
            RING_POOL.release(ring);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyRing)) {
            return false;
        }
        ReadOnlyRing readOnlyRing = (ReadOnlyRing) obj;
        return getInnerRadius() == readOnlyRing.getInnerRadius() && getOuterRadius() == readOnlyRing.getOuterRadius() && this._up.equals(readOnlyRing.getUp()) && this._center.equals(readOnlyRing.getCenter());
    }

    @Override
    public ReadOnlyVector3 getCenter() {
        return this._center;
    }

    @Override
    public Class<? extends Ring> getClassTag() {
        return getClass();
    }

    @Override
    public double getInnerRadius() {
        return this._innerRadius;
    }

    @Override
    public double getOuterRadius() {
        return this._outerRadius;
    }

    @Override
    public ReadOnlyVector3 getUp() {
        return this._up;
    }

    public int hashCode() {
        int hashCode = this._center.hashCode() + 544;
        int hashCode2 = hashCode + (hashCode * 31) + this._up.hashCode();
        long doubleToLongBits = Double.doubleToLongBits(getInnerRadius());
        int i10 = hashCode2 + (hashCode2 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        long doubleToLongBits2 = Double.doubleToLongBits(getOuterRadius());
        return i10 + (i10 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    @Override
    public Vector3 random(Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        double d10 = this._innerRadius;
        double d11 = d10 * d10;
        double d12 = this._outerRadius;
        double sqrt = Math.sqrt(d11 + (MathUtils.nextRandomFloat() * ((d12 * d12) - d11)));
        double nextRandomFloat = MathUtils.nextRandomFloat() * 6.283185307179586d;
        this._up.cross(Vector3.UNIT_X, fetchTempInstance);
        if (fetchTempInstance.lengthSquared() < 2.220446049250313E-16d) {
            this._up.cross(Vector3.UNIT_Y, fetchTempInstance);
        }
        fetchTempInstance.normalizeLocal();
        this._up.cross(fetchTempInstance, fetchTempInstance2);
        vector3.set(fetchTempInstance).multiplyLocal(MathUtils.cos(nextRandomFloat) * sqrt).addLocal(this._center);
        fetchTempInstance2.scaleAdd(sqrt * MathUtils.sin(nextRandomFloat), vector3, vector3);
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        return vector3;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._center.set((Vector3) inputCapsule.readSavable("center", new Vector3(Vector3.ZERO)));
        this._up.set((Vector3) inputCapsule.readSavable(m.f88236e, new Vector3(Vector3.UNIT_Z)));
        this._innerRadius = inputCapsule.readDouble("innerRadius", 0.0d);
        this._outerRadius = inputCapsule.readDouble("outerRadius", 1.0d);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setCenter((Vector3) objectInput.readObject());
        setUp((Vector3) objectInput.readObject());
        setInnerRadius(objectInput.readDouble());
        setOuterRadius(objectInput.readDouble());
    }

    public void setCenter(ReadOnlyVector3 readOnlyVector3) {
        this._center.set(readOnlyVector3);
    }

    public void setInnerRadius(double d10) {
        this._innerRadius = d10;
    }

    public void setOuterRadius(double d10) {
        this._outerRadius = d10;
    }

    public void setUp(ReadOnlyVector3 readOnlyVector3) {
        this._up.set(readOnlyVector3);
    }

    public String toString() {
        return "com.ardor3d.math.Ring [Center: " + ((Object) this._center) + " Up: " + ((Object) this._up) + " - radii, outer: " + this._outerRadius + "  inner: " + this._innerRadius + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._center, "center", new Vector3(Vector3.ZERO));
        outputCapsule.write(this._up, m.f88236e, new Vector3(Vector3.UNIT_Z));
        outputCapsule.write(this._innerRadius, "innerRadius", 0.0d);
        outputCapsule.write(this._outerRadius, "outerRadius", 1.0d);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._center);
        objectOutput.writeObject(this._up);
        objectOutput.writeDouble(this._innerRadius);
        objectOutput.writeDouble(this._outerRadius);
    }

    public Ring m1199clone() {
        try {
            Ring ring = (Ring) super.clone();
            ring._center.set(this._center);
            ring._up.set(this._up);
            return ring;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Ring(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, double d10, double d11) {
        Vector3 vector3 = new Vector3();
        this._center = vector3;
        Vector3 vector32 = new Vector3(Vector3.UNIT_Y);
        this._up = vector32;
        vector3.set(readOnlyVector3);
        vector32.set(readOnlyVector32);
        this._innerRadius = d10;
        this._outerRadius = d11;
    }
}
