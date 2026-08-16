package com.ardor3d.spline;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;

public class CatmullRomSpline implements Spline {
    @Override
    public Vector3 interpolate(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, ReadOnlyVector3 readOnlyVector34, double d10) {
        return interpolate(readOnlyVector3, readOnlyVector32, readOnlyVector33, readOnlyVector34, d10, new Vector3());
    }

    @Override
    public Vector3 interpolate(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, ReadOnlyVector3 readOnlyVector34, double d10, Vector3 vector3) {
        if (vector3 != null && readOnlyVector3 != null && readOnlyVector32 != null && readOnlyVector33 != null && readOnlyVector34 != null) {
            if (d10 <= 0.0d) {
                vector3.set(readOnlyVector32);
            } else if (d10 >= 1.0d) {
                vector3.set(readOnlyVector33);
            } else {
                double d11 = d10 * d10;
                double d12 = d11 * d10;
                vector3.setX(((readOnlyVector32.getX() * 2.0d) + (((-readOnlyVector3.getX()) + readOnlyVector33.getX()) * d10) + (((((readOnlyVector3.getX() * 2.0d) - (readOnlyVector32.getX() * 5.0d)) + (readOnlyVector33.getX() * 4.0d)) - readOnlyVector34.getX()) * d11) + (((((-readOnlyVector3.getX()) + (readOnlyVector32.getX() * 3.0d)) - (readOnlyVector33.getX() * 3.0d)) + readOnlyVector34.getX()) * d12)) * 0.5d);
                vector3.setY(((readOnlyVector32.getY() * 2.0d) + (((-readOnlyVector3.getY()) + readOnlyVector33.getY()) * d10) + (((((readOnlyVector3.getY() * 2.0d) - (readOnlyVector32.getY() * 5.0d)) + (readOnlyVector33.getY() * 4.0d)) - readOnlyVector34.getY()) * d11) + (((((-readOnlyVector3.getY()) + (readOnlyVector32.getY() * 3.0d)) - (readOnlyVector33.getY() * 3.0d)) + readOnlyVector34.getY()) * d12)) * 0.5d);
                vector3.setZ(((readOnlyVector32.getZ() * 2.0d) + (((-readOnlyVector3.getZ()) + readOnlyVector33.getZ()) * d10) + (((((readOnlyVector3.getZ() * 2.0d) - (readOnlyVector32.getZ() * 5.0d)) + (readOnlyVector33.getZ() * 4.0d)) - readOnlyVector34.getZ()) * d11) + (((((-readOnlyVector3.getZ()) + (readOnlyVector32.getZ() * 3.0d)) - (readOnlyVector33.getZ() * 3.0d)) + readOnlyVector34.getZ()) * d12)) * 0.5d);
            }
        }
        return vector3;
    }
}
