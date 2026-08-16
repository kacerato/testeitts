package oh;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class C14549x extends B {

    public static final int f98991e = 4096;

    public static final int f98992f = 16385;

    public static final long f98993g = 72057594037927808L;

    public final byte[] f98995b;

    public String f98996c;

    public static final T f98990d = new a(C14549x.class, 6);

    public static final ConcurrentMap<b, C14549x> f98994h = new ConcurrentHashMap();

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B e(C0 c02) {
            return C14549x.H(c02.H(), false);
        }
    }

    public static class b {

        public final int f98997a;

        public final byte[] f98998b;

        public b(byte[] bArr) {
            this.f98997a = org.bouncycastle.util.a.t0(bArr);
            this.f98998b = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return org.bouncycastle.util.a.g(this.f98998b, ((b) obj).f98998b);
            }
            return false;
        }

        public int hashCode() {
            return this.f98997a;
        }
    }

    public C14549x(String str) {
        G(str);
        byte[] Q10 = Q(str);
        F(Q10.length);
        this.f98995b = Q10;
        this.f98996c = str;
    }

    public static void F(int i10) {
        if (i10 > 4096) {
            throw new IllegalArgumentException("exceeded OID contents length limit");
        }
    }

    public static void G(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > 16385) {
            throw new IllegalArgumentException("exceeded OID contents length limit");
        }
        if (N(str)) {
            return;
        }
        throw new IllegalArgumentException("string " + str + " not a valid OID");
    }

    public static C14549x H(byte[] bArr, boolean z10) {
        F(bArr.length);
        C14549x c14549x = f98994h.get(new b(bArr));
        if (c14549x != null) {
            return c14549x;
        }
        if (!D.M(bArr)) {
            throw new IllegalArgumentException("invalid OID contents");
        }
        if (z10) {
            bArr = org.bouncycastle.util.a.p(bArr);
        }
        return new C14549x(bArr, null);
    }

    public static C14549x I(byte[] bArr) {
        if (bArr != null) {
            return H(bArr, true);
        }
        throw new NullPointerException("'contents' cannot be null");
    }

    public static C14549x K(Object obj) {
        if (obj == null || (obj instanceof C14549x)) {
            return (C14549x) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof C14549x) {
                return (C14549x) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (C14549x) f98990d.c((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct object identifier from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static C14549x L(M m10, boolean z10) {
        if (!z10 && !m10.Y() && m10.o()) {
            B r10 = m10.L().r();
            if (!(r10 instanceof C14549x)) {
                return I(AbstractC14551y.F(r10).H());
            }
        }
        return (C14549x) f98990d.f(m10, z10);
    }

    public static boolean N(String str) {
        char charAt;
        if (str.length() < 3 || str.charAt(1) != '.' || (charAt = str.charAt(0)) < '0' || charAt > '2' || !D.N(str, 2)) {
            return false;
        }
        if (charAt == '2' || str.length() == 3 || str.charAt(3) == '.') {
            return true;
        }
        return (str.length() == 4 || str.charAt(4) == '.') && str.charAt(2) < '4';
    }

    private static String P(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        BigInteger bigInteger = null;
        long j10 = 0;
        for (int i10 = 0; i10 != bArr.length; i10++) {
            byte b10 = bArr[i10];
            if (j10 <= 72057594037927808L) {
                long j11 = j10 + (b10 & Byte.MAX_VALUE);
                if ((b10 & 128) == 0) {
                    if (z10) {
                        if (j11 < 40) {
                            sb2.append('0');
                        } else if (j11 < 80) {
                            sb2.append('1');
                            j11 -= 40;
                        } else {
                            sb2.append('2');
                            j11 -= 80;
                        }
                        z10 = false;
                    }
                    sb2.append('.');
                    sb2.append(j11);
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
                        sb2.append('2');
                        or = or.subtract(BigInteger.valueOf(80L));
                        z10 = false;
                    }
                    sb2.append('.');
                    sb2.append((Object) or);
                    bigInteger = null;
                    j10 = 0;
                } else {
                    bigInteger = or.shiftLeft(7);
                }
            }
        }
        return sb2.toString();
    }

    private static byte[] Q(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        i1 i1Var = new i1(str);
        int parseInt = Integer.parseInt(i1Var.b()) * 40;
        String b10 = i1Var.b();
        if (b10.length() <= 18) {
            D.R(byteArrayOutputStream, parseInt + Long.parseLong(b10));
        } else {
            D.S(byteArrayOutputStream, new BigInteger(b10).add(BigInteger.valueOf(parseInt)));
        }
        while (i1Var.a()) {
            String b11 = i1Var.b();
            if (b11.length() <= 18) {
                D.R(byteArrayOutputStream, Long.parseLong(b11));
            } else {
                D.S(byteArrayOutputStream, new BigInteger(b11));
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static C14549x R(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > 16385 || !N(str)) {
            return null;
        }
        byte[] Q10 = Q(str);
        if (Q10.length <= 4096) {
            return new C14549x(Q10, str);
        }
        return null;
    }

    public C14549x E(String str) {
        D.G(str);
        byte[] P10 = D.P(str);
        F(this.f98995b.length + P10.length);
        return new C14549x(org.bouncycastle.util.a.B(this.f98995b, P10), J() + "." + str);
    }

    public synchronized String J() {
        try {
            if (this.f98996c == null) {
                this.f98996c = P(this.f98995b);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f98996c;
    }

    public C14549x M() {
        b bVar = new b(this.f98995b);
        ConcurrentMap<b, C14549x> concurrentMap = f98994h;
        C14549x c14549x = concurrentMap.get(bVar);
        if (c14549x != null) {
            return c14549x;
        }
        synchronized (concurrentMap) {
            try {
                if (concurrentMap.containsKey(bVar)) {
                    return concurrentMap.get(bVar);
                }
                concurrentMap.put(bVar, this);
                return this;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean O(C14549x c14549x) {
        byte[] bArr = this.f98995b;
        byte[] bArr2 = c14549x.f98995b;
        int length = bArr2.length;
        return bArr.length > length && org.bouncycastle.util.a.f(bArr, 0, length, bArr2, 0, length);
    }

    @Override
    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f98995b);
    }

    public String toString() {
        return J();
    }

    @Override
    public boolean u(B b10) {
        if (this == b10) {
            return true;
        }
        if (b10 instanceof C14549x) {
            return org.bouncycastle.util.a.g(this.f98995b, ((C14549x) b10).f98995b);
        }
        return false;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 6, this.f98995b);
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, this.f98995b.length);
    }

    public C14549x(byte[] bArr, String str) {
        this.f98995b = bArr;
        this.f98996c = str;
    }
}
