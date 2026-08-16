package cl;

import Bi.D;
import Bi.Y;
import Ii.L;
import Ii.N;
import Ii.O;
import Ii.Q;
import Li.C2769a;
import Ti.H;
import Xi.C3360o0;
import Xi.w0;

public abstract class p {

    public final int f35034a;

    @Deprecated
    public static class a extends p {

        public final L f35035b;

        public final O f35036c;

        public final Y f35037d;

        public a() {
            super(64);
            this.f35035b = new L();
            this.f35036c = new O();
            this.f35037d = H.s(C2769a.r());
        }

        @Override
        public void a(byte[] bArr, byte[] bArr2) {
            h(this.f35036c, bArr, bArr2, 0);
        }

        @Override
        public void b(byte[] bArr, byte[] bArr2, int i10) {
            h(this.f35035b, bArr, bArr2, i10);
        }

        @Override
        public void c(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[32];
            h(this.f35035b, bArr3, bArr2, 0);
            System.arraycopy(bArr3, 0, bArr, 0, bArr.length);
        }

        @Override
        public void d(byte[] bArr, byte[] bArr2, byte b10) {
            byte[] bArr3 = new byte[12];
            bArr3[0] = b10;
            this.f35037d.a(true, new w0(new C3360o0(bArr2, 0, 32), bArr3));
            g(bArr, 0, bArr.length);
        }

        @Override
        public void e(byte[] bArr, byte b10, byte b11) {
            byte[] bArr2 = new byte[12];
            bArr2[0] = b10;
            bArr2[1] = b11;
            this.f35037d.a(true, new w0(new C3360o0(bArr, 0, 32), bArr2));
        }

        @Override
        public void f(byte[] bArr, int i10, int i11) {
            g(bArr, i10, i11);
        }

        public final void g(byte[] bArr, int i10, int i11) {
            this.f35037d.f(new byte[i11], 0, i11, bArr, i10);
        }

        public final void h(D d10, byte[] bArr, byte[] bArr2, int i10) {
            d10.update(bArr2, 0, bArr2.length);
            d10.c(bArr, i10);
        }
    }

    public static class b extends p {

        public final Q f35038b;

        public final N f35039c;

        public final N f35040d;

        public final Q f35041e;

        public b() {
            super(168);
            this.f35038b = new Q(128);
            this.f35041e = new Q(256);
            this.f35040d = new N(256);
            this.f35039c = new N(512);
        }

        @Override
        public void a(byte[] bArr, byte[] bArr2) {
            this.f35039c.update(bArr2, 0, bArr2.length);
            this.f35039c.c(bArr, 0);
        }

        @Override
        public void b(byte[] bArr, byte[] bArr2, int i10) {
            this.f35040d.update(bArr2, 0, bArr2.length);
            this.f35040d.c(bArr, i10);
        }

        @Override
        public void c(byte[] bArr, byte[] bArr2) {
            this.f35041e.update(bArr2, 0, bArr2.length);
            this.f35041e.e(bArr, 0, bArr.length);
        }

        @Override
        public void d(byte[] bArr, byte[] bArr2, byte b10) {
            int length = bArr2.length + 1;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            bArr3[bArr2.length] = b10;
            this.f35041e.update(bArr3, 0, length);
            this.f35041e.e(bArr, 0, bArr.length);
        }

        @Override
        public void e(byte[] bArr, byte b10, byte b11) {
            this.f35038b.reset();
            byte[] bArr2 = new byte[bArr.length + 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr2[bArr.length] = b10;
            bArr2[bArr.length + 1] = b11;
            this.f35038b.update(bArr2, 0, bArr.length + 2);
        }

        @Override
        public void f(byte[] bArr, int i10, int i11) {
            this.f35038b.h(bArr, i10, i11);
        }
    }

    public p(int i10) {
        this.f35034a = i10;
    }

    public abstract void a(byte[] bArr, byte[] bArr2);

    public abstract void b(byte[] bArr, byte[] bArr2, int i10);

    public abstract void c(byte[] bArr, byte[] bArr2);

    public abstract void d(byte[] bArr, byte[] bArr2, byte b10);

    public abstract void e(byte[] bArr, byte b10, byte b11);

    public abstract void f(byte[] bArr, int i10, int i11);
}
