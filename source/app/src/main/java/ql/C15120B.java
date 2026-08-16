package ql;

import java.io.IOException;

public final class C15120B extends y implements N, org.bouncycastle.util.g {

    public final z f108232d;

    public final int f108233e;

    public final byte[] f108234f;

    public final byte[] f108235g;

    public static class b {

        public final z f108236a;

        public byte[] f108237b = null;

        public byte[] f108238c = null;

        public byte[] f108239d = null;

        public b(z zVar) {
            this.f108236a = zVar;
        }

        public C15120B e() {
            return new C15120B(this);
        }

        public b f(byte[] bArr) {
            this.f108239d = O.d(bArr);
            return this;
        }

        public b g(byte[] bArr) {
            this.f108238c = O.d(bArr);
            return this;
        }

        public b h(byte[] bArr) {
            this.f108237b = O.d(bArr);
            return this;
        }
    }

    public C15120B(b bVar) {
        super(false, bVar.f108236a.e());
        z zVar = bVar.f108236a;
        this.f108232d = zVar;
        if (zVar == null) {
            throw new NullPointerException("params == null");
        }
        int g10 = zVar.g();
        byte[] bArr = bVar.f108239d;
        if (bArr != null) {
            if (bArr.length == g10 + g10) {
                this.f108233e = 0;
                this.f108234f = O.i(bArr, 0, g10);
                this.f108235g = O.i(bArr, g10, g10);
                return;
            } else {
                if (bArr.length != g10 + 4 + g10) {
                    throw new IllegalArgumentException("public key has wrong size");
                }
                this.f108233e = org.bouncycastle.util.p.a(bArr, 0);
                this.f108234f = O.i(bArr, 4, g10);
                this.f108235g = O.i(bArr, 4 + g10, g10);
                return;
            }
        }
        if (zVar.d() != null) {
            this.f108233e = zVar.d().a();
        } else {
            this.f108233e = 0;
        }
        byte[] bArr2 = bVar.f108237b;
        if (bArr2 == null) {
            this.f108234f = new byte[g10];
        } else {
            if (bArr2.length != g10) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            }
            this.f108234f = bArr2;
        }
        byte[] bArr3 = bVar.f108238c;
        if (bArr3 == null) {
            this.f108235g = new byte[g10];
        } else {
            if (bArr3.length != g10) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            }
            this.f108235g = bArr3;
        }
    }

    public z e() {
        return this.f108232d;
    }

    public byte[] f() {
        return O.d(this.f108235g);
    }

    public byte[] g() {
        return O.d(this.f108234f);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return toByteArray();
    }

    @Override
    public byte[] toByteArray() {
        byte[] bArr;
        int g10 = this.f108232d.g();
        int i10 = this.f108233e;
        int i11 = 0;
        if (i10 != 0) {
            bArr = new byte[g10 + 4 + g10];
            org.bouncycastle.util.p.h(i10, bArr, 0);
            i11 = 4;
        } else {
            bArr = new byte[g10 + g10];
        }
        O.f(bArr, this.f108234f, i11);
        O.f(bArr, this.f108235g, i11 + g10);
        return bArr;
    }
}
