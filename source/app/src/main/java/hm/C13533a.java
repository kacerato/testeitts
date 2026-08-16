package hm;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.Provider;
import java.security.SecureRandom;
import org.bouncycastle.util.p;

public class C13533a extends SecureRandom {

    public static BigInteger f91140d = new BigInteger("01020304ffffffff0506070811111111", 16);

    public static BigInteger f91141e = new BigInteger("1111111105060708ffffffff01020304", 16);

    public static BigInteger f91142f = new BigInteger("3020104ffffffff05060708111111", 16);

    public static final boolean f91143g;

    public static final boolean f91144h;

    public static final boolean f91145i;

    public byte[] f91146b;

    public int f91147c;

    public static class C1745a extends e {
        public C1745a(int i10, String str) {
            super(C13533a.c(i10, em.h.b(str)));
        }

        public C1745a(int i10, byte[] bArr) {
            super(C13533a.c(i10, bArr));
        }

        public C1745a(String str) {
            this(em.h.b(str));
        }

        public C1745a(byte[] bArr) {
            super(bArr);
        }
    }

    public static class b extends e {
        public b(byte[] bArr) {
            super(bArr);
        }
    }

    public static class c extends Provider {
        public c() {
            super("BCFIPS_FIXED_RNG", 1.0d, "BCFIPS Fixed Secure Random Provider");
        }
    }

    public static class d extends SecureRandom {

        public byte[] f91148b;

        public int f91149c;

        public d() {
            super(null, new c());
            this.f91148b = em.h.b("01020304ffffffff0506070811111111");
            this.f91149c = 0;
        }

        @Override
        public void nextBytes(byte[] bArr) {
            System.arraycopy(this.f91148b, this.f91149c, bArr, 0, bArr.length);
            this.f91149c += bArr.length;
        }
    }

    public static class e {

        public byte[] f91150a;

        public e(byte[] bArr) {
            this.f91150a = bArr;
        }
    }

    static {
        BigInteger bigInteger = new BigInteger(128, new d());
        BigInteger bigInteger2 = new BigInteger(120, new d());
        f91143g = bigInteger.equals(f91141e);
        f91145i = bigInteger.equals(f91140d);
        f91144h = bigInteger2.equals(f91142f);
    }

    public C13533a(byte[] bArr) {
        this(new e[]{new b(bArr)});
    }

    public static b[] b(byte[][] bArr) {
        b[] bVarArr = new b[bArr.length];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bVarArr[i10] = new b(bArr[i10]);
        }
        return bVarArr;
    }

    public static byte[] c(int i10, byte[] bArr) {
        int i11;
        int i12;
        int i13 = (i10 + 7) / 8;
        if (i13 <= bArr.length) {
            if (f91143g && i10 < bArr.length * 8 && (i11 = i10 % 8) != 0) {
                p.h(p.a(bArr, 0) << (8 - i11), bArr, 0);
            }
            return bArr;
        }
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, 0, bArr2, i13 - bArr.length, bArr.length);
        if (f91143g && (i12 = i10 % 8) != 0) {
            p.h(p.a(bArr2, 0) << (8 - i12), bArr2, 0);
        }
        return bArr2;
    }

    public boolean d() {
        return this.f91147c == this.f91146b.length;
    }

    public final int e() {
        byte[] bArr = this.f91146b;
        int i10 = this.f91147c;
        this.f91147c = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override
    public byte[] generateSeed(int i10) {
        byte[] bArr = new byte[i10];
        nextBytes(bArr);
        return bArr;
    }

    @Override
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this.f91146b, this.f91147c, bArr, 0, bArr.length);
        this.f91147c += bArr.length;
    }

    @Override
    public int nextInt() {
        return (e() << 24) | (e() << 16) | (e() << 8) | e();
    }

    @Override
    public long nextLong() {
        return (e() << 56) | (e() << 48) | (e() << 40) | (e() << 32) | (e() << 24) | (e() << 16) | (e() << 8) | e();
    }

    public C13533a(e[] eVarArr) {
        super(null, new c());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        if (!f91145i) {
            if (!f91143g) {
                throw new IllegalStateException("Unrecognized BigInteger implementation");
            }
            for (int i11 = 0; i11 != eVarArr.length; i11++) {
                try {
                    e eVar = eVarArr[i11];
                    if (eVar instanceof C1745a) {
                        byte[] bArr = eVar.f91150a;
                        int length = bArr.length - (bArr.length % 4);
                        int i12 = 0;
                        while (i12 < length) {
                            i12 += 4;
                            byteArrayOutputStream.write(bArr, bArr.length - i12, 4);
                        }
                        if (bArr.length - length != 0) {
                            for (int i13 = 0; i13 != 4 - (bArr.length - length); i13++) {
                                byteArrayOutputStream.write(0);
                            }
                        }
                        for (int i14 = 0; i14 != bArr.length - length; i14++) {
                            byteArrayOutputStream.write(bArr[length + i14]);
                        }
                    } else {
                        byteArrayOutputStream.write(eVar.f91150a);
                    }
                } catch (IOException unused) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        } else if (f91144h) {
            while (i10 != eVarArr.length) {
                try {
                    e eVar2 = eVarArr[i10];
                    if (eVar2 instanceof C1745a) {
                        byte[] bArr2 = eVar2.f91150a;
                        int length2 = bArr2.length - (bArr2.length % 4);
                        for (int length3 = (bArr2.length - length2) - 1; length3 >= 0; length3--) {
                            byteArrayOutputStream.write(bArr2[length3]);
                        }
                        for (int length4 = bArr2.length - length2; length4 < bArr2.length; length4 += 4) {
                            byteArrayOutputStream.write(bArr2, length4, 4);
                        }
                    } else {
                        byteArrayOutputStream.write(eVar2.f91150a);
                    }
                    i10++;
                } catch (IOException unused2) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        } else {
            while (i10 != eVarArr.length) {
                try {
                    byteArrayOutputStream.write(eVarArr[i10].f91150a);
                    i10++;
                } catch (IOException unused3) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        }
        this.f91146b = byteArrayOutputStream.toByteArray();
    }

    public C13533a(byte[][] bArr) {
        this(b(bArr));
    }
}
