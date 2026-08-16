package javax.vecmath;

import java.io.Serializable;

public class Vector2d extends Tuple2d implements Serializable {
    static final long serialVersionUID = 8572646365302599857L;

    public Vector2d(double d10, double d11) {
        super(d10, d11);
    }

    public final double angle(Vector2d vector2d) {
        double dot = dot(vector2d) / (length() * vector2d.length());
        if (dot < -1.0d) {
            dot = -1.0d;
        }
        if (dot > 1.0d) {
            dot = 1.0d;
        }
        return Math.acos(dot);
    }

    public final double dot(Vector2d vector2d) {
        return (this.f92824x * vector2d.f92824x) + (this.f92825y * vector2d.f92825y);
    }

    public final double length() {
        double d10 = this.f92824x;
        double d11 = this.f92825y;
        return Math.sqrt((d10 * d10) + (d11 * d11));
    }

    public final double lengthSquared() {
        double d10 = this.f92824x;
        double d11 = this.f92825y;
        return (d10 * d10) + (d11 * d11);
    }

    public final void normalize(Vector2d vector2d) {
        double d10 = vector2d.f92824x;
        double d11 = vector2d.f92825y;
        double sqrt = 1.0d / Math.sqrt((d10 * d10) + (d11 * d11));
        this.f92824x = vector2d.f92824x * sqrt;
        this.f92825y = vector2d.f92825y * sqrt;
    }

    public Vector2d(double[] dArr) {
        super(dArr);
    }

    public Vector2d(Vector2d vector2d) {
        super(vector2d);
    }

    public Vector2d(Vector2f vector2f) {
        super(vector2f);
    }

    public final void normalize() {
        double d10 = this.f92824x;
        double d11 = this.f92825y;
        double sqrt = 1.0d / Math.sqrt((d10 * d10) + (d11 * d11));
        this.f92824x *= sqrt;
        this.f92825y *= sqrt;
    }

    public Vector2d(Tuple2d tuple2d) {
        super(tuple2d);
    }

    public Vector2d(Tuple2f tuple2f) {
        super(tuple2f);
    }

    public Vector2d() {
    }
}
