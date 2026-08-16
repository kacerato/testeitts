package com.ardor3d.math;

import android.icu.text.DateFormat;
import com.ardor3d.math.type.ReadOnlyMatrix3;
import com.ardor3d.math.type.ReadOnlyQuaternion;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Array;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;

public class Matrix3 implements Cloneable, Savable, Externalizable, ReadOnlyMatrix3, Poolable {
    private static final long serialVersionUID = 1;
    protected final double[][] _data;
    private static final ObjectPool<Matrix3> MAT_POOL = ObjectPool.create(Matrix3.class, Constants.maxPoolSize);
    public static final ReadOnlyMatrix3 IDENTITY = new Matrix3(1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d);

    public Matrix3() {
        this(IDENTITY);
    }

    public static final Matrix3 fetchTempInstance() {
        return Constants.useMathPools ? MAT_POOL.fetch() : new Matrix3();
    }

    public static boolean isValid(ReadOnlyMatrix3 readOnlyMatrix3) {
        if (readOnlyMatrix3 == null) {
            return false;
        }
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                double value = readOnlyMatrix3.getValue(i10, i11);
                if (Double.isNaN(value) || Double.isInfinite(value)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final void releaseTempInstance(Matrix3 matrix3) {
        if (Constants.useMathPools) {
            MAT_POOL.release(matrix3);
        }
    }

    @Override
    public Matrix3 add(ReadOnlyMatrix3 readOnlyMatrix3, Matrix3 matrix3) {
        if (matrix3 == null) {
            matrix3 = new Matrix3();
        }
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                double[] dArr = matrix3._data[i10];
                dArr[i11] = dArr[i11] + readOnlyMatrix3.getValue(i10, i11);
            }
        }
        return matrix3;
    }

    public Matrix3 addLocal(ReadOnlyMatrix3 readOnlyMatrix3) {
        return add(readOnlyMatrix3, this);
    }

    @Override
    public Matrix3 adjugate(Matrix3 matrix3) {
        Matrix3 matrix32;
        Matrix3 matrix33;
        if (matrix3 == null) {
            matrix33 = new Matrix3();
            matrix32 = this;
        } else {
            matrix32 = this;
            matrix33 = matrix3;
        }
        double[][] dArr = matrix32._data;
        double[] dArr2 = dArr[1];
        double d10 = dArr2[1];
        double[] dArr3 = dArr[2];
        double d11 = dArr3[2];
        double d12 = dArr2[2];
        double d13 = dArr3[1];
        double[] dArr4 = dArr[0];
        double d14 = dArr4[2];
        double d15 = dArr4[1];
        double d16 = (d14 * d13) - (d15 * d11);
        double d17 = (d15 * d12) - (d14 * d10);
        double d18 = dArr3[0];
        double d19 = dArr2[0];
        double d20 = (d12 * d18) - (d19 * d11);
        double d21 = dArr4[0];
        return matrix33.set((d10 * d11) - (d12 * d13), d16, d17, d20, (d11 * d21) - (d14 * d18), (d14 * d19) - (d12 * d21), (d19 * d13) - (d10 * d18), (d18 * d15) - (d13 * d21), (d21 * d10) - (d15 * d19));
    }

    public Matrix3 adjugateLocal() {
        return adjugate(this);
    }

    @Override
    public Vector3 applyPost(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        double x10 = readOnlyVector3.getX();
        double y10 = readOnlyVector3.getY();
        double z10 = readOnlyVector3.getZ();
        double[] dArr = this._data[0];
        vector3.setX((dArr[0] * x10) + (dArr[1] * y10) + (dArr[2] * z10));
        double[] dArr2 = this._data[1];
        vector3.setY((dArr2[0] * x10) + (dArr2[1] * y10) + (dArr2[2] * z10));
        double[] dArr3 = this._data[2];
        vector3.setZ((dArr3[0] * x10) + (dArr3[1] * y10) + (dArr3[2] * z10));
        return vector3;
    }

    @Override
    public Vector3 applyPre(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        Vector3 vector32 = vector3 == null ? new Vector3() : vector3;
        double x10 = readOnlyVector3.getX();
        double y10 = readOnlyVector3.getY();
        double z10 = readOnlyVector3.getZ();
        double[][] dArr = this._data;
        vector32.setX((dArr[0][0] * x10) + (dArr[1][0] * y10) + (dArr[2][0] * z10));
        double[][] dArr2 = this._data;
        vector32.setY((dArr2[0][1] * x10) + (dArr2[1][1] * y10) + (dArr2[2][1] * z10));
        double[][] dArr3 = this._data;
        vector32.setZ((dArr3[0][2] * x10) + (dArr3[1][2] * y10) + (dArr3[2][2] * z10));
        return vector32;
    }

