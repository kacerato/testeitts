package oh;

import java.io.IOException;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public abstract class S extends B implements J {

    public static final T f98828c = new a(S.class, 28);

    public static final char[] f98829d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'B', 'C', 'D', IIndexConstants.ENUM_SUFFIX, 'F'};

    public final byte[] f98830b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return S.E(c02.H());
        }
    }

    public S(byte[] bArr, boolean z10) {
        this.f98830b = z10 ? org.bouncycastle.util.a.p(bArr) : bArr;
    }

    public static S E(byte[] bArr) {
        return new N0(bArr, false);
    }

    public static void F(StringBuffer stringBuffer, int i10) {
        char[] cArr = f98829d;
        stringBuffer.append(cArr[(i10 >>> 4) & 15]);
        stringBuffer.append(cArr[i10 & 15]);
    }

    public static void G(StringBuffer stringBuffer, int i10) {
        int i11;
        if (i10 < 128) {
            F(stringBuffer, i10);
            return;
        }
        byte[] bArr = new byte[5];
        int i12 = 5;
        while (true) {
            i11 = i12 - 1;
            bArr[i11] = (byte) i10;
            i10 >>>= 8;
            if (i10 == 0) {
                break;
            } else {
                i12 = i11;
            }
        }
        int i13 = i12 - 2;
        bArr[i13] = (byte) ((5 - i11) | 128);
        while (true) {
            int i14 = i13 + 1;
            F(stringBuffer, bArr[i13]);
            if (i14 >= 5) {
                return;
            } else {
                i13 = i14;
            }
        }
    }

    public static S H(Object obj) {
        if (obj == null || (obj instanceof S)) {
            return (S) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof S) {
                return (S) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (S) f98828c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error getInstance: " + e10.toString());
        }
    }

    public static S I(M m10, boolean z10) {
        return (S) f98828c.f(m10, z10);
    }

    public final byte[] J() {
        return org.bouncycastle.util.a.p(this.f98830b);
    }

    @Override
    public final String getString() {
        int length = this.f98830b.length;
        StringBuffer stringBuffer = new StringBuffer(((C14503A.h(length) + length) * 2) + 3);
        stringBuffer.append("#1C");
        G(stringBuffer, length);
        for (int i10 = 0; i10 < length; i10++) {
            F(stringBuffer, this.f98830b[i10]);
        }
        return stringBuffer.toString();
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98830b);
    }

    public String toString() {
        return getString();
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof S) {
            return org.bouncycastle.util.a.g(this.f98830b, ((S) b10).f98830b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 28, this.f98830b);
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98830b.length);
    }
}
