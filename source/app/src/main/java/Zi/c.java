package Zi;

import Bi.InterfaceC2392y;

public class c implements h {

    public static long f31321f = 10;

    public InterfaceC2392y f31324c;

    public byte[] f31325d;

    public byte[] f31326e;

    public long f31323b = 1;

    public long f31322a = 1;

    public c(InterfaceC2392y interfaceC2392y) {
        this.f31324c = interfaceC2392y;
        this.f31326e = new byte[interfaceC2392y.f()];
        this.f31325d = new byte[interfaceC2392y.f()];
    }

    @Override
    public void a(byte[] bArr, int i10, int i11) {
        synchronized (this) {
            try {
                h();
                int i12 = i11 + i10;
                int i13 = 0;
                while (i10 != i12) {
                    if (i13 == this.f31325d.length) {
                        h();
                        i13 = 0;
                    }
                    bArr[i10] = this.f31325d[i13];
                    i10++;
                    i13++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void b(long j10) {
        synchronized (this) {
            e(j10);
            g(this.f31326e);
            f(this.f31326e);
        }
    }

    @Override
    public void c(byte[] bArr) {
        synchronized (this) {
            try {
                if (!org.bouncycastle.util.a.G0(bArr)) {
                    g(bArr);
                }
                g(this.f31326e);
                f(this.f31326e);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void d() {
        g(this.f31326e);
        long j10 = this.f31323b;
        this.f31323b = 1 + j10;
        e(j10);
        f(this.f31326e);
    }

    public final void e(long j10) {
        for (int i10 = 0; i10 != 8; i10++) {
            this.f31324c.update((byte) j10);
            j10 >>>= 8;
        }
    }

    public final void f(byte[] bArr) {
        this.f31324c.c(bArr, 0);
    }

    public final void g(byte[] bArr) {
        this.f31324c.update(bArr, 0, bArr.length);
    }

    public final void h() {
        long j10 = this.f31322a;
        this.f31322a = 1 + j10;
        e(j10);
        g(this.f31325d);
        g(this.f31326e);
        f(this.f31325d);
        if (this.f31322a % f31321f == 0) {
            d();
        }
    }

    @Override
    public void nextBytes(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }
}
