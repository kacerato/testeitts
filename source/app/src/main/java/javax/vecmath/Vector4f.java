package javax.vecmath;

import java.io.Serializable;

public class Vector4f extends Tuple4f implements Serializable {
    static final long serialVersionUID = 8749319902347760659L;

    public Vector4f(float f10, float f11, float f12, float f13) {
        super(f10, f11, f12, f13);
    }

    public final float angle(Vector4f vector4f) {
        double dot = dot(vector4f) / (length() * vector4f.length());
        if (dot < -1.0d) {
            dot = -1.0d;
        }
        if (dot > 1.0d) {
            dot = 1.0d;
        }
        return (float) Math.acos(dot);
    }

    public final float dot(Vector4f vector4f) {
        return (this.f92851x * vector4f.f92851x) + (this.f92852y * vector4f.f92852y) + (this.f92853z * vector4f.f92853z) + (this.f92850w * vector4f.f92850w);
    }

    public final float length() {
        float f10 = this.f92851x;
        float f11 = this.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f92853z;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f92850w;
        return (float) Math.sqrt(f14 + (f15 * f15));
    }

    public final float lengthSquared() {
        float f10 = this.f92851x;
        float f11 = this.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f92853z;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f92850w;
        return f14 + (f15 * f15);
    }

    public final void normalize(Vector4f vector4f) {
        float f10 = vector4f.f92851x;
        float f11 = vector4f.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = vector4f.f92853z;
        float f14 = f12 + (f13 * f13);
        float f15 = vector4f.f92850w;
        float sqrt = (float) (1.0d / Math.sqrt(f14 + (f15 * f15)));
        this.f92851x = vector4f.f92851x * sqrt;
        this.f92852y = vector4f.f92852y * sqrt;
        this.f92853z = vector4f.f92853z * sqrt;
        this.f92850w = vector4f.f92850w * sqrt;
    }

    public final void set(Tuple3f tuple3f) {
        this.f92851x = tuple3f.f92836x;
        this.f92852y = tuple3f.f92837y;
        this.f92853z = tuple3f.f92838z;
        this.f92850w = 0.0f;
    }

    public Vector4f(float[] fArr) {
        super(fArr);
    }

    public Vector4f(Vector4f vector4f) {
        super(vector4f);
    }

    public Vector4f(Vector4d vector4d) {
        super(vector4d);
    }

    public Vector4f(Tuple4f tuple4f) {
        super(tuple4f);
    }

    public Vector4f(Tuple4d tuple4d) {
        super(tuple4d);
    }

    public final void normalize() {
        float f10 = this.f92851x;
        float f11 = this.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f92853z;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f92850w;
        float sqrt = (float) (1.0d / Math.sqrt(f14 + (f15 * f15)));
        this.f92851x *= sqrt;
        this.f92852y *= sqrt;
        this.f92853z *= sqrt;
        this.f92850w *= sqrt;
    }

    public Vector4f(Tuple3f tuple3f) {
        super(tuple3f.f92836x, tuple3f.f92837y, tuple3f.f92838z, 0.0f);
    }

    public Vector4f() {
    }
}
