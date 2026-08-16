package Oi;

import Bi.InterfaceC2392y;
import Xi.C3374y;
import Xi.C3375z;
import java.math.BigInteger;
import java.security.SecureRandom;

public class C2938n {

    public static final BigInteger f20225i = BigInteger.valueOf(0);

    public static final BigInteger f20226j = BigInteger.valueOf(1);

    public static final BigInteger f20227k = BigInteger.valueOf(2);

    public InterfaceC2392y f20228a;

    public int f20229b;

    public int f20230c;

    public int f20231d;

    public int f20232e;

    public SecureRandom f20233f;

    public boolean f20234g;

    public int f20235h;

    public C2938n() {
        this(org.bouncycastle.crypto.util.g.d());
    }

    public static BigInteger a(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger modPow;
        BigInteger divide = bigInteger.subtract(f20226j).divide(bigInteger2);
        BigInteger subtract = bigInteger.subtract(f20227k);
        do {
            modPow = org.bouncycastle.util.b.g(f20227k, subtract, secureRandom).modPow(divide, bigInteger);
        } while (modPow.bitLength() <= 1);
        return modPow;
    }

    public static BigInteger b(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        return a(bigInteger, bigInteger2, secureRandom);
    }

    public static BigInteger c(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr, int i10) {
        BigInteger divide = bigInteger.subtract(f20226j).divide(bigInteger2);
        byte[] d10 = em.h.d("6767656E");
        int length = bArr.length + d10.length;
        byte[] bArr2 = new byte[length + 3];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(d10, 0, bArr2, bArr.length, d10.length);
        bArr2[length] = (byte) i10;
        byte[] bArr3 = new byte[interfaceC2392y.f()];
        for (int i11 = 1; i11 < 65536; i11++) {
            j(bArr2);
            i(interfaceC2392y, bArr2, bArr3, 0);
            BigInteger modPow = new BigInteger(1, bArr3).modPow(divide, bigInteger);
            if (modPow.compareTo(f20227k) >= 0) {
                return modPow;
            }
        }
        return null;
    }

    public static int g(int i10) {
        return i10 > 1024 ? 256 : 160;
    }

    public static int h(int i10) {
        if (i10 <= 1024) {
            return 40;
        }
        return (((i10 - 1) / 1024) * 8) + 48;
    }

    public static void i(InterfaceC2392y interfaceC2392y, byte[] bArr, byte[] bArr2, int i10) {
        interfaceC2392y.update(bArr, 0, bArr.length);
        interfaceC2392y.c(bArr2, i10);
    }

