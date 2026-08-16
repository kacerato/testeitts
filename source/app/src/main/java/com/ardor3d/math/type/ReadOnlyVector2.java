package com.ardor3d.math.type;

import com.ardor3d.math.Vector2;

public interface ReadOnlyVector2 {
    Vector2 add(double d10, double d11, Vector2 vector2);

    Vector2 add(ReadOnlyVector2 readOnlyVector2, Vector2 vector2);

    double angleBetween(ReadOnlyVector2 readOnlyVector2);

    double distance(double d10, double d11);

    double distance(ReadOnlyVector2 readOnlyVector2);

    double distanceSquared(double d10, double d11);

    double distanceSquared(ReadOnlyVector2 readOnlyVector2);

    Vector2 divide(double d10, Vector2 vector2);

    Vector2 divide(ReadOnlyVector2 readOnlyVector2, Vector2 vector2);

    double dot(double d10, double d11);

    double dot(ReadOnlyVector2 readOnlyVector2);

    double getPolarAngle();

    double getValue(int i10);

    double getX();

    float getXf();

    double getY();

    float getYf();

    double length();

    double lengthSquared();

    Vector2 lerp(ReadOnlyVector2 readOnlyVector2, double d10, Vector2 vector2);

    Vector2 multiply(double d10, Vector2 vector2);

    Vector2 multiply(ReadOnlyVector2 readOnlyVector2, Vector2 vector2);

    Vector2 negate(Vector2 vector2);

    Vector2 normalize(Vector2 vector2);

    Vector2 rotateAroundOrigin(double d10, boolean z10, Vector2 vector2);

    Vector2 scaleAdd(double d10, ReadOnlyVector2 readOnlyVector2, Vector2 vector2);

    double smallestAngleBetween(ReadOnlyVector2 readOnlyVector2);

    Vector2 subtract(double d10, double d11, Vector2 vector2);

    Vector2 subtract(ReadOnlyVector2 readOnlyVector2, Vector2 vector2);

    double[] toArray(double[] dArr);
}
