package com.ardor3d.math.type;

public interface ReadOnlyPlane {

    public enum Side {
        Inside,
        Outside,
        Neither
    }

    double getConstant();

    ReadOnlyVector3 getNormal();

    double pseudoDistance(ReadOnlyVector3 readOnlyVector3);

    Side whichSide(ReadOnlyVector3 readOnlyVector3);
}
