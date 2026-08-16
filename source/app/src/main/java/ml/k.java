package ml;

import Bi.Y;
import Bi.a0;
import Ii.L;
import Ii.N;
import Ii.O;
import Ii.Q;
import Li.C2769a;
import Ti.H;
import Xi.C3360o0;
import Xi.w0;

public abstract class k {

    public static class a extends k {

        public final L f97529a = new L();

        public final O f97530b = new O();

        public final Y f97531c = H.s(C2769a.r());

        @Override
        public void a(byte[] bArr, byte[] bArr2) {
            this.f97530b.update(bArr2, 0, bArr2.length);
            this.f97530b.c(bArr, 0);
        }

        @Override
        public void b(byte[] bArr, byte[] bArr2, int i10) {
            this.f97529a.update(bArr2, 0, bArr2.length);
            this.f97529a.c(bArr, i10);
        }

        @Override
        public void c(byte[] bArr, byte[] bArr2, int i10, int i11) {
            this.f97531c.a(true, new w0(new C3360o0(bArr2, 0, i10), new byte[16]));
            this.f97531c.f(new byte[i11], 0, i11, bArr, 0);
        }
    }

    public static class b extends k {

        public final a0 f97534c = new Q(128);

        public final N f97532a = new N(256);

        public final N f97533b = new N(512);

        @Override
        public void a(byte[] bArr, byte[] bArr2) {
            this.f97533b.update(bArr2, 0, bArr2.length);
            this.f97533b.c(bArr, 0);
        }

        @Override
        public void b(byte[] bArr, byte[] bArr2, int i10) {
            this.f97532a.update(bArr2, 0, bArr2.length);
            this.f97532a.c(bArr, i10);
        }

        @Override
        public void c(byte[] bArr, byte[] bArr2, int i10, int i11) {
            this.f97534c.reset();
            this.f97534c.update(bArr2, 0, i10);
            this.f97534c.e(bArr, 0, i11);
        }
    }

    public abstract void a(byte[] bArr, byte[] bArr2);

    public abstract void b(byte[] bArr, byte[] bArr2, int i10);

    public abstract void c(byte[] bArr, byte[] bArr2, int i10, int i11);
}
