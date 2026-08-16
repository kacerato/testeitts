package com.ardor3d.math.type;

import com.ardor3d.math.Vector3;

public interface ReadOnlyRectangle3 {
    ReadOnlyVector3 getA();

    ReadOnlyVector3 getB();

    ReadOnlyVector3 getC();

    Vector3 random(Vector3 vector3);
}
