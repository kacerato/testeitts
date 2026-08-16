package ql;

public final class C15137o {

    public final byte[][] f108382a;

    public C15137o(C15135m c15135m, byte[][] bArr) {
        if (c15135m == null) {
            throw new NullPointerException("params == null");
        }
        if (bArr == null) {
            throw new NullPointerException("publicKey == null");
        }
        if (O.m(bArr)) {
            throw new NullPointerException("publicKey byte array == null");
        }
        if (bArr.length != c15135m.a()) {
            throw new IllegalArgumentException("wrong publicKey size");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != c15135m.f()) {
                throw new IllegalArgumentException("wrong publicKey format");
            }
        }
        this.f108382a = O.e(bArr);
    }

    public byte[][] a() {
        return O.e(this.f108382a);
    }
}
