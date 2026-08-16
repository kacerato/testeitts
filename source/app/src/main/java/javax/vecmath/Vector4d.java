package javax.vecmath;

import java.io.Serializable;

public class Vector4d extends Tuple4d implements Serializable {
    static final long serialVersionUID = 3938123424117448700L;

    public Vector4d(double d10, double d11, double d12, double d13) {
        super(d10, d11, d12, d13);
    }

    public final double angle(Vector4d vector4d) {
        double dot = dot(vector4d) / (length() * vector4d.length());
        if (dot < -1.0d) {
            dot = -1.0d;
        }
        if (dot > 1.0d) {
            dot = 1.0d;
        }
        return Math.acos(dot);
    }

    public final double dot(Vector4d vector4d) {
        return (this.f92847x * vector4d.f92847x) + (this.f92848y * vector4d.f92848y) + (this.f92849z * vector4d.f92849z) + (this.f92846w * vector4d.f92846w);
    }

    public final double length() {
        double d10 = this.f92847x;
        double d11 = this.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f92849z;
        double d14 = d12 + (d13 * d13);
        double d15 = this.f92846w;
        return Math.sqrt(d14 + (d15 * d15));
    }

    public final double lengthSquared() {
        double d10 = this.f92847x;
        double d11 = this.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f92849z;
        double d14 = d12 + (d13 * d13);
        double d15 = this.f92846w;
        return d14 + (d15 * d15);
    }

    public final void normalize(Vector4d vector4d) {
        double d10 = vector4d.f92847x;
        double d11 = vector4d.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = vector4d.f92849z;
        double d14 = d12 + (d13 * d13);
        double d15 = vector4d.f92846w;
        double sqrt = 1.0d / Math.sqrt(d14 + (d15 * d15));
        this.f92847x = vector4d.f92847x * sqrt;
        this.f92848y = vector4d.f92848y * sqrt;
        this.f92849z = vector4d.f92849z * sqrt;
        this.f92846w = vector4d.f92846w * sqrt;
    }

    public final void set(Tuple3d tuple3d) {
        this.f92847x = tuple3d.f92833x;
        this.f92848y = tuple3d.f92834y;
        this.f92849z = tuple3d.f92835z;
        this.f92846w = 0.0d;
    }

    public Vector4d(double[] dArr) {
        super(dArr);
    }

    public Vector4d(Vector4d vector4d) {
        super(vector4d);
    }

    public Vector4d(Vector4f vector4f) {
        super(vector4f);
    }

    public Vector4d(Tuple4f tuple4f) {
        super(tuple4f);
    }

    public Vector4d(Tuple4d tuple4d) {
        super(tuple4d);
    }

    public final void normalize() {
        double d10 = this.f92847x;
        double d11 = this.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f92849z;
        double d14 = d12 + (d13 * d13);
        double d15 = this.f92846w;
        double sqrt = 1.0d / Math.sqrt(d14 + (d15 * d15));
        this.f92847x *= sqrt;
        this.f92848y *= sqrt;
        this.f92849z *= sqrt;
        this.f92846w *= sqrt;
    }

    public Vector4d(Tuple3d tuple3d) {
        super(tuple3d.f92833x, tuple3d.f92834y, tuple3d.f92835z, 0.0d);
    }

    public Vector4d() {
    }
}
