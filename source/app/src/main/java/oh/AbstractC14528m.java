package oh;

import java.io.IOException;

public abstract class AbstractC14528m extends B implements J {

    public static final T f98909c = new a(AbstractC14528m.class, 27);

    public final byte[] f98910b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return AbstractC14528m.E(c02.H());
        }
    }

    public AbstractC14528m(String str) {
        this.f98910b = org.bouncycastle.util.w.j(str);
    }

    public static AbstractC14528m E(byte[] bArr) {
        return new C14546v0(bArr, false);
    }

    public static AbstractC14528m F(Object obj) {
        if (obj == null || (obj instanceof AbstractC14528m)) {
            return (AbstractC14528m) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof AbstractC14528m) {
                return (AbstractC14528m) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (AbstractC14528m) f98909c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static AbstractC14528m G(M m10, boolean z10) {
        return (AbstractC14528m) f98909c.f(m10, z10);
    }

    public final byte[] H() {
        return org.bouncycastle.util.a.p(this.f98910b);
    }

    @Override
    public final String getString() {
        return org.bouncycastle.util.w.c(this.f98910b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98910b);
    }

    public String toString() {
        return getString();
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof AbstractC14528m) {
            return org.bouncycastle.util.a.g(this.f98910b, ((AbstractC14528m) b10).f98910b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 27, this.f98910b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98910b.length);
    }

    public AbstractC14528m(byte[] bArr, boolean z10) {
        this.f98910b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }
}
