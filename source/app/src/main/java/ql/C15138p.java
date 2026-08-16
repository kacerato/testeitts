package ql;

public final class C15138p {

    public byte[][] f108383a;

    public C15138p(C15135m c15135m, byte[][] bArr) {
        if (c15135m == null) {
            throw new NullPointerException("params == null");
        }
        if (bArr == null) {
            throw new NullPointerException("signature == null");
        }
        if (O.m(bArr)) {
            throw new NullPointerException("signature byte array == null");
        }
        if (bArr.length != c15135m.a()) {
            throw new IllegalArgumentException("wrong signature size");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != c15135m.f()) {
                throw new IllegalArgumentException("wrong signature format");
            }
        }
        this.f108383a = O.e(bArr);
    }

    public byte[][] a() {
        return O.e(this.f108383a);
    }
}
