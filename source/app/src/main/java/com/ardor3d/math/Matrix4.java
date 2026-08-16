package com.ardor3d.math;

import android.icu.text.DateFormat;
import com.ardor3d.math.type.ReadOnlyMatrix3;
import com.ardor3d.math.type.ReadOnlyMatrix4;
import com.ardor3d.math.type.ReadOnlyQuaternion;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.math.type.ReadOnlyVector4;
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

public class Matrix4 implements Cloneable, Savable, Externalizable, ReadOnlyMatrix4, Poolable {
    private static final long serialVersionUID = 1;
    protected final double[][] _data;
    private static final ObjectPool<Matrix4> MAT_POOL = ObjectPool.create(Matrix4.class, Constants.maxPoolSize);
    public static final ReadOnlyMatrix4 IDENTITY = new Matrix4(1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d);

    public Matrix4() {
        this(IDENTITY);
    }

    public static final Matrix4 fetchTempInstance() {
        return Constants.useMathPools ? MAT_POOL.fetch() : new Matrix4();
    }

    public static boolean isValid(ReadOnlyMatrix4 readOnlyMatrix4) {
        if (readOnlyMatrix4 == null) {
            return false;
        }
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                double value = readOnlyMatrix4.getValue(i10, i11);
                if (Double.isNaN(value) || Double.isInfinite(value)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final void releaseTempInstance(Matrix4 matrix4) {
        if (Constants.useMathPools) {
            MAT_POOL.release(matrix4);
        }
    }

    @Override
    public Matrix4 add(ReadOnlyMatrix4 readOnlyMatrix4, Matrix4 matrix4) {
        if (matrix4 == null) {
            matrix4 = new Matrix4();
        }
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                double[] dArr = matrix4._data[i10];
                dArr[i11] = dArr[i11] + readOnlyMatrix4.getValue(i10, i11);
            }
        }
        return matrix4;
    }

    public Matrix4 addLocal(Matrix4 matrix4) {
        return add(matrix4, this);
    }

    @Override
    public Matrix4 adjugate(Matrix4 matrix4) {
        Matrix4 matrix42;
        Matrix4 matrix43;
        if (matrix4 == null) {
            matrix43 = new Matrix4();
            matrix42 = this;
        } else {
            matrix42 = this;
            matrix43 = matrix4;
        }
        double[][] dArr = matrix42._data;
        double[] dArr2 = dArr[0];
        double d10 = dArr2[0];
        double[] dArr3 = dArr[1];
        double d11 = dArr3[1];
        double d12 = dArr2[1];
        double d13 = dArr3[0];
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = dArr3[2];
        double d16 = dArr2[2];
        double d17 = (d10 * d15) - (d16 * d13);
        double d18 = dArr3[3];
        double d19 = dArr2[3];
        double d20 = (d10 * d18) - (d19 * d13);
        double d21 = (d12 * d15) - (d16 * d11);
        double d22 = (d12 * d18) - (d19 * d11);
        double d23 = (d16 * d18) - (d19 * d15);
        double[] dArr4 = dArr[2];
        double d24 = dArr4[0];
        double[] dArr5 = dArr[3];
        double d25 = dArr5[1];
        double d26 = dArr4[1];
        double d27 = dArr5[0];
        double d28 = (d24 * d25) - (d26 * d27);
        double d29 = dArr5[2];
        double d30 = dArr4[2];
        double d31 = (d24 * d29) - (d30 * d27);
        double d32 = dArr5[3];
        double d33 = dArr4[3];
        double d34 = (d24 * d32) - (d33 * d27);
        double d35 = (d26 * d29) - (d30 * d25);
        double d36 = (d26 * d32) - (d33 * d25);
        double d37 = (d30 * d32) - (d33 * d29);
        double d38 = ((d11 * d37) - (d15 * d36)) + (d18 * d35);
        double d39 = (((-d13) * d37) + (d15 * d34)) - (d18 * d31);
        double d40 = ((d13 * d36) - (d11 * d34)) + (d18 * d28);
        double d41 = (((-d13) * d35) + (d11 * d31)) - (d15 * d28);
        double d42 = ((d10 * d37) - (d16 * d34)) + (d19 * d31);
        double d43 = (((-d10) * d36) + (d34 * d12)) - (d19 * d28);
        double d44 = ((d10 * d35) - (d12 * d31)) + (d16 * d28);
        return matrix43.set(d38, (((-d12) * d37) + (d16 * d36)) - (d19 * d35), ((d25 * d23) - (d29 * d22)) + (d32 * d21), (((-d26) * d23) + (d30 * d22)) - (d33 * d21), d39, d42, (((-d27) * d23) + (d29 * d20)) - (d32 * d17), ((d24 * d23) - (d30 * d20)) + (d33 * d17), d40, d43, ((d27 * d22) - (d25 * d20)) + (d32 * d14), (((-d24) * d22) + (d26 * d20)) - (d33 * d14), d41, d44, (((-d27) * d21) + (d25 * d17)) - (d29 * d14), ((d24 * d21) - (d26 * d17)) + (d30 * d14));
    }

