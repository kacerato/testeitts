package com.ardor3d.math.type;

import com.ardor3d.math.Vector3;

public interface ReadOnlyRay3 extends ReadOnlyLine3Base {
    boolean intersects(ReadOnlyPlane readOnlyPlane, Vector3 vector3);

    boolean intersects(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, Vector3 vector3, boolean z10);

    boolean intersectsPlanar(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, Vector3 vector3, boolean z10);
}
