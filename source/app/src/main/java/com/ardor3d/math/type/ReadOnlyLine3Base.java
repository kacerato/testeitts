package com.ardor3d.math.type;

import com.ardor3d.math.Vector3;

public interface ReadOnlyLine3Base {
    double distanceSquared(ReadOnlyVector3 readOnlyVector3, Vector3 vector3);

    ReadOnlyVector3 getDirection();

    ReadOnlyVector3 getOrigin();
}
