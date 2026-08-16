package com.ardor3d.spline;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;

public interface Spline {
    Vector3 interpolate(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, ReadOnlyVector3 readOnlyVector34, double d10);

    Vector3 interpolate(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, ReadOnlyVector3 readOnlyVector34, double d10, Vector3 vector3);
}
