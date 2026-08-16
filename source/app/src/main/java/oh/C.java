package oh;

import java.io.IOException;

public abstract class C extends B implements J {

    public static final T f98778c = new a(C.class, 19);

    public final byte[] f98779b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return C.E(c02.H());
        }
    }

    public C(String str, boolean z10) {
        if (z10 && !I(str)) {
            throw new IllegalArgumentException("string contains illegal characters");
        }
        this.f98779b = org.bouncycastle.util.w.j(str);
    }

    public static C E(byte[] bArr) {
        return new F0(bArr, false);
    }

    public static C F(Object obj) {
        if (obj == null || (obj instanceof C)) {
            return (C) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof C) {
                return (C) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (C) f98778c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static C G(M m10, boolean z10) {
        return (C) f98778c.f(m10, z10);
    }

    public static boolean I(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (charAt > '\u007f') {
                return false;
            }
            if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && (('0' > charAt || charAt > '9') && charAt != ' ' && charAt != ':' && charAt != '=' && charAt != '?'))) {
                switch (charAt) {
                    case '\'':
                    case '(':
                    case ')':
                        continue;
                    default:
                        switch (charAt) {
                            case '+':
                            case ',':
                            case '-':
                            case '.':
                            case '/':
                                break;
                            default:
                                return false;
                        }
                }
            }
        }
        return true;
    }

    public final byte[] H() {
        return org.bouncycastle.util.a.p(this.f98779b);
    }

    @Override
    public final String getString() {
        return org.bouncycastle.util.w.c(this.f98779b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98779b);
    }

    public String toString() {
        return getString();
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof C) {
            return org.bouncycastle.util.a.g(this.f98779b, ((C) b10).f98779b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 19, this.f98779b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98779b.length);
    }

    public C(byte[] bArr, boolean z10) {
        this.f98779b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }
}
