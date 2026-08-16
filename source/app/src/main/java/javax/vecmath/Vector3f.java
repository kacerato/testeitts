package javax.vecmath;

import java.io.Serializable;

public class Vector3f extends Tuple3f implements Serializable {
    static final long serialVersionUID = -7031930069184524614L;

    public Vector3f(float f10, float f11, float f12) {
        super(f10, f11, f12);
    }

    public final float angle(Vector3f vector3f) {
        double dot = dot(vector3f) / (length() * vector3f.length());
        if (dot < -1.0d) {
            dot = -1.0d;
        }
        if (dot > 1.0d) {
            dot = 1.0d;
        }
        return (float) Math.acos(dot);
    }

    public final void cross(Vector3f vector3f, Vector3f vector3f2) {
        float f10 = vector3f.f92837y;
        float f11 = vector3f2.f92838z;
        float f12 = vector3f.f92838z;
        float f13 = vector3f2.f92837y;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = vector3f2.f92836x;
        float f16 = vector3f.f92836x;
        this.f92838z = (f16 * f13) - (f10 * f15);
        this.f92836x = f14;
        this.f92837y = (f12 * f15) - (f11 * f16);
    }

    public final float dot(Vector3f vector3f) {
        return (this.f92836x * vector3f.f92836x) + (this.f92837y * vector3f.f92837y) + (this.f92838z * vector3f.f92838z);
    }

    public final float length() {
        float f10 = this.f92836x;
        float f11 = this.f92837y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f92838z;
        return (float) Math.sqrt(f12 + (f13 * f13));
    }

    public final float lengthSquared() {
        float f10 = this.f92836x;
        float f11 = this.f92837y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f92838z;
        return f12 + (f13 * f13);
    }

    public final void normalize(Vector3f vector3f) {
        float f10 = vector3f.f92836x;
        float f11 = vector3f.f92837y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = vector3f.f92838z;
        float sqrt = (float) (1.0d / Math.sqrt(f12 + (f13 * f13)));
        this.f92836x = vector3f.f92836x * sqrt;
        this.f92837y = vector3f.f92837y * sqrt;
        this.f92838z = vector3f.f92838z * sqrt;
    }

    public Vector3f(float[] fArr) {
        super(fArr);
    }

    public Vector3f(Vector3f vector3f) {
        super(vector3f);
    }

    public Vector3f(Vector3d vector3d) {
        super(vector3d);
    }

    public Vector3f(Tuple3f tuple3f) {
        super(tuple3f);
    }

    public final void normalize() {
        float f10 = this.f92836x;
        float f11 = this.f92837y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f92838z;
        float sqrt = (float) (1.0d / Math.sqrt(f12 + (f13 * f13)));
        this.f92836x *= sqrt;
        this.f92837y *= sqrt;
        this.f92838z *= sqrt;
    }

    public Vector3f(Tuple3d tuple3d) {
        super(tuple3d);
    }

    public Vector3f() {
    }
}
