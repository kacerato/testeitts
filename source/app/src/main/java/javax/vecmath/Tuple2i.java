package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple2i implements Serializable, Cloneable {
    static final long serialVersionUID = -3555701650170169638L;

    public int f92828x;

    public int f92829y;

    public Tuple2i(int i10, int i11) {
        this.f92828x = i10;
        this.f92829y = i11;
    }

    public final void absolute(Tuple2i tuple2i) {
        this.f92828x = Math.abs(tuple2i.f92828x);
        this.f92829y = Math.abs(tuple2i.f92829y);
    }

    public final void add(Tuple2i tuple2i, Tuple2i tuple2i2) {
        this.f92828x = tuple2i.f92828x + tuple2i2.f92828x;
        this.f92829y = tuple2i.f92829y + tuple2i2.f92829y;
    }

    public final void clamp(int i10, int i11, Tuple2i tuple2i) {
        int i12 = tuple2i.f92828x;
        if (i12 > i11) {
            this.f92828x = i11;
        } else if (i12 < i10) {
            this.f92828x = i10;
        } else {
            this.f92828x = i12;
        }
        int i13 = tuple2i.f92829y;
        if (i13 > i11) {
            this.f92829y = i11;
        } else if (i13 < i10) {
            this.f92829y = i10;
        } else {
            this.f92829y = i13;
        }
    }

    public final void clampMax(int i10, Tuple2i tuple2i) {
        int i11 = tuple2i.f92828x;
        if (i11 > i10) {
            this.f92828x = i10;
        } else {
            this.f92828x = i11;
        }
        int i12 = tuple2i.f92829y;
        if (i12 > i10) {
            this.f92829y = i10;
        } else {
            this.f92829y = i12;
        }
    }

    public final void clampMin(int i10, Tuple2i tuple2i) {
        int i11 = tuple2i.f92828x;
        if (i11 < i10) {
            this.f92828x = i10;
        } else {
            this.f92828x = i11;
        }
        int i12 = tuple2i.f92829y;
        if (i12 < i10) {
            this.f92829y = i10;
        } else {
            this.f92829y = i12;
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
            Tuple2i tuple2i = (Tuple2i) obj;
            if (this.f92828x == tuple2i.f92828x) {
                return this.f92829y == tuple2i.f92829y;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void get(int[] iArr) {
        iArr[0] = this.f92828x;
        iArr[1] = this.f92829y;
    }

    public final int getX() {
        return this.f92828x;
    }

    public final int getY() {
        return this.f92829y;
    }

    public int hashCode() {
        long j10 = ((this.f92828x + 31) * 31) + this.f92829y;
        return (int) (j10 ^ (j10 >> 32));
    }

    public final void negate(Tuple2i tuple2i) {
        this.f92828x = -tuple2i.f92828x;
        this.f92829y = -tuple2i.f92829y;
    }

    public final void scale(int i10, Tuple2i tuple2i) {
        this.f92828x = tuple2i.f92828x * i10;
        this.f92829y = i10 * tuple2i.f92829y;
    }

    public final void scaleAdd(int i10, Tuple2i tuple2i, Tuple2i tuple2i2) {
        this.f92828x = (tuple2i.f92828x * i10) + tuple2i2.f92828x;
        this.f92829y = (i10 * tuple2i.f92829y) + tuple2i2.f92829y;
    }

    public final void set(int i10, int i11) {
        this.f92828x = i10;
        this.f92829y = i11;
    }

    public final void setX(int i10) {
        this.f92828x = i10;
    }

    public final void setY(int i10) {
        this.f92829y = i10;
    }

    public final void sub(Tuple2i tuple2i, Tuple2i tuple2i2) {
        this.f92828x = tuple2i.f92828x - tuple2i2.f92828x;
        this.f92829y = tuple2i.f92829y - tuple2i2.f92829y;
    }

    public String toString() {
        return "(" + this.f92828x + ", " + this.f92829y + ")";
    }

    public final void absolute() {
        this.f92828x = Math.abs(this.f92828x);
        this.f92829y = Math.abs(this.f92829y);
    }

    public final void add(Tuple2i tuple2i) {
        this.f92828x += tuple2i.f92828x;
        this.f92829y += tuple2i.f92829y;
    }

    public final void get(Tuple2i tuple2i) {
        tuple2i.f92828x = this.f92828x;
        tuple2i.f92829y = this.f92829y;
    }

    public final void negate() {
        this.f92828x = -this.f92828x;
        this.f92829y = -this.f92829y;
    }

    public final void scale(int i10) {
        this.f92828x *= i10;
        this.f92829y *= i10;
    }

    public final void scaleAdd(int i10, Tuple2i tuple2i) {
        this.f92828x = (this.f92828x * i10) + tuple2i.f92828x;
        this.f92829y = (i10 * this.f92829y) + tuple2i.f92829y;
    }

    public final void set(int[] iArr) {
        this.f92828x = iArr[0];
        this.f92829y = iArr[1];
    }

    public final void sub(Tuple2i tuple2i) {
        this.f92828x -= tuple2i.f92828x;
        this.f92829y -= tuple2i.f92829y;
    }

    public Tuple2i(int[] iArr) {
        this.f92828x = iArr[0];
        this.f92829y = iArr[1];
    }

    public final void set(Tuple2i tuple2i) {
        this.f92828x = tuple2i.f92828x;
        this.f92829y = tuple2i.f92829y;
    }

    public Tuple2i(Tuple2i tuple2i) {
        this.f92828x = tuple2i.f92828x;
        this.f92829y = tuple2i.f92829y;
    }

    public final void clampMax(int i10) {
        if (this.f92828x > i10) {
            this.f92828x = i10;
        }
        if (this.f92829y > i10) {
            this.f92829y = i10;
        }
    }

    public final void clampMin(int i10) {
        if (this.f92828x < i10) {
            this.f92828x = i10;
        }
        if (this.f92829y < i10) {
            this.f92829y = i10;
        }
    }

    public final void clamp(int i10, int i11) {
        int i12 = this.f92828x;
        if (i12 > i11) {
            this.f92828x = i11;
        } else if (i12 < i10) {
            this.f92828x = i10;
        }
        int i13 = this.f92829y;
        if (i13 > i11) {
            this.f92829y = i11;
        } else if (i13 < i10) {
            this.f92829y = i10;
        }
    }

    public Tuple2i() {
        this.f92828x = 0;
        this.f92829y = 0;
    }
}
