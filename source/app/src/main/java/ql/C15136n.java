package ql;

public final class C15136n {

    public final byte[][] f108381a;

    public C15136n(C15135m c15135m, byte[][] bArr) {
        if (c15135m == null) {
            throw new NullPointerException("params == null");
        }
        if (bArr == null) {
            throw new NullPointerException("privateKey == null");
        }
        if (O.m(bArr)) {
            throw new NullPointerException("privateKey byte array == null");
        }
        if (bArr.length != c15135m.a()) {
            throw new IllegalArgumentException("wrong privateKey format");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != c15135m.f()) {
                throw new IllegalArgumentException("wrong privateKey format");
            }
        }
        this.f108381a = O.e(bArr);
    }

    public byte[][] a() {
        return O.e(this.f108381a);
    }
}
