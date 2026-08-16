package ql;

import java.io.IOException;

public final class C15119A extends y implements N, org.bouncycastle.util.g {

    public final z f108214d;

    public final byte[] f108215e;

    public final byte[] f108216f;

    public final byte[] f108217g;

    public final byte[] f108218h;

    public volatile long f108219i;

    public volatile C15124b f108220j;

    public volatile boolean f108221k;

    public static class b {

        public final z f108222a;

        public long f108223b = 0;

        public long f108224c = -1;

        public byte[] f108225d = null;

        public byte[] f108226e = null;

        public byte[] f108227f = null;

        public byte[] f108228g = null;

        public C15124b f108229h = null;

        public byte[] f108230i = null;

        public H f108231j = null;

        public b(z zVar) {
            this.f108222a = zVar;
        }

        public C15119A k() {
            return new C15119A(this);
        }

        public b l(C15124b c15124b) {
            if (c15124b.b() == 0) {
                this.f108229h = new C15124b(c15124b, (1 << this.f108222a.a()) - 1);
            } else {
                this.f108229h = c15124b;
            }
            return this;
        }

        public b m(long j10) {
            this.f108223b = j10;
            return this;
        }

        public b n(long j10) {
            this.f108224c = j10;
            return this;
        }

        public b o(byte[] bArr) {
            this.f108230i = O.d(bArr);
            this.f108231j = this.f108222a.j();
            return this;
        }

        public b p(byte[] bArr) {
            this.f108227f = O.d(bArr);
            return this;
        }

        public b q(byte[] bArr) {
            this.f108228g = O.d(bArr);
            return this;
        }

        public b r(byte[] bArr) {
            this.f108226e = O.d(bArr);
            return this;
        }

        public b s(byte[] bArr) {
            this.f108225d = O.d(bArr);
            return this;
        }
    }

    public C15119A(b bVar) {
        super(true, bVar.f108222a.e());
        z zVar = bVar.f108222a;
        this.f108214d = zVar;
        if (zVar == null) {
            throw new NullPointerException("params == null");
        }
        int g10 = zVar.g();
        byte[] bArr = bVar.f108230i;
        if (bArr != null) {
            if (bVar.f108231j == null) {
                throw new NullPointerException("xmss == null");
            }
            int a10 = zVar.a();
            int i10 = (a10 + 7) / 8;
            this.f108219i = O.b(bArr, 0, i10);
            if (!O.n(a10, this.f108219i)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.f108215e = O.i(bArr, i10, g10);
            int i11 = i10 + g10;
            this.f108216f = O.i(bArr, i11, g10);
            int i12 = i11 + g10;
            this.f108217g = O.i(bArr, i12, g10);
            int i13 = i12 + g10;
            this.f108218h = O.i(bArr, i13, g10);
            int i14 = i13 + g10;
            try {
                this.f108220j = ((C15124b) O.g(O.i(bArr, i14, bArr.length - i14), C15124b.class)).h(bVar.f108231j.g());
                return;
            } catch (IOException e10) {
                throw new IllegalArgumentException(e10.getMessage(), e10);
            } catch (ClassNotFoundException e11) {
                throw new IllegalArgumentException(e11.getMessage(), e11);
            }
        }
        this.f108219i = bVar.f108223b;
        byte[] bArr2 = bVar.f108225d;
        if (bArr2 == null) {
            this.f108215e = new byte[g10];
        } else {
            if (bArr2.length != g10) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
            }
            this.f108215e = bArr2;
        }
        byte[] bArr3 = bVar.f108226e;
        if (bArr3 == null) {
            this.f108216f = new byte[g10];
        } else {
            if (bArr3.length != g10) {
                throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
            }
            this.f108216f = bArr3;
        }
        byte[] bArr4 = bVar.f108227f;
        if (bArr4 == null) {
            this.f108217g = new byte[g10];
        } else {
            if (bArr4.length != g10) {
                throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
            }
            this.f108217g = bArr4;
        }
        byte[] bArr5 = bVar.f108228g;
        if (bArr5 == null) {
            this.f108218h = new byte[g10];
        } else {
            if (bArr5.length != g10) {
                throw new IllegalArgumentException("size of root needs to be equal size of digest");
            }
            this.f108218h = bArr5;
        }
        C15124b c15124b = bVar.f108229h;
        if (c15124b == null) {
            c15124b = (!O.n(zVar.a(), bVar.f108223b) || bArr4 == null || bArr2 == null) ? new C15124b(bVar.f108224c + 1) : new C15124b(zVar, bVar.f108223b, bArr4, bArr2);
        }
        this.f108220j = c15124b;
        if (bVar.f108224c >= 0 && bVar.f108224c != this.f108220j.b()) {
            throw new IllegalArgumentException("maxIndex set but not reflected in state");
        }
    }

    public long S0() {
        long b10;
        synchronized (this) {
            b10 = (this.f108220j.b() - g()) + 1;
        }
        return b10;
    }

    public C15119A e(int i10) {
        C15119A k10;
        if (i10 < 1) {
            throw new IllegalArgumentException("cannot ask for a shard with 0 keys");
        }
        synchronized (this) {
            long j10 = i10;
            try {
                if (j10 > S0()) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                k10 = new b(this.f108214d).s(this.f108215e).r(this.f108216f).p(this.f108217g).q(this.f108218h).m(g()).l(new C15124b(this.f108220j, (g() + j10) - 1)).k();
                for (int i11 = 0; i11 != i10; i11++) {
                    n();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return k10;
    }

    public C15124b f() {
        return this.f108220j;
    }

    public long g() {
        return this.f108219i;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        byte[] byteArray;
        synchronized (this) {
            byteArray = toByteArray();
        }
        return byteArray;
    }

    public C15119A h() {
        C15119A e10;
        synchronized (this) {
            e10 = e(1);
        }
        return e10;
    }

    public z i() {
        return this.f108214d;
    }

    public byte[] j() {
        return O.d(this.f108217g);
    }

    public byte[] k() {
        return O.d(this.f108218h);
    }

    public byte[] l() {
        return O.d(this.f108216f);
    }

    public byte[] m() {
        return O.d(this.f108215e);
    }

    public C15119A n() {
        synchronized (this) {
            try {
                if (g() < this.f108220j.b()) {
                    this.f108220j.g(this.f108214d, this.f108219i, this.f108217g, this.f108215e);
                    this.f108219i++;
                } else {
                    this.f108219i = this.f108220j.b() + 1;
                    this.f108220j = new C15124b(this.f108220j.b());
                }
                this.f108221k = false;
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
                int g10 = this.f108214d.g();
                int a10 = (this.f108214d.a() + 7) / 8;
                byte[] bArr = new byte[a10 + g10 + g10 + g10 + g10];
                O.f(bArr, O.t(this.f108219i, a10), 0);
                O.f(bArr, this.f108215e, a10);
                int i10 = a10 + g10;
                O.f(bArr, this.f108216f, i10);
                int i11 = i10 + g10;
                O.f(bArr, this.f108217g, i11);
                O.f(bArr, this.f108218h, i11 + g10);
                try {
                    B10 = org.bouncycastle.util.a.B(bArr, O.s(this.f108220j));
                } catch (IOException e10) {
                    throw new IllegalStateException("error serializing bds state: " + e10.getMessage(), e10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return B10;
    }
}
