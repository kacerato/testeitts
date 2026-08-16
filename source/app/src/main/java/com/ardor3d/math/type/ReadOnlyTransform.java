package com.ardor3d.math.type;

import com.ardor3d.math.Matrix4;
import com.ardor3d.math.Transform;
import com.ardor3d.math.Vector3;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;

public interface ReadOnlyTransform {
    Vector3 applyForward(Vector3 vector3);

    Vector3 applyForward(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    Vector3 applyForwardVector(Vector3 vector3);

    Vector3 applyForwardVector(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    Vector3 applyInverse(Vector3 vector3);

    Vector3 applyInverse(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    Vector3 applyInverseVector(Vector3 vector3);

    Vector3 applyInverseVector(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    void getGLApplyMatrix(DoubleBuffer doubleBuffer);

    void getGLApplyMatrix(FloatBuffer floatBuffer);

    Matrix4 getHomogeneousMatrix(Matrix4 matrix4);

    ReadOnlyMatrix3 getMatrix();

    ReadOnlyVector3 getScale();

    ReadOnlyVector3 getTranslation();

    Transform invert(Transform transform);

    boolean isIdentity();

    boolean isRotationMatrix();

    boolean isUniformScale();

    Transform multiply(ReadOnlyTransform readOnlyTransform, Transform transform);
}
