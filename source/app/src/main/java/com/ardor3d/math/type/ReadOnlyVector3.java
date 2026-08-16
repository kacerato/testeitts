package com.ardor3d.math.type;

import com.ardor3d.math.Vector3;

public interface ReadOnlyVector3 {
    Vector3 add(double d10, double d11, double d12, Vector3 vector3);

    Vector3 add(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    Vector3 cross(double d10, double d11, double d12, Vector3 vector3);

    Vector3 cross(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    double determinant(double d10, double d11, double d12);

    double determinant(ReadOnlyVector3 readOnlyVector3);

    double distance(double d10, double d11, double d12);

    double distance(ReadOnlyVector3 readOnlyVector3);

    double distanceSquared(double d10, double d11, double d12);

    double distanceSquared(ReadOnlyVector3 readOnlyVector3);

    Vector3 divide(double d10, Vector3 vector3);

    Vector3 divide(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    double dot(double d10, double d11, double d12);

    double dot(ReadOnlyVector3 readOnlyVector3);

    double getValue(int i10);

    double getX();

    float getXf();

    double getY();

    float getYf();

    double getZ();

    float getZf();

    double length();

    double lengthSquared();

    Vector3 lerp(ReadOnlyVector3 readOnlyVector3, double d10, Vector3 vector3);

    Vector3 multiply(double d10, Vector3 vector3);

    Vector3 multiply(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    Vector3 negate(Vector3 vector3);

    Vector3 normalize(Vector3 vector3);

    Vector3 scaleAdd(double d10, ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    double smallestAngleBetween(ReadOnlyVector3 readOnlyVector3);

    Vector3 subtract(double d10, double d11, double d12, Vector3 vector3);

    Vector3 subtract(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    double[] toArray(double[] dArr);
}