    @Override
    public double determinant() {
        double[][] dArr = this._data;
        double[] dArr2 = dArr[1];
        double d10 = dArr2[1];
        double[] dArr3 = dArr[2];
        double d11 = dArr3[2];
        double d12 = dArr2[2];
        double d13 = dArr3[1];
        double d14 = dArr3[0];
        double d15 = dArr2[0];
        double[] dArr4 = dArr[0];
        return (dArr4[0] * ((d10 * d11) - (d12 * d13))) + (dArr4[1] * ((d12 * d14) - (d11 * d15))) + (dArr4[2] * ((d15 * d13) - (d10 * d14)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyMatrix3)) {
            return false;
        }
        ReadOnlyMatrix3 readOnlyMatrix3 = (ReadOnlyMatrix3) obj;
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                if (Math.abs(getValue(i10, i11) - readOnlyMatrix3.getValue(i10, i11)) > 1.0E-4d) {
                    return false;
                }
            }
        }
        return true;
    }

    public Matrix3 fromAngleAxis(double d10, ReadOnlyVector3 readOnlyVector3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        readOnlyVector3.normalize(fetchTempInstance);
        fromAngleNormalAxis(d10, fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance);
        return this;
    }

    public Matrix3 fromAngleNormalAxis(double d10, ReadOnlyVector3 readOnlyVector3) {
        double cos = MathUtils.cos(d10);
        double sin = MathUtils.sin(d10);
        double d11 = 1.0d - cos;
        double x10 = readOnlyVector3.getX() * readOnlyVector3.getX();
        double y10 = readOnlyVector3.getY() * readOnlyVector3.getY();
        double z10 = readOnlyVector3.getZ() * readOnlyVector3.getZ();
        double x11 = readOnlyVector3.getX() * readOnlyVector3.getY() * d11;
        double x12 = readOnlyVector3.getX() * readOnlyVector3.getZ() * d11;
        double y11 = readOnlyVector3.getY() * readOnlyVector3.getZ() * d11;
        double x13 = readOnlyVector3.getX() * sin;
        double y12 = readOnlyVector3.getY() * sin;
        double z11 = readOnlyVector3.getZ() * sin;
        double[][] dArr = this._data;
        double[] dArr2 = dArr[0];
        dArr2[0] = (x10 * d11) + cos;
        dArr2[1] = x11 - z11;
        dArr2[2] = x12 + y12;
        double[] dArr3 = dArr[1];
        dArr3[0] = x11 + z11;
        dArr3[1] = (y10 * d11) + cos;
        dArr3[2] = y11 - x13;
        double[] dArr4 = dArr[2];
        dArr4[0] = x12 - y12;
        dArr4[1] = y11 + x13;
        dArr4[2] = (z10 * d11) + cos;
        return this;
    }

    public Matrix3 fromAngles(double d10, double d11, double d12) {
        double cos = Math.cos(d11);
        double sin = Math.sin(d11);
        double cos2 = Math.cos(d12);
        double sin2 = Math.sin(d12);
        double cos3 = Math.cos(d10);
        double sin3 = Math.sin(d10);
        double[][] dArr = this._data;
        double[] dArr2 = dArr[0];
        dArr2[0] = cos * cos2;
        double d13 = cos * sin2;
        dArr2[1] = (sin * sin3) - (d13 * cos3);
        dArr2[2] = (d13 * sin3) + (sin * cos3);
        double[] dArr3 = dArr[1];
        dArr3[0] = sin2;
        dArr3[1] = cos2 * cos3;
        dArr3[2] = (-cos2) * sin3;
        double[] dArr4 = dArr[2];
        double d14 = -sin;
        dArr4[0] = cos2 * d14;
        dArr4[1] = (sin * sin2 * cos3) + (cos * sin3);
        dArr4[2] = (d14 * sin2 * sin3) + (cos * cos3);
        return this;
    }

    public Matrix3 fromArray(double[] dArr) {
        return fromArray(dArr, true);
    }

    public Matrix3 fromAxes(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33) {
        setColumn(0, readOnlyVector3);
        setColumn(1, readOnlyVector32);
        setColumn(2, readOnlyVector33);
        return this;
    }

    public Matrix3 fromStartEndLocal(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        Vector3 vector3 = new Vector3();
        readOnlyVector3.cross(readOnlyVector32, vector3);
        double dot = readOnlyVector3.dot(readOnlyVector32);
        if ((dot < 0.0d ? -dot : dot) > 0.9999d) {
            Vector3 vector32 = new Vector3();
            Vector3 vector33 = new Vector3();
            double x10 = readOnlyVector3.getX();
            double x11 = readOnlyVector3.getX();
            if (x10 <= 0.0d) {
                x11 = -x11;
            }
            vector33.setX(x11);
            double y10 = readOnlyVector3.getY();
            double y11 = readOnlyVector3.getY();
            if (y10 <= 0.0d) {
                y11 = -y11;
            }
            vector33.setY(y11);
            vector33.setZ(readOnlyVector3.getZ() > 0.0d ? readOnlyVector3.getZ() : -readOnlyVector3.getZ());
            if (vector33.getX() < vector33.getY()) {
                if (vector33.getX() < vector33.getZ()) {
                    vector33.set(1.0d, 0.0d, 0.0d);
                } else {
                    vector33.set(0.0d, 0.0d, 1.0d);
                }
            } else if (vector33.getY() < vector33.getZ()) {
                vector33.set(0.0d, 1.0d, 0.0d);
            } else {
                vector33.set(0.0d, 0.0d, 1.0d);
            }
            vector32.set(vector33).subtractLocal(readOnlyVector3);
            vector3.set(vector33).subtractLocal(readOnlyVector32);
            double dot2 = 2.0d / vector32.dot(vector32);
            double dot3 = 2.0d / vector3.dot(vector3);
            double dot4 = dot2 * dot3 * vector32.dot(vector3);
            for (int i10 = 0; i10 < 3; i10++) {
                for (int i11 = 0; i11 < 3; i11++) {
                    setValue(i10, i11, ((((-dot2) * vector32.getValue(i10)) * vector32.getValue(i11)) - ((vector3.getValue(i10) * dot3) * vector3.getValue(i11))) + (vector3.getValue(i10) * dot4 * vector32.getValue(i11)));
                }
                setValue(i10, i10, this._data[i10][i10] + 1.0d);
            }
        } else {
            double d10 = 1.0d / (dot + 1.0d);
            double x12 = vector3.getX() * d10;
            double z10 = vector3.getZ() * d10;
            double y12 = vector3.getY() * x12;
            double z11 = vector3.getZ() * x12;
            double y13 = vector3.getY() * z10;
            setValue(0, 0, (x12 * vector3.getX()) + dot);
            setValue(0, 1, y12 - vector3.getZ());
            setValue(0, 2, vector3.getY() + z11);
            setValue(1, 0, y12 + vector3.getZ());
            setValue(1, 1, (d10 * vector3.getY() * vector3.getY()) + dot);
            setValue(1, 2, y13 - vector3.getX());
            setValue(2, 0, z11 - vector3.getY());
            setValue(2, 1, y13 + vector3.getX());
            setValue(2, 2, dot + (z10 * vector3.getZ()));
        }
        return this;
    }

    @Override
    public Class<? extends Matrix3> getClassTag() {
        return getClass();
    }

    @Override
    public Vector3 getColumn(int i10, Vector3 vector3) {
        if (i10 < 0 || i10 > 2) {
            throw new IllegalArgumentException("Illegal column index: " + i10);
        }
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.setX(this._data[0][i10]);
        vector3.setY(this._data[1][i10]);
        vector3.setZ(this._data[2][i10]);
        return vector3;
    }

    @Override
    public Vector3 getRow(int i10, Vector3 vector3) {
        if (i10 < 0 || i10 > 2) {
            throw new IllegalArgumentException("Illegal row index: " + i10);
        }
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.setX(this._data[i10][0]);
        vector3.setY(this._data[i10][1]);
        vector3.setZ(this._data[i10][2]);
        return vector3;
    }

    @Override
    public double getValue(int i10, int i11) {
        return this._data[i10][i11];
    }

    @Override
    public float getValuef(int i10, int i11) {
        return (float) getValue(i10, i11);
    }

    public int hashCode() {
        int i10 = 17;
        for (int i11 = 0; i11 < 3; i11++) {
            for (int i12 = 0; i12 < 3; i12++) {
                long doubleToLongBits = Double.doubleToLongBits(this._data[i11][i12]);
                i10 += (i10 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
            }
        }
        return i10;
    }

    @Override
    public Matrix3 invert(Matrix3 matrix3) {
        Matrix3 matrix32 = matrix3 == null ? new Matrix3() : matrix3;
        double determinant = determinant();
        if (Math.abs(determinant) <= 2.220446049250313E-16d) {
            throw new ArithmeticException("This matrix cannot be inverted.");
        }
        double[][] dArr = this._data;
        double[] dArr2 = dArr[1];
        double d10 = dArr2[1];
        double[] dArr3 = dArr[2];
        double d11 = dArr3[2];
        double d12 = dArr2[2];
        double d13 = dArr3[1];
        double[] dArr4 = dArr[0];
        double d14 = dArr4[2];
        double d15 = dArr4[1];
        double d16 = dArr3[0];
        double d17 = dArr2[0];
        double d18 = dArr4[0];
        matrix32.set((d10 * d11) - (d12 * d13), (d14 * d13) - (d15 * d11), (d15 * d12) - (d14 * d10), (d12 * d16) - (d17 * d11), (d11 * d18) - (d14 * d16), (d14 * d17) - (d12 * d18), (d17 * d13) - (d10 * d16), (d16 * d15) - (d13 * d18), (d18 * d10) - (d15 * d17));
        matrix32.multiplyLocal(1.0d / determinant);
        return matrix32;
    }

    public Matrix3 invertLocal() {
        return invert(this);
    }

    @Override
    public boolean isIdentity() {
        return equals(IDENTITY);
    }

    public boolean isOrthonormal() {
        return transpose(null).equals(invert(null));
    }

    public void lookAt(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        readOnlyVector3.normalize(fetchTempInstance3);
        readOnlyVector32.normalize(fetchTempInstance).crossLocal(fetchTempInstance3);
        fetchTempInstance3.cross(fetchTempInstance, fetchTempInstance2);
        fromAxes(fetchTempInstance, fetchTempInstance2, fetchTempInstance3);
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance3);
    }

    @Override
    public Matrix3 multiply(ReadOnlyMatrix3 readOnlyMatrix3, Matrix3 matrix3) {
        Matrix3 matrix32 = matrix3 == null ? new Matrix3() : matrix3;
        matrix32.set((this._data[0][0] * readOnlyMatrix3.getValue(0, 0)) + (this._data[0][1] * readOnlyMatrix3.getValue(1, 0)) + (this._data[0][2] * readOnlyMatrix3.getValue(2, 0)), (this._data[0][0] * readOnlyMatrix3.getValue(0, 1)) + (this._data[0][1] * readOnlyMatrix3.getValue(1, 1)) + (this._data[0][2] * readOnlyMatrix3.getValue(2, 1)), (this._data[0][0] * readOnlyMatrix3.getValue(0, 2)) + (this._data[0][1] * readOnlyMatrix3.getValue(1, 2)) + (this._data[0][2] * readOnlyMatrix3.getValue(2, 2)), (this._data[1][0] * readOnlyMatrix3.getValue(0, 0)) + (this._data[1][1] * readOnlyMatrix3.getValue(1, 0)) + (this._data[1][2] * readOnlyMatrix3.getValue(2, 0)), (this._data[1][0] * readOnlyMatrix3.getValue(0, 1)) + (this._data[1][1] * readOnlyMatrix3.getValue(1, 1)) + (this._data[1][2] * readOnlyMatrix3.getValue(2, 1)), (this._data[1][0] * readOnlyMatrix3.getValue(0, 2)) + (this._data[1][1] * readOnlyMatrix3.getValue(1, 2)) + (this._data[1][2] * readOnlyMatrix3.getValue(2, 2)), (this._data[2][0] * readOnlyMatrix3.getValue(0, 0)) + (this._data[2][1] * readOnlyMatrix3.getValue(1, 0)) + (this._data[2][2] * readOnlyMatrix3.getValue(2, 0)), (this._data[2][0] * readOnlyMatrix3.getValue(0, 1)) + (this._data[2][1] * readOnlyMatrix3.getValue(1, 1)) + (this._data[2][2] * readOnlyMatrix3.getValue(2, 1)), (this._data[2][0] * readOnlyMatrix3.getValue(0, 2)) + (this._data[2][1] * readOnlyMatrix3.getValue(1, 2)) + (this._data[2][2] * readOnlyMatrix3.getValue(2, 2)));
        return matrix32;
    }

    @Override
    public Matrix3 multiplyDiagonalPost(ReadOnlyVector3 readOnlyVector3, Matrix3 matrix3) {
        Matrix3 matrix32 = matrix3 == null ? new Matrix3() : matrix3;
        matrix32.set(readOnlyVector3.getX() * this._data[0][0], readOnlyVector3.getY() * this._data[0][1], readOnlyVector3.getZ() * this._data[0][2], readOnlyVector3.getX() * this._data[1][0], readOnlyVector3.getY() * this._data[1][1], readOnlyVector3.getZ() * this._data[1][2], this._data[2][0] * readOnlyVector3.getX(), this._data[2][1] * readOnlyVector3.getY(), readOnlyVector3.getZ() * this._data[2][2]);
        return matrix32;
    }

    @Override
    public Matrix3 multiplyDiagonalPre(ReadOnlyVector3 readOnlyVector3, Matrix3 matrix3) {
        Matrix3 matrix32 = matrix3 == null ? new Matrix3() : matrix3;
        matrix32.set(readOnlyVector3.getX() * this._data[0][0], readOnlyVector3.getX() * this._data[0][1], readOnlyVector3.getX() * this._data[0][2], readOnlyVector3.getY() * this._data[1][0], readOnlyVector3.getY() * this._data[1][1], readOnlyVector3.getY() * this._data[1][2], this._data[2][0] * readOnlyVector3.getZ(), this._data[2][1] * readOnlyVector3.getZ(), readOnlyVector3.getZ() * this._data[2][2]);
        return matrix32;
    }

    public Matrix3 multiplyLocal(ReadOnlyMatrix3 readOnlyMatrix3) {
        return multiply(readOnlyMatrix3, this);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                this._data[i10][i11] = inputCapsule.readDouble(DateFormat.MINUTE + i10 + i11, IDENTITY.getValue(i10, i11));
            }
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                this._data[i10][i11] = objectInput.readDouble();
            }
        }
    }

    @Override
    public Matrix3 scale(ReadOnlyVector3 readOnlyVector3, Matrix3 matrix3) {
        return (matrix3 == null ? new Matrix3() : matrix3).set(this._data[0][0] * readOnlyVector3.getX(), this._data[0][1] * readOnlyVector3.getY(), this._data[0][2] * readOnlyVector3.getZ(), this._data[1][0] * readOnlyVector3.getX(), this._data[1][1] * readOnlyVector3.getY(), this._data[1][2] * readOnlyVector3.getZ(), this._data[2][0] * readOnlyVector3.getX(), this._data[2][1] * readOnlyVector3.getY(), this._data[2][2] * readOnlyVector3.getZ());
    }

    public Matrix3 scaleLocal(ReadOnlyVector3 readOnlyVector3) {
        return set(this._data[0][0] * readOnlyVector3.getX(), this._data[0][1] * readOnlyVector3.getY(), this._data[0][2] * readOnlyVector3.getZ(), this._data[1][0] * readOnlyVector3.getX(), this._data[1][1] * readOnlyVector3.getY(), readOnlyVector3.getZ() * this._data[1][2], this._data[2][0] * readOnlyVector3.getX(), this._data[2][1] * readOnlyVector3.getY(), this._data[2][2] * readOnlyVector3.getZ());
    }

    public Matrix3 set(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        double[][] dArr = this._data;
        double[] dArr2 = dArr[0];
        dArr2[0] = d10;
        dArr2[1] = d11;
        dArr2[2] = d12;
        double[] dArr3 = dArr[1];
        dArr3[0] = d13;
        dArr3[1] = d14;
        dArr3[2] = d15;
        double[] dArr4 = dArr[2];
        dArr4[0] = d16;
        dArr4[1] = d17;
        dArr4[2] = d18;
        return this;
    }

    public Matrix3 setColumn(int i10, ReadOnlyVector3 readOnlyVector3) {
        this._data[0][i10] = readOnlyVector3.getX();
        this._data[1][i10] = readOnlyVector3.getY();
        this._data[2][i10] = readOnlyVector3.getZ();
        return this;
    }

    public Matrix3 setIdentity() {
        return set(IDENTITY);
    }

    public Matrix3 setRow(int i10, ReadOnlyVector3 readOnlyVector3) {
        this._data[i10][0] = readOnlyVector3.getX();
        this._data[i10][1] = readOnlyVector3.getY();
        this._data[i10][2] = readOnlyVector3.getZ();
        return this;
    }

    public Matrix3 setValue(int i10, int i11, double d10) {
        this._data[i10][i11] = d10;
        return this;
    }

    public boolean strictEquals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyMatrix3)) {
            return false;
        }
        ReadOnlyMatrix3 readOnlyMatrix3 = (ReadOnlyMatrix3) obj;
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                if (getValue(i10, i11) != readOnlyMatrix3.getValue(i10, i11)) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public double[] toAngles(double[] dArr) {
        double atan2;
        double asin;
        if (dArr == null) {
            dArr = new double[3];
        } else if (dArr.length < 3) {
            throw new IllegalArgumentException("store array must have at least three elements");
        }
        double[][] dArr2 = this._data;
        double d10 = dArr2[1][0];
        double d11 = 0.0d;
        if (d10 > 0.998d) {
            atan2 = Math.atan2(dArr2[0][2], dArr2[2][2]);
            asin = 1.5707963267948966d;
        } else if (d10 < -0.998d) {
            atan2 = Math.atan2(dArr2[0][2], dArr2[2][2]);
            asin = -1.5707963267948966d;
        } else {
            atan2 = Math.atan2(-dArr2[2][0], dArr2[0][0]);
            double[] dArr3 = this._data[1];
            d11 = Math.atan2(-dArr3[2], dArr3[1]);
            asin = Math.asin(this._data[1][0]);
        }
        dArr[0] = d11;
        dArr[1] = atan2;
        dArr[2] = asin;
        return dArr;
    }

    @Override
    public double[] toArray(double[] dArr) {
        return toArray(dArr, true);
    }

    @Override
    public DoubleBuffer toDoubleBuffer(DoubleBuffer doubleBuffer) {
        return toDoubleBuffer(doubleBuffer, true);
    }

    @Override
    public FloatBuffer toFloatBuffer(FloatBuffer floatBuffer) {
        return toFloatBuffer(floatBuffer, true);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("com.ardor3d.math.Matrix3\n[\n");
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                stringBuffer.append(" ");
                stringBuffer.append(this._data[i10][i11]);
            }
            stringBuffer.append(" \n");
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    @Override
    public Matrix3 transpose(Matrix3 matrix3) {
        Matrix3 matrix32;
        Matrix3 matrix33;
        if (matrix3 == null) {
            matrix33 = new Matrix3();
            matrix32 = this;
        } else {
            matrix32 = this;
            matrix33 = matrix3;
        }
        double[][] dArr = matrix32._data;
        double[] dArr2 = dArr[0];
        double d10 = dArr2[0];
        double[] dArr3 = dArr[1];
        double d11 = dArr3[0];
        double[] dArr4 = dArr[2];
        return matrix33.set(d10, d11, dArr4[0], dArr2[1], dArr3[1], dArr4[1], dArr2[2], dArr3[2], dArr4[2]);
    }

    public Matrix3 transposeLocal() {
        double[][] dArr = this._data;
        double[] dArr2 = dArr[0];
        double d10 = dArr2[1];
        double d11 = dArr2[2];
        double[] dArr3 = dArr[1];
        double d12 = dArr3[2];
        dArr2[1] = dArr3[0];
        double[] dArr4 = dArr[2];
        dArr2[2] = dArr4[0];
        dArr3[2] = dArr4[1];
        dArr3[0] = d10;
        dArr4[0] = d11;
        dArr4[1] = d12;
        return this;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                outputCapsule.write(this._data[i10][i11], DateFormat.MINUTE + i10 + i11, IDENTITY.getValue(i10, i11));
            }
        }
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                objectOutput.writeDouble(this._data[i10][i11]);
            }
        }
    }

    public Matrix3(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, 3, 3);
        this._data = dArr;
        double[] dArr2 = dArr[0];
        dArr2[0] = d10;
        dArr2[1] = d11;
        dArr2[2] = d12;
        double[] dArr3 = dArr[1];
        dArr3[0] = d13;
        dArr3[1] = d14;
        dArr3[2] = d15;
        double[] dArr4 = dArr[2];
        dArr4[0] = d16;
        dArr4[1] = d17;
        dArr4[2] = d18;
    }

    public Matrix3 m1193clone() {
        try {
            return (Matrix3) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Matrix3 fromArray(double[] dArr, boolean z10) {
        if (z10) {
            for (int i10 = 0; i10 < 3; i10++) {
                for (int i11 = 0; i11 < 3; i11++) {
                    this._data[i10][i11] = dArr[(i10 * 3) + i11];
                }
            }
        } else {
            for (int i12 = 0; i12 < 3; i12++) {
                for (int i13 = 0; i13 < 3; i13++) {
                    this._data[i13][i12] = dArr[(i12 * 3) + i13];
                }
            }
        }
        return this;
    }

    public Matrix3 multiplyLocal(double d10) {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                double[] dArr = this._data[i10];
                dArr[i11] = dArr[i11] * d10;
            }
        }
        return this;
    }

    @Override
    public double[] toArray(double[] dArr, boolean z10) {
        if (dArr == null) {
            dArr = new double[9];
        } else if (dArr.length < 9) {
            throw new IllegalArgumentException("store must be at least length 9.");
        }
        if (z10) {
            for (int i10 = 0; i10 < 3; i10++) {
                for (int i11 = 0; i11 < 3; i11++) {
                    dArr[(i10 * 3) + i11] = this._data[i10][i11];
                }
            }
        } else {
            for (int i12 = 0; i12 < 3; i12++) {
                for (int i13 = 0; i13 < 3; i13++) {
                    dArr[(i12 * 3) + i13] = this._data[i13][i12];
                }
            }
        }
        return dArr;
    }

    @Override
    public DoubleBuffer toDoubleBuffer(DoubleBuffer doubleBuffer, boolean z10) {
        if (doubleBuffer == null) {
            doubleBuffer = BufferUtils.createDoubleBuffer(9);
        }
        if (z10) {
            for (int i10 = 0; i10 < 3; i10++) {
                for (int i11 = 0; i11 < 3; i11++) {
                    doubleBuffer.put(this._data[i10][i11]);
                }
            }
        } else {
            for (int i12 = 0; i12 < 3; i12++) {
                for (int i13 = 0; i13 < 3; i13++) {
                    doubleBuffer.put(this._data[i13][i12]);
                }
            }
        }
        return doubleBuffer;
    }

    @Override
    public FloatBuffer toFloatBuffer(FloatBuffer floatBuffer, boolean z10) {
        if (floatBuffer == null) {
            floatBuffer = BufferUtils.createFloatBuffer(9);
        }
        if (z10) {
            for (int i10 = 0; i10 < 3; i10++) {
                for (int i11 = 0; i11 < 3; i11++) {
                    floatBuffer.put((float) this._data[i10][i11]);
                }
            }
        } else {
            for (int i12 = 0; i12 < 3; i12++) {
                for (int i13 = 0; i13 < 3; i13++) {
                    floatBuffer.put((float) this._data[i13][i12]);
                }
            }
        }
        return floatBuffer;
    }

    public Matrix3 set(ReadOnlyMatrix3 readOnlyMatrix3) {
        this._data[0][0] = readOnlyMatrix3.getValue(0, 0);
        this._data[1][0] = readOnlyMatrix3.getValue(1, 0);
        this._data[2][0] = readOnlyMatrix3.getValue(2, 0);
        this._data[0][1] = readOnlyMatrix3.getValue(0, 1);
        this._data[1][1] = readOnlyMatrix3.getValue(1, 1);
        this._data[2][1] = readOnlyMatrix3.getValue(2, 1);
        this._data[0][2] = readOnlyMatrix3.getValue(0, 2);
        this._data[1][2] = readOnlyMatrix3.getValue(1, 2);
        this._data[2][2] = readOnlyMatrix3.getValue(2, 2);
        return this;
    }

    public Matrix3(ReadOnlyMatrix3 readOnlyMatrix3) {
        this._data = (double[][]) Array.newInstance(Double.TYPE, 3, 3);
        set(readOnlyMatrix3);
    }

    public Matrix3 set(ReadOnlyQuaternion readOnlyQuaternion) {
        return readOnlyQuaternion.toRotationMatrix(this);
    }
}
