package oh;

import java.io.IOException;

public abstract class X extends B implements J {

    public static final T f98838c = new a(X.class, 26);

    public final byte[] f98839b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return X.E(c02.H());
        }
    }

    public X(String str) {
        this.f98839b = org.bouncycastle.util.w.j(str);
    }

    public static X E(byte[] bArr) {
        return new P0(bArr, false);
    }

    public static X F(Object obj) {
        if (obj == null || (obj instanceof X)) {
            return (X) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof X) {
                return (X) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (X) f98838c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static X G(M m10, boolean z10) {
        return (X) f98838c.f(m10, z10);
    }

    public final byte[] H() {
        return org.bouncycastle.util.a.p(this.f98839b);
    }

    @Override
    public final String getString() {
        return org.bouncycastle.util.w.c(this.f98839b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98839b);
    }

    public String toString() {
        return getString();
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof X) {
            return org.bouncycastle.util.a.g(this.f98839b, ((X) b10).f98839b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 26, this.f98839b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98839b.length);
    }

    public X(byte[] bArr, boolean z10) {
        this.f98839b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }
}
