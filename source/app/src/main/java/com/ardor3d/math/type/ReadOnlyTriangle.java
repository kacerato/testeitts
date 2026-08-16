package com.ardor3d.math.type;

public interface ReadOnlyTriangle {
    ReadOnlyVector3 get(int i10);

    ReadOnlyVector3 getA();

    ReadOnlyVector3 getB();

    ReadOnlyVector3 getC();

    ReadOnlyVector3 getCenter();

    int getIndex();

    ReadOnlyVector3 getNormal();
}
