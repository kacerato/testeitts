package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public class Vector2 implements Cloneable, Savable, Externalizable, ReadOnlyVector2, Poolable {
    private static final long serialVersionUID = 1;
    protected double _x;
    protected double _y;
    private static final ObjectPool<Vector2> VEC_POOL = ObjectPool.create(Vector2.class, Constants.maxPoolSize);
    public static final ReadOnlyVector2 ZERO = new Vector2(0.0d, 0.0d);
    public static final ReadOnlyVector2 ONE = new Vector2(1.0d, 1.0d);
    public static final ReadOnlyVector2 NEG_ONE = new Vector2(-1.0d, -1.0d);
    public static final ReadOnlyVector2 UNIT_X = new Vector2(1.0d, 0.0d);
    public static final ReadOnlyVector2 NEG_UNIT_X = new Vector2(-1.0d, 0.0d);
    public static final ReadOnlyVector2 UNIT_Y = new Vector2(0.0d, 1.0d);
    public static final ReadOnlyVector2 NEG_UNIT_Y = new Vector2(0.0d, -1.0d);

    public Vector2() {
        this(0.0d, 0.0d);
    }

    public static final Vector2 fetchTempInstance() {
        return Constants.useMathPools ? VEC_POOL.fetch() : new Vector2();
    }

    public static boolean isValid(ReadOnlyVector2 readOnlyVector2) {
        return (readOnlyVector2 == null || Double.isNaN(readOnlyVector2.getX()) || Double.isNaN(readOnlyVector2.getY()) || Double.isInfinite(readOnlyVector2.getX()) || Double.isInfinite(readOnlyVector2.getY())) ? false : true;
    }

    public static final void releaseTempInstance(Vector2 vector2) {
        if (Constants.useMathPools) {
            VEC_POOL.release(vector2);
        }
    }

    @Override
    public Vector2 add(double d10, double d11, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        return vector2.set(getX() + d10, getY() + d11);
    }

    public Vector2 addLocal(double d10, double d11) {
        return set(getX() + d10, getY() + d11);
    }

    @Override
    public double angleBetween(ReadOnlyVector2 readOnlyVector2) {
        return Math.atan2(readOnlyVector2.getY(), readOnlyVector2.getX()) - Math.atan2(getY(), getX());
    }

    @Override
    public double distance(double d10, double d11) {
        return MathUtils.sqrt(distanceSquared(d10, d11));
    }

    @Override
    public double distanceSquared(double d10, double d11) {
        double x10 = getX() - d10;
        double y10 = getY() - d11;
        return (x10 * x10) + (y10 * y10);
    }

    @Override
    public Vector2 divide(double d10, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        return vector2.set(getX() / d10, getY() / d10);
    }

    public Vector2 divideLocal(double d10) {
        double d11 = 1.0d / d10;
        return set(getX() * d11, getY() * d11);
    }

    @Override
    public double dot(double d10, double d11) {
        return (getX() * d10) + (getY() * d11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyVector2)) {
            return false;
        }
        ReadOnlyVector2 readOnlyVector2 = (ReadOnlyVector2) obj;
        return getX() == readOnlyVector2.getX() && getY() == readOnlyVector2.getY();
    }

    @Override
    public Class<? extends Vector2> getClassTag() {
        return getClass();
    }

    @Override
    public double getPolarAngle() {
        return -Math.atan2(getY(), getX());
    }

    @Override
    public double getValue(int i10) {
        if (i10 == 0) {
            return getX();
        }
        if (i10 == 1) {
            return getY();
        }
        throw new IllegalArgumentException("index must be either 0 or 1");
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

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(getX());
        int i10 = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 544;
        long doubleToLongBits2 = Double.doubleToLongBits(getY());
        return i10 + (i10 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    @Override
    public double length() {
        return MathUtils.sqrt(lengthSquared());
    }

    @Override
    public double lengthSquared() {
        return (getX() * getX()) + (getY() * getY());
    }

    @Override
    public Vector2 lerp(ReadOnlyVector2 readOnlyVector2, double d10, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        double d11 = 1.0d - d10;
        return vector2.set((getX() * d11) + (readOnlyVector2.getX() * d10), (d11 * getY()) + (d10 * readOnlyVector2.getY()));
    }

    public Vector2 lerpLocal(ReadOnlyVector2 readOnlyVector2, double d10) {
        double d11 = 1.0d - d10;
        setX((getX() * d11) + (readOnlyVector2.getX() * d10));
        setY((d11 * getY()) + (d10 * readOnlyVector2.getY()));
        return this;
    }

    @Override
    public Vector2 multiply(double d10, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        return vector2.set(getX() * d10, getY() * d10);
    }

    public Vector2 multiplyLocal(double d10) {
        return set(getX() * d10, getY() * d10);
    }

    @Override
    public Vector2 negate(Vector2 vector2) {
        return multiply(-1.0d, vector2);
    }

    public Vector2 negateLocal() {
        return multiplyLocal(-1.0d);
    }

    @Override
    public Vector2 normalize(Vector2 vector2) {
        double lengthSquared = lengthSquared();
        return Math.abs(lengthSquared) > 2.220446049250313E-16d ? multiply(MathUtils.inverseSqrt(lengthSquared), vector2) : m1202clone();
    }

    public Vector2 normalizeLocal() {
        double lengthSquared = lengthSquared();
        return Math.abs(lengthSquared) > 2.220446049250313E-16d ? multiplyLocal(MathUtils.inverseSqrt(lengthSquared)) : this;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        setX(inputCapsule.readDouble("x", 0.0d));
        setY(inputCapsule.readDouble("y", 0.0d));
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setX(objectInput.readDouble());
        setY(objectInput.readDouble());
    }

    @Override
    public Vector2 rotateAroundOrigin(double d10, boolean z10, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        if (z10) {
            d10 = -d10;
        }
        return vector2.set((MathUtils.cos(d10) * getX()) - (MathUtils.sin(d10) * getY()), (MathUtils.sin(d10) * getX()) + (MathUtils.cos(d10) * getY()));
    }

    public Vector2 rotateAroundOriginLocal(double d10, boolean z10) {
        if (z10) {
            d10 = -d10;
        }
        return set((MathUtils.cos(d10) * getX()) - (MathUtils.sin(d10) * getY()), (MathUtils.sin(d10) * getX()) + (MathUtils.cos(d10) * getY()));
    }

    @Override
    public Vector2 scaleAdd(double d10, ReadOnlyVector2 readOnlyVector2, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        vector2.setX((this._x * d10) + readOnlyVector2.getX());
        vector2.setY((this._y * d10) + readOnlyVector2.getY());
        return vector2;
    }

    public Vector2 scaleAddLocal(float f10, ReadOnlyVector2 readOnlyVector2) {
        double d10 = f10;
        this._x = (this._x * d10) + readOnlyVector2.getX();
        this._y = (this._y * d10) + readOnlyVector2.getY();
        return this;
    }

    public Vector2 set(double d10, double d11) {
        setX(d10);
        setY(d11);
        return this;
    }

    public void setValue(int i10, double d10) {
        if (i10 == 0) {
            setX(d10);
        } else {
            if (i10 != 1) {
                throw new IllegalArgumentException("index must be either 0 or 1");
            }
            setY(d10);
        }
    }

    public void setX(double d10) {
        this._x = d10;
    }

    public void setY(double d10) {
        this._y = d10;
    }

    @Override
    public double smallestAngleBetween(ReadOnlyVector2 readOnlyVector2) {
        return MathUtils.acos(dot(readOnlyVector2));
    }

    @Override
    public Vector2 subtract(double d10, double d11, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        return vector2.set(getX() - d10, getY() - d11);
    }

    public Vector2 subtractLocal(double d10, double d11) {
        return set(getX() - d10, getY() - d11);
    }

    @Override
    public double[] toArray(double[] dArr) {
        if (dArr == null) {
            dArr = new double[2];
        }
        dArr[1] = getY();
        dArr[0] = getX();
        return dArr;
    }

    public String toString() {
        return "com.ardor3d.math.Vector2 [X=" + getX() + ", Y=" + getY() + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(getX(), "x", 0.0d);
        outputCapsule.write(getY(), "y", 0.0d);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeDouble(getX());
        objectOutput.writeDouble(getY());
    }

    public Vector2 zero() {
        return set(0.0d, 0.0d);
    }

    public Vector2(ReadOnlyVector2 readOnlyVector2) {
        this(readOnlyVector2.getX(), readOnlyVector2.getY());
    }

    public Vector2 addLocal(ReadOnlyVector2 readOnlyVector2) {
        return addLocal(readOnlyVector2.getX(), readOnlyVector2.getY());
    }

    public Vector2 m1202clone() {
        try {
            return (Vector2) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public double distance(ReadOnlyVector2 readOnlyVector2) {
        return MathUtils.sqrt(distanceSquared(readOnlyVector2));
    }

    public Vector2 divideLocal(ReadOnlyVector2 readOnlyVector2) {
        return set(getX() / readOnlyVector2.getX(), getY() / readOnlyVector2.getY());
    }

    @Override
    public double dot(ReadOnlyVector2 readOnlyVector2) {
        return dot(readOnlyVector2.getX(), readOnlyVector2.getY());
    }

    public Vector2 multiplyLocal(ReadOnlyVector2 readOnlyVector2) {
        return set(getX() * readOnlyVector2.getX(), getY() * readOnlyVector2.getY());
    }

    public Vector2 subtractLocal(ReadOnlyVector2 readOnlyVector2) {
        return subtractLocal(readOnlyVector2.getX(), readOnlyVector2.getY());
    }

    public Vector2(double d10, double d11) {
        this._x = d10;
        this._y = d11;
    }

    @Override
    public Vector2 add(ReadOnlyVector2 readOnlyVector2, Vector2 vector2) {
        return add(readOnlyVector2.getX(), readOnlyVector2.getY(), vector2);
    }

    @Override
    public double distanceSquared(ReadOnlyVector2 readOnlyVector2) {
        return distanceSquared(readOnlyVector2.getX(), readOnlyVector2.getY());
    }

    @Override
    public Vector2 divide(ReadOnlyVector2 readOnlyVector2, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        return vector2.set(getX() / readOnlyVector2.getX(), getY() / readOnlyVector2.getY());
    }

    public Vector2 lerpLocal(ReadOnlyVector2 readOnlyVector2, ReadOnlyVector2 readOnlyVector22, double d10) {
        double d11 = 1.0d - d10;
        setX((readOnlyVector2.getX() * d11) + (readOnlyVector22.getX() * d10));
        setY((d11 * readOnlyVector2.getY()) + (d10 * readOnlyVector22.getY()));
        return this;
    }

    @Override
    public Vector2 multiply(ReadOnlyVector2 readOnlyVector2, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        return vector2.set(getX() * readOnlyVector2.getX(), getY() * readOnlyVector2.getY());
    }

    public Vector2 set(ReadOnlyVector2 readOnlyVector2) {
        setX(readOnlyVector2.getX());
        setY(readOnlyVector2.getY());
        return this;
    }

    @Override
    public Vector2 subtract(ReadOnlyVector2 readOnlyVector2, Vector2 vector2) {
        return subtract(readOnlyVector2.getX(), readOnlyVector2.getY(), vector2);
    }

    public static Vector2 lerp(ReadOnlyVector2 readOnlyVector2, ReadOnlyVector2 readOnlyVector22, double d10, Vector2 vector2) {
        if (vector2 == null) {
            vector2 = new Vector2();
        }
        double d11 = 1.0d - d10;
        return vector2.set((readOnlyVector2.getX() * d11) + (readOnlyVector22.getX() * d10), (d11 * readOnlyVector2.getY()) + (d10 * readOnlyVector22.getY()));
    }
}
