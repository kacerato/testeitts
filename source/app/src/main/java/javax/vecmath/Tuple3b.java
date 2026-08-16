package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple3b implements Serializable, Cloneable {
    static final long serialVersionUID = -483782685323607044L;

    public byte f92830x;

    public byte f92831y;

    public byte f92832z;

    public Tuple3b(byte b10, byte b11, byte b12) {
        this.f92830x = b10;
        this.f92831y = b11;
        this.f92832z = b12;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean equals(Tuple3b tuple3b) {
        try {
            if (this.f92830x == tuple3b.f92830x && this.f92831y == tuple3b.f92831y) {
                return this.f92832z == tuple3b.f92832z;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(byte[] bArr) {
        bArr[0] = this.f92830x;
        bArr[1] = this.f92831y;
        bArr[2] = this.f92832z;
    }

    public final byte getX() {
        return this.f92830x;
    }

    public final byte getY() {
        return this.f92831y;
    }

    public final byte getZ() {
        return this.f92832z;
    }

    public int hashCode() {
        return (this.f92830x & 255) | ((this.f92831y & 255) << 8) | ((this.f92832z & 255) << 16);
    }

    public final void set(Tuple3b tuple3b) {
        this.f92830x = tuple3b.f92830x;
        this.f92831y = tuple3b.f92831y;
        this.f92832z = tuple3b.f92832z;
    }

    public final void setX(byte b10) {
        this.f92830x = b10;
    }

    public final void setY(byte b10) {
        this.f92831y = b10;
    }

    public final void setZ(byte b10) {
        this.f92832z = b10;
    }

    public String toString() {
        return "(" + (this.f92830x & 255) + ", " + (this.f92831y & 255) + ", " + (this.f92832z & 255) + ")";
    }

    public boolean equals(Object obj) {
        try {
            Tuple3b tuple3b = (Tuple3b) obj;
            if (this.f92830x == tuple3b.f92830x && this.f92831y == tuple3b.f92831y) {
                return this.f92832z == tuple3b.f92832z;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void get(Tuple3b tuple3b) {
        tuple3b.f92830x = this.f92830x;
        tuple3b.f92831y = this.f92831y;
        tuple3b.f92832z = this.f92832z;
    }

    public final void set(byte[] bArr) {
        this.f92830x = bArr[0];
        this.f92831y = bArr[1];
        this.f92832z = bArr[2];
    }

    public Tuple3b(byte[] bArr) {
        this.f92830x = bArr[0];
        this.f92831y = bArr[1];
        this.f92832z = bArr[2];
    }

    public Tuple3b(Tuple3b tuple3b) {
        this.f92830x = tuple3b.f92830x;
        this.f92831y = tuple3b.f92831y;
        this.f92832z = tuple3b.f92832z;
    }

    public Tuple3b() {
        this.f92830x = (byte) 0;
        this.f92831y = (byte) 0;
        this.f92832z = (byte) 0;
    }
}
