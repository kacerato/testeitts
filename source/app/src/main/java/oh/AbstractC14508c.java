package oh;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public abstract class AbstractC14508c extends B implements J, InterfaceC14510d {

    public static final T f98859c = new a(AbstractC14508c.class, 3);

    public static final char[] f98860d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'B', 'C', 'D', IIndexConstants.ENUM_SUFFIX, 'F'};

    public final byte[] f98861b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B d(E e10) {
            return e10.M();
        }

        @Override
        public B e(C0 c02) {
            return AbstractC14508c.E(c02.H());
        }
    }

    public AbstractC14508c(byte b10, int i10) {
        if (i10 > 7 || i10 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.f98861b = new byte[]{(byte) i10, b10};
    }

    public static AbstractC14508c E(byte[] bArr) {
        int length = bArr.length;
        if (length < 1) {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        int i10 = bArr[0] & 255;
        if (i10 > 0) {
            if (i10 > 7 || length < 2) {
                throw new IllegalArgumentException("invalid pad bits detected");
            }
            byte b10 = bArr[length - 1];
            if (b10 != ((byte) ((255 << i10) & b10))) {
                return new Q0(bArr, false);
            }
        }
        return new C14538r0(bArr, false);
    }

    public static byte[] G(int i10) {
        if (i10 == 0) {
            return new byte[0];
        }
        int i11 = 4;
        for (int i12 = 3; i12 >= 1 && ((255 << (i12 * 8)) & i10) == 0; i12--) {
            i11--;
        }
        byte[] bArr = new byte[i11];
        for (int i13 = 0; i13 < i11; i13++) {
            bArr[i13] = (byte) ((i10 >> (i13 * 8)) & 255);
        }
        return bArr;
    }

    public static AbstractC14508c H(Object obj) {
        if (obj == null || (obj instanceof AbstractC14508c)) {
            return (AbstractC14508c) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof AbstractC14508c) {
                return (AbstractC14508c) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (AbstractC14508c) f98859c.c((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct BIT STRING from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static AbstractC14508c I(M m10, boolean z10) {
        return (AbstractC14508c) f98859c.f(m10, z10);
    }

    public static int K(int i10) {
        int i11;
        int i12 = 3;
        while (true) {
            if (i12 < 0) {
                i11 = 0;
                break;
            }
            if (i12 != 0) {
                int i13 = i10 >> (i12 * 8);
                if (i13 != 0) {
                    i11 = i13 & 255;
                    break;
                }
                i12--;
            } else {
                if (i10 != 0) {
                    i11 = i10 & 255;
                    break;
                }
                i12--;
            }
        }
        if (i11 == 0) {
            return 0;
        }
        int i14 = 1;
        while (true) {
            i11 <<= 1;
            if ((i11 & 255) == 0) {
                return 8 - i14;
            }
            i14++;
        }
    }

    @Override
    public B C() {
        return new C14538r0(this.f98861b, false);
    }

    @Override
    public B D() {
        return new Q0(this.f98861b, false);
    }

    public byte[] F() {
        byte[] bArr = this.f98861b;
        if (bArr.length == 1) {
            return AbstractC14551y.f99003d;
        }
        int i10 = bArr[0] & 255;
        byte[] X10 = org.bouncycastle.util.a.X(bArr, 1, bArr.length);
        int length = X10.length - 1;
        X10[length] = (byte) (((byte) (255 << i10)) & X10[length]);
        return X10;
    }

    public byte[] J() {
        byte[] bArr = this.f98861b;
        if (bArr[0] == 0) {
            return org.bouncycastle.util.a.X(bArr, 1, bArr.length);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    public int L() {
        int min = Math.min(5, this.f98861b.length - 1);
        int i10 = 0;
        for (int i11 = 1; i11 < min; i11++) {
            i10 |= (255 & this.f98861b[i11]) << ((i11 - 1) * 8);
        }
        if (1 > min || min >= 5) {
            return i10;
        }
        byte[] bArr = this.f98861b;
        return i10 | ((((byte) (bArr[min] & (255 << (bArr[0] & 255)))) & 255) << ((min - 1) * 8));
    }

    public InterfaceC14510d M() {
        return this;
    }

    @Override
    public InputStream a() throws IOException {
        int i10 = this.f98861b[0] & 255;
        if (i10 == 0) {
            return i();
        }
        throw new IOException("expected octet-aligned bitstring, but found padBits: " + i10);
    }

    @Override
    public B c() {
        return r();
    }

    @Override
    public String getString() {
        try {
            byte[] encoded = getEncoded();
            StringBuffer stringBuffer = new StringBuffer((encoded.length * 2) + 1);
            stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
            for (int i10 = 0; i10 != encoded.length; i10++) {
                byte b10 = encoded[i10];
                char[] cArr = f98860d;
                stringBuffer.append(cArr[(b10 >>> 4) & 15]);
                stringBuffer.append(cArr[b10 & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e10) {
            throw new ASN1ParsingException("Internal error encoding BitString: " + e10.getMessage(), e10);
        }
    }

    @Override
    public int hashCode() {
        byte[] bArr = this.f98861b;
        if (bArr.length < 2) {
            return 1;
        }
        int i10 = bArr[0] & 255;
        int length = bArr.length - 1;
        return (org.bouncycastle.util.a.u0(bArr, 0, length) * 257) ^ ((byte) ((255 << i10) & bArr[length]));
    }

    @Override
    public InputStream i() throws IOException {
        byte[] bArr = this.f98861b;
        return new ByteArrayInputStream(bArr, 1, bArr.length - 1);
    }

    @Override
    public int n() {
        return this.f98861b[0] & 255;
    }

    public String toString() {
        return getString();
    }

    @Override
    public boolean u(B b10) {
        if (!(b10 instanceof AbstractC14508c)) {
            return false;
        }
        byte[] bArr = this.f98861b;
        byte[] bArr2 = ((AbstractC14508c) b10).f98861b;
        int length = bArr.length;
        if (bArr2.length != length) {
            return false;
        }
        if (length == 1) {
            return true;
        }
        int i10 = length - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            if (bArr[i11] != bArr2[i11]) {
                return false;
            }
        }
        int i12 = 255 << (bArr[0] & 255);
        return ((byte) (bArr[i10] & i12)) == ((byte) (bArr2[i10] & i12));
    }

    public AbstractC14508c(byte[] bArr, int i10) {
        if (bArr == null) {
            throw new NullPointerException("'data' cannot be null");
        }
        if (bArr.length == 0 && i10 != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i10 > 7 || i10 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.f98861b = org.bouncycastle.util.a.J0(bArr, (byte) i10);
    }

    public AbstractC14508c(byte[] bArr, boolean z10) {
        if (z10) {
            if (bArr == null) {
                throw new NullPointerException("'contents' cannot be null");
            }
            if (bArr.length < 1) {
                throw new IllegalArgumentException("'contents' cannot be empty");
            }
            int i10 = bArr[0] & 255;
            if (i10 > 0) {
                if (bArr.length < 2) {
                    throw new IllegalArgumentException("zero length data with non-zero pad bits");
                }
                if (i10 > 7) {
                    throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
                }
            }
        }
        this.f98861b = bArr;
    }
}
