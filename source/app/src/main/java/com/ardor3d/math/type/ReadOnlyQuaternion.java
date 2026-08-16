package com.ardor3d.math.type;

import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Matrix4;
import com.ardor3d.math.Quaternion;
import com.ardor3d.math.Vector3;

public interface ReadOnlyQuaternion {
    Quaternion add(ReadOnlyQuaternion readOnlyQuaternion, Quaternion quaternion);

    Vector3 apply(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    Quaternion conjugate(Quaternion quaternion);

    double dot(double d10, double d11, double d12, double d13);

    double dot(ReadOnlyQuaternion readOnlyQuaternion);

    Vector3 getRotationColumn(int i10, Vector3 vector3);

    double getW();

    float getWf();

    double getX();

    float getXf();

    double getY();

    float getYf();

    double getZ();

    float getZf();

    boolean isIdentity();

    double magnitude();

    double magnitudeSquared();

    Quaternion multiply(double d10, Quaternion quaternion);

    Quaternion multiply(ReadOnlyQuaternion readOnlyQuaternion, Quaternion quaternion);

    Quaternion normalize(Quaternion quaternion);

    Quaternion slerp(ReadOnlyQuaternion readOnlyQuaternion, double d10, Quaternion quaternion);

    Quaternion subtract(ReadOnlyQuaternion readOnlyQuaternion, Quaternion quaternion);

    double toAngleAxis(Vector3 vector3);

    double[] toArray(double[] dArr);

    void toAxes(Vector3[] vector3Arr);

    double[] toEulerAngles(double[] dArr);

    Matrix3 toRotationMatrix(Matrix3 matrix3);

    Matrix4 toRotationMatrix(Matrix4 matrix4);
}
