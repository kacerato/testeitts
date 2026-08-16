package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple4f implements Serializable, Cloneable {
    static final long serialVersionUID = 7068460319248845763L;

    public float f92850w;

    public float f92851x;

    public float f92852y;

    public float f92853z;

    public Tuple4f(float f10, float f11, float f12, float f13) {
        this.f92851x = f10;
        this.f92852y = f11;
        this.f92853z = f12;
        this.f92850w = f13;
    }

    public final void absolute(Tuple4f tuple4f) {
        this.f92851x = Math.abs(tuple4f.f92851x);
        this.f92852y = Math.abs(tuple4f.f92852y);
        this.f92853z = Math.abs(tuple4f.f92853z);
        this.f92850w = Math.abs(tuple4f.f92850w);
    }

    public final void add(Tuple4f tuple4f, Tuple4f tuple4f2) {
        this.f92851x = tuple4f.f92851x + tuple4f2.f92851x;
        this.f92852y = tuple4f.f92852y + tuple4f2.f92852y;
        this.f92853z = tuple4f.f92853z + tuple4f2.f92853z;
        this.f92850w = tuple4f.f92850w + tuple4f2.f92850w;
    }

    public final void clamp(float f10, float f11, Tuple4f tuple4f) {
        float f12 = tuple4f.f92851x;
        if (f12 > f11) {
            this.f92851x = f11;
        } else if (f12 < f10) {
            this.f92851x = f10;
        } else {
            this.f92851x = f12;
        }
        float f13 = tuple4f.f92852y;
        if (f13 > f11) {
            this.f92852y = f11;
        } else if (f13 < f10) {
            this.f92852y = f10;
        } else {
            this.f92852y = f13;
        }
        float f14 = tuple4f.f92853z;
        if (f14 > f11) {
            this.f92853z = f11;
        } else if (f14 < f10) {
            this.f92853z = f10;
        } else {
            this.f92853z = f14;
        }
        float f15 = tuple4f.f92850w;
        if (f15 > f11) {
            this.f92850w = f11;
        } else if (f15 < f10) {
            this.f92850w = f10;
        } else {
            this.f92850w = f15;
        }
    }

    public final void clampMax(float f10, Tuple4f tuple4f) {
        float f11 = tuple4f.f92851x;
        if (f11 > f10) {
            this.f92851x = f10;
        } else {
            this.f92851x = f11;
        }
        float f12 = tuple4f.f92852y;
        if (f12 > f10) {
            this.f92852y = f10;
        } else {
            this.f92852y = f12;
        }
        float f13 = tuple4f.f92853z;
        if (f13 > f10) {
            this.f92853z = f10;
        } else {
            this.f92853z = f13;
        }
        if (tuple4f.f92850w > f10) {
            this.f92850w = f10;
        } else {
            this.f92850w = tuple4f.f92853z;
        }
    }

    public final void clampMin(float f10, Tuple4f tuple4f) {
        float f11 = tuple4f.f92851x;
        if (f11 < f10) {
            this.f92851x = f10;
        } else {
            this.f92851x = f11;
        }
        float f12 = tuple4f.f92852y;
        if (f12 < f10) {
            this.f92852y = f10;
        } else {
            this.f92852y = f12;
        }
        float f13 = tuple4f.f92853z;
        if (f13 < f10) {
            this.f92853z = f10;
        } else {
            this.f92853z = f13;
        }
        float f14 = tuple4f.f92850w;
        if (f14 < f10) {
            this.f92850w = f10;
        } else {
            this.f92850w = f14;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean epsilonEquals(Tuple4f tuple4f, float f10) {
        float f11 = this.f92851x - tuple4f.f92851x;
        if (Float.isNaN(f11)) {
            return false;
        }
        if (f11 < 0.0f) {
            f11 = -f11;
        }
        if (f11 > f10) {
            return false;
        }
        float f12 = this.f92852y - tuple4f.f92852y;
        if (Float.isNaN(f12)) {
            return false;
        }
        if (f12 < 0.0f) {
            f12 = -f12;
        }
        if (f12 > f10) {
            return false;
        }
        float f13 = this.f92853z - tuple4f.f92853z;
        if (Float.isNaN(f13)) {
            return false;
        }
        if (f13 < 0.0f) {
            f13 = -f13;
        }
        if (f13 > f10) {
            return false;
        }
        float f14 = this.f92850w - tuple4f.f92850w;
        if (Float.isNaN(f14)) {
            return false;
        }
        if (f14 < 0.0f) {
            f14 = -f14;
        }
        return f14 <= f10;
    }

    public boolean equals(Tuple4f tuple4f) {
        try {
            if (this.f92851x == tuple4f.f92851x && this.f92852y == tuple4f.f92852y && this.f92853z == tuple4f.f92853z) {
                return this.f92850w == tuple4f.f92850w;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(float[] fArr) {
        fArr[0] = this.f92851x;
        fArr[1] = this.f92852y;
        fArr[2] = this.f92853z;
        fArr[3] = this.f92850w;
    }

    public final float getW() {
        return this.f92850w;
    }

    public final float getX() {
        return this.f92851x;
    }

    public final float getY() {
        return this.f92852y;
    }

    public final float getZ() {
        return this.f92853z;
    }

    public int hashCode() {
        long floatToIntBits = ((((((VecMathUtil.floatToIntBits(this.f92851x) + 31) * 31) + VecMathUtil.floatToIntBits(this.f92852y)) * 31) + VecMathUtil.floatToIntBits(this.f92853z)) * 31) + VecMathUtil.floatToIntBits(this.f92850w);
        return (int) (floatToIntBits ^ (floatToIntBits >> 32));
    }

    public void interpolate(Tuple4f tuple4f, Tuple4f tuple4f2, float f10) {
        float f11 = 1.0f - f10;
        this.f92851x = (tuple4f.f92851x * f11) + (tuple4f2.f92851x * f10);
        this.f92852y = (tuple4f.f92852y * f11) + (tuple4f2.f92852y * f10);
        this.f92853z = (tuple4f.f92853z * f11) + (tuple4f2.f92853z * f10);
        this.f92850w = (f11 * tuple4f.f92850w) + (f10 * tuple4f2.f92850w);
    }

    public final void negate(Tuple4f tuple4f) {
        this.f92851x = -tuple4f.f92851x;
        this.f92852y = -tuple4f.f92852y;
        this.f92853z = -tuple4f.f92853z;
        this.f92850w = -tuple4f.f92850w;
    }

    public final void scale(float f10, Tuple4f tuple4f) {
        this.f92851x = tuple4f.f92851x * f10;
        this.f92852y = tuple4f.f92852y * f10;
        this.f92853z = tuple4f.f92853z * f10;
        this.f92850w = f10 * tuple4f.f92850w;
    }

    public final void scaleAdd(float f10, Tuple4f tuple4f, Tuple4f tuple4f2) {
        this.f92851x = (tuple4f.f92851x * f10) + tuple4f2.f92851x;
        this.f92852y = (tuple4f.f92852y * f10) + tuple4f2.f92852y;
        this.f92853z = (tuple4f.f92853z * f10) + tuple4f2.f92853z;
        this.f92850w = (f10 * tuple4f.f92850w) + tuple4f2.f92850w;
    }

    public final void set(float f10, float f11, float f12, float f13) {
        this.f92851x = f10;
        this.f92852y = f11;
        this.f92853z = f12;
        this.f92850w = f13;
    }

    public final void setW(float f10) {
        this.f92850w = f10;
    }

    public final void setX(float f10) {
        this.f92851x = f10;
    }

    public final void setY(float f10) {
        this.f92852y = f10;
    }

    public final void setZ(float f10) {
        this.f92853z = f10;
    }

    public final void sub(Tuple4f tuple4f, Tuple4f tuple4f2) {
        this.f92851x = tuple4f.f92851x - tuple4f2.f92851x;
        this.f92852y = tuple4f.f92852y - tuple4f2.f92852y;
        this.f92853z = tuple4f.f92853z - tuple4f2.f92853z;
        this.f92850w = tuple4f.f92850w - tuple4f2.f92850w;
    }

    public String toString() {
        return "(" + this.f92851x + ", " + this.f92852y + ", " + this.f92853z + ", " + this.f92850w + ")";
    }

    public boolean equals(Object obj) {
        try {
            Tuple4f tuple4f = (Tuple4f) obj;
            if (this.f92851x == tuple4f.f92851x && this.f92852y == tuple4f.f92852y && this.f92853z == tuple4f.f92853z) {
                return this.f92850w == tuple4f.f92850w;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void absolute() {
        this.f92851x = Math.abs(this.f92851x);
        this.f92852y = Math.abs(this.f92852y);
        this.f92853z = Math.abs(this.f92853z);
        this.f92850w = Math.abs(this.f92850w);
    }

    public final void add(Tuple4f tuple4f) {
        this.f92851x += tuple4f.f92851x;
        this.f92852y += tuple4f.f92852y;
        this.f92853z += tuple4f.f92853z;
        this.f92850w += tuple4f.f92850w;
    }

    public final void get(Tuple4f tuple4f) {
        tuple4f.f92851x = this.f92851x;
        tuple4f.f92852y = this.f92852y;
        tuple4f.f92853z = this.f92853z;
        tuple4f.f92850w = this.f92850w;
    }

    public void interpolate(Tuple4f tuple4f, float f10) {
        float f11 = 1.0f - f10;
        this.f92851x = (this.f92851x * f11) + (tuple4f.f92851x * f10);
        this.f92852y = (this.f92852y * f11) + (tuple4f.f92852y * f10);
        this.f92853z = (this.f92853z * f11) + (tuple4f.f92853z * f10);
        this.f92850w = (f11 * this.f92850w) + (f10 * tuple4f.f92850w);
    }

    public final void negate() {
        this.f92851x = -this.f92851x;
        this.f92852y = -this.f92852y;
        this.f92853z = -this.f92853z;
        this.f92850w = -this.f92850w;
    }

    public final void scale(float f10) {
        this.f92851x *= f10;
        this.f92852y *= f10;
        this.f92853z *= f10;
        this.f92850w *= f10;
    }

    public final void scaleAdd(float f10, Tuple4f tuple4f) {
        this.f92851x = (this.f92851x * f10) + tuple4f.f92851x;
        this.f92852y = (this.f92852y * f10) + tuple4f.f92852y;
        this.f92853z = (this.f92853z * f10) + tuple4f.f92853z;
        this.f92850w = (f10 * this.f92850w) + tuple4f.f92850w;
    }

    public final void set(float[] fArr) {
        this.f92851x = fArr[0];
        this.f92852y = fArr[1];
        this.f92853z = fArr[2];
        this.f92850w = fArr[3];
    }

    public final void sub(Tuple4f tuple4f) {
        this.f92851x -= tuple4f.f92851x;
        this.f92852y -= tuple4f.f92852y;
        this.f92853z -= tuple4f.f92853z;
        this.f92850w -= tuple4f.f92850w;
    }

    public Tuple4f(float[] fArr) {
        this.f92851x = fArr[0];
        this.f92852y = fArr[1];
        this.f92853z = fArr[2];
        this.f92850w = fArr[3];
    }

    public final void set(Tuple4f tuple4f) {
        this.f92851x = tuple4f.f92851x;
        this.f92852y = tuple4f.f92852y;
        this.f92853z = tuple4f.f92853z;
        this.f92850w = tuple4f.f92850w;
    }

    public Tuple4f(Tuple4f tuple4f) {
        this.f92851x = tuple4f.f92851x;
        this.f92852y = tuple4f.f92852y;
        this.f92853z = tuple4f.f92853z;
        this.f92850w = tuple4f.f92850w;
    }

    public final void clampMax(float f10) {
        if (this.f92851x > f10) {
            this.f92851x = f10;
        }
        if (this.f92852y > f10) {
            this.f92852y = f10;
        }
        if (this.f92853z > f10) {
            this.f92853z = f10;
        }
        if (this.f92850w > f10) {
            this.f92850w = f10;
        }
    }

    public final void clampMin(float f10) {
        if (this.f92851x < f10) {
            this.f92851x = f10;
        }
        if (this.f92852y < f10) {
            this.f92852y = f10;
        }
        if (this.f92853z < f10) {
            this.f92853z = f10;
        }
        if (this.f92850w < f10) {
            this.f92850w = f10;
        }
    }

    public final void set(Tuple4d tuple4d) {
        this.f92851x = (float) tuple4d.f92847x;
        this.f92852y = (float) tuple4d.f92848y;
        this.f92853z = (float) tuple4d.f92849z;
        this.f92850w = (float) tuple4d.f92846w;
    }

    public Tuple4f(Tuple4d tuple4d) {
        this.f92851x = (float) tuple4d.f92847x;
        this.f92852y = (float) tuple4d.f92848y;
        this.f92853z = (float) tuple4d.f92849z;
        this.f92850w = (float) tuple4d.f92846w;
    }

    public final void clamp(float f10, float f11) {
        float f12 = this.f92851x;
        if (f12 > f11) {
            this.f92851x = f11;
        } else if (f12 < f10) {
            this.f92851x = f10;
        }
        float f13 = this.f92852y;
        if (f13 > f11) {
            this.f92852y = f11;
        } else if (f13 < f10) {
            this.f92852y = f10;
        }
        float f14 = this.f92853z;
        if (f14 > f11) {
            this.f92853z = f11;
        } else if (f14 < f10) {
            this.f92853z = f10;
        }
        float f15 = this.f92850w;
        if (f15 > f11) {
            this.f92850w = f11;
        } else if (f15 < f10) {
            this.f92850w = f10;
        }
    }

    public Tuple4f() {
        this.f92851x = 0.0f;
        this.f92852y = 0.0f;
        this.f92853z = 0.0f;
        this.f92850w = 0.0f;
    }
}