    public Matrix4 adjugateLocal() {
        return adjugate(this);
    }

    @Override
    public Vector4 applyPost(ReadOnlyVector4 readOnlyVector4, Vector4 vector4) {
        Vector4 vector42 = vector4 == null ? new Vector4() : vector4;
        double x10 = readOnlyVector4.getX();
        double y10 = readOnlyVector4.getY();
        double z10 = readOnlyVector4.getZ();
        double w10 = readOnlyVector4.getW();
        double[] dArr = this._data[0];
        vector42.setX((dArr[0] * x10) + (dArr[1] * y10) + (dArr[2] * z10) + (dArr[3] * w10));
        double[] dArr2 = this._data[1];
        vector42.setY((dArr2[0] * x10) + (dArr2[1] * y10) + (dArr2[2] * z10) + (dArr2[3] * w10));
        double[] dArr3 = this._data[2];
        vector42.setZ((dArr3[0] * x10) + (dArr3[1] * y10) + (dArr3[2] * z10) + (dArr3[3] * w10));
        double[] dArr4 = this._data[3];
        vector42.setW((dArr4[0] * x10) + (dArr4[1] * y10) + (dArr4[2] * z10) + (dArr4[3] * w10));
        return vector42;
    }

    @Override
    public Vector4 applyPre(ReadOnlyVector4 readOnlyVector4, Vector4 vector4) {
        Vector4 vector42 = vector4 == null ? new Vector4() : vector4;
        double x10 = readOnlyVector4.getX();
        double y10 = readOnlyVector4.getY();
        double z10 = readOnlyVector4.getZ();
        double w10 = readOnlyVector4.getW();
        double[][] dArr = this._data;
        vector42.setX((dArr[0][0] * x10) + (dArr[1][0] * y10) + (dArr[2][0] * z10) + (dArr[3][0] * w10));
        double[][] dArr2 = this._data;
        vector42.setY((dArr2[0][1] * x10) + (dArr2[1][1] * y10) + (dArr2[2][1] * z10) + (dArr2[3][1] * w10));
        double[][] dArr3 = this._data;
        vector42.setZ((dArr3[0][2] * x10) + (dArr3[1][2] * y10) + (dArr3[2][2] * z10) + (dArr3[3][2] * w10));
        double[][] dArr4 = this._data;
        vector42.setW((dArr4[0][3] * x10) + (dArr4[1][3] * y10) + (dArr4[2][3] * z10) + (dArr4[3][3] * w10));
        return vector42;
    }

