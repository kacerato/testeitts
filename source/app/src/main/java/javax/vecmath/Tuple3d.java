package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple3d implements Serializable, Cloneable {
    static final long serialVersionUID = 5542096614926168415L;

    public double f92833x;

    public double f92834y;

    public double f92835z;

    public Tuple3d(double d10, double d11, double d12) {
        this.f92833x = d10;
        this.f92834y = d11;
        this.f92835z = d12;
    }

    public final void absolute(Tuple3d tuple3d) {
        this.f92833x = Math.abs(tuple3d.f92833x);
        this.f92834y = Math.abs(tuple3d.f92834y);
        this.f92835z = Math.abs(tuple3d.f92835z);
    }

    public final void add(Tuple3d tuple3d, Tuple3d tuple3d2) {
        this.f92833x = tuple3d.f92833x + tuple3d2.f92833x;
        this.f92834y = tuple3d.f92834y + tuple3d2.f92834y;
        this.f92835z = tuple3d.f92835z + tuple3d2.f92835z;
    }

    public final void clamp(float f10, float f11, Tuple3d tuple3d) {
        clamp(f10, f11, tuple3d);
    }

    public final void clampMax(float f10, Tuple3d tuple3d) {
        clampMax(f10, tuple3d);
    }

    public final void clampMin(float f10, Tuple3d tuple3d) {
        clampMin(f10, tuple3d);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean epsilonEquals(Tuple3d tuple3d, double d10) {
        double d11 = this.f92833x - tuple3d.f92833x;
        if (Double.isNaN(d11)) {
            return false;
        }
        if (d11 < 0.0d) {
            d11 = -d11;
        }
        if (d11 > d10) {
            return false;
        }
        double d12 = this.f92834y - tuple3d.f92834y;
        if (Double.isNaN(d12)) {
            return false;
        }
        if (d12 < 0.0d) {
            d12 = -d12;
        }
        if (d12 > d10) {
            return false;
        }
        double d13 = this.f92835z - tuple3d.f92835z;
        if (Double.isNaN(d13)) {
            return false;
        }
        if (d13 < 0.0d) {
            d13 = -d13;
        }
        return d13 <= d10;
    }

    public boolean equals(Tuple3d tuple3d) {
        try {
            if (this.f92833x == tuple3d.f92833x && this.f92834y == tuple3d.f92834y) {
                return this.f92835z == tuple3d.f92835z;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(double[] dArr) {
        dArr[0] = this.f92833x;
        dArr[1] = this.f92834y;
        dArr[2] = this.f92835z;
    }

    public final double getX() {
        return this.f92833x;
    }

    public final double getY() {
        return this.f92834y;
    }

    public final double getZ() {
        return this.f92835z;
    }

    public int hashCode() {
        long doubleToLongBits = ((((VecMathUtil.doubleToLongBits(this.f92833x) + 31) * 31) + VecMathUtil.doubleToLongBits(this.f92834y)) * 31) + VecMathUtil.doubleToLongBits(this.f92835z);
        return (int) (doubleToLongBits ^ (doubleToLongBits >> 32));
    }

    public final void interpolate(Tuple3d tuple3d, Tuple3d tuple3d2, float f10) {
        interpolate(tuple3d, tuple3d2, f10);
    }

    public final void negate(Tuple3d tuple3d) {
        this.f92833x = -tuple3d.f92833x;
        this.f92834y = -tuple3d.f92834y;
        this.f92835z = -tuple3d.f92835z;
    }

    public final void scale(double d10, Tuple3d tuple3d) {
        this.f92833x = tuple3d.f92833x * d10;
        this.f92834y = tuple3d.f92834y * d10;
        this.f92835z = d10 * tuple3d.f92835z;
    }

    public final void scaleAdd(double d10, Tuple3d tuple3d, Tuple3d tuple3d2) {
        this.f92833x = (tuple3d.f92833x * d10) + tuple3d2.f92833x;
        this.f92834y = (tuple3d.f92834y * d10) + tuple3d2.f92834y;
        this.f92835z = (d10 * tuple3d.f92835z) + tuple3d2.f92835z;
    }

    public final void set(double d10, double d11, double d12) {
        this.f92833x = d10;
        this.f92834y = d11;
        this.f92835z = d12;
    }

    public final void setX(double d10) {
        this.f92833x = d10;
    }

    public final void setY(double d10) {
        this.f92834y = d10;
    }

    public final void setZ(double d10) {
        this.f92835z = d10;
    }

    public final void sub(Tuple3d tuple3d, Tuple3d tuple3d2) {
        this.f92833x = tuple3d.f92833x - tuple3d2.f92833x;
        this.f92834y = tuple3d.f92834y - tuple3d2.f92834y;
        this.f92835z = tuple3d.f92835z - tuple3d2.f92835z;
    }

    public String toString() {
        return "(" + this.f92833x + ", " + this.f92834y + ", " + this.f92835z + ")";
    }

    public final void clamp(double d10, double d11, Tuple3d tuple3d) {
        double d12 = tuple3d.f92833x;
        if (d12 > d11) {
            this.f92833x = d11;
        } else if (d12 < d10) {
            this.f92833x = d10;
        } else {
            this.f92833x = d12;
        }
        double d13 = tuple3d.f92834y;
        if (d13 > d11) {
            this.f92834y = d11;
        } else if (d13 < d10) {
            this.f92834y = d10;
        } else {
            this.f92834y = d13;
        }
        double d14 = tuple3d.f92835z;
        if (d14 > d11) {
            this.f92835z = d11;
        } else if (d14 < d10) {
            this.f92835z = d10;
        } else {
            this.f92835z = d14;
        }
    }

    public final void clampMax(double d10, Tuple3d tuple3d) {
        double d11 = tuple3d.f92833x;
        if (d11 > d10) {
            this.f92833x = d10;
        } else {
            this.f92833x = d11;
        }
        double d12 = tuple3d.f92834y;
        if (d12 > d10) {
            this.f92834y = d10;
        } else {
            this.f92834y = d12;
        }
        double d13 = tuple3d.f92835z;
        if (d13 > d10) {
            this.f92835z = d10;
        } else {
            this.f92835z = d13;
        }
    }

    public final void clampMin(double d10, Tuple3d tuple3d) {
        double d11 = tuple3d.f92833x;
        if (d11 < d10) {
            this.f92833x = d10;
        } else {
            this.f92833x = d11;
        }
        double d12 = tuple3d.f92834y;
        if (d12 < d10) {
            this.f92834y = d10;
        } else {
            this.f92834y = d12;
        }
        double d13 = tuple3d.f92835z;
        if (d13 < d10) {
            this.f92835z = d10;
        } else {
            this.f92835z = d13;
        }
    }

    public boolean equals(Object obj) {
        try {
            Tuple3d tuple3d = (Tuple3d) obj;
            if (this.f92833x == tuple3d.f92833x && this.f92834y == tuple3d.f92834y) {
                return this.f92835z == tuple3d.f92835z;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void interpolate(Tuple3d tuple3d, Tuple3d tuple3d2, double d10) {
        double d11 = 1.0d - d10;
        this.f92833x = (tuple3d.f92833x * d11) + (tuple3d2.f92833x * d10);
        this.f92834y = (tuple3d.f92834y * d11) + (tuple3d2.f92834y * d10);
        this.f92835z = (d11 * tuple3d.f92835z) + (d10 * tuple3d2.f92835z);
    }

    public final void absolute() {
        this.f92833x = Math.abs(this.f92833x);
        this.f92834y = Math.abs(this.f92834y);
        this.f92835z = Math.abs(this.f92835z);
    }

    public final void add(Tuple3d tuple3d) {
        this.f92833x += tuple3d.f92833x;
        this.f92834y += tuple3d.f92834y;
        this.f92835z += tuple3d.f92835z;
    }

    public final void get(Tuple3d tuple3d) {
        tuple3d.f92833x = this.f92833x;
        tuple3d.f92834y = this.f92834y;
        tuple3d.f92835z = this.f92835z;
    }

    public final void negate() {
        this.f92833x = -this.f92833x;
        this.f92834y = -this.f92834y;
        this.f92835z = -this.f92835z;
    }

    public final void scale(double d10) {
        this.f92833x *= d10;
        this.f92834y *= d10;
        this.f92835z *= d10;
    }

    public final void scaleAdd(double d10, Tuple3f tuple3f) {
        scaleAdd(d10, new Point3d(tuple3f));
    }

    public final void set(double[] dArr) {
        this.f92833x = dArr[0];
        this.f92834y = dArr[1];
        this.f92835z = dArr[2];
    }

    public final void sub(Tuple3d tuple3d) {
        this.f92833x -= tuple3d.f92833x;
        this.f92834y -= tuple3d.f92834y;
        this.f92835z -= tuple3d.f92835z;
    }

    public Tuple3d(double[] dArr) {
        this.f92833x = dArr[0];
        this.f92834y = dArr[1];
        this.f92835z = dArr[2];
    }

    public final void interpolate(Tuple3d tuple3d, float f10) {
        interpolate(tuple3d, f10);
    }

    public final void scaleAdd(double d10, Tuple3d tuple3d) {
        this.f92833x = (this.f92833x * d10) + tuple3d.f92833x;
        this.f92834y = (this.f92834y * d10) + tuple3d.f92834y;
        this.f92835z = (d10 * this.f92835z) + tuple3d.f92835z;
    }

    public final void interpolate(Tuple3d tuple3d, double d10) {
        double d11 = 1.0d - d10;
        this.f92833x = (this.f92833x * d11) + (tuple3d.f92833x * d10);
        this.f92834y = (this.f92834y * d11) + (tuple3d.f92834y * d10);
        this.f92835z = (d11 * this.f92835z) + (d10 * tuple3d.f92835z);
    }

    public final void set(Tuple3d tuple3d) {
        this.f92833x = tuple3d.f92833x;
        this.f92834y = tuple3d.f92834y;
        this.f92835z = tuple3d.f92835z;
    }

    public Tuple3d(Tuple3d tuple3d) {
        this.f92833x = tuple3d.f92833x;
        this.f92834y = tuple3d.f92834y;
        this.f92835z = tuple3d.f92835z;
    }

    public final void set(Tuple3f tuple3f) {
        this.f92833x = tuple3f.f92836x;
        this.f92834y = tuple3f.f92837y;
        this.f92835z = tuple3f.f92838z;
    }

    public final void clampMax(float f10) {
        clampMax(f10);
    }

    public final void clampMin(float f10) {
        clampMin(f10);
    }

    public final void clampMax(double d10) {
        if (this.f92833x > d10) {
            this.f92833x = d10;
        }
        if (this.f92834y > d10) {
            this.f92834y = d10;
        }
        if (this.f92835z > d10) {
            this.f92835z = d10;
        }
    }

    public final void clampMin(double d10) {
        if (this.f92833x < d10) {
            this.f92833x = d10;
        }
        if (this.f92834y < d10) {
            this.f92834y = d10;
        }
        if (this.f92835z < d10) {
            this.f92835z = d10;
        }
    }

    public Tuple3d(Tuple3f tuple3f) {
        this.f92833x = tuple3f.f92836x;
        this.f92834y = tuple3f.f92837y;
        this.f92835z = tuple3f.f92838z;
    }

    public final void clamp(float f10, float f11) {
        clamp(f10, f11);
    }

    public final void clamp(double d10, double d11) {
        double d12 = this.f92833x;
        if (d12 > d11) {
            this.f92833x = d11;
        } else if (d12 < d10) {
            this.f92833x = d10;
        }
        double d13 = this.f92834y;
        if (d13 > d11) {
            this.f92834y = d11;
        } else if (d13 < d10) {
            this.f92834y = d10;
        }
        double d14 = this.f92835z;
        if (d14 > d11) {
            this.f92835z = d11;
        } else if (d14 < d10) {
            this.f92835z = d10;
        }
    }

    public Tuple3d() {
        this.f92833x = 0.0d;
        this.f92834y = 0.0d;
        this.f92835z = 0.0d;
    }
}
