package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyVector4;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public class Vector4 implements Cloneable, Savable, Externalizable, ReadOnlyVector4, Poolable {
    private static final long serialVersionUID = 1;
    protected double _w;
    protected double _x;
    protected double _y;
    protected double _z;
    private static final ObjectPool<Vector4> VEC_POOL = ObjectPool.create(Vector4.class, Constants.maxPoolSize);
    public static final ReadOnlyVector4 ZERO = new Vector4(0.0d, 0.0d, 0.0d, 0.0d);
    public static final ReadOnlyVector4 ONE = new Vector4(1.0d, 1.0d, 1.0d, 1.0d);
    public static final ReadOnlyVector4 NEG_ONE = new Vector4(-1.0d, -1.0d, -1.0d, -1.0d);
    public static final ReadOnlyVector4 UNIT_X = new Vector4(1.0d, 0.0d, 0.0d, 0.0d);
    public static final ReadOnlyVector4 NEG_UNIT_X = new Vector4(-1.0d, 0.0d, 0.0d, 0.0d);
    public static final ReadOnlyVector4 UNIT_Y = new Vector4(0.0d, 1.0d, 0.0d, 0.0d);
    public static final ReadOnlyVector4 NEG_UNIT_Y = new Vector4(0.0d, -1.0d, 0.0d, 0.0d);
    public static final ReadOnlyVector4 UNIT_Z = new Vector4(0.0d, 0.0d, 1.0d, 0.0d);
    public static final ReadOnlyVector4 NEG_UNIT_Z = new Vector4(0.0d, 0.0d, -1.0d, 0.0d);
    public static final ReadOnlyVector4 UNIT_W = new Vector4(0.0d, 0.0d, 0.0d, 1.0d);
    public static final ReadOnlyVector4 NEG_UNIT_W = new Vector4(0.0d, 0.0d, 0.0d, -1.0d);

    public Vector4() {
        this(0.0d, 0.0d, 0.0d, 0.0d);
    }

    public static final Vector4 fetchTempInstance() {
        return Constants.useMathPools ? VEC_POOL.fetch() : new Vector4();
    }

    public static boolean isValid(ReadOnlyVector4 readOnlyVector4) {
        return (readOnlyVector4 == null || Double.isNaN(readOnlyVector4.getX()) || Double.isNaN(readOnlyVector4.getY()) || Double.isNaN(readOnlyVector4.getZ()) || Double.isNaN(readOnlyVector4.getW()) || Double.isInfinite(readOnlyVector4.getX()) || Double.isInfinite(readOnlyVector4.getY()) || Double.isInfinite(readOnlyVector4.getZ()) || Double.isInfinite(readOnlyVector4.getW())) ? false : true;
    }

    public static final void releaseTempInstance(Vector4 vector4) {
        if (Constants.useMathPools) {
            VEC_POOL.release(vector4);
        }
    }

    @Override
    public Vector4 add(double d10, double d11, double d12, double d13, Vector4 vector4) {
        return (vector4 == null ? new Vector4() : vector4).set(getX() + d10, getY() + d11, getZ() + d12, getW() + d13);
    }

    public Vector4 addLocal(double d10, double d11, double d12, double d13) {
        return set(getX() + d10, getY() + d11, getZ() + d12, getW() + d13);
    }

    @Override
    public double determinant(double d10, double d11, double d12, double d13) {
        return (((getX() * d10) - (getY() * d11)) - (getZ() * d12)) - (getW() * d13);
    }

    @Override
    public double distance(double d10, double d11, double d12, double d13) {
        return MathUtils.sqrt(distanceSquared(d10, d11, d12, d13));
    }

    @Override
    public double distanceSquared(double d10, double d11, double d12, double d13) {
        double x10 = getX() - d10;
        double y10 = getY() - d11;
        double z10 = getZ() - d12;
        double w10 = getW() - d13;
        return (x10 * x10) + (y10 * y10) + (z10 * z10) + (w10 * w10);
    }

    @Override
    public Vector4 divide(double d10, Vector4 vector4) {
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        return vector4.set(getX() / d10, getY() / d10, getZ() / d10, getW() / d10);
    }

    public Vector4 divideLocal(double d10) {
        double d11 = 1.0d / d10;
        return set(getX() * d11, getY() * d11, getZ() * d11, getW() * d11);
    }

    @Override
    public double dot(double d10, double d11, double d12, double d13) {
        return (getX() * d10) + (getY() * d11) + (getZ() * d12) + (getW() * d13);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyVector4)) {
            return false;
        }
        ReadOnlyVector4 readOnlyVector4 = (ReadOnlyVector4) obj;
        return getX() == readOnlyVector4.getX() && getY() == readOnlyVector4.getY() && getZ() == readOnlyVector4.getZ() && getW() == readOnlyVector4.getW();
    }

    @Override
    public Class<? extends Vector4> getClassTag() {
        return getClass();
    }

    @Override
    public double getValue(int i10) {
        if (i10 == 0) {
            return getX();
        }
        if (i10 == 1) {
            return getY();
        }
        if (i10 == 2) {
            return getZ();
        }
        if (i10 == 3) {
            return getW();
        }
        throw new IllegalArgumentException("index must be either 0, 1, 2 or 3");
    }

    @Override
    public double getW() {
        return this._w;
    }

    @Override
    public float getWf() {
        return (float) this._w;
    }

    @Override
    public double getX() {
        return this._x;
    }

    @Override
    public float getXf() {
        return (float) this._x;
    }

    @Override
    public double getY() {
        return this._y;
    }

    @Override
    public float getYf() {
        return (float) this._y;
    }

    @Override
    public double getZ() {
        return this._z;
    }

    @Override
    public float getZf() {
        return (float) this._z;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(getX());
        int i10 = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 544;
        long doubleToLongBits2 = Double.doubleToLongBits(getY());
        int i11 = i10 + (i10 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
        long doubleToLongBits3 = Double.doubleToLongBits(getZ());
        int i12 = i11 + (i11 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        long doubleToLongBits4 = Double.doubleToLongBits(getW());
        return i12 + (i12 * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)));
    }

    @Override
    public double length() {
        return MathUtils.sqrt(lengthSquared());
    }

    @Override
    public double lengthSquared() {
        return (getX() * getX()) + (getY() * getY()) + (getZ() * getZ()) + (getW() * getW());
    }

    @Override
    public Vector4 lerp(ReadOnlyVector4 readOnlyVector4, double d10, Vector4 vector4) {
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        double d11 = 1.0d - d10;
        return vector4.set((getX() * d11) + (readOnlyVector4.getX() * d10), (getY() * d11) + (readOnlyVector4.getY() * d10), (getZ() * d11) + (readOnlyVector4.getZ() * d10), (d11 * getW()) + (d10 * readOnlyVector4.getW()));
    }

    public Vector4 lerpLocal(ReadOnlyVector4 readOnlyVector4, double d10) {
        double d11 = 1.0d - d10;
        setX((getX() * d11) + (readOnlyVector4.getX() * d10));
        setY((getY() * d11) + (readOnlyVector4.getY() * d10));
        setZ((getZ() * d11) + (readOnlyVector4.getZ() * d10));
        setW((d11 * getW()) + (d10 * readOnlyVector4.getW()));
        return this;
    }

    @Override
    public Vector4 multiply(double d10, Vector4 vector4) {
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        return vector4.set(getX() * d10, getY() * d10, getZ() * d10, getW() * d10);
    }

    public Vector4 multiplyLocal(double d10) {
        return set(getX() * d10, getY() * d10, getZ() * d10, getW() * d10);
    }

    @Override
    public Vector4 negate(Vector4 vector4) {
        return multiply(-1.0d, vector4);
    }

    public Vector4 negateLocal() {
        return multiplyLocal(-1.0d);
    }

    @Override
    public Vector4 normalize(Vector4 vector4) {
        double lengthSquared = lengthSquared();
        return Math.abs(lengthSquared) > 2.220446049250313E-16d ? multiply(MathUtils.inverseSqrt(lengthSquared), vector4) : vector4 != null ? vector4.set(ZERO) : new Vector4(ZERO);
    }

    public Vector4 normalizeLocal() {
        double lengthSquared = lengthSquared();
        return Math.abs(lengthSquared) > 2.220446049250313E-16d ? multiplyLocal(MathUtils.inverseSqrt(lengthSquared)) : this;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        setX(inputCapsule.readDouble("x", 0.0d));
        setY(inputCapsule.readDouble("y", 0.0d));
        setZ(inputCapsule.readDouble("z", 0.0d));
        setW(inputCapsule.readDouble("w", 0.0d));
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setX(objectInput.readDouble());
        setY(objectInput.readDouble());
        setZ(objectInput.readDouble());
        setW(objectInput.readDouble());
    }

    @Override
    public Vector4 scaleAdd(double d10, ReadOnlyVector4 readOnlyVector4, Vector4 vector4) {
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        vector4.setX((this._x * d10) + readOnlyVector4.getX());
        vector4.setY((this._y * d10) + readOnlyVector4.getY());
        vector4.setY((this._z * d10) + readOnlyVector4.getZ());
        vector4.setY((this._w * d10) + readOnlyVector4.getW());
        return vector4;
    }

    public Vector4 scaleAddLocal(float f10, Vector4 vector4) {
        double d10 = f10;
        this._x = (this._x * d10) + vector4.getX();
        this._y = (this._y * d10) + vector4.getY();
        this._z = (this._z * d10) + vector4.getZ();
        this._w = (this._w * d10) + vector4.getW();
        return this;
    }

    public Vector4 set(double d10, double d11, double d12, double d13) {
        setX(d10);
        setY(d11);
        setZ(d12);
        setW(d13);
        return this;
    }

    public void setValue(int i10, double d10) {
        if (i10 == 0) {
            setX(d10);
            return;
        }
        if (i10 == 1) {
            setY(d10);
        } else if (i10 == 2) {
            setZ(d10);
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("index must be either 0, 1, 2 or 3");
            }
            setW(d10);
        }
    }

    public void setW(double d10) {
        this._w = d10;
    }

    public void setX(double d10) {
        this._x = d10;
    }

    public void setY(double d10) {
        this._y = d10;
    }

    public void setZ(double d10) {
        this._z = d10;
    }

    @Override
    public Vector4 subtract(double d10, double d11, double d12, double d13, Vector4 vector4) {
        return (vector4 == null ? new Vector4() : vector4).set(getX() - d10, getY() - d11, getZ() - d12, getW() - d13);
    }

    public Vector4 subtractLocal(double d10, double d11, double d12, double d13) {
        return set(getX() - d10, getY() - d11, getZ() - d12, getW() - d13);
    }

    @Override
    public double[] toArray(double[] dArr) {
        if (dArr == null) {
            dArr = new double[4];
        }
        dArr[3] = getW();
        dArr[2] = getZ();
        dArr[1] = getY();
        dArr[0] = getX();
        return dArr;
    }

    public String toString() {
        return "com.ardor3d.math.Vector4 [X=" + getX() + ", Y=" + getY() + ", Z=" + getZ() + ", W=" + getW() + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(getX(), "x", 0.0d);
        outputCapsule.write(getY(), "y", 0.0d);
        outputCapsule.write(getZ(), "z", 0.0d);
        outputCapsule.write(getW(), "w", 0.0d);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeDouble(getX());
        objectOutput.writeDouble(getY());
        objectOutput.writeDouble(getZ());
        objectOutput.writeDouble(getW());
    }

    public Vector4 zero() {
        return set(0.0d, 0.0d, 0.0d, 0.0d);
    }

    public Vector4(ReadOnlyVector4 readOnlyVector4) {
        this(readOnlyVector4.getX(), readOnlyVector4.getY(), readOnlyVector4.getZ(), readOnlyVector4.getW());
    }

    public Vector4 addLocal(ReadOnlyVector4 readOnlyVector4) {
        return addLocal(readOnlyVector4.getX(), readOnlyVector4.getY(), readOnlyVector4.getZ(), readOnlyVector4.getW());
    }

    public Vector4 m1204clone() {
        try {
            return (Vector4) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public double determinant(ReadOnlyVector4 readOnlyVector4) {
        return determinant(readOnlyVector4.getX(), readOnlyVector4.getY(), readOnlyVector4.getZ(), readOnlyVector4.getW());
    }

    @Override
    public double distance(ReadOnlyVector4 readOnlyVector4) {
        return MathUtils.sqrt(distanceSquared(readOnlyVector4));
    }

    public Vector4 divideLocal(ReadOnlyVector4 readOnlyVector4) {
        return set(getX() / readOnlyVector4.getX(), getY() / readOnlyVector4.getY(), getZ() / readOnlyVector4.getZ(), getW() / readOnlyVector4.getW());
    }

    @Override
    public double dot(ReadOnlyVector4 readOnlyVector4) {
        return dot(readOnlyVector4.getX(), readOnlyVector4.getY(), readOnlyVector4.getZ(), readOnlyVector4.getW());
    }

    public Vector4 multiplyLocal(ReadOnlyVector4 readOnlyVector4) {
        return set(getX() * readOnlyVector4.getX(), getY() * readOnlyVector4.getY(), getZ() * readOnlyVector4.getZ(), getW() * readOnlyVector4.getW());
    }

    public Vector4 subtractLocal(ReadOnlyVector4 readOnlyVector4) {
        return subtractLocal(readOnlyVector4.getX(), readOnlyVector4.getY(), readOnlyVector4.getZ(), readOnlyVector4.getW());
    }

    public Vector4(double d10, double d11, double d12, double d13) {
        this._x = d10;
        this._y = d11;
        this._z = d12;
        this._w = d13;
    }

    @Override
    public Vector4 add(ReadOnlyVector4 readOnlyVector4, Vector4 vector4) {
        return add(readOnlyVector4.getX(), readOnlyVector4.getY(), readOnlyVector4.getZ(), readOnlyVector4.getW(), vector4);
    }

    @Override
    public Vector4 divide(ReadOnlyVector4 readOnlyVector4, Vector4 vector4) {
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        return vector4.set(getX() / readOnlyVector4.getX(), getY() / readOnlyVector4.getY(), getZ() / readOnlyVector4.getZ(), getW() / readOnlyVector4.getW());
    }

    @Override
    public Vector4 multiply(ReadOnlyVector4 readOnlyVector4, Vector4 vector4) {
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        return vector4.set(getX() * readOnlyVector4.getX(), getY() * readOnlyVector4.getY(), getZ() * readOnlyVector4.getZ(), getW() * readOnlyVector4.getW());
    }

    @Override
    public Vector4 subtract(ReadOnlyVector4 readOnlyVector4, Vector4 vector4) {
        return subtract(readOnlyVector4.getX(), readOnlyVector4.getY(), readOnlyVector4.getZ(), readOnlyVector4.getW(), vector4);
    }

    @Override
    public double distanceSquared(ReadOnlyVector4 readOnlyVector4) {
        return distanceSquared(readOnlyVector4.getX(), readOnlyVector4.getY(), readOnlyVector4.getZ(), readOnlyVector4.getW());
    }

    public Vector4 lerpLocal(ReadOnlyVector4 readOnlyVector4, ReadOnlyVector4 readOnlyVector42, double d10) {
        double d11 = 1.0d - d10;
        setX((readOnlyVector4.getX() * d11) + (readOnlyVector42.getX() * d10));
        setY((readOnlyVector4.getY() * d11) + (readOnlyVector42.getY() * d10));
        setZ((readOnlyVector4.getZ() * d11) + (readOnlyVector42.getZ() * d10));
        setW((d11 * readOnlyVector4.getW()) + (d10 * readOnlyVector42.getW()));
        return this;
    }

    public Vector4 set(ReadOnlyVector4 readOnlyVector4) {
        setX(readOnlyVector4.getX());
        setY(readOnlyVector4.getY());
        setZ(readOnlyVector4.getZ());
        setW(readOnlyVector4.getW());
        return this;
    }

    public static Vector4 lerp(ReadOnlyVector4 readOnlyVector4, ReadOnlyVector4 readOnlyVector42, double d10, Vector4 vector4) {
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        double d11 = 1.0d - d10;
        return vector4.set((readOnlyVector4.getX() * d11) + (readOnlyVector42.getX() * d10), (readOnlyVector4.getY() * d11) + (readOnlyVector42.getY() * d10), (readOnlyVector4.getZ() * d11) + (readOnlyVector42.getZ() * d10), (d11 * readOnlyVector4.getW()) + (d10 * readOnlyVector42.getW()));
    }
}
