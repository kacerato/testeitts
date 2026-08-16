package bl;

import Bi.Y;
import Ii.Q;
import Li.C2769a;
import Ti.H;
import Xi.C3360o0;
import Xi.w0;

public abstract class q {

    public final int f33511a;

    public final int f33512b;

    @Deprecated
    public static class a extends q {

        public final Y f33513c;

        public a() {
            super(64, 64);
            this.f33513c = H.s(C2769a.r());
        }

        @Override
        public void a(byte[] bArr, short s10) {
            f(bArr, s10);
        }

        @Override
        public void b(byte[] bArr, int i10, int i11) {
            e(bArr, i10, i11);
        }

        @Override
        public void c(byte[] bArr, short s10) {
            f(bArr, s10);
        }

        @Override
        public void d(byte[] bArr, int i10, int i11) {
            e(bArr, i10, i11);
        }

        public final void e(byte[] bArr, int i10, int i11) {
            this.f33513c.f(new byte[i11], 0, i11, bArr, i10);
        }

        public final void f(byte[] bArr, short s10) {
            byte[] bArr2 = new byte[12];
            bArr2[0] = (byte) s10;
            bArr2[1] = (byte) (s10 >> 8);
            this.f33513c.a(true, new w0(new C3360o0(bArr, 0, 32), bArr2));
        }
    }

    public static class b extends q {

        public final Q f33514c;

        public final Q f33515d;

        public b() {
            super(168, 136);
            this.f33514c = new Q(128);
            this.f33515d = new Q(256);
        }

        @Override
        public void a(byte[] bArr, short s10) {
            e(this.f33514c, bArr, s10);
        }

        @Override
        public void b(byte[] bArr, int i10, int i11) {
            this.f33514c.h(bArr, i10, i11);
        }

        @Override
        public void c(byte[] bArr, short s10) {
            e(this.f33515d, bArr, s10);
        }

        @Override
        public void d(byte[] bArr, int i10, int i11) {
            this.f33515d.h(bArr, i10, i11);
        }

        public final void e(Q q10, byte[] bArr, short s10) {
            q10.reset();
            q10.update(bArr, 0, bArr.length);
            q10.update(new byte[]{(byte) s10, (byte) (s10 >> 8)}, 0, 2);
        }
    }

    public q(int i10, int i11) {
        this.f33511a = i10;
        this.f33512b = i11;
    }

    public abstract void a(byte[] bArr, short s10);

    public abstract void b(byte[] bArr, int i10, int i11);

    public abstract void c(byte[] bArr, short s10);

    public abstract void d(byte[] bArr, int i10, int i11);
}
