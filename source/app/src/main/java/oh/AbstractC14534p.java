package oh;

import java.io.IOException;

public abstract class AbstractC14534p extends B implements J {

    public static final T f98967c = new a(AbstractC14534p.class, 25);

    public final byte[] f98968b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return AbstractC14534p.E(c02.H());
        }
    }

    public AbstractC14534p(byte[] bArr, boolean z10) {
        if (bArr == null) {
            throw new NullPointerException("'contents' cannot be null");
        }
        this.f98968b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }

    public static AbstractC14534p E(byte[] bArr) {
        return new C14552y0(bArr, false);
    }

    public static AbstractC14534p F(Object obj) {
        if (obj == null || (obj instanceof AbstractC14534p)) {
            return (AbstractC14534p) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof AbstractC14534p) {
                return (AbstractC14534p) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (AbstractC14534p) f98967c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static AbstractC14534p G(M m10, boolean z10) {
        return (AbstractC14534p) f98967c.f(m10, z10);
    }

    public final byte[] H() {
        return org.bouncycastle.util.a.p(this.f98968b);
    }

    @Override
    public final String getString() {
        return org.bouncycastle.util.w.c(this.f98968b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98968b);
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof AbstractC14534p) {
            return org.bouncycastle.util.a.g(this.f98968b, ((AbstractC14534p) b10).f98968b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 25, this.f98968b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98968b.length);
    }
}
