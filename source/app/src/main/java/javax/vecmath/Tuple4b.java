package javax.vecmath;

import java.io.Serializable;

public abstract class Tuple4b implements Serializable, Cloneable {
    static final long serialVersionUID = -8226727741811898211L;

    public byte f92842w;

    public byte f92843x;

    public byte f92844y;

    public byte f92845z;

    public Tuple4b(byte b10, byte b11, byte b12, byte b13) {
        this.f92843x = b10;
        this.f92844y = b11;
        this.f92845z = b12;
        this.f92842w = b13;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean equals(Tuple4b tuple4b) {
        try {
            if (this.f92843x == tuple4b.f92843x && this.f92844y == tuple4b.f92844y && this.f92845z == tuple4b.f92845z) {
                return this.f92842w == tuple4b.f92842w;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(byte[] bArr) {
        bArr[0] = this.f92843x;
        bArr[1] = this.f92844y;
        bArr[2] = this.f92845z;
        bArr[3] = this.f92842w;
    }

    public final byte getW() {
        return this.f92842w;
    }

    public final byte getX() {
        return this.f92843x;
    }

    public final byte getY() {
        return this.f92844y;
    }

    public final byte getZ() {
        return this.f92845z;
    }

    public int hashCode() {
        return (this.f92843x & 255) | ((this.f92844y & 255) << 8) | ((this.f92845z & 255) << 16) | ((this.f92842w & 255) << 24);
    }

    public final void set(Tuple4b tuple4b) {
        this.f92843x = tuple4b.f92843x;
        this.f92844y = tuple4b.f92844y;
        this.f92845z = tuple4b.f92845z;
        this.f92842w = tuple4b.f92842w;
    }

    public final void setW(byte b10) {
        this.f92842w = b10;
    }

    public final void setX(byte b10) {
        this.f92843x = b10;
    }

    public final void setY(byte b10) {
        this.f92844y = b10;
    }

    public final void setZ(byte b10) {
        this.f92845z = b10;
    }

    public String toString() {
        return "(" + (this.f92843x & 255) + ", " + (this.f92844y & 255) + ", " + (this.f92845z & 255) + ", " + (this.f92842w & 255) + ")";
    }

    public boolean equals(Object obj) {
        try {
            Tuple4b tuple4b = (Tuple4b) obj;
            if (this.f92843x == tuple4b.f92843x && this.f92844y == tuple4b.f92844y && this.f92845z == tuple4b.f92845z) {
                return this.f92842w == tuple4b.f92842w;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void get(Tuple4b tuple4b) {
        tuple4b.f92843x = this.f92843x;
        tuple4b.f92844y = this.f92844y;
        tuple4b.f92845z = this.f92845z;
        tuple4b.f92842w = this.f92842w;
    }

    public final void set(byte[] bArr) {
        this.f92843x = bArr[0];
        this.f92844y = bArr[1];
        this.f92845z = bArr[2];
        this.f92842w = bArr[3];
    }

    public Tuple4b(byte[] bArr) {
        this.f92843x = bArr[0];
        this.f92844y = bArr[1];
        this.f92845z = bArr[2];
        this.f92842w = bArr[3];
    }

    public Tuple4b(Tuple4b tuple4b) {
        this.f92843x = tuple4b.f92843x;
        this.f92844y = tuple4b.f92844y;
        this.f92845z = tuple4b.f92845z;
        this.f92842w = tuple4b.f92842w;
    }

    public Tuple4b() {
        this.f92843x = (byte) 0;
        this.f92844y = (byte) 0;
        this.f92845z = (byte) 0;
        this.f92842w = (byte) 0;
    }
}
