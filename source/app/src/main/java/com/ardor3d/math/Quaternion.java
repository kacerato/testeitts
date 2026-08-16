package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyMatrix3;
import com.ardor3d.math.type.ReadOnlyQuaternion;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public class Quaternion implements Cloneable, Savable, Externalizable, ReadOnlyQuaternion, Poolable {
    private static final long serialVersionUID = 1;
    protected double _w;
    protected double _x;
    protected double _y;
    protected double _z;
    private static final ObjectPool<Quaternion> QUAT_POOL = ObjectPool.create(Quaternion.class, Constants.maxPoolSize);
    public static final ReadOnlyQuaternion IDENTITY = new Quaternion(0.0d, 0.0d, 0.0d, 1.0d);

    public Quaternion() {
        this(IDENTITY);
    }

    public static final Quaternion fetchTempInstance() {
        return Constants.useMathPools ? QUAT_POOL.fetch() : new Quaternion();
    }

    public static boolean isValid(ReadOnlyQuaternion readOnlyQuaternion) {
        return (readOnlyQuaternion == null || Double.isNaN(readOnlyQuaternion.getX()) || Double.isInfinite(readOnlyQuaternion.getX()) || Double.isNaN(readOnlyQuaternion.getY()) || Double.isInfinite(readOnlyQuaternion.getY()) || Double.isNaN(readOnlyQuaternion.getZ()) || Double.isInfinite(readOnlyQuaternion.getZ()) || Double.isNaN(readOnlyQuaternion.getW()) || Double.isInfinite(readOnlyQuaternion.getW())) ? false : true;
    }

    public static final void releaseTempInstance(Quaternion quaternion) {
        if (Constants.useMathPools) {
            QUAT_POOL.release(quaternion);
        }
    }

    @Override
    public Quaternion add(ReadOnlyQuaternion readOnlyQuaternion, Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        return quaternion.set(getX() + readOnlyQuaternion.getX(), getY() + readOnlyQuaternion.getY(), getZ() + readOnlyQuaternion.getZ(), getW() + readOnlyQuaternion.getW());
    }

    public Quaternion addLocal(ReadOnlyQuaternion readOnlyQuaternion) {
        setX(getX() + readOnlyQuaternion.getX());
        setY(getY() + readOnlyQuaternion.getY());
        setZ(getZ() + readOnlyQuaternion.getZ());
        setW(getW() + readOnlyQuaternion.getW());
        return this;
    }

    @Override
    public Vector3 apply(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        Vector3 vector32 = vector3 == null ? new Vector3() : vector3;
        if (readOnlyVector3.equals(Vector3.ZERO)) {
            vector32.set(0.0d, 0.0d, 0.0d);
        } else {
            vector32.set(((((((((getW() * getW()) * readOnlyVector3.getX()) + (((getY() * 2.0d) * getW()) * readOnlyVector3.getZ())) - (((getZ() * 2.0d) * getW()) * readOnlyVector3.getY())) + ((getX() * getX()) * readOnlyVector3.getX())) + (((getY() * 2.0d) * getX()) * readOnlyVector3.getY())) + (((getZ() * 2.0d) * getX()) * readOnlyVector3.getZ())) - ((getZ() * getZ()) * readOnlyVector3.getX())) - ((getY() * getY()) * readOnlyVector3.getX()), (((((((((getX() * 2.0d) * getY()) * readOnlyVector3.getX()) + ((getY() * getY()) * readOnlyVector3.getY())) + (((getZ() * 2.0d) * getY()) * readOnlyVector3.getZ())) + (((getW() * 2.0d) * getZ()) * readOnlyVector3.getX())) - ((getZ() * getZ()) * readOnlyVector3.getY())) + ((getW() * getW()) * readOnlyVector3.getY())) - (((getX() * 2.0d) * getW()) * readOnlyVector3.getZ())) - ((getX() * getX()) * readOnlyVector3.getY()), (getW() * getW() * readOnlyVector3.getZ()) + (((((((((getX() * 2.0d) * getZ()) * readOnlyVector3.getX()) + (((getY() * 2.0d) * getZ()) * readOnlyVector3.getY())) + ((getZ() * getZ()) * readOnlyVector3.getZ())) - (((getW() * 2.0d) * getY()) * readOnlyVector3.getX())) - ((getY() * getY()) * readOnlyVector3.getZ())) + (((getW() * 2.0d) * getX()) * readOnlyVector3.getY())) - ((getX() * getX()) * readOnlyVector3.getZ())));
        }
        return vector32;
    }

    @Override
    public Quaternion conjugate(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        quaternion.set(-getX(), -getY(), -getZ(), getW());
        return quaternion;
    }

    public Quaternion conjugateLocal() {
        set(-getX(), -getY(), -getZ(), getW());
        return this;
    }

    @Override
    public double dot(double d10, double d11, double d12, double d13) {
        return (getX() * d10) + (getY() * d11) + (getZ() * d12) + (getW() * d13);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyQuaternion)) {
            return false;
        }
        ReadOnlyQuaternion readOnlyQuaternion = (ReadOnlyQuaternion) obj;
        return getX() == readOnlyQuaternion.getX() && getY() == readOnlyQuaternion.getY() && getZ() == readOnlyQuaternion.getZ() && getW() == readOnlyQuaternion.getW();
    }

    public Quaternion fromAngleAxis(double d10, ReadOnlyVector3 readOnlyVector3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Quaternion fromAngleNormalAxis = fromAngleNormalAxis(d10, readOnlyVector3.normalize(fetchTempInstance));
        Vector3.releaseTempInstance(fetchTempInstance);
        return fromAngleNormalAxis;
    }

    public Quaternion fromAngleNormalAxis(double d10, ReadOnlyVector3 readOnlyVector3) {
        if (readOnlyVector3.equals(Vector3.ZERO)) {
            return setIdentity();
        }
        double d11 = d10 * 0.5d;
        double sin = MathUtils.sin(d11);
        return set(sin * readOnlyVector3.getX(), sin * readOnlyVector3.getY(), sin * readOnlyVector3.getZ(), MathUtils.cos(d11));
    }

    public Quaternion fromAxes(ReadOnlyVector3[] readOnlyVector3Arr) {
        if (readOnlyVector3Arr.length >= 3) {
            return fromAxes(readOnlyVector3Arr[0], readOnlyVector3Arr[1], readOnlyVector3Arr[2]);
        }
        throw new IllegalArgumentException("axes array must have at least three elements");
    }

    public Quaternion fromEulerAngles(double[] dArr) {
        if (dArr.length == 3) {
            return fromEulerAngles(dArr[0], dArr[1], dArr[2]);
        }
        throw new IllegalArgumentException("Angles array must have three elements");
    }

    public Quaternion fromRotationMatrix(ReadOnlyMatrix3 readOnlyMatrix3) {
        return fromRotationMatrix(readOnlyMatrix3.getValue(0, 0), readOnlyMatrix3.getValue(0, 1), readOnlyMatrix3.getValue(0, 2), readOnlyMatrix3.getValue(1, 0), readOnlyMatrix3.getValue(1, 1), readOnlyMatrix3.getValue(1, 2), readOnlyMatrix3.getValue(2, 0), readOnlyMatrix3.getValue(2, 1), readOnlyMatrix3.getValue(2, 2));
    }

    public Quaternion fromVectorToVector(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        double dot;
        double acos;
        int i10;
        double length = readOnlyVector3.length() * readOnlyVector32.length();
        if (Math.abs(length) <= 2.220446049250313E-16d) {
            return setIdentity();
        }
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        try {
            dot = readOnlyVector3.dot(readOnlyVector32) / length;
            acos = Math.acos(Math.max(-1.0d, Math.min(dot, 1.0d)));
            readOnlyVector3.cross(readOnlyVector32, fetchTempInstance);
        } catch (Throwable th2) {
            Vector3.releaseTempInstance(fetchTempInstance);
            throw th2;
        }
        if (dot < 0.0d && fetchTempInstance.length() < 2.220446049250313E-16d) {
            if (Math.abs(readOnlyVector3.getX()) > Math.abs(readOnlyVector3.getY())) {
                if (Math.abs(readOnlyVector3.getX()) > Math.abs(readOnlyVector3.getZ())) {
                    i10 = 0;
                    int i11 = i10 + 1;
                    fetchTempInstance.setValue(i10, -readOnlyVector3.getValue(i11 % 3));
                    fetchTempInstance.setValue(i11 % 3, readOnlyVector3.getValue(i10));
                    fetchTempInstance.setValue((i10 + 2) % 3, 0.0d);
                }
                i10 = 2;
                int i112 = i10 + 1;
                fetchTempInstance.setValue(i10, -readOnlyVector3.getValue(i112 % 3));
                fetchTempInstance.setValue(i112 % 3, readOnlyVector3.getValue(i10));
                fetchTempInstance.setValue((i10 + 2) % 3, 0.0d);
            } else {
                if (Math.abs(readOnlyVector3.getY()) > Math.abs(readOnlyVector3.getZ())) {
                    i10 = 1;
                    int i1122 = i10 + 1;
                    fetchTempInstance.setValue(i10, -readOnlyVector3.getValue(i1122 % 3));
                    fetchTempInstance.setValue(i1122 % 3, readOnlyVector3.getValue(i10));
                    fetchTempInstance.setValue((i10 + 2) % 3, 0.0d);
                }
                i10 = 2;
                int i11222 = i10 + 1;
                fetchTempInstance.setValue(i10, -readOnlyVector3.getValue(i11222 % 3));
                fetchTempInstance.setValue(i11222 % 3, readOnlyVector3.getValue(i10));
                fetchTempInstance.setValue((i10 + 2) % 3, 0.0d);
            }
            Vector3.releaseTempInstance(fetchTempInstance);
            throw th2;
        }
        Quaternion fromAngleAxis = fromAngleAxis(acos, fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance);
        return fromAngleAxis;
    }

    @Override
    public Class<? extends Quaternion> getClassTag() {
        return getClass();
    }

    @Override
    public Vector3 getRotationColumn(int i10, Vector3 vector3) {
        double d10;
        double d11;
        double d12;
        Vector3 vector32 = vector3 == null ? new Vector3() : vector3;
        double magnitudeSquared = magnitudeSquared();
        double d13 = magnitudeSquared != 1.0d ? magnitudeSquared > 0.0d ? 2.0d / magnitudeSquared : 0.0d : 2.0d;
        double x10 = getX() * d13;
        double y10 = getY() * d13;
        double z10 = getZ() * d13;
        double x11 = getX() * x10;
        double x12 = getX() * y10;
        double x13 = getX() * z10;
        double w10 = getW() * x10;
        double y11 = getY() * y10;
        double y12 = getY() * z10;
        double w11 = getW() * y10;
        double z11 = getZ() * z10;
        double w12 = getW() * z10;
        if (i10 == 0) {
            d10 = 1.0d - (y11 + z11);
            d11 = x12 + w12;
            d12 = x13 - w11;
        } else if (i10 == 1) {
            d11 = 1.0d - (x11 + z11);
            d10 = x12 - w12;
            d12 = y12 + w10;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Invalid column index. " + i10);
            }
            d12 = 1.0d - (x11 + y11);
            d10 = x13 + w11;
            d11 = y12 - w10;
        }
        return vector32.set(d10, d11, d12);
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

    public Quaternion invert(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        conjugate(quaternion);
        quaternion.multiplyLocal(1.0d / magnitudeSquared());
        return quaternion;
    }

    public Quaternion invertLocal() {
        double magnitudeSquared = 1.0d / magnitudeSquared();
        conjugateLocal();
        multiplyLocal(magnitudeSquared);
        return this;
    }

    @Override
    public boolean isIdentity() {
        return equals(IDENTITY);
    }

    public void lookAt(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        readOnlyVector3.normalize(fetchTempInstance3);
        readOnlyVector32.normalize(fetchTempInstance).crossLocal(fetchTempInstance3);
        fetchTempInstance3.cross(fetchTempInstance, fetchTempInstance2);
        fromAxes(fetchTempInstance, fetchTempInstance2, fetchTempInstance3);
        normalizeLocal();
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance3);
    }

    @Override
    public double magnitude() {
        double magnitudeSquared = magnitudeSquared();
        if (magnitudeSquared == 1.0d) {
            return 1.0d;
        }
        return MathUtils.sqrt(magnitudeSquared);
    }

    @Override
    public double magnitudeSquared() {
        return (getW() * getW()) + (getX() * getX()) + (getY() * getY()) + (getZ() * getZ());
    }

    @Override
    public Quaternion multiply(double d10, Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        return quaternion.set(getX() * d10, getY() * d10, getZ() * d10, getW() * d10);
    }

    public Quaternion multiplyLocal(double d10) {
        setX(getX() * d10);
        setY(getY() * d10);
        setZ(getZ() * d10);
        setW(getW() * d10);
        return this;
    }

    @Override
    public Quaternion normalize(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        double magnitude = 1.0d / magnitude();
        return quaternion.set(getX() * magnitude, getY() * magnitude, getZ() * magnitude, getW() * magnitude);
    }

    public Quaternion normalizeLocal() {
        double magnitude = 1.0d / magnitude();
        return set(getX() * magnitude, getY() * magnitude, getZ() * magnitude, getW() * magnitude);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        setX(inputCapsule.readDouble("x", 0.0d));
        setY(inputCapsule.readDouble("y", 0.0d));
        setZ(inputCapsule.readDouble("z", 0.0d));
        setW(inputCapsule.readDouble("w", 1.0d));
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setX(objectInput.readDouble());
        setY(objectInput.readDouble());
        setZ(objectInput.readDouble());
        setW(objectInput.readDouble());
    }

    public Quaternion set(double d10, double d11, double d12, double d13) {
        setX(d10);
        setY(d11);
        setZ(d12);
        setW(d13);
        return this;
    }

    public Quaternion setIdentity() {
        return set(0.0d, 0.0d, 0.0d, 1.0d);
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
    public Quaternion slerp(ReadOnlyQuaternion readOnlyQuaternion, double d10, Quaternion quaternion) {
        return slerp(this, readOnlyQuaternion, d10, quaternion);
    }

    public Quaternion slerpLocal(ReadOnlyQuaternion readOnlyQuaternion, double d10) {
        return slerpLocal(this, readOnlyQuaternion, d10);
    }

    @Override
    public Quaternion subtract(ReadOnlyQuaternion readOnlyQuaternion, Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        return quaternion.set(getX() - readOnlyQuaternion.getX(), getY() - readOnlyQuaternion.getY(), getZ() - readOnlyQuaternion.getZ(), getW() - readOnlyQuaternion.getW());
    }

    public Quaternion subtractLocal(ReadOnlyQuaternion readOnlyQuaternion) {
        setX(getX() - readOnlyQuaternion.getX());
        setY(getY() - readOnlyQuaternion.getY());
        setZ(getZ() - readOnlyQuaternion.getZ());
        setW(getW() - readOnlyQuaternion.getW());
        return this;
    }

    @Override
    public double toAngleAxis(Vector3 vector3) {
        double x10 = (getX() * getX()) + (getY() * getY()) + (getZ() * getZ());
        if (Math.abs(x10) <= 2.220446049250313E-16d) {
            if (vector3 == null) {
                return 0.0d;
            }
            vector3.setX(1.0d);
            vector3.setY(0.0d);
            vector3.setZ(0.0d);
            return 0.0d;
        }
        double acos = Math.acos(getW()) * 2.0d;
        if (vector3 != null) {
            double sqrt = 1.0d / Math.sqrt(x10);
            vector3.setX(getX() * sqrt);
            vector3.setY(getY() * sqrt);
            vector3.setZ(getZ() * sqrt);
        }
        return acos;
    }

    @Override
    public double[] toArray(double[] dArr) {
        if (dArr == null) {
            dArr = new double[4];
        } else if (dArr.length < 4) {
            throw new IllegalArgumentException("store array must have at least three elements");
        }
        dArr[0] = getX();
        dArr[1] = getY();
        dArr[2] = getZ();
        dArr[3] = getW();
        return dArr;
    }

    @Override
    public void toAxes(Vector3[] vector3Arr) {
        if (vector3Arr.length < 3) {
            throw new IllegalArgumentException("axes array must have at least three elements");
        }
        Matrix3 rotationMatrix = toRotationMatrix(Matrix3.fetchTempInstance());
        vector3Arr[0] = rotationMatrix.getColumn(0, vector3Arr[0]);
        vector3Arr[1] = rotationMatrix.getColumn(1, vector3Arr[1]);
        vector3Arr[2] = rotationMatrix.getColumn(2, vector3Arr[2]);
        Matrix3.releaseTempInstance(rotationMatrix);
    }

    @Override
    public double[] toEulerAngles(double[] dArr) {
        double[] dArr2 = dArr;
        if (dArr2 == null) {
            dArr2 = new double[3];
        } else if (dArr2.length < 3) {
            throw new IllegalArgumentException("store array must have at least three elements");
        }
        double w10 = getW() * getW();
        double x10 = getX() * getX();
        double y10 = getY() * getY();
        double z10 = getZ() * getZ();
        double d10 = x10 + y10 + z10 + w10;
        double x11 = (getX() * getY()) + (getZ() * getW());
        if (x11 > 0.499d * d10) {
            dArr2[0] = Math.atan2(getX(), getW()) * 2.0d;
            dArr2[1] = 1.5707963267948966d;
            dArr2[2] = 0.0d;
        } else if (x11 < (-0.499d) * d10) {
            dArr2[0] = Math.atan2(getX(), getW()) * (-2.0d);
            dArr2[1] = -1.5707963267948966d;
            dArr2[2] = 0.0d;
        } else {
            dArr2[0] = Math.atan2(((getY() * 2.0d) * getW()) - ((getX() * 2.0d) * getZ()), ((x10 - y10) - z10) + w10);
            dArr2[1] = Math.asin((x11 * 2.0d) / d10);
            dArr2[2] = Math.atan2(((getX() * 2.0d) * getW()) - ((getY() * 2.0d) * getZ()), (((-x10) + y10) - z10) + w10);
        }
        return dArr2;
    }

    @Override
    public Matrix3 toRotationMatrix(Matrix3 matrix3) {
        Matrix3 matrix32 = matrix3 == null ? new Matrix3() : matrix3;
        double magnitudeSquared = magnitudeSquared();
        double d10 = magnitudeSquared > 0.0d ? 2.0d / magnitudeSquared : 0.0d;
        double x10 = getX() * d10;
        double y10 = getY() * d10;
        double z10 = getZ() * d10;
        double x11 = getX() * x10;
        double x12 = getX() * y10;
        double x13 = getX() * z10;
        double w10 = getW() * x10;
        double y11 = getY() * y10;
        double y12 = getY() * z10;
        double w11 = getW() * y10;
        double z11 = getZ() * z10;
        double w12 = getW() * z10;
        matrix32.setValue(0, 0, 1.0d - (y11 + z11));
        matrix32.setValue(0, 1, x12 - w12);
        matrix32.setValue(0, 2, x13 + w11);
        matrix32.setValue(1, 0, x12 + w12);
        matrix32.setValue(1, 1, 1.0d - (z11 + x11));
        matrix32.setValue(1, 2, y12 - w10);
        matrix32.setValue(2, 0, x13 - w11);
        matrix32.setValue(2, 1, y12 + w10);
        matrix32.setValue(2, 2, 1.0d - (x11 + y11));
        return matrix32;
    }

    public String toString() {
        return "com.ardor3d.math.Quaternion [X=" + getX() + ", Y=" + getY() + ", Z=" + getZ() + ", W=" + getW() + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(getX(), "x", 0.0d);
        outputCapsule.write(getY(), "y", 0.0d);
        outputCapsule.write(getZ(), "z", 0.0d);
        outputCapsule.write(getW(), "w", 1.0d);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeDouble(getX());
        objectOutput.writeDouble(getY());
        objectOutput.writeDouble(getZ());
        objectOutput.writeDouble(getW());
    }

    public Quaternion(ReadOnlyQuaternion readOnlyQuaternion) {
        this(readOnlyQuaternion.getX(), readOnlyQuaternion.getY(), readOnlyQuaternion.getZ(), readOnlyQuaternion.getW());
    }

    public static Quaternion slerp(ReadOnlyQuaternion readOnlyQuaternion, ReadOnlyQuaternion readOnlyQuaternion2, double d10, Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        Quaternion quaternion2 = quaternion;
        if (d10 == 0.0d) {
            return quaternion2.set(readOnlyQuaternion);
        }
        if (d10 == 1.0d) {
            return quaternion2.set(readOnlyQuaternion2);
        }
        Quaternion quaternion3 = fetchTempInstance().set(readOnlyQuaternion2);
        if (readOnlyQuaternion.equals(quaternion3)) {
            return quaternion2.set(readOnlyQuaternion);
        }
        double dot = readOnlyQuaternion.dot(quaternion3);
        if (dot < 0.0d) {
            quaternion3.multiplyLocal(-1.0d);
            dot = -dot;
        }
        double d11 = 1.0d - d10;
        if (1.0d - dot > 0.1d) {
            double acos = Math.acos(dot);
            double sin = 1.0d / MathUtils.sin(acos);
            d11 = MathUtils.sin(d11 * acos) * sin;
            d10 = MathUtils.sin(d10 * acos) * sin;
        }
        double x10 = (readOnlyQuaternion.getX() * d11) + (quaternion3.getX() * d10);
        double y10 = (readOnlyQuaternion.getY() * d11) + (quaternion3.getY() * d10);
        double z10 = (readOnlyQuaternion.getZ() * d11) + (quaternion3.getZ() * d10);
        double w10 = (d10 * quaternion3.getW()) + (d11 * readOnlyQuaternion.getW());
        releaseTempInstance(quaternion3);
        return quaternion2.set(x10, y10, z10, w10);
    }

    public Quaternion m1196clone() {
        try {
            return (Quaternion) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public double dot(ReadOnlyQuaternion readOnlyQuaternion) {
        return dot(readOnlyQuaternion.getX(), readOnlyQuaternion.getY(), readOnlyQuaternion.getZ(), readOnlyQuaternion.getW());
    }

    public Quaternion fromRotationMatrix(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        double d19;
        double d20;
        double d21;
        double d22;
        double d23;
        double d24;
        double d25 = d10 + d14 + d18;
        if (d25 >= 0.0d) {
            double sqrt = Math.sqrt(d25 + 1.0d);
            d24 = sqrt * 0.5d;
            double d26 = 0.5d / sqrt;
            d21 = (d17 - d15) * d26;
            d22 = (d12 - d16) * d26;
            d19 = (d13 - d11) * d26;
        } else if (d10 <= d14 || d10 <= d18) {
            if (d14 > d18) {
                double sqrt2 = Math.sqrt(((d14 + 1.0d) - d10) - d18);
                d22 = sqrt2 * 0.5d;
                d20 = 0.5d / sqrt2;
                d21 = (d13 + d11) * d20;
                d19 = (d17 + d15) * d20;
                d23 = d12 - d16;
            } else {
                double sqrt3 = Math.sqrt(((d18 + 1.0d) - d10) - d14);
                d19 = sqrt3 * 0.5d;
                d20 = 0.5d / sqrt3;
                d21 = (d12 + d16) * d20;
                d22 = (d17 + d15) * d20;
                d23 = d13 - d11;
            }
            d24 = d23 * d20;
        } else {
            double sqrt4 = Math.sqrt(((d10 + 1.0d) - d14) - d18);
            double d27 = sqrt4 * 0.5d;
            double d28 = 0.5d / sqrt4;
            d22 = (d13 + d11) * d28;
            d19 = (d12 + d16) * d28;
            d21 = d27;
            d24 = (d17 - d15) * d28;
        }
        return set(d21, d22, d19, d24);
    }

    public Quaternion slerpLocal(ReadOnlyQuaternion readOnlyQuaternion, ReadOnlyQuaternion readOnlyQuaternion2, double d10) {
        double d11;
        if (d10 == 0.0d) {
            return set(readOnlyQuaternion);
        }
        if (d10 == 1.0d) {
            return set(readOnlyQuaternion2);
        }
        if (readOnlyQuaternion.equals(readOnlyQuaternion2)) {
            set(readOnlyQuaternion);
            return this;
        }
        double dot = readOnlyQuaternion.dot(readOnlyQuaternion2);
        Quaternion quaternion = fetchTempInstance().set(readOnlyQuaternion2);
        if (dot < 0.0d) {
            quaternion.multiplyLocal(-1.0d);
            dot = -dot;
        }
        double d12 = 1.0d - d10;
        if (1.0d - dot > 0.1d) {
            double acos = MathUtils.acos(dot);
            double sin = 1.0d / MathUtils.sin(acos);
            d12 = MathUtils.sin(d12 * acos) * sin;
            d11 = MathUtils.sin(acos * d10) * sin;
        } else {
            d11 = d10;
        }
        set((readOnlyQuaternion.getX() * d12) + (quaternion.getX() * d11), (readOnlyQuaternion.getY() * d12) + (quaternion.getY() * d11), (readOnlyQuaternion.getZ() * d12) + (quaternion.getZ() * d11), (d12 * readOnlyQuaternion.getW()) + (d11 * quaternion.getW()));
        releaseTempInstance(quaternion);
        return this;
    }

    public Quaternion(double d10, double d11, double d12, double d13) {
        this._x = d10;
        this._y = d11;
        this._z = d12;
        this._w = d13;
    }

    @Override
    public Quaternion multiply(ReadOnlyQuaternion readOnlyQuaternion, Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        return quaternion.set((((getX() * readOnlyQuaternion.getW()) + (getY() * readOnlyQuaternion.getZ())) - (getZ() * readOnlyQuaternion.getY())) + (getW() * readOnlyQuaternion.getX()), ((-getX()) * readOnlyQuaternion.getZ()) + (getY() * readOnlyQuaternion.getW()) + (getZ() * readOnlyQuaternion.getX()) + (getW() * readOnlyQuaternion.getY()), ((getX() * readOnlyQuaternion.getY()) - (getY() * readOnlyQuaternion.getX())) + (getZ() * readOnlyQuaternion.getW()) + (getW() * readOnlyQuaternion.getZ()), ((((-getX()) * readOnlyQuaternion.getX()) - (getY() * readOnlyQuaternion.getY())) - (getZ() * readOnlyQuaternion.getZ())) + (getW() * readOnlyQuaternion.getW()));
    }

    public Quaternion fromAxes(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33) {
        return fromRotationMatrix(readOnlyVector3.getX(), readOnlyVector32.getX(), readOnlyVector33.getX(), readOnlyVector3.getY(), readOnlyVector32.getY(), readOnlyVector33.getY(), readOnlyVector3.getZ(), readOnlyVector32.getZ(), readOnlyVector33.getZ());
    }

    public Quaternion fromEulerAngles(double d10, double d11, double d12) {
        double d13 = d10 * 0.5d;
        double sin = MathUtils.sin(d13);
        double cos = MathUtils.cos(d13);
        double d14 = d11 * 0.5d;
        double sin2 = MathUtils.sin(d14);
        double cos2 = MathUtils.cos(d14);
        double d15 = 0.5d * d12;
        double sin3 = MathUtils.sin(d15);
        double cos3 = MathUtils.cos(d15);
        double d16 = cos * cos2;
        double d17 = sin * sin2;
        double d18 = cos * sin2;
        double d19 = sin * cos2;
        set((d16 * sin3) + (d17 * cos3), (d19 * cos3) + (d18 * sin3), (d18 * cos3) - (d19 * sin3), (d16 * cos3) - (d17 * sin3));
        return normalizeLocal();
    }

    public Quaternion multiplyLocal(ReadOnlyQuaternion readOnlyQuaternion) {
        return multiplyLocal(readOnlyQuaternion.getX(), readOnlyQuaternion.getY(), readOnlyQuaternion.getZ(), readOnlyQuaternion.getW());
    }

    public Quaternion set(ReadOnlyQuaternion readOnlyQuaternion) {
        setX(readOnlyQuaternion.getX());
        setY(readOnlyQuaternion.getY());
        setZ(readOnlyQuaternion.getZ());
        setW(readOnlyQuaternion.getW());
        return this;
    }

    public Quaternion multiplyLocal(ReadOnlyMatrix3 readOnlyMatrix3) {
        double x10 = getX();
        double y10 = getY();
        double z10 = getZ();
        double w10 = getW();
        fromRotationMatrix(readOnlyMatrix3);
        double x11 = getX();
        double y11 = getY();
        double z11 = getZ();
        double w11 = getW();
        double d10 = (((x10 * w11) + (y10 * z11)) - (z10 * y11)) + (w10 * x11);
        double d11 = -x10;
        return set(d10, (d11 * z11) + (y10 * w11) + (z10 * x11) + (w10 * y11), ((x10 * y11) - (y10 * x11)) + (z10 * w11) + (w10 * z11), (((d11 * x11) - (y10 * y11)) - (z10 * z11)) + (w10 * w11));
    }

    public Quaternion multiplyLocal(double d10, double d11, double d12, double d13) {
        return set((((getX() * d13) + (getY() * d12)) - (getZ() * d11)) + (getW() * d10), ((-getX()) * d12) + (getY() * d13) + (getZ() * d10) + (getW() * d11), ((getX() * d11) - (getY() * d10)) + (getZ() * d13) + (getW() * d12), ((((-getX()) * d10) - (getY() * d11)) - (getZ() * d12)) + (getW() * d13));
    }

    @Override
    public Matrix4 toRotationMatrix(Matrix4 matrix4) {
        Matrix4 matrix42 = matrix4 == null ? new Matrix4() : matrix4;
        double magnitudeSquared = magnitudeSquared();
        double d10 = magnitudeSquared != 1.0d ? magnitudeSquared > 0.0d ? 2.0d / magnitudeSquared : 0.0d : 2.0d;
        double x10 = getX() * d10;
        double y10 = getY() * d10;
        double z10 = getZ() * d10;
        double x11 = getX() * x10;
        double x12 = getX() * y10;
        double x13 = getX() * z10;
        double w10 = getW() * x10;
        double y11 = getY() * y10;
        double y12 = getY() * z10;
        double w11 = getW() * y10;
        double z11 = getZ() * z10;
        double w12 = getW() * z10;
        matrix42.setValue(0, 0, 1.0d - (y11 + z11));
        matrix42.setValue(0, 1, x12 - w12);
        matrix42.setValue(0, 2, x13 + w11);
        matrix42.setValue(1, 0, x12 + w12);
        matrix42.setValue(1, 1, 1.0d - (z11 + x11));
        matrix42.setValue(1, 2, y12 - w10);
        matrix42.setValue(2, 0, x13 - w11);
        matrix42.setValue(2, 1, y12 + w10);
        matrix42.setValue(2, 2, 1.0d - (x11 + y11));
        return matrix42;
    }
}
