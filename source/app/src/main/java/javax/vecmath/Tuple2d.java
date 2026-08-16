package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple2d implements Serializable, Cloneable {
    static final long serialVersionUID = 6205762482756093838L;

    public double f92824x;

    public double f92825y;

    public Tuple2d(double d10, double d11) {
        this.f92824x = d10;
        this.f92825y = d11;
    }

    public final void absolute(Tuple2d tuple2d) {
        this.f92824x = Math.abs(tuple2d.f92824x);
        this.f92825y = Math.abs(tuple2d.f92825y);
    }

    public final void add(Tuple2d tuple2d, Tuple2d tuple2d2) {
        this.f92824x = tuple2d.f92824x + tuple2d2.f92824x;
        this.f92825y = tuple2d.f92825y + tuple2d2.f92825y;
    }

    public final void clamp(double d10, double d11, Tuple2d tuple2d) {
        double d12 = tuple2d.f92824x;
        if (d12 > d11) {
            this.f92824x = d11;
        } else if (d12 < d10) {
            this.f92824x = d10;
        } else {
            this.f92824x = d12;
        }
        double d13 = tuple2d.f92825y;
        if (d13 > d11) {
            this.f92825y = d11;
        } else if (d13 < d10) {
            this.f92825y = d10;
        } else {
            this.f92825y = d13;
        }
    }

    public final void clampMax(double d10, Tuple2d tuple2d) {
        double d11 = tuple2d.f92824x;
        if (d11 > d10) {
            this.f92824x = d10;
        } else {
            this.f92824x = d11;
        }
        double d12 = tuple2d.f92825y;
        if (d12 > d10) {
            this.f92825y = d10;
        } else {
            this.f92825y = d12;
        }
    }

    public final void clampMin(double d10, Tuple2d tuple2d) {
        double d11 = tuple2d.f92824x;
        if (d11 < d10) {
            this.f92824x = d10;
        } else {
            this.f92824x = d11;
        }
        double d12 = tuple2d.f92825y;
        if (d12 < d10) {
            this.f92825y = d10;
        } else {
            this.f92825y = d12;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean epsilonEquals(Tuple2d tuple2d, double d10) {
        double d11 = this.f92824x - tuple2d.f92824x;
        if (Double.isNaN(d11)) {
            return false;
        }
        if (d11 < 0.0d) {
            d11 = -d11;
        }
        if (d11 > d10) {
            return false;
        }
        double d12 = this.f92825y - tuple2d.f92825y;
        if (Double.isNaN(d12)) {
            return false;
        }
        if (d12 < 0.0d) {
            d12 = -d12;
        }
        return d12 <= d10;
    }

    public boolean equals(Tuple2d tuple2d) {
        try {
            if (this.f92824x == tuple2d.f92824x) {
                return this.f92825y == tuple2d.f92825y;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(double[] dArr) {
        dArr[0] = this.f92824x;
        dArr[1] = this.f92825y;
    }

    public final double getX() {
        return this.f92824x;
    }

    public final double getY() {
        return this.f92825y;
    }

    public int hashCode() {
        long doubleToLongBits = ((VecMathUtil.doubleToLongBits(this.f92824x) + 31) * 31) + VecMathUtil.doubleToLongBits(this.f92825y);
        return (int) (doubleToLongBits ^ (doubleToLongBits >> 32));
    }

    public final void interpolate(Tuple2d tuple2d, Tuple2d tuple2d2, double d10) {
        double d11 = 1.0d - d10;
        this.f92824x = (tuple2d.f92824x * d11) + (tuple2d2.f92824x * d10);
        this.f92825y = (d11 * tuple2d.f92825y) + (d10 * tuple2d2.f92825y);
    }

    public final void negate(Tuple2d tuple2d) {
        this.f92824x = -tuple2d.f92824x;
        this.f92825y = -tuple2d.f92825y;
    }

    public final void scale(double d10, Tuple2d tuple2d) {
        this.f92824x = tuple2d.f92824x * d10;
        this.f92825y = d10 * tuple2d.f92825y;
    }

    public final void scaleAdd(double d10, Tuple2d tuple2d, Tuple2d tuple2d2) {
        this.f92824x = (tuple2d.f92824x * d10) + tuple2d2.f92824x;
        this.f92825y = (d10 * tuple2d.f92825y) + tuple2d2.f92825y;
    }

    public final void set(double d10, double d11) {
        this.f92824x = d10;
        this.f92825y = d11;
    }

    public final void setX(double d10) {
        this.f92824x = d10;
    }

    public final void setY(double d10) {
        this.f92825y = d10;
    }

    public final void sub(Tuple2d tuple2d, Tuple2d tuple2d2) {
        this.f92824x = tuple2d.f92824x - tuple2d2.f92824x;
        this.f92825y = tuple2d.f92825y - tuple2d2.f92825y;
    }

    public String toString() {
        return "(" + this.f92824x + ", " + this.f92825y + ")";
    }

    public boolean equals(Object obj) {
        try {
            Tuple2d tuple2d = (Tuple2d) obj;
            if (this.f92824x == tuple2d.f92824x) {
                return this.f92825y == tuple2d.f92825y;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void absolute() {
        this.f92824x = Math.abs(this.f92824x);
        this.f92825y = Math.abs(this.f92825y);
    }

    public final void add(Tuple2d tuple2d) {
        this.f92824x += tuple2d.f92824x;
        this.f92825y += tuple2d.f92825y;
    }

    public final void interpolate(Tuple2d tuple2d, double d10) {
        double d11 = 1.0d - d10;
        this.f92824x = (this.f92824x * d11) + (tuple2d.f92824x * d10);
        this.f92825y = (d11 * this.f92825y) + (d10 * tuple2d.f92825y);
    }

    public final void negate() {
        this.f92824x = -this.f92824x;
        this.f92825y = -this.f92825y;
    }

    public final void scale(double d10) {
        this.f92824x *= d10;
        this.f92825y *= d10;
    }

    public final void scaleAdd(double d10, Tuple2d tuple2d) {
        this.f92824x = (this.f92824x * d10) + tuple2d.f92824x;
        this.f92825y = (d10 * this.f92825y) + tuple2d.f92825y;
    }

    public final void set(double[] dArr) {
        this.f92824x = dArr[0];
        this.f92825y = dArr[1];
    }

    public final void sub(Tuple2d tuple2d) {
        this.f92824x -= tuple2d.f92824x;
        this.f92825y -= tuple2d.f92825y;
    }

    public Tuple2d(double[] dArr) {
        this.f92824x = dArr[0];
        this.f92825y = dArr[1];
    }

    public final void set(Tuple2d tuple2d) {
        this.f92824x = tuple2d.f92824x;
        this.f92825y = tuple2d.f92825y;
    }

    public Tuple2d(Tuple2d tuple2d) {
        this.f92824x = tuple2d.f92824x;
        this.f92825y = tuple2d.f92825y;
    }

    public final void clampMax(double d10) {
        if (this.f92824x > d10) {
            this.f92824x = d10;
        }
        if (this.f92825y > d10) {
            this.f92825y = d10;
        }
    }

    public final void clampMin(double d10) {
        if (this.f92824x < d10) {
            this.f92824x = d10;
        }
        if (this.f92825y < d10) {
            this.f92825y = d10;
        }
    }

    public final void set(Tuple2f tuple2f) {
        this.f92824x = tuple2f.f92826x;
        this.f92825y = tuple2f.f92827y;
    }

    public final void clamp(double d10, double d11) {
        double d12 = this.f92824x;
        if (d12 > d11) {
            this.f92824x = d11;
        } else if (d12 < d10) {
            this.f92824x = d10;
        }
        double d13 = this.f92825y;
        if (d13 > d11) {
            this.f92825y = d11;
        } else if (d13 < d10) {
            this.f92825y = d10;
        }
    }

    public Tuple2d(Tuple2f tuple2f) {
        this.f92824x = tuple2f.f92826x;
        this.f92825y = tuple2f.f92827y;
    }

    public Tuple2d() {
        this.f92824x = 0.0d;
        this.f92825y = 0.0d;
    }
}
