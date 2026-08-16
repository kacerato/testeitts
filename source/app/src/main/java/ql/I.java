package ql;

import java.io.IOException;
import ql.C15132j;

public final class I extends u implements N, org.bouncycastle.util.g {

    public final H f108268h;

    public final byte[] f108269i;

    public final byte[] f108270j;

    public final byte[] f108271k;

    public final byte[] f108272l;

    public volatile C15123a f108273m;

    public static class b {

        public final H f108274a;

        public int f108275b = 0;

        public int f108276c = -1;

        public byte[] f108277d = null;

        public byte[] f108278e = null;

        public byte[] f108279f = null;

        public byte[] f108280g = null;

        public C15123a f108281h = null;

        public byte[] f108282i = null;

        public b(H h10) {
            this.f108274a = h10;
        }

        public I j() {
            return new I(this);
        }

        public b k(C15123a c15123a) {
            this.f108281h = c15123a;
            return this;
        }

        public b l(int i10) {
            this.f108275b = i10;
            return this;
        }

        public b m(int i10) {
            this.f108276c = i10;
            return this;
        }

        public b n(byte[] bArr) {
            this.f108282i = O.d(bArr);
            return this;
        }

        public b o(byte[] bArr) {
            this.f108279f = O.d(bArr);
            return this;
        }

        public b p(byte[] bArr) {
            this.f108280g = O.d(bArr);
            return this;
        }

        public b q(byte[] bArr) {
            this.f108278e = O.d(bArr);
            return this;
        }

        public b r(byte[] bArr) {
            this.f108277d = O.d(bArr);
            return this;
        }
    }

    public I(b bVar) {
        super(true, bVar.f108274a.f());
        H h10 = bVar.f108274a;
        this.f108268h = h10;
        if (h10 == null) {
            throw new NullPointerException("params == null");
        }
        int h11 = h10.h();
        byte[] bArr = bVar.f108282i;
        if (bArr != null) {
            int b10 = h10.b();
            int a10 = org.bouncycastle.util.p.a(bArr, 0);
            if (!O.n(b10, a10)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.f108269i = O.i(bArr, 4, h11);
            int i10 = 4 + h11;
            this.f108270j = O.i(bArr, i10, h11);
            int i11 = i10 + h11;
            this.f108271k = O.i(bArr, i11, h11);
            int i12 = i11 + h11;
            this.f108272l = O.i(bArr, i12, h11);
            int i13 = i12 + h11;
            try {
                C15123a c15123a = (C15123a) O.g(O.i(bArr, i13, bArr.length - i13), C15123a.class);
                if (c15123a.c() != a10) {
                    throw new IllegalStateException("serialized BDS has wrong index");
                }
                this.f108273m = c15123a.o(bVar.f108274a.g());
                return;
            } catch (IOException e10) {
                throw new IllegalArgumentException(e10.getMessage(), e10);
            } catch (ClassNotFoundException e11) {
                throw new IllegalArgumentException(e11.getMessage(), e11);
            }
        }
        byte[] bArr2 = bVar.f108277d;
        if (bArr2 == null) {
            this.f108269i = new byte[h11];
        } else {
            if (bArr2.length != h11) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
            }
            this.f108269i = bArr2;
        }
        byte[] bArr3 = bVar.f108278e;
        if (bArr3 == null) {
            this.f108270j = new byte[h11];
        } else {
            if (bArr3.length != h11) {
                throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
            }
            this.f108270j = bArr3;
        }
        byte[] bArr4 = bVar.f108279f;
        if (bArr4 == null) {
            this.f108271k = new byte[h11];
        } else {
            if (bArr4.length != h11) {
                throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
            }
            this.f108271k = bArr4;
        }
        byte[] bArr5 = bVar.f108280g;
        if (bArr5 == null) {
            this.f108272l = new byte[h11];
        } else {
            if (bArr5.length != h11) {
                throw new IllegalArgumentException("size of root needs to be equal size of digest");
            }
            this.f108272l = bArr5;
        }
        C15123a c15123a2 = bVar.f108281h;
        this.f108273m = c15123a2 == null ? (bVar.f108275b >= (1 << h10.b()) + (-2) || bArr4 == null || bArr2 == null) ? new C15123a(h10, (1 << h10.b()) - 1, bVar.f108275b) : new C15123a(h10, bArr4, bArr2, (C15132j) new C15132j.b().e(), bVar.f108275b) : c15123a2;
        if (bVar.f108276c >= 0 && bVar.f108276c != this.f108273m.d()) {
            throw new IllegalArgumentException("maxIndex set but not reflected in state");
        }
    }

    public long S0() {
        long d10;
        synchronized (this) {
            d10 = (this.f108273m.d() - g()) + 1;
        }
        return d10;
    }

    public I e(int i10) {
        I j10;
        if (i10 < 1) {
            throw new IllegalArgumentException("cannot ask for a shard with 0 keys");
        }
        synchronized (this) {
            long j11 = i10;
            try {
                if (j11 > S0()) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                j10 = new b(this.f108268h).r(this.f108269i).q(this.f108270j).o(this.f108271k).p(this.f108272l).l(g()).k(this.f108273m.n((this.f108273m.c() + i10) - 1, this.f108268h.g())).j();
                if (j11 == S0()) {
                    this.f108273m = new C15123a(this.f108268h, this.f108273m.d(), g() + i10);
                } else {
                    C15132j c15132j = (C15132j) new C15132j.b().e();
                    for (int i11 = 0; i11 != i10; i11++) {
                        this.f108273m = this.f108273m.e(this.f108271k, this.f108269i, c15132j);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    public C15123a f() {
        return this.f108273m;
    }

    public int g() {
        return this.f108273m.c();
    }

    @Override
    public byte[] getEncoded() throws IOException {
        byte[] byteArray;
        synchronized (this) {
            byteArray = toByteArray();
        }
        return byteArray;
    }

    public I h() {
        I e10;
        synchronized (this) {
            e10 = e(1);
        }
        return e10;
    }

    public H i() {
        return this.f108268h;
    }

    public byte[] j() {
        return O.d(this.f108271k);
    }

    public byte[] k() {
        return O.d(this.f108272l);
    }

    public byte[] l() {
        return O.d(this.f108270j);
    }

    public byte[] m() {
        return O.d(this.f108269i);
    }

    public I n() {
        synchronized (this) {
            try {
                this.f108273m = this.f108273m.c() < this.f108273m.d() ? this.f108273m.e(this.f108271k, this.f108269i, (C15132j) new C15132j.b().e()) : new C15123a(this.f108268h, this.f108273m.d(), this.f108273m.d() + 1);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this;
    }

    @Override
    public byte[] toByteArray() {
        byte[] B10;
        synchronized (this) {
            try {
                int h10 = this.f108268h.h();
                byte[] bArr = new byte[h10 + 4 + h10 + h10 + h10];
                org.bouncycastle.util.p.h(this.f108273m.c(), bArr, 0);
                O.f(bArr, this.f108269i, 4);
                int i10 = 4 + h10;
                O.f(bArr, this.f108270j, i10);
                int i11 = i10 + h10;
                O.f(bArr, this.f108271k, i11);
                O.f(bArr, this.f108272l, i11 + h10);
                try {
                    B10 = org.bouncycastle.util.a.B(bArr, O.s(this.f108273m));
                } catch (IOException e10) {
                    throw new RuntimeException("error serializing bds state: " + e10.getMessage());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return B10;
    }
}
