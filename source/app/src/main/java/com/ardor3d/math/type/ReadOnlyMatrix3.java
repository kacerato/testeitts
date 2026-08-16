package com.ardor3d.math.type;

import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Vector3;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;

public interface ReadOnlyMatrix3 {
    Matrix3 add(ReadOnlyMatrix3 readOnlyMatrix3, Matrix3 matrix3);

    Matrix3 adjugate(Matrix3 matrix3);

    Vector3 applyPost(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    Vector3 applyPre(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    double determinant();

    Vector3 getColumn(int i10, Vector3 vector3);

    Vector3 getRow(int i10, Vector3 vector3);

    double getValue(int i10, int i11);

    float getValuef(int i10, int i11);

    Matrix3 invert(Matrix3 matrix3);

    boolean isIdentity();

    Matrix3 multiply(ReadOnlyMatrix3 readOnlyMatrix3, Matrix3 matrix3);

    Matrix3 multiplyDiagonalPost(ReadOnlyVector3 readOnlyVector3, Matrix3 matrix3);

    Matrix3 multiplyDiagonalPre(ReadOnlyVector3 readOnlyVector3, Matrix3 matrix3);

    Matrix3 scale(ReadOnlyVector3 readOnlyVector3, Matrix3 matrix3);

    double[] toAngles(double[] dArr);

    double[] toArray(double[] dArr);

    double[] toArray(double[] dArr, boolean z10);

    DoubleBuffer toDoubleBuffer(DoubleBuffer doubleBuffer);

    DoubleBuffer toDoubleBuffer(DoubleBuffer doubleBuffer, boolean z10);

    FloatBuffer toFloatBuffer(FloatBuffer floatBuffer);

    FloatBuffer toFloatBuffer(FloatBuffer floatBuffer, boolean z10);

    Matrix3 transpose(Matrix3 matrix3);
}
