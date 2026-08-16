package oh;

import java.io.IOException;

public abstract class AbstractC14536q extends B implements J {

    public static final T f98972c = new a(AbstractC14536q.class, 22);

    public final byte[] f98973b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return AbstractC14536q.E(c02.H());
        }
    }

    public AbstractC14536q(String str, boolean z10) {
        if (str == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        if (z10 && !I(str)) {
            throw new IllegalArgumentException("'string' contains illegal characters");
        }
        this.f98973b = org.bouncycastle.util.w.j(str);
    }

    public static AbstractC14536q E(byte[] bArr) {
        return new C14554z0(bArr, false);
    }

    public static AbstractC14536q F(Object obj) {
        if (obj == null || (obj instanceof AbstractC14536q)) {
            return (AbstractC14536q) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof AbstractC14536q) {
                return (AbstractC14536q) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (AbstractC14536q) f98972c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static AbstractC14536q G(M m10, boolean z10) {
        return (AbstractC14536q) f98972c.f(m10, z10);
    }

    public static boolean I(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) > '\u007f') {
                return false;
            }
        }
        return true;
    }

    public final byte[] H() {
        return org.bouncycastle.util.a.p(this.f98973b);
    }

    @Override
    public final String getString() {
        return org.bouncycastle.util.w.c(this.f98973b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98973b);
    }

    public String toString() {
        return getString();
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof AbstractC14536q) {
            return org.bouncycastle.util.a.g(this.f98973b, ((AbstractC14536q) b10).f98973b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 22, this.f98973b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98973b.length);
    }

    public AbstractC14536q(byte[] bArr, boolean z10) {
        this.f98973b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }
}
