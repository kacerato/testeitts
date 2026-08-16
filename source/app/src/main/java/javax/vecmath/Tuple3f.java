package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple3f implements Serializable, Cloneable {
    static final long serialVersionUID = 5019834619484343712L;

    public float f92836x;

    public float f92837y;

    public float f92838z;

    public Tuple3f(float f10, float f11, float f12) {
        this.f92836x = f10;
        this.f92837y = f11;
        this.f92838z = f12;
    }

    public final void absolute(Tuple3f tuple3f) {
        this.f92836x = Math.abs(tuple3f.f92836x);
        this.f92837y = Math.abs(tuple3f.f92837y);
        this.f92838z = Math.abs(tuple3f.f92838z);
    }

    public final void add(Tuple3f tuple3f, Tuple3f tuple3f2) {
        this.f92836x = tuple3f.f92836x + tuple3f2.f92836x;
        this.f92837y = tuple3f.f92837y + tuple3f2.f92837y;
        this.f92838z = tuple3f.f92838z + tuple3f2.f92838z;
    }

    public final void clamp(float f10, float f11, Tuple3f tuple3f) {
        float f12 = tuple3f.f92836x;
        if (f12 > f11) {
            this.f92836x = f11;
        } else if (f12 < f10) {
            this.f92836x = f10;
        } else {
            this.f92836x = f12;
        }
        float f13 = tuple3f.f92837y;
        if (f13 > f11) {
            this.f92837y = f11;
        } else if (f13 < f10) {
            this.f92837y = f10;
        } else {
            this.f92837y = f13;
        }
        float f14 = tuple3f.f92838z;
        if (f14 > f11) {
            this.f92838z = f11;
        } else if (f14 < f10) {
            this.f92838z = f10;
        } else {
            this.f92838z = f14;
        }
    }

    public final void clampMax(float f10, Tuple3f tuple3f) {
        float f11 = tuple3f.f92836x;
        if (f11 > f10) {
            this.f92836x = f10;
        } else {
            this.f92836x = f11;
        }
        float f12 = tuple3f.f92837y;
        if (f12 > f10) {
            this.f92837y = f10;
        } else {
            this.f92837y = f12;
        }
        float f13 = tuple3f.f92838z;
        if (f13 > f10) {
            this.f92838z = f10;
        } else {
            this.f92838z = f13;
        }
    }

    public final void clampMin(float f10, Tuple3f tuple3f) {
        float f11 = tuple3f.f92836x;
        if (f11 < f10) {
            this.f92836x = f10;
        } else {
            this.f92836x = f11;
        }
        float f12 = tuple3f.f92837y;
        if (f12 < f10) {
            this.f92837y = f10;
        } else {
            this.f92837y = f12;
        }
        float f13 = tuple3f.f92838z;
        if (f13 < f10) {
            this.f92838z = f10;
        } else {
            this.f92838z = f13;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean epsilonEquals(Tuple3f tuple3f, float f10) {
        float f11 = this.f92836x - tuple3f.f92836x;
        if (Float.isNaN(f11)) {
            return false;
        }
        if (f11 < 0.0f) {
            f11 = -f11;
        }
        if (f11 > f10) {
            return false;
        }
        float f12 = this.f92837y - tuple3f.f92837y;
        if (Float.isNaN(f12)) {
            return false;
        }
        if (f12 < 0.0f) {
            f12 = -f12;
        }
        if (f12 > f10) {
            return false;
        }
        float f13 = this.f92838z - tuple3f.f92838z;
        if (Float.isNaN(f13)) {
            return false;
        }
        if (f13 < 0.0f) {
            f13 = -f13;
        }
        return f13 <= f10;
    }

    public boolean equals(Tuple3f tuple3f) {
        try {
            if (this.f92836x == tuple3f.f92836x && this.f92837y == tuple3f.f92837y) {
                return this.f92838z == tuple3f.f92838z;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(float[] fArr) {
        fArr[0] = this.f92836x;
        fArr[1] = this.f92837y;
        fArr[2] = this.f92838z;
    }

    public final float getX() {
        return this.f92836x;
    }

    public final float getY() {
        return this.f92837y;
    }

    public final float getZ() {
        return this.f92838z;
    }

    public int hashCode() {
        long floatToIntBits = ((((VecMathUtil.floatToIntBits(this.f92836x) + 31) * 31) + VecMathUtil.floatToIntBits(this.f92837y)) * 31) + VecMathUtil.floatToIntBits(this.f92838z);
        return (int) (floatToIntBits ^ (floatToIntBits >> 32));
    }

    public final void interpolate(Tuple3f tuple3f, Tuple3f tuple3f2, float f10) {
        float f11 = 1.0f - f10;
        this.f92836x = (tuple3f.f92836x * f11) + (tuple3f2.f92836x * f10);
        this.f92837y = (tuple3f.f92837y * f11) + (tuple3f2.f92837y * f10);
        this.f92838z = (f11 * tuple3f.f92838z) + (f10 * tuple3f2.f92838z);
    }

    public final void negate(Tuple3f tuple3f) {
        this.f92836x = -tuple3f.f92836x;
        this.f92837y = -tuple3f.f92837y;
        this.f92838z = -tuple3f.f92838z;
    }

    public final void scale(float f10, Tuple3f tuple3f) {
        this.f92836x = tuple3f.f92836x * f10;
        this.f92837y = tuple3f.f92837y * f10;
        this.f92838z = f10 * tuple3f.f92838z;
    }

    public final void scaleAdd(float f10, Tuple3f tuple3f, Tuple3f tuple3f2) {
        this.f92836x = (tuple3f.f92836x * f10) + tuple3f2.f92836x;
        this.f92837y = (tuple3f.f92837y * f10) + tuple3f2.f92837y;
        this.f92838z = (f10 * tuple3f.f92838z) + tuple3f2.f92838z;
    }

    public final void set(float f10, float f11, float f12) {
        this.f92836x = f10;
        this.f92837y = f11;
        this.f92838z = f12;
    }

    public final void setX(float f10) {
        this.f92836x = f10;
    }

    public final void setY(float f10) {
        this.f92837y = f10;
    }

    public final void setZ(float f10) {
        this.f92838z = f10;
    }

    public final void sub(Tuple3f tuple3f, Tuple3f tuple3f2) {
        this.f92836x = tuple3f.f92836x - tuple3f2.f92836x;
        this.f92837y = tuple3f.f92837y - tuple3f2.f92837y;
        this.f92838z = tuple3f.f92838z - tuple3f2.f92838z;
    }

    public String toString() {
        return "(" + this.f92836x + ", " + this.f92837y + ", " + this.f92838z + ")";
    }

    public boolean equals(Object obj) {
        try {
            Tuple3f tuple3f = (Tuple3f) obj;
            if (this.f92836x == tuple3f.f92836x && this.f92837y == tuple3f.f92837y) {
                return this.f92838z == tuple3f.f92838z;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void absolute() {
        this.f92836x = Math.abs(this.f92836x);
        this.f92837y = Math.abs(this.f92837y);
        this.f92838z = Math.abs(this.f92838z);
    }

    public final void add(Tuple3f tuple3f) {
        this.f92836x += tuple3f.f92836x;
        this.f92837y += tuple3f.f92837y;
        this.f92838z += tuple3f.f92838z;
    }

    public final void get(Tuple3f tuple3f) {
        tuple3f.f92836x = this.f92836x;
        tuple3f.f92837y = this.f92837y;
        tuple3f.f92838z = this.f92838z;
    }

    public final void interpolate(Tuple3f tuple3f, float f10) {
        float f11 = 1.0f - f10;
        this.f92836x = (this.f92836x * f11) + (tuple3f.f92836x * f10);
        this.f92837y = (this.f92837y * f11) + (tuple3f.f92837y * f10);
        this.f92838z = (f11 * this.f92838z) + (f10 * tuple3f.f92838z);
    }

    public final void negate() {
        this.f92836x = -this.f92836x;
        this.f92837y = -this.f92837y;
        this.f92838z = -this.f92838z;
    }

    public final void scale(float f10) {
        this.f92836x *= f10;
        this.f92837y *= f10;
        this.f92838z *= f10;
    }

    public final void scaleAdd(float f10, Tuple3f tuple3f) {
        this.f92836x = (this.f92836x * f10) + tuple3f.f92836x;
        this.f92837y = (this.f92837y * f10) + tuple3f.f92837y;
        this.f92838z = (f10 * this.f92838z) + tuple3f.f92838z;
    }

    public final void set(float[] fArr) {
        this.f92836x = fArr[0];
        this.f92837y = fArr[1];
        this.f92838z = fArr[2];
    }

    public final void sub(Tuple3f tuple3f) {
        this.f92836x -= tuple3f.f92836x;
        this.f92837y -= tuple3f.f92837y;
        this.f92838z -= tuple3f.f92838z;
    }

    public Tuple3f(float[] fArr) {
        this.f92836x = fArr[0];
        this.f92837y = fArr[1];
        this.f92838z = fArr[2];
    }

    public final void set(Tuple3f tuple3f) {
        this.f92836x = tuple3f.f92836x;
        this.f92837y = tuple3f.f92837y;
        this.f92838z = tuple3f.f92838z;
    }

    public Tuple3f(Tuple3f tuple3f) {
        this.f92836x = tuple3f.f92836x;
        this.f92837y = tuple3f.f92837y;
        this.f92838z = tuple3f.f92838z;
    }

    public final void clampMax(float f10) {
        if (this.f92836x > f10) {
            this.f92836x = f10;
        }
        if (this.f92837y > f10) {
            this.f92837y = f10;
        }
        if (this.f92838z > f10) {
            this.f92838z = f10;
        }
    }

    public final void clampMin(float f10) {
        if (this.f92836x < f10) {
            this.f92836x = f10;
        }
        if (this.f92837y < f10) {
            this.f92837y = f10;
        }
        if (this.f92838z < f10) {
            this.f92838z = f10;
        }
    }

    public final void set(Tuple3d tuple3d) {
        this.f92836x = (float) tuple3d.f92833x;
        this.f92837y = (float) tuple3d.f92834y;
        this.f92838z = (float) tuple3d.f92835z;
    }

    public Tuple3f(Tuple3d tuple3d) {
        this.f92836x = (float) tuple3d.f92833x;
        this.f92837y = (float) tuple3d.f92834y;
        this.f92838z = (float) tuple3d.f92835z;
    }

    public final void clamp(float f10, float f11) {
        float f12 = this.f92836x;
        if (f12 > f11) {
            this.f92836x = f11;
        } else if (f12 < f10) {
            this.f92836x = f10;
        }
        float f13 = this.f92837y;
        if (f13 > f11) {
            this.f92837y = f11;
        } else if (f13 < f10) {
            this.f92837y = f10;
        }
        float f14 = this.f92838z;
        if (f14 > f11) {
            this.f92838z = f11;
        } else if (f14 < f10) {
            this.f92838z = f10;
        }
    }

    public Tuple3f() {
        this.f92836x = 0.0f;
        this.f92837y = 0.0f;
        this.f92838z = 0.0f;
    }
}
