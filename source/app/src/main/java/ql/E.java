package ql;

import java.io.Serializable;

public final class E implements Serializable {

    public static final long f108256d = 1;

    public final int f108257b;

    public final byte[] f108258c;

    public E(int i10, byte[] bArr) {
        this.f108257b = i10;
        this.f108258c = bArr;
    }

    public int a() {
        return this.f108257b;
    }

    public byte[] b() {
        return O.d(this.f108258c);
    }
}
