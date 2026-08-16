package oh;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import oh.C14549x;

public class D extends B {

    public static final int f98781e = 4096;

    public static final int f98782f = 16383;

    public static final long f98783g = 72057594037927808L;

    public final byte[] f98785b;

    public String f98786c;

    public static final T f98780d = new a(D.class, 13);

    public static final ConcurrentMap<C14549x.b, D> f98784h = new ConcurrentHashMap();

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return D.H(c02.H(), false);
        }
    }

    public D(String str) {
        G(str);
        byte[] P10 = P(str);
        F(P10.length);
        this.f98785b = P10;
        this.f98786c = str;
    }

    public static void F(int i10) {
        if (i10 > 4096) {
            throw new IllegalArgumentException("exceeded relative OID contents length limit");
        }
    }

    public static void G(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > 16383) {
            throw new IllegalArgumentException("exceeded relative OID contents length limit");
        }
        if (N(str, 0)) {
            return;
        }
        throw new IllegalArgumentException("string " + str + " not a valid relative OID");
    }

    public static D H(byte[] bArr, boolean z10) {
        F(bArr.length);
        D d10 = f98784h.get(new C14549x.b(bArr));
        if (d10 != null) {
            return d10;
        }
        if (!M(bArr)) {
            throw new IllegalArgumentException("invalid relative OID contents");
        }
        if (z10) {
            bArr = org.bouncycastle.util.a.p(bArr);
        }
        return new D(bArr, null);
    }

    public static D I(byte[] bArr) {
        if (bArr != null) {
            return H(bArr, true);
        }
        throw new NullPointerException("'contents' cannot be null");
    }

    public static D K(Object obj) {
        if (obj == null || (obj instanceof D)) {
            return (D) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof D) {
                return (D) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (D) f98780d.c((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct relative OID from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static D L(M m10, boolean z10) {
        return (D) f98780d.f(m10, z10);
    }

    public static boolean M(byte[] bArr) {
        if (bArr.length < 1) {
            return false;
        }
        boolean z10 = true;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (z10 && (bArr[i10] & 255) == 128) {
                return false;
            }
            z10 = (bArr[i10] & 128) == 0;
        }
        return z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x002d, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean N(String str, int i10) {
        int length = str.length();
        int i11 = 0;
        while (true) {
            int i12 = length - 1;
            if (i12 < i10) {
                return i11 != 0 && (i11 <= 1 || str.charAt(length) != '0');
            }
            char charAt = str.charAt(i12);
            if (charAt == '.') {
                if (i11 == 0 || (i11 > 1 && str.charAt(length) == '0')) {
                    break;
                }
                i11 = 0;
            } else {
                if ('0' > charAt || charAt > '9') {
                    break;
                }
                i11++;
            }
            length = i12;
        }
        return false;
    }

    public static String O(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z10 = true;
        BigInteger bigInteger = null;
        long j10 = 0;
        for (int i10 = 0; i10 != bArr.length; i10++) {
            byte b10 = bArr[i10];
            if (j10 <= 72057594037927808L) {
                long j11 = j10 + (b10 & Byte.MAX_VALUE);
                if ((b10 & 128) == 0) {
                    if (z10) {
                        z10 = false;
                    } else {
                        stringBuffer.append('.');
                    }
                    stringBuffer.append(j11);
                    j10 = 0;
                } else {
                    j10 = j11 << 7;
                }
            } else {
                if (bigInteger == null) {
                    bigInteger = BigInteger.valueOf(j10);
                }
                BigInteger or = bigInteger.or(BigInteger.valueOf(b10 & Byte.MAX_VALUE));
                if ((b10 & 128) == 0) {
                    if (z10) {
                        z10 = false;
                    } else {
                        stringBuffer.append('.');
                    }
                    stringBuffer.append((Object) or);
                    bigInteger = null;
                    j10 = 0;
                } else {
                    bigInteger = or.shiftLeft(7);
                }
            }
        }
        return stringBuffer.toString();
    }

    public static byte[] P(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        i1 i1Var = new i1(str);
        while (i1Var.a()) {
            String b10 = i1Var.b();
            if (b10.length() <= 18) {
                R(byteArrayOutputStream, Long.parseLong(b10));
            } else {
                S(byteArrayOutputStream, new BigInteger(b10));
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static D Q(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > 16383 || !N(str, 0)) {
            return null;
        }
        byte[] P10 = P(str);
        if (P10.length <= 4096) {
            return new D(P10, str);
        }
        return null;
    }

    public static void R(ByteArrayOutputStream byteArrayOutputStream, long j10) {
        byte[] bArr = new byte[9];
        int i10 = 8;
        bArr[8] = (byte) (((int) j10) & 127);
        while (j10 >= 128) {
            j10 >>= 7;
            i10--;
            bArr[i10] = (byte) (((int) j10) | 128);
        }
        byteArrayOutputStream.write(bArr, i10, 9 - i10);
    }

    public static void S(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int bitLength = (bigInteger.bitLength() + 6) / 7;
        if (bitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[bitLength];
        int i10 = bitLength - 1;
        for (int i11 = i10; i11 >= 0; i11--) {
            bArr[i11] = (byte) (bigInteger.intValue() | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i10] = (byte) (bArr[i10] & Byte.MAX_VALUE);
        byteArrayOutputStream.write(bArr, 0, bitLength);
    }

    public D E(String str) {
        G(str);
        byte[] P10 = P(str);
        F(this.f98785b.length + P10.length);
        return new D(org.bouncycastle.util.a.B(this.f98785b, P10), J() + "." + str);
    }

    public synchronized String J() {
        try {
            if (this.f98786c == null) {
                this.f98786c = O(this.f98785b);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f98786c;
    }

    @Override
    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98785b);
    }

    public String toString() {
        return J();
    }

    @Override
    public boolean u(B b10) {
        if (this == b10) {
            return true;
        }
        if (b10 instanceof D) {
            return org.bouncycastle.util.a.g(this.f98785b, ((D) b10).f98785b);
        }
        return false;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 13, this.f98785b);
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, this.f98785b.length);
    }

    public D(byte[] bArr, String str) {
        this.f98785b = bArr;
        this.f98786c = str;
    }
}
