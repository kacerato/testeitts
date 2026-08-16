package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple2f implements Serializable, Cloneable {
    static final long serialVersionUID = 9011180388985266884L;

    public float f92826x;

    public float f92827y;

    public Tuple2f(float f10, float f11) {
        this.f92826x = f10;
        this.f92827y = f11;
    }

    public final void absolute(Tuple2f tuple2f) {
        this.f92826x = Math.abs(tuple2f.f92826x);
        this.f92827y = Math.abs(tuple2f.f92827y);
    }

    public final void add(Tuple2f tuple2f, Tuple2f tuple2f2) {
        this.f92826x = tuple2f.f92826x + tuple2f2.f92826x;
        this.f92827y = tuple2f.f92827y + tuple2f2.f92827y;
    }

    public final void clamp(float f10, float f11, Tuple2f tuple2f) {
        float f12 = tuple2f.f92826x;
        if (f12 > f11) {
            this.f92826x = f11;
        } else if (f12 < f10) {
            this.f92826x = f10;
        } else {
            this.f92826x = f12;
        }
        float f13 = tuple2f.f92827y;
        if (f13 > f11) {
            this.f92827y = f11;
        } else if (f13 < f10) {
            this.f92827y = f10;
        } else {
            this.f92827y = f13;
        }
    }

    public final void clampMax(float f10, Tuple2f tuple2f) {
        float f11 = tuple2f.f92826x;
        if (f11 > f10) {
            this.f92826x = f10;
        } else {
            this.f92826x = f11;
        }
        float f12 = tuple2f.f92827y;
        if (f12 > f10) {
            this.f92827y = f10;
        } else {
            this.f92827y = f12;
        }
    }

    public final void clampMin(float f10, Tuple2f tuple2f) {
        float f11 = tuple2f.f92826x;
        if (f11 < f10) {
            this.f92826x = f10;
        } else {
            this.f92826x = f11;
        }
        float f12 = tuple2f.f92827y;
        if (f12 < f10) {
            this.f92827y = f10;
        } else {
            this.f92827y = f12;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean epsilonEquals(Tuple2f tuple2f, float f10) {
        float f11 = this.f92826x - tuple2f.f92826x;
        if (Float.isNaN(f11)) {
            return false;
        }
        if (f11 < 0.0f) {
            f11 = -f11;
        }
        if (f11 > f10) {
            return false;
        }
        float f12 = this.f92827y - tuple2f.f92827y;
        if (Float.isNaN(f12)) {
            return false;
        }
        if (f12 < 0.0f) {
            f12 = -f12;
        }
        return f12 <= f10;
    }

    public boolean equals(Tuple2f tuple2f) {
        try {
            if (this.f92826x == tuple2f.f92826x) {
                return this.f92827y == tuple2f.f92827y;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(float[] fArr) {
        fArr[0] = this.f92826x;
        fArr[1] = this.f92827y;
    }

    public final float getX() {
        return this.f92826x;
    }

    public final float getY() {
        return this.f92827y;
    }

    public int hashCode() {
        long floatToIntBits = ((VecMathUtil.floatToIntBits(this.f92826x) + 31) * 31) + VecMathUtil.floatToIntBits(this.f92827y);
        return (int) (floatToIntBits ^ (floatToIntBits >> 32));
    }

    public final void interpolate(Tuple2f tuple2f, Tuple2f tuple2f2, float f10) {
        float f11 = 1.0f - f10;
        this.f92826x = (tuple2f.f92826x * f11) + (tuple2f2.f92826x * f10);
        this.f92827y = (f11 * tuple2f.f92827y) + (f10 * tuple2f2.f92827y);
    }

    public final void negate(Tuple2f tuple2f) {
        this.f92826x = -tuple2f.f92826x;
        this.f92827y = -tuple2f.f92827y;
    }

    public final void scale(float f10, Tuple2f tuple2f) {
        this.f92826x = tuple2f.f92826x * f10;
        this.f92827y = f10 * tuple2f.f92827y;
    }

    public final void scaleAdd(float f10, Tuple2f tuple2f, Tuple2f tuple2f2) {
        this.f92826x = (tuple2f.f92826x * f10) + tuple2f2.f92826x;
        this.f92827y = (f10 * tuple2f.f92827y) + tuple2f2.f92827y;
    }

    public final void set(float f10, float f11) {
        this.f92826x = f10;
        this.f92827y = f11;
    }

    public final void setX(float f10) {
        this.f92826x = f10;
    }

    public final void setY(float f10) {
        this.f92827y = f10;
    }

    public final void sub(Tuple2f tuple2f, Tuple2f tuple2f2) {
        this.f92826x = tuple2f.f92826x - tuple2f2.f92826x;
        this.f92827y = tuple2f.f92827y - tuple2f2.f92827y;
    }

    public String toString() {
        return "(" + this.f92826x + ", " + this.f92827y + ")";
    }

    public boolean equals(Object obj) {
        try {
            Tuple2f tuple2f = (Tuple2f) obj;
            if (this.f92826x == tuple2f.f92826x) {
                return this.f92827y == tuple2f.f92827y;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void absolute() {
        this.f92826x = Math.abs(this.f92826x);
        this.f92827y = Math.abs(this.f92827y);
    }

    public final void add(Tuple2f tuple2f) {
        this.f92826x += tuple2f.f92826x;
        this.f92827y += tuple2f.f92827y;
    }

    public final void interpolate(Tuple2f tuple2f, float f10) {
        float f11 = 1.0f - f10;
        this.f92826x = (this.f92826x * f11) + (tuple2f.f92826x * f10);
        this.f92827y = (f11 * this.f92827y) + (f10 * tuple2f.f92827y);
    }

    public final void negate() {
        this.f92826x = -this.f92826x;
        this.f92827y = -this.f92827y;
    }

    public final void scale(float f10) {
        this.f92826x *= f10;
        this.f92827y *= f10;
    }

    public final void scaleAdd(float f10, Tuple2f tuple2f) {
        this.f92826x = (this.f92826x * f10) + tuple2f.f92826x;
        this.f92827y = (f10 * this.f92827y) + tuple2f.f92827y;
    }

    public final void set(float[] fArr) {
        this.f92826x = fArr[0];
        this.f92827y = fArr[1];
    }

    public final void sub(Tuple2f tuple2f) {
        this.f92826x -= tuple2f.f92826x;
        this.f92827y -= tuple2f.f92827y;
    }

    public Tuple2f(float[] fArr) {
        this.f92826x = fArr[0];
        this.f92827y = fArr[1];
    }

    public final void set(Tuple2f tuple2f) {
        this.f92826x = tuple2f.f92826x;
        this.f92827y = tuple2f.f92827y;
    }

    public Tuple2f(Tuple2f tuple2f) {
        this.f92826x = tuple2f.f92826x;
        this.f92827y = tuple2f.f92827y;
    }

    public final void clampMax(float f10) {
        if (this.f92826x > f10) {
            this.f92826x = f10;
        }
        if (this.f92827y > f10) {
            this.f92827y = f10;
        }
    }

    public final void clampMin(float f10) {
        if (this.f92826x < f10) {
            this.f92826x = f10;
        }
        if (this.f92827y < f10) {
            this.f92827y = f10;
        }
    }

    public final void set(Tuple2d tuple2d) {
        this.f92826x = (float) tuple2d.f92824x;
        this.f92827y = (float) tuple2d.f92825y;
    }

    public final void clamp(float f10, float f11) {
        float f12 = this.f92826x;
        if (f12 > f11) {
            this.f92826x = f11;
        } else if (f12 < f10) {
            this.f92826x = f10;
        }
        float f13 = this.f92827y;
        if (f13 > f11) {
            this.f92827y = f11;
        } else if (f13 < f10) {
            this.f92827y = f10;
        }
    }

    public Tuple2f(Tuple2d tuple2d) {
        this.f92826x = (float) tuple2d.f92824x;
        this.f92827y = (float) tuple2d.f92825y;
    }

    public Tuple2f() {
        this.f92826x = 0.0f;
        this.f92827y = 0.0f;
    }
}
