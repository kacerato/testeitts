package ql;

import java.io.IOException;

public final class J extends u implements N, org.bouncycastle.util.g {

    public final H f108283h;

    public final int f108284i;

    public final byte[] f108285j;

    public final byte[] f108286k;

    public static class b {

        public final H f108287a;

        public byte[] f108288b = null;

        public byte[] f108289c = null;

        public byte[] f108290d = null;

        public b(H h10) {
            this.f108287a = h10;
        }

        public J e() {
            return new J(this);
        }

        public b f(byte[] bArr) {
            this.f108290d = O.d(bArr);
            return this;
        }

        public b g(byte[] bArr) {
            this.f108289c = O.d(bArr);
            return this;
        }

        public b h(byte[] bArr) {
            this.f108288b = O.d(bArr);
            return this;
        }
    }

    public J(b bVar) {
        super(false, bVar.f108287a.f());
        H h10 = bVar.f108287a;
        this.f108283h = h10;
        if (h10 == null) {
            throw new NullPointerException("params == null");
        }
        int h11 = h10.h();
        byte[] bArr = bVar.f108290d;
        if (bArr != null) {
            if (bArr.length == h11 + h11) {
                this.f108284i = 0;
                this.f108285j = O.i(bArr, 0, h11);
                this.f108286k = O.i(bArr, h11, h11);
                return;
            } else {
                if (bArr.length != h11 + 4 + h11) {
                    throw new IllegalArgumentException("public key has wrong size");
                }
                this.f108284i = org.bouncycastle.util.p.a(bArr, 0);
                this.f108285j = O.i(bArr, 4, h11);
                this.f108286k = O.i(bArr, 4 + h11, h11);
                return;
            }
        }
        if (h10.e() != null) {
            this.f108284i = h10.e().a();
        } else {
            this.f108284i = 0;
        }
        byte[] bArr2 = bVar.f108288b;
        if (bArr2 == null) {
            this.f108285j = new byte[h11];
        } else {
            if (bArr2.length != h11) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            }
            this.f108285j = bArr2;
        }
        byte[] bArr3 = bVar.f108289c;
        if (bArr3 == null) {
            this.f108286k = new byte[h11];
        } else {
            if (bArr3.length != h11) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            }
            this.f108286k = bArr3;
        }
    }

    public H e() {
        return this.f108283h;
    }

    public byte[] f() {
        return O.d(this.f108286k);
    }

    public byte[] g() {
        return O.d(this.f108285j);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return toByteArray();
    }

    @Override
    public byte[] toByteArray() {
        byte[] bArr;
        int h10 = this.f108283h.h();
        int i10 = this.f108284i;
        int i11 = 0;
        if (i10 != 0) {
            bArr = new byte[h10 + 4 + h10];
            org.bouncycastle.util.p.h(i10, bArr, 0);
            i11 = 4;
        } else {
            bArr = new byte[h10 + h10];
        }
        O.f(bArr, this.f108285j, i11);
        O.f(bArr, this.f108286k, i11 + h10);
        return bArr;
    }
}
