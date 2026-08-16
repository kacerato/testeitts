package com.ardor3d.math.type;

import com.ardor3d.math.Vector3;

public interface ReadOnlyRing {
    ReadOnlyVector3 getCenter();

    double getInnerRadius();

    double getOuterRadius();

    ReadOnlyVector3 getUp();

    Vector3 random(Vector3 vector3);
}
