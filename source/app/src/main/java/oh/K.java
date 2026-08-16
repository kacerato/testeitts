package oh;

import java.io.IOException;

public abstract class K extends B implements J {

    public static final T f98809c = new a(K.class, 20);

    public final byte[] f98810b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return K.E(c02.H());
        }
    }

    public K(String str) {
        this.f98810b = org.bouncycastle.util.w.j(str);
    }

    public static K E(byte[] bArr) {
        return new J0(bArr, false);
    }

    public static K F(Object obj) {
        if (obj == null || (obj instanceof K)) {
            return (K) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof K) {
                return (K) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (K) f98809c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static K G(M m10, boolean z10) {
        return (K) f98809c.f(m10, z10);
    }

    public final byte[] H() {
        return org.bouncycastle.util.a.p(this.f98810b);
    }

    @Override
    public final String getString() {
        return org.bouncycastle.util.w.c(this.f98810b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98810b);
    }

    public String toString() {
        return getString();
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof K) {
            return org.bouncycastle.util.a.g(this.f98810b, ((K) b10).f98810b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 20, this.f98810b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98810b.length);
    }

    public K(byte[] bArr, boolean z10) {
        this.f98810b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }
}
