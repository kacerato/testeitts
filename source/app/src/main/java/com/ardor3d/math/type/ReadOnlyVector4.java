package com.ardor3d.math.type;

import com.ardor3d.math.Vector4;

public interface ReadOnlyVector4 {
    Vector4 add(double d10, double d11, double d12, double d13, Vector4 vector4);

    Vector4 add(ReadOnlyVector4 readOnlyVector4, Vector4 vector4);

    double determinant(double d10, double d11, double d12, double d13);

    double determinant(ReadOnlyVector4 readOnlyVector4);

    double distance(double d10, double d11, double d12, double d13);

    double distance(ReadOnlyVector4 readOnlyVector4);

    double distanceSquared(double d10, double d11, double d12, double d13);

    double distanceSquared(ReadOnlyVector4 readOnlyVector4);

    Vector4 divide(double d10, Vector4 vector4);

    Vector4 divide(ReadOnlyVector4 readOnlyVector4, Vector4 vector4);

    double dot(double d10, double d11, double d12, double d13);

    double dot(ReadOnlyVector4 readOnlyVector4);

    double getValue(int i10);

    double getW();

    float getWf();

    double getX();

    float getXf();

    double getY();

    float getYf();

    double getZ();

    float getZf();

    double length();

    double lengthSquared();

    Vector4 lerp(ReadOnlyVector4 readOnlyVector4, double d10, Vector4 vector4);

    Vector4 multiply(double d10, Vector4 vector4);

    Vector4 multiply(ReadOnlyVector4 readOnlyVector4, Vector4 vector4);

    Vector4 negate(Vector4 vector4);

    Vector4 normalize(Vector4 vector4);

    Vector4 scaleAdd(double d10, ReadOnlyVector4 readOnlyVector4, Vector4 vector4);

    Vector4 subtract(double d10, double d11, double d12, double d13, Vector4 vector4);

    Vector4 subtract(ReadOnlyVector4 readOnlyVector4, Vector4 vector4);

    double[] toArray(double[] dArr);
}
