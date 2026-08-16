package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple4d implements Serializable, Cloneable {
    static final long serialVersionUID = -4748953690425311052L;

    public double f92846w;

    public double f92847x;

    public double f92848y;

    public double f92849z;

    public Tuple4d(double d10, double d11, double d12, double d13) {
        this.f92847x = d10;
        this.f92848y = d11;
        this.f92849z = d12;
        this.f92846w = d13;
    }

    public final void absolute(Tuple4d tuple4d) {
        this.f92847x = Math.abs(tuple4d.f92847x);
        this.f92848y = Math.abs(tuple4d.f92848y);
        this.f92849z = Math.abs(tuple4d.f92849z);
        this.f92846w = Math.abs(tuple4d.f92846w);
    }

    public final void add(Tuple4d tuple4d, Tuple4d tuple4d2) {
        this.f92847x = tuple4d.f92847x + tuple4d2.f92847x;
        this.f92848y = tuple4d.f92848y + tuple4d2.f92848y;
        this.f92849z = tuple4d.f92849z + tuple4d2.f92849z;
        this.f92846w = tuple4d.f92846w + tuple4d2.f92846w;
    }

    public final void clamp(float f10, float f11, Tuple4d tuple4d) {
        clamp(f10, f11, tuple4d);
    }

    public final void clampMax(float f10, Tuple4d tuple4d) {
        clampMax(f10, tuple4d);
    }

    public final void clampMin(float f10, Tuple4d tuple4d) {
        clampMin(f10, tuple4d);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean epsilonEquals(Tuple4d tuple4d, double d10) {
        double d11 = this.f92847x - tuple4d.f92847x;
        if (Double.isNaN(d11)) {
            return false;
        }
        if (d11 < 0.0d) {
            d11 = -d11;
        }
        if (d11 > d10) {
            return false;
        }
        double d12 = this.f92848y - tuple4d.f92848y;
        if (Double.isNaN(d12)) {
            return false;
        }
        if (d12 < 0.0d) {
            d12 = -d12;
        }
        if (d12 > d10) {
            return false;
        }
        double d13 = this.f92849z - tuple4d.f92849z;
        if (Double.isNaN(d13)) {
            return false;
        }
        if (d13 < 0.0d) {
            d13 = -d13;
        }
        if (d13 > d10) {
            return false;
        }
        double d14 = this.f92846w - tuple4d.f92846w;
        if (Double.isNaN(d14)) {
            return false;
        }
        if (d14 < 0.0d) {
            d14 = -d14;
        }
        return d14 <= d10;
    }

    public boolean equals(Tuple4d tuple4d) {
        try {
            if (this.f92847x == tuple4d.f92847x && this.f92848y == tuple4d.f92848y && this.f92849z == tuple4d.f92849z) {
                return this.f92846w == tuple4d.f92846w;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(double[] dArr) {
        dArr[0] = this.f92847x;
        dArr[1] = this.f92848y;
        dArr[2] = this.f92849z;
        dArr[3] = this.f92846w;
    }

    public final double getW() {
        return this.f92846w;
    }

    public final double getX() {
        return this.f92847x;
    }

    public final double getY() {
        return this.f92848y;
    }

    public final double getZ() {
        return this.f92849z;
    }

    public int hashCode() {
        long doubleToLongBits = ((((((VecMathUtil.doubleToLongBits(this.f92847x) + 31) * 31) + VecMathUtil.doubleToLongBits(this.f92848y)) * 31) + VecMathUtil.doubleToLongBits(this.f92849z)) * 31) + VecMathUtil.doubleToLongBits(this.f92846w);
        return (int) (doubleToLongBits ^ (doubleToLongBits >> 32));
    }

    public void interpolate(Tuple4d tuple4d, Tuple4d tuple4d2, float f10) {
        interpolate(tuple4d, tuple4d2, f10);
    }

    public final void negate(Tuple4d tuple4d) {
        this.f92847x = -tuple4d.f92847x;
        this.f92848y = -tuple4d.f92848y;
        this.f92849z = -tuple4d.f92849z;
        this.f92846w = -tuple4d.f92846w;
    }

    public final void scale(double d10, Tuple4d tuple4d) {
        this.f92847x = tuple4d.f92847x * d10;
        this.f92848y = tuple4d.f92848y * d10;
        this.f92849z = tuple4d.f92849z * d10;
        this.f92846w = d10 * tuple4d.f92846w;
    }

    public final void scaleAdd(double d10, Tuple4d tuple4d, Tuple4d tuple4d2) {
        this.f92847x = (tuple4d.f92847x * d10) + tuple4d2.f92847x;
        this.f92848y = (tuple4d.f92848y * d10) + tuple4d2.f92848y;
        this.f92849z = (tuple4d.f92849z * d10) + tuple4d2.f92849z;
        this.f92846w = (d10 * tuple4d.f92846w) + tuple4d2.f92846w;
    }

    public final void set(double d10, double d11, double d12, double d13) {
        this.f92847x = d10;
        this.f92848y = d11;
        this.f92849z = d12;
        this.f92846w = d13;
    }

    public final void setW(double d10) {
        this.f92846w = d10;
    }

    public final void setX(double d10) {
        this.f92847x = d10;
    }

    public final void setY(double d10) {
        this.f92848y = d10;
    }

    public final void setZ(double d10) {
        this.f92849z = d10;
    }

    public final void sub(Tuple4d tuple4d, Tuple4d tuple4d2) {
        this.f92847x = tuple4d.f92847x - tuple4d2.f92847x;
        this.f92848y = tuple4d.f92848y - tuple4d2.f92848y;
        this.f92849z = tuple4d.f92849z - tuple4d2.f92849z;
        this.f92846w = tuple4d.f92846w - tuple4d2.f92846w;
    }

    public String toString() {
        return "(" + this.f92847x + ", " + this.f92848y + ", " + this.f92849z + ", " + this.f92846w + ")";
    }

    public final void clamp(double d10, double d11, Tuple4d tuple4d) {
        double d12 = tuple4d.f92847x;
        if (d12 > d11) {
            this.f92847x = d11;
        } else if (d12 < d10) {
            this.f92847x = d10;
        } else {
            this.f92847x = d12;
        }
        double d13 = tuple4d.f92848y;
        if (d13 > d11) {
            this.f92848y = d11;
        } else if (d13 < d10) {
            this.f92848y = d10;
        } else {
            this.f92848y = d13;
        }
        double d14 = tuple4d.f92849z;
        if (d14 > d11) {
            this.f92849z = d11;
        } else if (d14 < d10) {
            this.f92849z = d10;
        } else {
            this.f92849z = d14;
        }
        double d15 = tuple4d.f92846w;
        if (d15 > d11) {
            this.f92846w = d11;
        } else if (d15 < d10) {
            this.f92846w = d10;
        } else {
            this.f92846w = d15;
        }
    }

    public final void clampMax(double d10, Tuple4d tuple4d) {
        double d11 = tuple4d.f92847x;
        if (d11 > d10) {
            this.f92847x = d10;
        } else {
            this.f92847x = d11;
        }
        double d12 = tuple4d.f92848y;
        if (d12 > d10) {
            this.f92848y = d10;
        } else {
            this.f92848y = d12;
        }
        double d13 = tuple4d.f92849z;
        if (d13 > d10) {
            this.f92849z = d10;
        } else {
            this.f92849z = d13;
        }
        if (tuple4d.f92846w > d10) {
            this.f92846w = d10;
        } else {
            this.f92846w = tuple4d.f92849z;
        }
    }

    public final void clampMin(double d10, Tuple4d tuple4d) {
        double d11 = tuple4d.f92847x;
        if (d11 < d10) {
            this.f92847x = d10;
        } else {
            this.f92847x = d11;
        }
        double d12 = tuple4d.f92848y;
        if (d12 < d10) {
            this.f92848y = d10;
        } else {
            this.f92848y = d12;
        }
        double d13 = tuple4d.f92849z;
        if (d13 < d10) {
            this.f92849z = d10;
        } else {
            this.f92849z = d13;
        }
        double d14 = tuple4d.f92846w;
        if (d14 < d10) {
            this.f92846w = d10;
        } else {
            this.f92846w = d14;
        }
    }

    public boolean equals(Object obj) {
        try {
            Tuple4d tuple4d = (Tuple4d) obj;
            if (this.f92847x == tuple4d.f92847x && this.f92848y == tuple4d.f92848y && this.f92849z == tuple4d.f92849z) {
                return this.f92846w == tuple4d.f92846w;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public void interpolate(Tuple4d tuple4d, Tuple4d tuple4d2, double d10) {
        double d11 = 1.0d - d10;
        this.f92847x = (tuple4d.f92847x * d11) + (tuple4d2.f92847x * d10);
        this.f92848y = (tuple4d.f92848y * d11) + (tuple4d2.f92848y * d10);
        this.f92849z = (tuple4d.f92849z * d11) + (tuple4d2.f92849z * d10);
        this.f92846w = (d11 * tuple4d.f92846w) + (d10 * tuple4d2.f92846w);
    }

    public final void absolute() {
        this.f92847x = Math.abs(this.f92847x);
        this.f92848y = Math.abs(this.f92848y);
        this.f92849z = Math.abs(this.f92849z);
        this.f92846w = Math.abs(this.f92846w);
    }

    public final void add(Tuple4d tuple4d) {
        this.f92847x += tuple4d.f92847x;
        this.f92848y += tuple4d.f92848y;
        this.f92849z += tuple4d.f92849z;
        this.f92846w += tuple4d.f92846w;
    }

    public final void get(Tuple4d tuple4d) {
        tuple4d.f92847x = this.f92847x;
        tuple4d.f92848y = this.f92848y;
        tuple4d.f92849z = this.f92849z;
        tuple4d.f92846w = this.f92846w;
    }

    public final void negate() {
        this.f92847x = -this.f92847x;
        this.f92848y = -this.f92848y;
        this.f92849z = -this.f92849z;
        this.f92846w = -this.f92846w;
    }

    public final void scale(double d10) {
        this.f92847x *= d10;
        this.f92848y *= d10;
        this.f92849z *= d10;
        this.f92846w *= d10;
    }

    public final void scaleAdd(float f10, Tuple4d tuple4d) {
        scaleAdd(f10, tuple4d);
    }

    public final void set(double[] dArr) {
        this.f92847x = dArr[0];
        this.f92848y = dArr[1];
        this.f92849z = dArr[2];
        this.f92846w = dArr[3];
    }

    public final void sub(Tuple4d tuple4d) {
        this.f92847x -= tuple4d.f92847x;
        this.f92848y -= tuple4d.f92848y;
        this.f92849z -= tuple4d.f92849z;
        this.f92846w -= tuple4d.f92846w;
    }

    public Tuple4d(double[] dArr) {
        this.f92847x = dArr[0];
        this.f92848y = dArr[1];
        this.f92849z = dArr[2];
        this.f92846w = dArr[3];
    }

    public void interpolate(Tuple4d tuple4d, float f10) {
        interpolate(tuple4d, f10);
    }

    public final void scaleAdd(double d10, Tuple4d tuple4d) {
        this.f92847x = (this.f92847x * d10) + tuple4d.f92847x;
        this.f92848y = (this.f92848y * d10) + tuple4d.f92848y;
        this.f92849z = (this.f92849z * d10) + tuple4d.f92849z;
        this.f92846w = (d10 * this.f92846w) + tuple4d.f92846w;
    }

    public void interpolate(Tuple4d tuple4d, double d10) {
        double d11 = 1.0d - d10;
        this.f92847x = (this.f92847x * d11) + (tuple4d.f92847x * d10);
        this.f92848y = (this.f92848y * d11) + (tuple4d.f92848y * d10);
        this.f92849z = (this.f92849z * d11) + (tuple4d.f92849z * d10);
        this.f92846w = (d11 * this.f92846w) + (d10 * tuple4d.f92846w);
    }

    public final void set(Tuple4d tuple4d) {
        this.f92847x = tuple4d.f92847x;
        this.f92848y = tuple4d.f92848y;
        this.f92849z = tuple4d.f92849z;
        this.f92846w = tuple4d.f92846w;
    }

    public Tuple4d(Tuple4d tuple4d) {
        this.f92847x = tuple4d.f92847x;
        this.f92848y = tuple4d.f92848y;
        this.f92849z = tuple4d.f92849z;
        this.f92846w = tuple4d.f92846w;
    }

    public final void set(Tuple4f tuple4f) {
        this.f92847x = tuple4f.f92851x;
        this.f92848y = tuple4f.f92852y;
        this.f92849z = tuple4f.f92853z;
        this.f92846w = tuple4f.f92850w;
    }

    public final void clampMax(float f10) {
        clampMax(f10);
    }

    public final void clampMin(float f10) {
        clampMin(f10);
    }

    public final void clampMax(double d10) {
        if (this.f92847x > d10) {
            this.f92847x = d10;
        }
        if (this.f92848y > d10) {
            this.f92848y = d10;
        }
        if (this.f92849z > d10) {
            this.f92849z = d10;
        }
        if (this.f92846w > d10) {
            this.f92846w = d10;
        }
    }

    public final void clampMin(double d10) {
        if (this.f92847x < d10) {
            this.f92847x = d10;
        }
        if (this.f92848y < d10) {
            this.f92848y = d10;
        }
        if (this.f92849z < d10) {
            this.f92849z = d10;
        }
        if (this.f92846w < d10) {
            this.f92846w = d10;
        }
    }

    public Tuple4d(Tuple4f tuple4f) {
        this.f92847x = tuple4f.f92851x;
        this.f92848y = tuple4f.f92852y;
        this.f92849z = tuple4f.f92853z;
        this.f92846w = tuple4f.f92850w;
    }

    public final void clamp(float f10, float f11) {
        clamp(f10, f11);
    }

    public final void clamp(double d10, double d11) {
        double d12 = this.f92847x;
        if (d12 > d11) {
            this.f92847x = d11;
        } else if (d12 < d10) {
            this.f92847x = d10;
        }
        double d13 = this.f92848y;
        if (d13 > d11) {
            this.f92848y = d11;
        } else if (d13 < d10) {
            this.f92848y = d10;
        }
        double d14 = this.f92849z;
        if (d14 > d11) {
            this.f92849z = d11;
        } else if (d14 < d10) {
            this.f92849z = d10;
        }
        double d15 = this.f92846w;
        if (d15 > d11) {
            this.f92846w = d11;
        } else if (d15 < d10) {
            this.f92846w = d10;
        }
    }

    public Tuple4d() {
        this.f92847x = 0.0d;
        this.f92848y = 0.0d;
        this.f92849z = 0.0d;
        this.f92846w = 0.0d;
    }
}
