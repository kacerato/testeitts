package oh;

import java.io.IOException;

public abstract class W extends B implements J {

    public static final T f98835c = new a(W.class, 21);

    public final byte[] f98836b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return W.E(c02.H());
        }
    }

    public W(byte[] bArr, boolean z10) {
        this.f98836b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }

    public static W E(byte[] bArr) {
        return new O0(bArr, false);
    }

    public static W F(Object obj) {
        if (obj == null || (obj instanceof W)) {
            return (W) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof W) {
                return (W) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (W) f98835c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static W G(M m10, boolean z10) {
        return (W) f98835c.f(m10, z10);
    }

    public final byte[] H() {
        return org.bouncycastle.util.a.p(this.f98836b);
    }

    @Override
    public final String getString() {
        return org.bouncycastle.util.w.c(this.f98836b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98836b);
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof W) {
            return org.bouncycastle.util.a.g(this.f98836b, ((W) b10).f98836b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 21, this.f98836b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98836b.length);
    }
}
