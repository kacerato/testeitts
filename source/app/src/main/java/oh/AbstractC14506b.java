package oh;

import java.io.IOException;

public abstract class AbstractC14506b extends B implements J {

    public static final T f98851c = new a(AbstractC14506b.class, 30);

    public final char[] f98852b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return AbstractC14506b.E(c02.H());
        }
    }

    public AbstractC14506b(String str) {
        if (str == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.f98852b = str.toCharArray();
    }

    public static AbstractC14506b E(byte[] bArr) {
        return new C14537q0(bArr);
    }

    public static AbstractC14506b F(char[] cArr) {
        return new C14537q0(cArr);
    }

    public static AbstractC14506b G(Object obj) {
        if (obj == null || (obj instanceof AbstractC14506b)) {
            return (AbstractC14506b) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof AbstractC14506b) {
                return (AbstractC14506b) r10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (AbstractC14506b) f98851c.c((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static AbstractC14506b H(M m10, boolean z10) {
        return (AbstractC14506b) f98851c.f(m10, z10);
    }

    @Override
    public final String getString() {
        return new String(this.f98852b);
    }

    @Override
    public final int hashCode() {
        return org.bouncycastle.util.a.v0(this.f98852b);
    }

    public String toString() {
        return getString();
    }

    @Override
    public final boolean u(B b10) {
        if (b10 instanceof AbstractC14506b) {
            return org.bouncycastle.util.a.h(this.f98852b, ((AbstractC14506b) b10).f98852b);
        }
        return false;
    }

    @Override
    public final void v(C14503A c14503a, boolean z10) throws IOException {
        int length = this.f98852b.length;
        c14503a.v(z10, 30);
        c14503a.m(length * 2);
        byte[] bArr = new byte[8];
        int i10 = length & (-4);
        int i11 = 0;
        while (i11 < i10) {
            char[] cArr = this.f98852b;
            char c10 = cArr[i11];
            char c11 = cArr[i11 + 1];
            char c12 = cArr[i11 + 2];
            char c13 = cArr[i11 + 3];
            i11 += 4;
            bArr[0] = (byte) (c10 >> '\b');
            bArr[1] = (byte) c10;
            bArr[2] = (byte) (c11 >> '\b');
            bArr[3] = (byte) c11;
            bArr[4] = (byte) (c12 >> '\b');
            bArr[5] = (byte) c12;
            bArr[6] = (byte) (c13 >> '\b');
            bArr[7] = (byte) c13;
            c14503a.l(bArr, 0, 8);
        }
        if (i11 < length) {
            int i12 = 0;
            do {
                char c14 = this.f98852b[i11];
                i11++;
                int i13 = i12 + 1;
                bArr[i12] = (byte) (c14 >> '\b');
                i12 += 2;
                bArr[i13] = (byte) c14;
            } while (i11 < length);
            c14503a.l(bArr, 0, i12);
        }
    }

    @Override
    public final boolean x() {
        return false;
    }

    @Override
    public final int y(boolean z10) {
        return C14503A.i(z10, this.f98852b.length * 2);
    }

    public AbstractC14506b(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        int length = bArr.length;
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("malformed BMPString encoding encountered");
        }
        int i10 = length / 2;
        char[] cArr = new char[i10];
        for (int i11 = 0; i11 != i10; i11++) {
            int i12 = i11 * 2;
            cArr[i11] = (char) ((bArr[i12 + 1] & 255) | (bArr[i12] << 8));
        }
        this.f98852b = cArr;
    }

    public AbstractC14506b(char[] cArr) {
        if (cArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.f98852b = cArr;
    }
}
