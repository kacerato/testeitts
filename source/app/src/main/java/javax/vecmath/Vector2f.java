package javax.vecmath;

import java.io.Serializable;

public class Vector2f extends Tuple2f implements Serializable {
    static final long serialVersionUID = -2168194326883512320L;

    public Vector2f(float f10, float f11) {
        super(f10, f11);
    }

    public final float angle(Vector2f vector2f) {
        double dot = dot(vector2f) / (length() * vector2f.length());
        if (dot < -1.0d) {
            dot = -1.0d;
        }
        if (dot > 1.0d) {
            dot = 1.0d;
        }
        return (float) Math.acos(dot);
    }

    public final float dot(Vector2f vector2f) {
        return (this.f92826x * vector2f.f92826x) + (this.f92827y * vector2f.f92827y);
    }

    public final float length() {
        float f10 = this.f92826x;
        float f11 = this.f92827y;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    public final float lengthSquared() {
        float f10 = this.f92826x;
        float f11 = this.f92827y;
        return (f10 * f10) + (f11 * f11);
    }

    public final void normalize(Vector2f vector2f) {
        float f10 = vector2f.f92826x;
        float f11 = vector2f.f92827y;
        float sqrt = (float) (1.0d / Math.sqrt((f10 * f10) + (f11 * f11)));
        this.f92826x = vector2f.f92826x * sqrt;
        this.f92827y = vector2f.f92827y * sqrt;
    }

    public Vector2f(float[] fArr) {
        super(fArr);
    }

    public Vector2f(Vector2f vector2f) {
        super(vector2f);
    }

    public Vector2f(Vector2d vector2d) {
        super(vector2d);
    }

    public final void normalize() {
        float f10 = this.f92826x;
        float f11 = this.f92827y;
        float sqrt = (float) (1.0d / Math.sqrt((f10 * f10) + (f11 * f11)));
        this.f92826x *= sqrt;
        this.f92827y *= sqrt;
    }

    public Vector2f(Tuple2f tuple2f) {
        super(tuple2f);
    }

    public Vector2f(Tuple2d tuple2d) {
        super(tuple2d);
    }

    public Vector2f() {
    }
}
