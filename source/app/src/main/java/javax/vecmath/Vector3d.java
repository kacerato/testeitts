package javax.vecmath;

import java.io.Serializable;

public class Vector3d extends Tuple3d implements Serializable {
    static final long serialVersionUID = 3761969948420550442L;

    public Vector3d(double d10, double d11, double d12) {
        super(d10, d11, d12);
    }

    public final double angle(Vector3d vector3d) {
        double dot = dot(vector3d) / (length() * vector3d.length());
        if (dot < -1.0d) {
            dot = -1.0d;
        }
        if (dot > 1.0d) {
            dot = 1.0d;
        }
        return Math.acos(dot);
    }

    public final void cross(Vector3d vector3d, Vector3d vector3d2) {
        double d10 = vector3d.f92834y;
        double d11 = vector3d2.f92835z;
        double d12 = vector3d.f92835z;
        double d13 = vector3d2.f92834y;
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = vector3d2.f92833x;
        double d16 = vector3d.f92833x;
        this.f92835z = (d16 * d13) - (d10 * d15);
        this.f92833x = d14;
        this.f92834y = (d12 * d15) - (d11 * d16);
    }

    public final double dot(Vector3d vector3d) {
        return (this.f92833x * vector3d.f92833x) + (this.f92834y * vector3d.f92834y) + (this.f92835z * vector3d.f92835z);
    }

    public final double length() {
        double d10 = this.f92833x;
        double d11 = this.f92834y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f92835z;
        return Math.sqrt(d12 + (d13 * d13));
    }

    public final double lengthSquared() {
        double d10 = this.f92833x;
        double d11 = this.f92834y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f92835z;
        return d12 + (d13 * d13);
    }

    public final void normalize(Vector3d vector3d) {
        double d10 = vector3d.f92833x;
        double d11 = vector3d.f92834y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = vector3d.f92835z;
        double sqrt = 1.0d / Math.sqrt(d12 + (d13 * d13));
        this.f92833x = vector3d.f92833x * sqrt;
        this.f92834y = vector3d.f92834y * sqrt;
        this.f92835z = vector3d.f92835z * sqrt;
    }

    public Vector3d(double[] dArr) {
        super(dArr);
    }

    public Vector3d(Vector3d vector3d) {
        super(vector3d);
    }

    public Vector3d(Vector3f vector3f) {
        super(vector3f);
    }

    public Vector3d(Tuple3f tuple3f) {
        super(tuple3f);
    }

    public final void normalize() {
        double d10 = this.f92833x;
        double d11 = this.f92834y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f92835z;
        double sqrt = 1.0d / Math.sqrt(d12 + (d13 * d13));
        this.f92833x *= sqrt;
        this.f92834y *= sqrt;
        this.f92835z *= sqrt;
    }

    public Vector3d(Tuple3d tuple3d) {
        super(tuple3d);
    }

    public Vector3d() {
    }
}
