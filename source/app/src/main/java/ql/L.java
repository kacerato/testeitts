package ql;

import java.io.IOException;
import ql.K;

public final class L extends K implements N, org.bouncycastle.util.g {

    public final int f108298e;

    public final byte[] f108299f;

    public static class b extends K.a {

        public final H f108300e;

        public int f108301f;

        public byte[] f108302g;

        public b(H h10) {
            super(h10);
            this.f108301f = 0;
            this.f108302g = null;
            this.f108300e = h10;
        }

        @Override
        public L e() {
            return new L(this);
        }

        public b l(int i10) {
            this.f108301f = i10;
            return this;
        }

        public b m(byte[] bArr) {
            this.f108302g = O.d(bArr);
            return this;
        }

        public b n(byte[] bArr) {
            if (bArr == null) {
                throw new NullPointerException("signature == null");
            }
            int h10 = this.f108300e.h();
            int a10 = this.f108300e.i().e().a();
            int b10 = this.f108300e.b() * h10;
            this.f108301f = org.bouncycastle.util.p.a(bArr, 0);
            this.f108302g = O.i(bArr, 4, h10);
            g(O.i(bArr, 4 + h10, (a10 * h10) + b10));
            return this;
        }
    }

    public L(b bVar) {
        super(bVar);
        this.f108298e = bVar.f108301f;
        int h10 = b().h();
        byte[] bArr = bVar.f108302g;
        if (bArr == null) {
            this.f108299f = new byte[h10];
        } else {
            if (bArr.length != h10) {
                throw new IllegalArgumentException("size of random needs to be equal to size of digest");
            }
            this.f108299f = bArr;
        }
    }

    public int d() {
        return this.f108298e;
    }

    public byte[] e() {
        return O.d(this.f108299f);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return toByteArray();
    }

    @Override
    public byte[] toByteArray() {
        int h10 = b().h();
        byte[] bArr = new byte[h10 + 4 + (b().i().e().a() * h10) + (b().b() * h10)];
        org.bouncycastle.util.p.h(this.f108298e, bArr, 0);
        O.f(bArr, this.f108299f, 4);
        int i10 = 4 + h10;
        for (byte[] bArr2 : c().a()) {
            O.f(bArr, bArr2, i10);
            i10 += h10;
        }
        for (int i11 = 0; i11 < a().size(); i11++) {
            O.f(bArr, a().get(i11).b(), i10);
            i10 += h10;
        }
        return bArr;
    }
}
