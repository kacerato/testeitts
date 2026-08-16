package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple4i implements Serializable, Cloneable {
    static final long serialVersionUID = 8064614250942616720L;

    public int f92854w;

    public int f92855x;

    public int f92856y;

    public int f92857z;

    public Tuple4i(int i10, int i11, int i12, int i13) {
        this.f92855x = i10;
        this.f92856y = i11;
        this.f92857z = i12;
        this.f92854w = i13;
    }

    public final void absolute(Tuple4i tuple4i) {
        this.f92855x = Math.abs(tuple4i.f92855x);
        this.f92856y = Math.abs(tuple4i.f92856y);
        this.f92857z = Math.abs(tuple4i.f92857z);
        this.f92854w = Math.abs(tuple4i.f92854w);
    }

    public final void add(Tuple4i tuple4i, Tuple4i tuple4i2) {
        this.f92855x = tuple4i.f92855x + tuple4i2.f92855x;
        this.f92856y = tuple4i.f92856y + tuple4i2.f92856y;
        this.f92857z = tuple4i.f92857z + tuple4i2.f92857z;
        this.f92854w = tuple4i.f92854w + tuple4i2.f92854w;
    }

    public final void clamp(int i10, int i11, Tuple4i tuple4i) {
        int i12 = tuple4i.f92855x;
        if (i12 > i11) {
            this.f92855x = i11;
        } else if (i12 < i10) {
            this.f92855x = i10;
        } else {
            this.f92855x = i12;
        }
        int i13 = tuple4i.f92856y;
        if (i13 > i11) {
            this.f92856y = i11;
        } else if (i13 < i10) {
            this.f92856y = i10;
        } else {
            this.f92856y = i13;
        }
        int i14 = tuple4i.f92857z;
        if (i14 > i11) {
            this.f92857z = i11;
        } else if (i14 < i10) {
            this.f92857z = i10;
        } else {
            this.f92857z = i14;
        }
        int i15 = tuple4i.f92854w;
        if (i15 > i11) {
            this.f92854w = i11;
        } else if (i15 < i10) {
            this.f92854w = i10;
        } else {
            this.f92854w = i15;
        }
    }

    public final void clampMax(int i10, Tuple4i tuple4i) {
        int i11 = tuple4i.f92855x;
        if (i11 > i10) {
            this.f92855x = i10;
        } else {
            this.f92855x = i11;
        }
        int i12 = tuple4i.f92856y;
        if (i12 > i10) {
            this.f92856y = i10;
        } else {
            this.f92856y = i12;
        }
        int i13 = tuple4i.f92857z;
        if (i13 > i10) {
            this.f92857z = i10;
        } else {
            this.f92857z = i13;
        }
        if (tuple4i.f92854w > i10) {
            this.f92854w = i10;
        } else {
            this.f92854w = tuple4i.f92857z;
        }
    }

    public final void clampMin(int i10, Tuple4i tuple4i) {
        int i11 = tuple4i.f92855x;
        if (i11 < i10) {
            this.f92855x = i10;
        } else {
            this.f92855x = i11;
        }
        int i12 = tuple4i.f92856y;
        if (i12 < i10) {
            this.f92856y = i10;
        } else {
            this.f92856y = i12;
        }
        int i13 = tuple4i.f92857z;
        if (i13 < i10) {
            this.f92857z = i10;
        } else {
            this.f92857z = i13;
        }
        int i14 = tuple4i.f92854w;
        if (i14 < i10) {
            this.f92854w = i10;
        } else {
            this.f92854w = i14;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean equals(Object obj) {
        try {
            Tuple4i tuple4i = (Tuple4i) obj;
            if (this.f92855x == tuple4i.f92855x && this.f92856y == tuple4i.f92856y && this.f92857z == tuple4i.f92857z) {
                return this.f92854w == tuple4i.f92854w;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void get(int[] iArr) {
        iArr[0] = this.f92855x;
        iArr[1] = this.f92856y;
        iArr[2] = this.f92857z;
        iArr[3] = this.f92854w;
    }

    public final int getW() {
        return this.f92854w;
    }

    public final int getX() {
        return this.f92855x;
    }

    public final int getY() {
        return this.f92856y;
    }

    public final int getZ() {
        return this.f92857z;
    }

    public int hashCode() {
        long j10 = ((((((this.f92855x + 31) * 31) + this.f92856y) * 31) + this.f92857z) * 31) + this.f92854w;
        return (int) (j10 ^ (j10 >> 32));
    }

    public final void negate(Tuple4i tuple4i) {
        this.f92855x = -tuple4i.f92855x;
        this.f92856y = -tuple4i.f92856y;
        this.f92857z = -tuple4i.f92857z;
        this.f92854w = -tuple4i.f92854w;
    }

    public final void scale(int i10, Tuple4i tuple4i) {
        this.f92855x = tuple4i.f92855x * i10;
        this.f92856y = tuple4i.f92856y * i10;
        this.f92857z = tuple4i.f92857z * i10;
        this.f92854w = i10 * tuple4i.f92854w;
    }

    public final void scaleAdd(int i10, Tuple4i tuple4i, Tuple4i tuple4i2) {
        this.f92855x = (tuple4i.f92855x * i10) + tuple4i2.f92855x;
        this.f92856y = (tuple4i.f92856y * i10) + tuple4i2.f92856y;
        this.f92857z = (tuple4i.f92857z * i10) + tuple4i2.f92857z;
        this.f92854w = (i10 * tuple4i.f92854w) + tuple4i2.f92854w;
    }

    public final void set(int i10, int i11, int i12, int i13) {
        this.f92855x = i10;
        this.f92856y = i11;
        this.f92857z = i12;
        this.f92854w = i13;
    }

    public final void setW(int i10) {
        this.f92854w = i10;
    }

    public final void setX(int i10) {
        this.f92855x = i10;
    }

    public final void setY(int i10) {
        this.f92856y = i10;
    }

    public final void setZ(int i10) {
        this.f92857z = i10;
    }

    public final void sub(Tuple4i tuple4i, Tuple4i tuple4i2) {
        this.f92855x = tuple4i.f92855x - tuple4i2.f92855x;
        this.f92856y = tuple4i.f92856y - tuple4i2.f92856y;
        this.f92857z = tuple4i.f92857z - tuple4i2.f92857z;
        this.f92854w = tuple4i.f92854w - tuple4i2.f92854w;
    }

    public String toString() {
        return "(" + this.f92855x + ", " + this.f92856y + ", " + this.f92857z + ", " + this.f92854w + ")";
    }

    public final void absolute() {
        this.f92855x = Math.abs(this.f92855x);
        this.f92856y = Math.abs(this.f92856y);
        this.f92857z = Math.abs(this.f92857z);
        this.f92854w = Math.abs(this.f92854w);
    }

    public final void add(Tuple4i tuple4i) {
        this.f92855x += tuple4i.f92855x;
        this.f92856y += tuple4i.f92856y;
        this.f92857z += tuple4i.f92857z;
        this.f92854w += tuple4i.f92854w;
    }

    public final void get(Tuple4i tuple4i) {
        tuple4i.f92855x = this.f92855x;
        tuple4i.f92856y = this.f92856y;
        tuple4i.f92857z = this.f92857z;
        tuple4i.f92854w = this.f92854w;
    }

    public final void negate() {
        this.f92855x = -this.f92855x;
        this.f92856y = -this.f92856y;
        this.f92857z = -this.f92857z;
        this.f92854w = -this.f92854w;
    }

    public final void scale(int i10) {
        this.f92855x *= i10;
        this.f92856y *= i10;
        this.f92857z *= i10;
        this.f92854w *= i10;
    }

    public final void scaleAdd(int i10, Tuple4i tuple4i) {
        this.f92855x = (this.f92855x * i10) + tuple4i.f92855x;
        this.f92856y = (this.f92856y * i10) + tuple4i.f92856y;
        this.f92857z = (this.f92857z * i10) + tuple4i.f92857z;
        this.f92854w = (i10 * this.f92854w) + tuple4i.f92854w;
    }

    public final void set(int[] iArr) {
        this.f92855x = iArr[0];
        this.f92856y = iArr[1];
        this.f92857z = iArr[2];
        this.f92854w = iArr[3];
    }

    public final void sub(Tuple4i tuple4i) {
        this.f92855x -= tuple4i.f92855x;
        this.f92856y -= tuple4i.f92856y;
        this.f92857z -= tuple4i.f92857z;
        this.f92854w -= tuple4i.f92854w;
    }

    public Tuple4i(int[] iArr) {
        this.f92855x = iArr[0];
        this.f92856y = iArr[1];
        this.f92857z = iArr[2];
        this.f92854w = iArr[3];
    }

    public final void set(Tuple4i tuple4i) {
        this.f92855x = tuple4i.f92855x;
        this.f92856y = tuple4i.f92856y;
        this.f92857z = tuple4i.f92857z;
        this.f92854w = tuple4i.f92854w;
    }

    public Tuple4i(Tuple4i tuple4i) {
        this.f92855x = tuple4i.f92855x;
        this.f92856y = tuple4i.f92856y;
        this.f92857z = tuple4i.f92857z;
        this.f92854w = tuple4i.f92854w;
    }

    public final void clampMax(int i10) {
        if (this.f92855x > i10) {
            this.f92855x = i10;
        }
        if (this.f92856y > i10) {
            this.f92856y = i10;
        }
        if (this.f92857z > i10) {
            this.f92857z = i10;
        }
        if (this.f92854w > i10) {
            this.f92854w = i10;
        }
    }

    public final void clampMin(int i10) {
        if (this.f92855x < i10) {
            this.f92855x = i10;
        }
        if (this.f92856y < i10) {
            this.f92856y = i10;
        }
        if (this.f92857z < i10) {
            this.f92857z = i10;
        }
        if (this.f92854w < i10) {
            this.f92854w = i10;
        }
    }

    public Tuple4i() {
        this.f92855x = 0;
        this.f92856y = 0;
        this.f92857z = 0;
        this.f92854w = 0;
    }

    public final void clamp(int i10, int i11) {
        int i12 = this.f92855x;
        if (i12 > i11) {
            this.f92855x = i11;
        } else if (i12 < i10) {
            this.f92855x = i10;
        }
        int i13 = this.f92856y;
        if (i13 > i11) {
            this.f92856y = i11;
        } else if (i13 < i10) {
            this.f92856y = i10;
        }
        int i14 = this.f92857z;
        if (i14 > i11) {
            this.f92857z = i11;
        } else if (i14 < i10) {
            this.f92857z = i10;
        }
        int i15 = this.f92854w;
        if (i15 > i11) {
            this.f92854w = i11;
        } else if (i15 < i10) {
            this.f92854w = i10;
        }
    }
}
