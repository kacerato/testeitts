package oh;

import java.io.IOException;

public abstract class AbstractC14543u extends B implements J {

    public static final T f98984c = new a(AbstractC14543u.class, 18);

    public final byte[] f98985b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return AbstractC14543u.E(c02.H());
        }
    }

    public AbstractC14543u(String str, boolean z10) {
        if (z10 && !I(str)) {
            throw new IllegalArgumentException("string contains illegal characters");
        }
        this.f98985b = org.bouncycastle.util.w.j(str);
    }

    public static AbstractC14543u E(byte[] bArr) {
        return new B0(bArr, false);
    }

    public static AbstractC14543u F(Object obj) {
        if (obj == null || (obj instanceof AbstractC14543u)) {
            return (AbstractC14543u) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof AbstractC14543u) {
                return (AbstractC14543u) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (AbstractC14543u) f98984c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static AbstractC14543u G(M m10, boolean z10) {
        return (AbstractC14543u) f98984c.f(m10, z10);
    }

    public static boolean I(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (charAt > '\u007f') {
                return false;
            }
            if (('0' > charAt || charAt > '9') && charAt != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean J(byte[] bArr) {
        for (byte b10 : bArr) {
            if (b10 != 32) {
                switch (b10) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        break;
                    default:
                        return false;
                }
            }
        }
        return true;
    }

    public final byte[] H() {
        return org.bouncycastle.util.a.p(this.f98985b);
    }

    @Override
    public final String getString() {
        return org.bouncycastle.util.w.c(this.f98985b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98985b);
    }

    public String toString() {
        return getString();
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof AbstractC14543u) {
            return org.bouncycastle.util.a.g(this.f98985b, ((AbstractC14543u) b10).f98985b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 18, this.f98985b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98985b.length);
    }

    public AbstractC14543u(byte[] bArr, boolean z10) {
        this.f98985b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }
}
