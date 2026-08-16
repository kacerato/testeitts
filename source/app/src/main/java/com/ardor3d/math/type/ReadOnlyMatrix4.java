package com.ardor3d.math.type;

import com.ardor3d.math.Matrix4;
import com.ardor3d.math.Vector4;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;

public interface ReadOnlyMatrix4 {
    Matrix4 add(ReadOnlyMatrix4 readOnlyMatrix4, Matrix4 matrix4);

    Matrix4 adjugate(Matrix4 matrix4);

    Vector4 applyPost(ReadOnlyVector4 readOnlyVector4, Vector4 vector4);

    Vector4 applyPre(ReadOnlyVector4 readOnlyVector4, Vector4 vector4);

    double determinant();

    Vector4 getColumn(int i10, Vector4 vector4);

    Vector4 getRow(int i10, Vector4 vector4);

    double getValue(int i10, int i11);

    float getValuef(int i10, int i11);

    Matrix4 invert(Matrix4 matrix4);

    boolean isIdentity();

    Matrix4 multiply(ReadOnlyMatrix4 readOnlyMatrix4, Matrix4 matrix4);

    Matrix4 multiplyDiagonalPost(ReadOnlyVector4 readOnlyVector4, Matrix4 matrix4);

    Matrix4 multiplyDiagonalPre(ReadOnlyVector4 readOnlyVector4, Matrix4 matrix4);

    Matrix4 scale(ReadOnlyVector4 readOnlyVector4, Matrix4 matrix4);

    double[] toArray(double[] dArr);

    double[] toArray(double[] dArr, boolean z10);

    DoubleBuffer toDoubleBuffer(DoubleBuffer doubleBuffer);

    DoubleBuffer toDoubleBuffer(DoubleBuffer doubleBuffer, boolean z10);

    FloatBuffer toFloatBuffer(FloatBuffer floatBuffer);

    FloatBuffer toFloatBuffer(FloatBuffer floatBuffer, boolean z10);

    Matrix4 transpose(Matrix4 matrix4);
}
