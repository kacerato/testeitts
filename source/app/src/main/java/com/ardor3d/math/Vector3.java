package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public class Vector3 implements Cloneable, Savable, Externalizable, ReadOnlyVector3, Poolable {
    private static final long serialVersionUID = 1;
    protected double _x;
    protected double _y;
    protected double _z;
    private static final ObjectPool<Vector3> VEC_POOL = ObjectPool.create(Vector3.class, Constants.maxPoolSize);
    public static final ReadOnlyVector3 ZERO = new Vector3(0.0d, 0.0d, 0.0d);
    public static final ReadOnlyVector3 ONE = new Vector3(1.0d, 1.0d, 1.0d);
    public static final ReadOnlyVector3 NEG_ONE = new Vector3(-1.0d, -1.0d, -1.0d);
    public static final ReadOnlyVector3 UNIT_X = new Vector3(1.0d, 0.0d, 0.0d);
    public static final ReadOnlyVector3 NEG_UNIT_X = new Vector3(-1.0d, 0.0d, 0.0d);
    public static final ReadOnlyVector3 UNIT_Y = new Vector3(0.0d, 1.0d, 0.0d);
    public static final ReadOnlyVector3 NEG_UNIT_Y = new Vector3(0.0d, -1.0d, 0.0d);
    public static final ReadOnlyVector3 UNIT_Z = new Vector3(0.0d, 0.0d, 1.0d);
    public static final ReadOnlyVector3 NEG_UNIT_Z = new Vector3(0.0d, 0.0d, -1.0d);

    public Vector3() {
        this(0.0d, 0.0d, 0.0d);
    }

    public static final Vector3 fetchTempInstance() {
        return Constants.useMathPools ? VEC_POOL.fetch() : new Vector3();
    }

    public static boolean isInfinite(ReadOnlyVector3 readOnlyVector3) {
        if (readOnlyVector3 != null) {
            return Double.isInfinite(readOnlyVector3.getX()) || Double.isInfinite(readOnlyVector3.getY()) || Double.isInfinite(readOnlyVector3.getZ());
        }
        throw new IllegalArgumentException("vector is null");
    }

    public static boolean isValid(ReadOnlyVector3 readOnlyVector3) {
        return (readOnlyVector3 == null || Double.isNaN(readOnlyVector3.getX()) || Double.isNaN(readOnlyVector3.getY()) || Double.isNaN(readOnlyVector3.getZ()) || Double.isInfinite(readOnlyVector3.getX()) || Double.isInfinite(readOnlyVector3.getY()) || Double.isInfinite(readOnlyVector3.getZ())) ? false : true;
    }

    public static final void releaseTempInstance(Vector3 vector3) {
        if (Constants.useMathPools) {
            VEC_POOL.release(vector3);
        }
    }

    @Override
    public Vector3 add(double d10, double d11, double d12, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return vector3.set(getX() + d10, getY() + d11, getZ() + d12);
    }

    public Vector3 addLocal(double d10, double d11, double d12) {
        return set(getX() + d10, getY() + d11, getZ() + d12);
    }

    @Override
    public Vector3 cross(double d10, double d11, double d12, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.set((getY() * d12) - (getZ() * d11), (getZ() * d10) - (getX() * d12), (getX() * d11) - (getY() * d10));
        return vector3;
    }

    public Vector3 crossLocal(double d10, double d11, double d12) {
        set((getY() * d12) - (getZ() * d11), (getZ() * d10) - (getX() * d12), (getX() * d11) - (getY() * d10));
        return this;
    }

    @Override
    public double determinant(double d10, double d11, double d12) {
        return ((getX() * d10) - (getY() * d11)) - (getZ() * d12);
    }

    @Override
    public double distance(double d10, double d11, double d12) {
        return MathUtils.sqrt(distanceSquared(d10, d11, d12));
    }

    @Override
    public double distanceSquared(double d10, double d11, double d12) {
        double x10 = getX() - d10;
        double y10 = getY() - d11;
        double z10 = getZ() - d12;
        return (x10 * x10) + (y10 * y10) + (z10 * z10);
    }

    @Override
    public Vector3 divide(double d10, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return vector3.set(getX() / d10, getY() / d10, getZ() / d10);
    }

    public Vector3 divideLocal(double d10) {
        double d11 = 1.0d / d10;
        return set(getX() * d11, getY() * d11, getZ() * d11);
    }

    @Override
    public double dot(double d10, double d11, double d12) {
        return (getX() * d10) + (getY() * d11) + (getZ() * d12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyVector3)) {
            return false;
        }
        ReadOnlyVector3 readOnlyVector3 = (ReadOnlyVector3) obj;
        return getX() == readOnlyVector3.getX() && getY() == readOnlyVector3.getY() && getZ() == readOnlyVector3.getZ();
    }

    @Override
    public Class<? extends Vector3> getClassTag() {
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
        throw new IllegalArgumentException("index must be either 0, 1 or 2");
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
        return i11 + (i11 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
    }

    @Override
    public double length() {
        return MathUtils.sqrt(lengthSquared());
    }

    @Override
    public double lengthSquared() {
        return (getX() * getX()) + (getY() * getY()) + (getZ() * getZ());
    }

    @Override
    public Vector3 lerp(ReadOnlyVector3 readOnlyVector3, double d10, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        double d11 = 1.0d - d10;
        return vector3.set((getX() * d11) + (readOnlyVector3.getX() * d10), (getY() * d11) + (readOnlyVector3.getY() * d10), (d11 * getZ()) + (d10 * readOnlyVector3.getZ()));
    }

    public Vector3 lerpLocal(ReadOnlyVector3 readOnlyVector3, double d10) {
        double d11 = 1.0d - d10;
        setX((getX() * d11) + (readOnlyVector3.getX() * d10));
        setY((getY() * d11) + (readOnlyVector3.getY() * d10));
        setZ((d11 * getZ()) + (d10 * readOnlyVector3.getZ()));
        return this;
    }

    @Override
    public Vector3 multiply(double d10, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return vector3.set(getX() * d10, getY() * d10, getZ() * d10);
    }

    public Vector3 multiplyLocal(double d10) {
        return set(getX() * d10, getY() * d10, getZ() * d10);
    }

    @Override
    public Vector3 negate(Vector3 vector3) {
        return multiply(-1.0d, vector3);
    }

    public Vector3 negateLocal() {
        return multiplyLocal(-1.0d);
    }

    @Override
    public Vector3 normalize(Vector3 vector3) {
        double lengthSquared = lengthSquared();
        return Math.abs(lengthSquared) > 2.220446049250313E-16d ? multiply(MathUtils.inverseSqrt(lengthSquared), vector3) : vector3 != null ? vector3.set(ZERO) : new Vector3(ZERO);
    }

    public Vector3 normalizeLocal() {
        double lengthSquared = lengthSquared();
        return Math.abs(lengthSquared) > 2.220446049250313E-16d ? multiplyLocal(MathUtils.inverseSqrt(lengthSquared)) : this;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        setX(inputCapsule.readDouble("x", 0.0d));
        setY(inputCapsule.readDouble("y", 0.0d));
        setZ(inputCapsule.readDouble("z", 0.0d));
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setX(objectInput.readDouble());
        setY(objectInput.readDouble());
        setZ(objectInput.readDouble());
    }

    @Override
    public Vector3 scaleAdd(double d10, ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.setX((this._x * d10) + readOnlyVector3.getX());
        vector3.setY((this._y * d10) + readOnlyVector3.getY());
        vector3.setZ((this._z * d10) + readOnlyVector3.getZ());
        return vector3;
    }

    public Vector3 scaleAddLocal(float f10, ReadOnlyVector3 readOnlyVector3) {
        double d10 = f10;
        this._x = (this._x * d10) + readOnlyVector3.getX();
        this._y = (this._y * d10) + readOnlyVector3.getY();
        this._z = (this._z * d10) + readOnlyVector3.getZ();
        return this;
    }

    public Vector3 set(double d10, double d11, double d12) {
        setX(d10);
        setY(d11);
        setZ(d12);
        return this;
    }

    public void setValue(int i10, double d10) {
        if (i10 == 0) {
            setX(d10);
        } else if (i10 == 1) {
            setY(d10);
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("index must be either 0, 1 or 2");
            }
            setZ(d10);
        }
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
    public double smallestAngleBetween(ReadOnlyVector3 readOnlyVector3) {
        return MathUtils.acos(dot(readOnlyVector3));
    }

    @Override
    public Vector3 subtract(double d10, double d11, double d12, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return vector3.set(getX() - d10, getY() - d11, getZ() - d12);
    }

    public Vector3 subtractLocal(double d10, double d11, double d12) {
        return set(getX() - d10, getY() - d11, getZ() - d12);
    }

    @Override
    public double[] toArray(double[] dArr) {
        if (dArr == null) {
            dArr = new double[3];
        }
        dArr[2] = getZ();
        dArr[1] = getY();
        dArr[0] = getX();
        return dArr;
    }

    public float[] toFloatArray(float[] fArr) {
        if (fArr == null) {
            fArr = new float[3];
        }
        fArr[2] = (float) getZ();
        fArr[1] = (float) getY();
        fArr[0] = (float) getX();
        return fArr;
    }

    public String toString() {
        return "com.ardor3d.math.Vector3 [X=" + getX() + ", Y=" + getY() + ", Z=" + getZ() + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(getX(), "x", 0.0d);
        outputCapsule.write(getY(), "y", 0.0d);
        outputCapsule.write(getZ(), "z", 0.0d);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeDouble(getX());
        objectOutput.writeDouble(getY());
        objectOutput.writeDouble(getZ());
    }

    public Vector3 zero() {
        return set(0.0d, 0.0d, 0.0d);
    }

    public Vector3(ReadOnlyVector3 readOnlyVector3) {
        this(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ());
    }

    public Vector3 addLocal(ReadOnlyVector3 readOnlyVector3) {
        return addLocal(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ());
    }

    public Vector3 m1203clone() {
        try {
            return (Vector3) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public double determinant(ReadOnlyVector3 readOnlyVector3) {
        return determinant(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ());
    }

    @Override
    public double distance(ReadOnlyVector3 readOnlyVector3) {
        return MathUtils.sqrt(distanceSquared(readOnlyVector3));
    }

    public Vector3 divideLocal(ReadOnlyVector3 readOnlyVector3) {
        return set(getX() / readOnlyVector3.getX(), getY() / readOnlyVector3.getY(), getZ() / readOnlyVector3.getZ());
    }

    @Override
    public double dot(ReadOnlyVector3 readOnlyVector3) {
        return dot(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ());
    }

    public Vector3 multiplyLocal(ReadOnlyVector3 readOnlyVector3) {
        return set(getX() * readOnlyVector3.getX(), getY() * readOnlyVector3.getY(), getZ() * readOnlyVector3.getZ());
    }

    public Vector3 subtractLocal(ReadOnlyVector3 readOnlyVector3) {
        return subtractLocal(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ());
    }

    public Vector3(double d10, double d11, double d12) {
        this._x = d10;
        this._y = d11;
        this._z = d12;
    }

    @Override
    public Vector3 add(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        return add(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ(), vector3);
    }

    @Override
    public Vector3 divide(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return vector3.set(getX() / readOnlyVector3.getX(), getY() / readOnlyVector3.getY(), getZ() / readOnlyVector3.getZ());
    }

    @Override
    public Vector3 multiply(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return vector3.set(getX() * readOnlyVector3.getX(), getY() * readOnlyVector3.getY(), getZ() * readOnlyVector3.getZ());
    }

    @Override
    public Vector3 subtract(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        return subtract(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ(), vector3);
    }

    @Override
    public double distanceSquared(ReadOnlyVector3 readOnlyVector3) {
        return distanceSquared(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ());
    }

    public Vector3 lerpLocal(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, double d10) {
        if (!readOnlyVector3.equals(readOnlyVector32)) {
            double d11 = 1.0d - d10;
            setX((readOnlyVector3.getX() * d11) + (readOnlyVector32.getX() * d10));
            setY((readOnlyVector3.getY() * d11) + (readOnlyVector32.getY() * d10));
            setZ((d11 * readOnlyVector3.getZ()) + (d10 * readOnlyVector32.getZ()));
        } else {
            set(readOnlyVector3);
        }
        return this;
    }

    public Vector3 set(ReadOnlyVector3 readOnlyVector3) {
        setX(readOnlyVector3.getX());
        setY(readOnlyVector3.getY());
        setZ(readOnlyVector3.getZ());
        return this;
    }

    public Vector3 crossLocal(ReadOnlyVector3 readOnlyVector3) {
        return crossLocal(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ());
    }

    public static Vector3 lerp(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, double d10, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        Vector3 vector32 = vector3;
        if (!readOnlyVector3.equals(readOnlyVector32)) {
            double d11 = 1.0d - d10;
            return vector32.set((readOnlyVector3.getX() * d11) + (readOnlyVector32.getX() * d10), (readOnlyVector3.getY() * d11) + (readOnlyVector32.getY() * d10), (d11 * readOnlyVector3.getZ()) + (d10 * readOnlyVector32.getZ()));
        }
        return vector32.set(readOnlyVector3);
    }

    @Override
    public Vector3 cross(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        return cross(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ(), vector3);
    }
}