    public static void j(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b10 = (byte) ((bArr[length] + 1) & 255);
            bArr[length] = b10;
            if (b10 != 0) {
                return;
            }
        }
    }

    public C3375z d() {
        return this.f20234g ? f() : e();
    }

    public final C3375z e() {
        int i10 = 20;
        byte[] bArr = new byte[20];
        byte[] bArr2 = new byte[20];
        byte[] bArr3 = new byte[20];
        byte[] bArr4 = new byte[20];
        int i11 = this.f20229b;
        int i12 = (i11 - 1) / 160;
        int i13 = i11 / 8;
        byte[] bArr5 = new byte[i13];
        if (!(this.f20228a instanceof Ii.J)) {
            throw new IllegalStateException("can only use SHA-1 for generating FIPS 186-2 parameters");
        }
        while (true) {
            this.f20233f.nextBytes(bArr);
            i(this.f20228a, bArr, bArr2, 0);
            System.arraycopy(bArr, 0, bArr3, 0, i10);
            j(bArr3);
            i(this.f20228a, bArr3, bArr3, 0);
            for (int i14 = 0; i14 != i10; i14++) {
                bArr4[i14] = (byte) (bArr2[i14] ^ bArr3[i14]);
            }
            bArr4[0] = (byte) (bArr4[0] | Byte.MIN_VALUE);
            bArr4[19] = (byte) (bArr4[19] | 1);
            BigInteger bigInteger = new BigInteger(1, bArr4);
            if (m(bigInteger)) {
                byte[] p10 = org.bouncycastle.util.a.p(bArr);
                j(p10);
                int i15 = 0;
                while (i15 < 4096) {
                    for (int i16 = 1; i16 <= i12; i16++) {
                        j(p10);
                        i(this.f20228a, p10, bArr5, i13 - (i16 * 20));
                    }
                    int i17 = i13 - (i12 * 20);
                    j(p10);
                    i(this.f20228a, p10, bArr2, 0);
                    System.arraycopy(bArr2, 20 - i17, bArr5, 0, i17);
                    bArr5[0] = (byte) (bArr5[0] | Byte.MIN_VALUE);
                    BigInteger bigInteger2 = new BigInteger(1, bArr5);
                    BigInteger subtract = bigInteger2.subtract(bigInteger2.mod(bigInteger.shiftLeft(1)).subtract(f20226j));
                    if (subtract.bitLength() == this.f20229b && m(subtract)) {
                        return new C3375z(subtract, bigInteger, a(subtract, bigInteger, this.f20233f), new Xi.C(bArr, i15));
                    }
                    i15++;
                    i10 = 20;
                }
            }
        }
    }

    public final C3375z f() {
        BigInteger bit;
        int i10;
        BigInteger subtract;
        BigInteger c10;
        InterfaceC2392y interfaceC2392y = this.f20228a;
        int f10 = interfaceC2392y.f() * 8;
        byte[] bArr = new byte[this.f20230c / 8];
        int i11 = this.f20229b;
        int i12 = (i11 - 1) / f10;
        int i13 = (i11 - 1) % f10;
        int i14 = i11 / 8;
        byte[] bArr2 = new byte[i14];
        int f11 = interfaceC2392y.f();
        byte[] bArr3 = new byte[f11];
        loop0: while (true) {
            this.f20233f.nextBytes(bArr);
            int i15 = 0;
            i(interfaceC2392y, bArr, bArr3, 0);
            bit = new BigInteger(1, bArr3).mod(f20226j.shiftLeft(this.f20230c - 1)).setBit(0).setBit(this.f20230c - 1);
            if (m(bit)) {
                byte[] p10 = org.bouncycastle.util.a.p(bArr);
                int i16 = this.f20229b * 4;
                i10 = 0;
                while (i10 < i16) {
                    for (int i17 = 1; i17 <= i12; i17++) {
                        j(p10);
                        i(interfaceC2392y, p10, bArr2, i14 - (i17 * f11));
                    }
                    int i18 = i14 - (i12 * f11);
                    j(p10);
                    i(interfaceC2392y, p10, bArr3, i15);
                    System.arraycopy(bArr3, f11 - i18, bArr2, i15, i18);
                    bArr2[i15] = (byte) (bArr2[i15] | Byte.MIN_VALUE);
                    BigInteger bigInteger = new BigInteger(1, bArr2);
                    subtract = bigInteger.subtract(bigInteger.mod(bit.shiftLeft(1)).subtract(f20226j));
                    if (subtract.bitLength() == this.f20229b && m(subtract)) {
                        break loop0;
                    }
                    i10++;
                    i15 = 0;
                }
            }
        }
        int i19 = this.f20235h;
        return (i19 < 0 || (c10 = c(interfaceC2392y, subtract, bit, bArr, i19)) == null) ? new C3375z(subtract, bit, b(subtract, bit, this.f20233f), new Xi.C(bArr, i10)) : new C3375z(subtract, bit, c10, new Xi.C(bArr, i10, this.f20235h));
    }

    public void k(int i10, int i11, SecureRandom secureRandom) {
        this.f20229b = i10;
        this.f20230c = g(i10);
        this.f20231d = i11;
        this.f20232e = Math.max(h(this.f20229b), (i11 + 1) / 2);
        this.f20233f = secureRandom;
        this.f20234g = false;
        this.f20235h = -1;
    }

    public void l(C3374y c3374y) {
        int b10 = c3374y.b();
        int c10 = c3374y.c();
        if (b10 < 1024 || b10 > 3072 || b10 % 1024 != 0) {
            throw new IllegalArgumentException("L values must be between 1024 and 3072 and a multiple of 1024");
        }
        if (b10 == 1024 && c10 != 160) {
            throw new IllegalArgumentException("N must be 160 for L = 1024");
        }
        if (b10 == 2048 && c10 != 224 && c10 != 256) {
            throw new IllegalArgumentException("N must be 224 or 256 for L = 2048");
        }
        if (b10 == 3072 && c10 != 256) {
            throw new IllegalArgumentException("N must be 256 for L = 3072");
        }
        if (this.f20228a.f() * 8 < c10) {
            throw new IllegalStateException("Digest output size too small for value of N");
        }
        this.f20229b = b10;
        this.f20230c = c10;
        this.f20231d = c3374y.a();
        this.f20232e = Math.max(h(b10), (this.f20231d + 1) / 2);
        this.f20233f = c3374y.d();
        this.f20234g = true;
        this.f20235h = c3374y.e();
    }

    public final boolean m(BigInteger bigInteger) {
        return bigInteger.isProbablePrime(this.f20231d);
    }

    public C2938n(InterfaceC2392y interfaceC2392y) {
        this.f20228a = interfaceC2392y;
    }
}
