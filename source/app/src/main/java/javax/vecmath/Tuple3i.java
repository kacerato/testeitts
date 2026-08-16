package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple3i implements Serializable, Cloneable {
    static final long serialVersionUID = -732740491767276200L;

    public int f92839x;

    public int f92840y;

    public int f92841z;

    public Tuple3i(int i10, int i11, int i12) {
        this.f92839x = i10;
        this.f92840y = i11;
        this.f92841z = i12;
    }

    public final void absolute(Tuple3i tuple3i) {
        this.f92839x = Math.abs(tuple3i.f92839x);
        this.f92840y = Math.abs(tuple3i.f92840y);
        this.f92841z = Math.abs(tuple3i.f92841z);
    }

    public final void add(Tuple3i tuple3i, Tuple3i tuple3i2) {
        this.f92839x = tuple3i.f92839x + tuple3i2.f92839x;
        this.f92840y = tuple3i.f92840y + tuple3i2.f92840y;
        this.f92841z = tuple3i.f92841z + tuple3i2.f92841z;
    }

    public final void clamp(int i10, int i11, Tuple3i tuple3i) {
        int i12 = tuple3i.f92839x;
        if (i12 > i11) {
            this.f92839x = i11;
        } else if (i12 < i10) {
            this.f92839x = i10;
        } else {
            this.f92839x = i12;
        }
        int i13 = tuple3i.f92840y;
        if (i13 > i11) {
            this.f92840y = i11;
        } else if (i13 < i10) {
            this.f92840y = i10;
        } else {
            this.f92840y = i13;
        }
        int i14 = tuple3i.f92841z;
        if (i14 > i11) {
            this.f92841z = i11;
        } else if (i14 < i10) {
            this.f92841z = i10;
        } else {
            this.f92841z = i14;
        }
    }

    public final void clampMax(int i10, Tuple3i tuple3i) {
        int i11 = tuple3i.f92839x;
        if (i11 > i10) {
            this.f92839x = i10;
        } else {
            this.f92839x = i11;
        }
        int i12 = tuple3i.f92840y;
        if (i12 > i10) {
            this.f92840y = i10;
        } else {
            this.f92840y = i12;
        }
        int i13 = tuple3i.f92841z;
        if (i13 > i10) {
            this.f92841z = i10;
        } else {
            this.f92841z = i13;
        }
    }

    public final void clampMin(int i10, Tuple3i tuple3i) {
        int i11 = tuple3i.f92839x;
        if (i11 < i10) {
            this.f92839x = i10;
        } else {
            this.f92839x = i11;
        }
        int i12 = tuple3i.f92840y;
        if (i12 < i10) {
            this.f92840y = i10;
        } else {
            this.f92840y = i12;
        }
        int i13 = tuple3i.f92841z;
        if (i13 < i10) {
            this.f92841z = i10;
        } else {
            this.f92841z = i13;
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
            Tuple3i tuple3i = (Tuple3i) obj;
            if (this.f92839x == tuple3i.f92839x && this.f92840y == tuple3i.f92840y) {
                return this.f92841z == tuple3i.f92841z;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void get(int[] iArr) {
        iArr[0] = this.f92839x;
        iArr[1] = this.f92840y;
        iArr[2] = this.f92841z;
    }

    public final int getX() {
        return this.f92839x;
    }

    public final int getY() {
        return this.f92840y;
    }

    public final int getZ() {
        return this.f92841z;
    }

    public int hashCode() {
        long j10 = ((((this.f92839x + 31) * 31) + this.f92840y) * 31) + this.f92841z;
        return (int) (j10 ^ (j10 >> 32));
    }

    public final void negate(Tuple3i tuple3i) {
        this.f92839x = -tuple3i.f92839x;
        this.f92840y = -tuple3i.f92840y;
        this.f92841z = -tuple3i.f92841z;
    }

    public final void scale(int i10, Tuple3i tuple3i) {
        this.f92839x = tuple3i.f92839x * i10;
        this.f92840y = tuple3i.f92840y * i10;
        this.f92841z = i10 * tuple3i.f92841z;
    }

    public final void scaleAdd(int i10, Tuple3i tuple3i, Tuple3i tuple3i2) {
        this.f92839x = (tuple3i.f92839x * i10) + tuple3i2.f92839x;
        this.f92840y = (tuple3i.f92840y * i10) + tuple3i2.f92840y;
        this.f92841z = (i10 * tuple3i.f92841z) + tuple3i2.f92841z;
    }

    public final void set(int i10, int i11, int i12) {
        this.f92839x = i10;
        this.f92840y = i11;
        this.f92841z = i12;
    }

    public final void setX(int i10) {
        this.f92839x = i10;
    }

    public final void setY(int i10) {
        this.f92840y = i10;
    }

    public final void setZ(int i10) {
        this.f92841z = i10;
    }

    public final void sub(Tuple3i tuple3i, Tuple3i tuple3i2) {
        this.f92839x = tuple3i.f92839x - tuple3i2.f92839x;
        this.f92840y = tuple3i.f92840y - tuple3i2.f92840y;
        this.f92841z = tuple3i.f92841z - tuple3i2.f92841z;
    }

    public String toString() {
        return "(" + this.f92839x + ", " + this.f92840y + ", " + this.f92841z + ")";
    }

    public final void absolute() {
        this.f92839x = Math.abs(this.f92839x);
        this.f92840y = Math.abs(this.f92840y);
        this.f92841z = Math.abs(this.f92841z);
    }

    public final void add(Tuple3i tuple3i) {
        this.f92839x += tuple3i.f92839x;
        this.f92840y += tuple3i.f92840y;
        this.f92841z += tuple3i.f92841z;
    }

    public final void get(Tuple3i tuple3i) {
        tuple3i.f92839x = this.f92839x;
        tuple3i.f92840y = this.f92840y;
        tuple3i.f92841z = this.f92841z;
    }

    public final void negate() {
        this.f92839x = -this.f92839x;
        this.f92840y = -this.f92840y;
        this.f92841z = -this.f92841z;
    }

    public final void scale(int i10) {
        this.f92839x *= i10;
        this.f92840y *= i10;
        this.f92841z *= i10;
    }

    public final void scaleAdd(int i10, Tuple3i tuple3i) {
        this.f92839x = (this.f92839x * i10) + tuple3i.f92839x;
        this.f92840y = (this.f92840y * i10) + tuple3i.f92840y;
        this.f92841z = (i10 * this.f92841z) + tuple3i.f92841z;
    }

    public final void set(int[] iArr) {
        this.f92839x = iArr[0];
        this.f92840y = iArr[1];
        this.f92841z = iArr[2];
    }

    public final void sub(Tuple3i tuple3i) {
        this.f92839x -= tuple3i.f92839x;
        this.f92840y -= tuple3i.f92840y;
        this.f92841z -= tuple3i.f92841z;
    }

    public Tuple3i(int[] iArr) {
        this.f92839x = iArr[0];
        this.f92840y = iArr[1];
        this.f92841z = iArr[2];
    }

    public final void set(Tuple3i tuple3i) {
        this.f92839x = tuple3i.f92839x;
        this.f92840y = tuple3i.f92840y;
        this.f92841z = tuple3i.f92841z;
    }

    public Tuple3i(Tuple3i tuple3i) {
        this.f92839x = tuple3i.f92839x;
        this.f92840y = tuple3i.f92840y;
        this.f92841z = tuple3i.f92841z;
    }

    public final void clampMax(int i10) {
        if (this.f92839x > i10) {
            this.f92839x = i10;
        }
        if (this.f92840y > i10) {
            this.f92840y = i10;
        }
        if (this.f92841z > i10) {
            this.f92841z = i10;
        }
    }

    public final void clampMin(int i10) {
        if (this.f92839x < i10) {
            this.f92839x = i10;
        }
        if (this.f92840y < i10) {
            this.f92840y = i10;
        }
        if (this.f92841z < i10) {
            this.f92841z = i10;
        }
    }

    public Tuple3i() {
        this.f92839x = 0;
        this.f92840y = 0;
        this.f92841z = 0;
    }

    public final void clamp(int i10, int i11) {
        int i12 = this.f92839x;
        if (i12 > i11) {
            this.f92839x = i11;
        } else if (i12 < i10) {
            this.f92839x = i10;
        }
        int i13 = this.f92840y;
        if (i13 > i11) {
            this.f92840y = i11;
        } else if (i13 < i10) {
            this.f92840y = i10;
        }
        int i14 = this.f92841z;
        if (i14 > i11) {
            this.f92841z = i11;
        } else if (i14 < i10) {
            this.f92841z = i10;
        }
    }
}
