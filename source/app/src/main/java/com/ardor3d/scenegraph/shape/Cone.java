package com.ardor3d.scenegraph.shape;

public class Cone extends Cylinder {
    private static final long serialVersionUID = 1;

    public Cone() {
    }

    public void setHalfAngle(float f10) {
        setRadius1(Math.tan(f10));
    }

    public Cone(String str, int i10, int i11, float f10, float f11) {
        this(str, i10, i11, f10, f11, true);
    }

    public Cone(String str, int i10, int i11, float f10, float f11, boolean z10) {
        super(str, i10, i11, f10, f11, z10);
        setRadius2(0.0d);
    }
}
