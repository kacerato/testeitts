package com.ardor3d.scenegraph.controller.interpolation;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;

public class LinearVector3InterpolationController extends Vector3InterpolationController {
    static final boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 1;

    @Override
    public Vector3 interpolateVectors(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, double d10, Vector3 vector3) {
        return vector3.lerpLocal(readOnlyVector3, readOnlyVector32, d10);
    }
}