    @Override
    public double determinant() {
        double[][] dArr = this._data;
        double[] dArr2 = dArr[0];
        double d10 = dArr2[0];
        double[] dArr3 = dArr[1];
        double d11 = dArr3[1];
        double d12 = dArr2[1];
        double d13 = dArr3[0];
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = dArr3[2];
        double d16 = dArr2[2];
        double d17 = (d10 * d15) - (d16 * d13);
        double d18 = dArr3[3];
        double d19 = dArr2[3];
        double d20 = (d10 * d18) - (d13 * d19);
        double d21 = (d12 * d15) - (d16 * d11);
        double d22 = (d12 * d18) - (d11 * d19);
        double d23 = (d16 * d18) - (d19 * d15);
        double[] dArr4 = dArr[2];
        double d24 = dArr4[0];
        double[] dArr5 = dArr[3];
        double d25 = dArr5[1];
        double d26 = dArr4[1];
        double d27 = dArr5[0];
        double d28 = (d24 * d25) - (d26 * d27);
        double d29 = dArr5[2];
        double d30 = dArr4[2];
        double d31 = (d24 * d29) - (d30 * d27);
        double d32 = dArr5[3];
        double d33 = dArr4[3];
        double d34 = (d24 * d32) - (d27 * d33);
        double d35 = (d26 * d29) - (d30 * d25);
        return (((((d14 * ((d30 * d32) - (d33 * d29))) - (d17 * ((d26 * d32) - (d25 * d33)))) + (d20 * d35)) + (d21 * d34)) - (d22 * d31)) + (d23 * d28);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyMatrix4)) {
            return false;
        }
        ReadOnlyMatrix4 readOnlyMatrix4 = (ReadOnlyMatrix4) obj;
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                if (Math.abs(getValue(i10, i11) - readOnlyMatrix4.getValue(i10, i11)) > 1.0E-4d) {
                    return false;
                }
            }
        }
        return true;
    }

    public Matrix4 fromAngleAxis(double d10, ReadOnlyVector3 readOnlyVector3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        readOnlyVector3.normalize(fetchTempInstance);
        fromAngleNormalAxis(d10, fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance);
        return this;
    }

    public Matrix4 fromAngleNormalAxis(double d10, ReadOnlyVector3 readOnlyVector3) {
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

    public Matrix4 fromArray(double[] dArr) {
        return fromArray(dArr, true);
    }

    public Matrix4 fromDoubleBuffer(DoubleBuffer doubleBuffer) {
        return fromDoubleBuffer(doubleBuffer, true);
    }

    public Matrix4 fromFloatBuffer(FloatBuffer floatBuffer) {
        return fromFloatBuffer(floatBuffer, true);
    }

    @Override
    public Class<? extends Matrix4> getClassTag() {
        return getClass();
    }

    @Override
    public Vector4 getColumn(int i10, Vector4 vector4) {
        if (i10 < 0 || i10 > 3) {
            throw new IllegalArgumentException("Illegal column index: " + i10);
        }
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        for (int i11 = 0; i11 < 4; i11++) {
            vector4.setValue(i11, this._data[i11][i10]);
        }
        return vector4;
    }

    @Override
    public Vector4 getRow(int i10, Vector4 vector4) {
        if (i10 < 0 || i10 > 3) {
            throw new IllegalArgumentException("Illegal row index: " + i10);
        }
        if (vector4 == null) {
            vector4 = new Vector4();
        }
        for (int i11 = 0; i11 < 4; i11++) {
            vector4.setValue(i11, this._data[i10][i11]);
        }
        return vector4;
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
        for (int i11 = 0; i11 < 4; i11++) {
            for (int i12 = 0; i12 < 4; i12++) {
                long doubleToLongBits = Double.doubleToLongBits(this._data[i11][i12]);
                i10 += (i10 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
            }
        }
        return i10;
    }

    @Override
    public Matrix4 invert(Matrix4 matrix4) {
        Matrix4 matrix42 = matrix4 == null ? new Matrix4() : matrix4;
        double[][] dArr = this._data;
        double[] dArr2 = dArr[0];
        double d10 = dArr2[0];
        double[] dArr3 = dArr[1];
        double d11 = dArr3[1];
        double d12 = dArr2[1];
        double d13 = dArr3[0];
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = dArr3[2];
        double d16 = dArr2[2];
        double d17 = (d10 * d15) - (d16 * d13);
        double d18 = dArr3[3];
        double d19 = dArr2[3];
        double d20 = (d10 * d18) - (d13 * d19);
        double d21 = (d12 * d15) - (d16 * d11);
        double d22 = (d12 * d18) - (d11 * d19);
        double d23 = (d16 * d18) - (d19 * d15);
        double[] dArr4 = dArr[2];
        double d24 = dArr4[0];
        double[] dArr5 = dArr[3];
        double d25 = dArr5[1];
        double d26 = dArr4[1];
        double d27 = dArr5[0];
        double d28 = (d24 * d25) - (d26 * d27);
        double d29 = dArr5[2];
        double d30 = dArr4[2];
        double d31 = (d24 * d29) - (d30 * d27);
        double d32 = dArr5[3];
        double d33 = dArr4[3];
        double d34 = (d24 * d32) - (d27 * d33);
        double d35 = (d26 * d29) - (d30 * d25);
        double d36 = (d26 * d32) - (d25 * d33);
        double d37 = (d30 * d32) - (d33 * d29);
        double d38 = (((((d14 * d37) - (d17 * d36)) + (d20 * d35)) + (d21 * d34)) - (d22 * d31)) + (d23 * d28);
        if (Math.abs(d38) <= 2.220446049250313E-16d) {
            throw new ArithmeticException("This matrix cannot be inverted");
        }
        double[][] dArr6 = this._data;
        double[] dArr7 = dArr6[1];
        double d39 = dArr7[1];
        double d40 = dArr7[2];
        double d41 = dArr7[3];
        double d42 = ((d39 * d37) - (d40 * d36)) + (d41 * d35);
        double d43 = dArr7[0];
        double d44 = (((-d43) * d37) + (d40 * d34)) - (d41 * d31);
        double d45 = ((d43 * d36) - (d39 * d34)) + (d41 * d28);
        double d46 = (((-d43) * d35) + (d39 * d31)) - (d40 * d28);
        double[] dArr8 = dArr6[0];
        double d47 = dArr8[1];
        double d48 = dArr8[2];
        double d49 = dArr8[3];
        double d50 = (((-d47) * d37) + (d48 * d36)) - (d49 * d35);
        double d51 = dArr8[0];
        double d52 = ((d37 * d51) - (d48 * d34)) + (d49 * d31);
        double d53 = (((-d51) * d36) + (d34 * d47)) - (d49 * d28);
        double d54 = ((d51 * d35) - (d47 * d31)) + (d48 * d28);
        double[] dArr9 = dArr6[3];
        double d55 = dArr9[1];
        double d56 = dArr9[2];
        double d57 = dArr9[3];
        double d58 = dArr9[0];
        double d59 = (((-d58) * d21) + (d55 * d17)) - (d56 * d14);
        double[] dArr10 = dArr6[2];
        double d60 = dArr10[1];
        double d61 = dArr10[2];
        double d62 = dArr10[3];
        double d63 = dArr10[0];
        Matrix4 matrix43 = matrix42;
        matrix43.set(d42, d50, ((d55 * d23) - (d56 * d22)) + (d57 * d21), (((-d60) * d23) + (d61 * d22)) - (d62 * d21), d44, d52, (((-d58) * d23) + (d56 * d20)) - (d57 * d17), ((d23 * d63) - (d61 * d20)) + (d62 * d17), d45, d53, ((d58 * d22) - (d55 * d20)) + (d57 * d14), (((-d63) * d22) + (d20 * d60)) - (d62 * d14), d46, d54, d59, ((d63 * d21) - (d60 * d17)) + (d61 * d14));
        matrix42.multiplyLocal(1.0d / d38);
        return matrix42;
    }

    public Matrix4 invertLocal() {
        return invert(this);
    }

    @Override
    public boolean isIdentity() {
        return equals(IDENTITY);
    }

    public boolean isOrthonormal() {
        return transpose(null).equals(invert(null));
    }

    @Override
    public Matrix4 multiply(ReadOnlyMatrix4 readOnlyMatrix4, Matrix4 matrix4) {
        Matrix4 matrix42 = matrix4 == null ? new Matrix4() : matrix4;
        matrix42.set((this._data[0][0] * readOnlyMatrix4.getValue(0, 0)) + (this._data[0][1] * readOnlyMatrix4.getValue(1, 0)) + (this._data[0][2] * readOnlyMatrix4.getValue(2, 0)) + (this._data[0][3] * readOnlyMatrix4.getValue(3, 0)), (this._data[0][0] * readOnlyMatrix4.getValue(0, 1)) + (this._data[0][1] * readOnlyMatrix4.getValue(1, 1)) + (this._data[0][2] * readOnlyMatrix4.getValue(2, 1)) + (this._data[0][3] * readOnlyMatrix4.getValue(3, 1)), (this._data[0][0] * readOnlyMatrix4.getValue(0, 2)) + (this._data[0][1] * readOnlyMatrix4.getValue(1, 2)) + (this._data[0][2] * readOnlyMatrix4.getValue(2, 2)) + (this._data[0][3] * readOnlyMatrix4.getValue(3, 2)), (this._data[0][0] * readOnlyMatrix4.getValue(0, 3)) + (this._data[0][1] * readOnlyMatrix4.getValue(1, 3)) + (this._data[0][2] * readOnlyMatrix4.getValue(2, 3)) + (this._data[0][3] * readOnlyMatrix4.getValue(3, 3)), (this._data[1][0] * readOnlyMatrix4.getValue(0, 0)) + (this._data[1][1] * readOnlyMatrix4.getValue(1, 0)) + (this._data[1][2] * readOnlyMatrix4.getValue(2, 0)) + (this._data[1][3] * readOnlyMatrix4.getValue(3, 0)), (this._data[1][0] * readOnlyMatrix4.getValue(0, 1)) + (this._data[1][1] * readOnlyMatrix4.getValue(1, 1)) + (this._data[1][2] * readOnlyMatrix4.getValue(2, 1)) + (this._data[1][3] * readOnlyMatrix4.getValue(3, 1)), (this._data[1][0] * readOnlyMatrix4.getValue(0, 2)) + (this._data[1][1] * readOnlyMatrix4.getValue(1, 2)) + (this._data[1][2] * readOnlyMatrix4.getValue(2, 2)) + (this._data[1][3] * readOnlyMatrix4.getValue(3, 2)), (this._data[1][0] * readOnlyMatrix4.getValue(0, 3)) + (this._data[1][1] * readOnlyMatrix4.getValue(1, 3)) + (this._data[1][2] * readOnlyMatrix4.getValue(2, 3)) + (this._data[1][3] * readOnlyMatrix4.getValue(3, 3)), (this._data[2][0] * readOnlyMatrix4.getValue(0, 0)) + (this._data[2][1] * readOnlyMatrix4.getValue(1, 0)) + (this._data[2][2] * readOnlyMatrix4.getValue(2, 0)) + (this._data[2][3] * readOnlyMatrix4.getValue(3, 0)), (this._data[2][0] * readOnlyMatrix4.getValue(0, 1)) + (this._data[2][1] * readOnlyMatrix4.getValue(1, 1)) + (this._data[2][2] * readOnlyMatrix4.getValue(2, 1)) + (this._data[2][3] * readOnlyMatrix4.getValue(3, 1)), (this._data[2][0] * readOnlyMatrix4.getValue(0, 2)) + (this._data[2][1] * readOnlyMatrix4.getValue(1, 2)) + (this._data[2][2] * readOnlyMatrix4.getValue(2, 2)) + (this._data[2][3] * readOnlyMatrix4.getValue(3, 2)), (this._data[2][0] * readOnlyMatrix4.getValue(0, 3)) + (this._data[2][1] * readOnlyMatrix4.getValue(1, 3)) + (this._data[2][2] * readOnlyMatrix4.getValue(2, 3)) + (this._data[2][3] * readOnlyMatrix4.getValue(3, 3)), (this._data[3][0] * readOnlyMatrix4.getValue(0, 0)) + (this._data[3][1] * readOnlyMatrix4.getValue(1, 0)) + (this._data[3][2] * readOnlyMatrix4.getValue(2, 0)) + (this._data[3][3] * readOnlyMatrix4.getValue(3, 0)), (this._data[3][0] * readOnlyMatrix4.getValue(0, 1)) + (this._data[3][1] * readOnlyMatrix4.getValue(1, 1)) + (this._data[3][2] * readOnlyMatrix4.getValue(2, 1)) + (this._data[3][3] * readOnlyMatrix4.getValue(3, 1)), (this._data[3][0] * readOnlyMatrix4.getValue(0, 2)) + (this._data[3][1] * readOnlyMatrix4.getValue(1, 2)) + (this._data[3][2] * readOnlyMatrix4.getValue(2, 2)) + (this._data[3][3] * readOnlyMatrix4.getValue(3, 2)), (this._data[3][0] * readOnlyMatrix4.getValue(0, 3)) + (this._data[3][1] * readOnlyMatrix4.getValue(1, 3)) + (this._data[3][2] * readOnlyMatrix4.getValue(2, 3)) + (this._data[3][3] * readOnlyMatrix4.getValue(3, 3)));
        return matrix42;
    }

    @Override
    public Matrix4 multiplyDiagonalPost(ReadOnlyVector4 readOnlyVector4, Matrix4 matrix4) {
        Matrix4 matrix42 = matrix4 == null ? new Matrix4() : matrix4;
        matrix42.set(readOnlyVector4.getX() * this._data[0][0], readOnlyVector4.getY() * this._data[0][1], readOnlyVector4.getZ() * this._data[0][2], readOnlyVector4.getW() * this._data[0][3], readOnlyVector4.getX() * this._data[1][0], readOnlyVector4.getY() * this._data[1][1], readOnlyVector4.getZ() * this._data[1][2], readOnlyVector4.getW() * this._data[1][3], readOnlyVector4.getX() * this._data[2][0], readOnlyVector4.getY() * this._data[2][1], readOnlyVector4.getZ() * this._data[2][2], readOnlyVector4.getW() * this._data[2][3], this._data[3][0] * readOnlyVector4.getX(), this._data[3][1] * readOnlyVector4.getY(), this._data[3][2] * readOnlyVector4.getZ(), readOnlyVector4.getW() * this._data[3][3]);
        return matrix42;
    }

    @Override
    public Matrix4 multiplyDiagonalPre(ReadOnlyVector4 readOnlyVector4, Matrix4 matrix4) {
        Matrix4 matrix42 = matrix4 == null ? new Matrix4() : matrix4;
        matrix42.set(readOnlyVector4.getX() * this._data[0][0], readOnlyVector4.getX() * this._data[0][1], readOnlyVector4.getX() * this._data[0][2], readOnlyVector4.getX() * this._data[0][3], readOnlyVector4.getY() * this._data[1][0], readOnlyVector4.getY() * this._data[1][1], readOnlyVector4.getY() * this._data[1][2], readOnlyVector4.getY() * this._data[1][3], readOnlyVector4.getZ() * this._data[2][0], readOnlyVector4.getZ() * this._data[2][1], readOnlyVector4.getZ() * this._data[2][2], readOnlyVector4.getZ() * this._data[2][3], this._data[3][0] * readOnlyVector4.getW(), this._data[3][1] * readOnlyVector4.getW(), this._data[3][2] * readOnlyVector4.getW(), readOnlyVector4.getW() * this._data[3][3]);
        return matrix42;
    }

    public Matrix4 multiplyLocal(ReadOnlyMatrix4 readOnlyMatrix4) {
        return multiply(readOnlyMatrix4, this);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                this._data[i10][i11] = inputCapsule.readDouble(DateFormat.MINUTE + i10 + i11, IDENTITY.getValue(i10, i11));
            }
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                this._data[i10][i11] = objectInput.readDouble();
            }
        }
    }

    @Override
    public Matrix4 scale(ReadOnlyVector4 readOnlyVector4, Matrix4 matrix4) {
        return (matrix4 == null ? new Matrix4() : matrix4).set(this._data[0][0] * readOnlyVector4.getX(), this._data[0][1] * readOnlyVector4.getY(), this._data[0][2] * readOnlyVector4.getZ(), this._data[0][3] * readOnlyVector4.getW(), this._data[1][0] * readOnlyVector4.getX(), this._data[1][1] * readOnlyVector4.getY(), this._data[1][2] * readOnlyVector4.getZ(), this._data[1][3] * readOnlyVector4.getW(), this._data[2][0] * readOnlyVector4.getX(), this._data[2][1] * readOnlyVector4.getY(), this._data[2][2] * readOnlyVector4.getZ(), this._data[2][3] * readOnlyVector4.getW(), this._data[3][0] * readOnlyVector4.getX(), this._data[3][1] * readOnlyVector4.getY(), this._data[3][2] * readOnlyVector4.getZ(), this._data[3][3] * readOnlyVector4.getW());
    }

    public Matrix4 scaleLocal(ReadOnlyVector4 readOnlyVector4) {
        return set(this._data[0][0] * readOnlyVector4.getX(), this._data[0][1] * readOnlyVector4.getY(), this._data[0][2] * readOnlyVector4.getZ(), this._data[0][3] * readOnlyVector4.getW(), this._data[1][0] * readOnlyVector4.getX(), this._data[1][1] * readOnlyVector4.getY(), readOnlyVector4.getZ() * this._data[1][2], this._data[1][3] * readOnlyVector4.getW(), this._data[2][0] * readOnlyVector4.getX(), this._data[2][1] * readOnlyVector4.getY(), this._data[2][2] * readOnlyVector4.getZ(), this._data[2][3] * readOnlyVector4.getW(), this._data[3][0] * readOnlyVector4.getX(), this._data[3][1] * readOnlyVector4.getY(), this._data[3][2] * readOnlyVector4.getZ(), this._data[3][3] * readOnlyVector4.getW());
    }

    public Matrix4 set(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18, double d19, double d20, double d21, double d22, double d23, double d24, double d25) {
        double[][] dArr = this._data;
        double[] dArr2 = dArr[0];
        dArr2[0] = d10;
        dArr2[1] = d11;
        dArr2[2] = d12;
        dArr2[3] = d13;
        double[] dArr3 = dArr[1];
        dArr3[0] = d14;
        dArr3[1] = d15;
        dArr3[2] = d16;
        dArr3[3] = d17;
        double[] dArr4 = dArr[2];
        dArr4[0] = d18;
        dArr4[1] = d19;
        dArr4[2] = d20;
        dArr4[3] = d21;
        double[] dArr5 = dArr[3];
        dArr5[0] = d22;
        dArr5[1] = d23;
        dArr5[2] = d24;
        dArr5[3] = d25;
        return this;
    }

    public Matrix4 setColumn(int i10, double[] dArr) {
        double[][] dArr2 = this._data;
        dArr2[0][i10] = dArr[0];
        dArr2[1][i10] = dArr[1];
        dArr2[2][i10] = dArr[2];
        dArr2[3][i10] = dArr[3];
        return this;
    }

    public Matrix4 setIdentity() {
        return set(IDENTITY);
    }

    public Matrix4 setRow(int i10, double[] dArr) {
        double[] dArr2 = this._data[i10];
        dArr2[0] = dArr[0];
        dArr2[1] = dArr[1];
        dArr2[2] = dArr[2];
        dArr2[3] = dArr[3];
        return this;
    }

    public Matrix4 setValue(int i10, int i11, double d10) {
        this._data[i10][i11] = d10;
        return this;
    }

    public boolean strictEquals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyMatrix4)) {
            return false;
        }
        ReadOnlyMatrix4 readOnlyMatrix4 = (ReadOnlyMatrix4) obj;
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                if (getValue(i10, i11) != readOnlyMatrix4.getValue(i10, i11)) {
                    return false;
                }
            }
        }
        return true;
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
        StringBuffer stringBuffer = new StringBuffer("com.ardor3d.math.Matrix4\n[\n");
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                stringBuffer.append(" ");
                stringBuffer.append(this._data[i10][i11]);
            }
            stringBuffer.append(" \n");
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    @Override
    public Matrix4 transpose(Matrix4 matrix4) {
        Matrix4 matrix42;
        Matrix4 matrix43;
        if (matrix4 == null) {
            matrix43 = new Matrix4();
            matrix42 = this;
        } else {
            matrix42 = this;
            matrix43 = matrix4;
        }
        double[][] dArr = matrix42._data;
        double[] dArr2 = dArr[0];
        double d10 = dArr2[0];
        double[] dArr3 = dArr[1];
        double d11 = dArr3[0];
        double[] dArr4 = dArr[2];
        double d12 = dArr4[0];
        double[] dArr5 = dArr[3];
        return matrix43.set(d10, d11, d12, dArr5[0], dArr2[1], dArr3[1], dArr4[1], dArr5[1], dArr2[2], dArr3[2], dArr4[2], dArr5[2], dArr2[3], dArr3[3], dArr4[3], dArr5[3]);
    }

    public Matrix4 transposeLocal() {
        double[][] dArr = this._data;
        double[] dArr2 = dArr[0];
        double d10 = dArr2[1];
        double d11 = dArr2[2];
        double d12 = dArr2[3];
        double[] dArr3 = dArr[1];
        double d13 = dArr3[2];
        double d14 = dArr3[3];
        double[] dArr4 = dArr[2];
        double d15 = dArr4[3];
        dArr2[1] = dArr3[0];
        dArr2[2] = dArr4[0];
        double[] dArr5 = dArr[3];
        dArr2[3] = dArr5[0];
        dArr3[2] = dArr4[1];
        dArr3[3] = dArr5[1];
        dArr4[3] = dArr5[2];
        dArr3[0] = d10;
        dArr4[0] = d11;
        dArr5[0] = d12;
        dArr4[1] = d13;
        dArr5[1] = d14;
        dArr5[2] = d15;
        return this;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                outputCapsule.write(this._data[i10][i11], DateFormat.MINUTE + i10 + i11, IDENTITY.getValue(i10, i11));
            }
        }
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                objectOutput.writeDouble(this._data[i10][i11]);
            }
        }
    }

    public Matrix4(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18, double d19, double d20, double d21, double d22, double d23, double d24, double d25) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
        this._data = dArr;
        double[] dArr2 = dArr[0];
        dArr2[0] = d10;
        dArr2[1] = d11;
        dArr2[2] = d12;
        dArr2[3] = d13;
        double[] dArr3 = dArr[1];
        dArr3[0] = d14;
        dArr3[1] = d15;
        dArr3[2] = d16;
        dArr3[3] = d17;
        double[] dArr4 = dArr[2];
        dArr4[0] = d18;
        dArr4[1] = d19;
        dArr4[2] = d20;
        dArr4[3] = d21;
        double[] dArr5 = dArr[3];
        dArr5[0] = d22;
        dArr5[1] = d23;
        dArr5[2] = d24;
        dArr5[3] = d25;
    }

    public Matrix4 m1194clone() {
        try {
            return (Matrix4) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Matrix4 fromArray(double[] dArr, boolean z10) {
        if (z10) {
            for (int i10 = 0; i10 < 4; i10++) {
                for (int i11 = 0; i11 < 4; i11++) {
                    this._data[i10][i11] = dArr[(i10 * 4) + i11];
                }
            }
        } else {
            for (int i12 = 0; i12 < 4; i12++) {
                for (int i13 = 0; i13 < 4; i13++) {
                    this._data[i13][i12] = dArr[(i12 * 4) + i13];
                }
            }
        }
        return this;
    }

    public Matrix4 fromDoubleBuffer(DoubleBuffer doubleBuffer, boolean z10) {
        if (z10) {
            for (int i10 = 0; i10 < 4; i10++) {
                for (int i11 = 0; i11 < 4; i11++) {
                    this._data[i10][i11] = doubleBuffer.get();
                }
            }
        } else {
            for (int i12 = 0; i12 < 4; i12++) {
                for (int i13 = 0; i13 < 4; i13++) {
                    this._data[i13][i12] = doubleBuffer.get();
                }
            }
        }
        return this;
    }

    public Matrix4 fromFloatBuffer(FloatBuffer floatBuffer, boolean z10) {
        if (z10) {
            for (int i10 = 0; i10 < 4; i10++) {
                for (int i11 = 0; i11 < 4; i11++) {
                    this._data[i10][i11] = floatBuffer.get();
                }
            }
        } else {
            for (int i12 = 0; i12 < 4; i12++) {
                for (int i13 = 0; i13 < 4; i13++) {
                    this._data[i13][i12] = floatBuffer.get();
                }
            }
        }
        return this;
    }

    public Matrix4 multiplyLocal(double d10) {
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                double[] dArr = this._data[i10];
                dArr[i11] = dArr[i11] * d10;
            }
        }
        return this;
    }

    @Override
    public double[] toArray(double[] dArr, boolean z10) {
        if (dArr == null) {
            dArr = new double[16];
        } else if (dArr.length < 16) {
            throw new IllegalArgumentException("store must be at least length 16.");
        }
        if (z10) {
            for (int i10 = 0; i10 < 4; i10++) {
                for (int i11 = 0; i11 < 4; i11++) {
                    dArr[(i10 * 4) + i11] = this._data[i10][i11];
                }
            }
        } else {
            for (int i12 = 0; i12 < 4; i12++) {
                for (int i13 = 0; i13 < 4; i13++) {
                    dArr[(i12 * 4) + i13] = this._data[i13][i12];
                }
            }
        }
        return dArr;
    }

    @Override
    public DoubleBuffer toDoubleBuffer(DoubleBuffer doubleBuffer, boolean z10) {
        if (doubleBuffer == null) {
            doubleBuffer = BufferUtils.createDoubleBuffer(16);
        }
        if (z10) {
            for (int i10 = 0; i10 < 4; i10++) {
                doubleBuffer.put(this._data[i10]);
            }
        } else {
            for (int i11 = 0; i11 < 4; i11++) {
                for (int i12 = 0; i12 < 4; i12++) {
                    doubleBuffer.put(this._data[i12][i11]);
                }
            }
        }
        return doubleBuffer;
    }

    @Override
    public FloatBuffer toFloatBuffer(FloatBuffer floatBuffer, boolean z10) {
        if (floatBuffer == null) {
            floatBuffer = BufferUtils.createFloatBuffer(16);
        }
        if (z10) {
            for (int i10 = 0; i10 < 4; i10++) {
                for (int i11 = 0; i11 < 4; i11++) {
                    floatBuffer.put((float) this._data[i10][i11]);
                }
            }
        } else {
            for (int i12 = 0; i12 < 4; i12++) {
                for (int i13 = 0; i13 < 4; i13++) {
                    floatBuffer.put((float) this._data[i13][i12]);
                }
            }
        }
        return floatBuffer;
    }

    public Matrix4 set(ReadOnlyMatrix4 readOnlyMatrix4) {
        this._data[0][0] = readOnlyMatrix4.getValue(0, 0);
        this._data[1][0] = readOnlyMatrix4.getValue(1, 0);
        this._data[2][0] = readOnlyMatrix4.getValue(2, 0);
        this._data[3][0] = readOnlyMatrix4.getValue(3, 0);
        this._data[0][1] = readOnlyMatrix4.getValue(0, 1);
        this._data[1][1] = readOnlyMatrix4.getValue(1, 1);
        this._data[2][1] = readOnlyMatrix4.getValue(2, 1);
        this._data[3][1] = readOnlyMatrix4.getValue(3, 1);
        this._data[0][2] = readOnlyMatrix4.getValue(0, 2);
        this._data[1][2] = readOnlyMatrix4.getValue(1, 2);
        this._data[2][2] = readOnlyMatrix4.getValue(2, 2);
        this._data[3][2] = readOnlyMatrix4.getValue(3, 2);
        this._data[0][3] = readOnlyMatrix4.getValue(0, 3);
        this._data[1][3] = readOnlyMatrix4.getValue(1, 3);
        this._data[2][3] = readOnlyMatrix4.getValue(2, 3);
        this._data[3][3] = readOnlyMatrix4.getValue(3, 3);
        return this;
    }

    public Matrix4(ReadOnlyMatrix4 readOnlyMatrix4) {
        this._data = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
        set(readOnlyMatrix4);
    }

    public Matrix4 set(ReadOnlyMatrix3 readOnlyMatrix3) {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                this._data[i10][i11] = readOnlyMatrix3.getValue(i10, i11);
            }
        }
        return this;
    }

    public Matrix4 set(ReadOnlyQuaternion readOnlyQuaternion) {
        return readOnlyQuaternion.toRotationMatrix(this);
    }
}
