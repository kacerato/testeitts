package Ki;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Xi.F0;
import Xi.x0;
import java.math.BigInteger;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class a implements InterfaceC2370b {

    public static final BigInteger f11399f = BigInteger.valueOf(16);

    public static final BigInteger f11400g = BigInteger.valueOf(6);

    public static byte[] f11401h = {14, 3, 5, 8, 9, 4, 2, 15, 0, 13, 11, 6, 7, 10, 12, 1};

    public static byte[] f11402i = {8, 15, 6, 1, 5, 2, 11, 12, 3, 4, 13, 10, 14, 9, 0, 7};

    public InterfaceC2370b f11403a;

    public boolean f11404b;

    public int f11405c;

    public int f11406d = 0;

    public BigInteger f11407e;

    public a(InterfaceC2370b interfaceC2370b) {
        this.f11403a = interfaceC2370b;
    }

    public static byte[] e(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    private byte[] f(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        byte[] b10 = this.f11403a.b(bArr, i10, i11);
        int i12 = (this.f11405c + 13) / 16;
        BigInteger bigInteger = new BigInteger(1, b10);
        BigInteger bigInteger2 = f11399f;
        BigInteger mod = bigInteger.mod(bigInteger2);
        BigInteger bigInteger3 = f11400g;
        if (!mod.equals(bigInteger3)) {
            if (!this.f11407e.subtract(bigInteger).mod(bigInteger2).equals(bigInteger3)) {
                throw new InvalidCipherTextException("resulting integer iS or (modulus - iS) is not congruent to 6 mod 16");
            }
            bigInteger = this.f11407e.subtract(bigInteger);
        }
        byte[] e10 = e(bigInteger);
        if ((e10[e10.length - 1] & 15) != 6) {
            throw new InvalidCipherTextException("invalid forcing byte in block");
        }
        e10[e10.length - 1] = (byte) (((e10[e10.length - 1] & 255) >>> 4) | (f11402i[(e10[e10.length - 2] & 255) >> 4] << 4));
        byte[] bArr2 = f11401h;
        byte b11 = e10[1];
        byte b12 = (byte) (bArr2[b11 & 15] | (bArr2[(b11 & 255) >>> 4] << 4));
        e10[0] = b12;
        int i13 = 1;
        int i14 = 0;
        boolean z10 = false;
        for (int length = e10.length - 1; length >= e10.length - (i12 * 2); length -= 2) {
            byte[] bArr3 = f11401h;
            byte b13 = e10[length];
            int i15 = bArr3[b13 & 15] | (bArr3[(b13 & 255) >>> 4] << 4);
            int i16 = length - 1;
            byte b14 = e10[i16];
            if (((b14 ^ i15) & 255) != 0) {
                if (z10) {
                    throw new InvalidCipherTextException("invalid tsums in block");
                }
                i13 = (b14 ^ i15) & 255;
                z10 = true;
                i14 = i16;
            }
        }
        e10[i14] = 0;
        int length2 = (e10.length - i14) / 2;
        byte[] bArr4 = new byte[length2];
        for (int i17 = 0; i17 < length2; i17++) {
            bArr4[i17] = e10[(i17 * 2) + i14 + 1];
        }
        this.f11406d = i13 - 1;
        return bArr4;
    }

    private byte[] g(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        int i12 = this.f11405c;
        int i13 = (i12 + 7) / 8;
        byte[] bArr2 = new byte[i13];
        int i14 = 1;
        int i15 = this.f11406d + 1;
        int i16 = (i12 + 13) / 16;
        int i17 = 0;
        while (i17 < i16) {
            if (i17 > i16 - i11) {
                int i18 = i16 - i17;
                System.arraycopy(bArr, (i10 + i11) - i18, bArr2, i13 - i16, i18);
            } else {
                System.arraycopy(bArr, i10, bArr2, i13 - (i17 + i11), i11);
            }
            i17 += i11;
        }
        for (int i19 = i13 - (i16 * 2); i19 != i13; i19 += 2) {
            byte b10 = bArr2[(i13 - i16) + (i19 / 2)];
            byte[] bArr3 = f11401h;
            bArr2[i19] = (byte) (bArr3[b10 & 15] | (bArr3[(b10 & 255) >>> 4] << 4));
            bArr2[i19 + 1] = b10;
        }
        int i20 = i13 - (i11 * 2);
        bArr2[i20] = (byte) (bArr2[i20] ^ i15);
        int i21 = i13 - 1;
        bArr2[i21] = (byte) ((bArr2[i21] << 4) | 6);
        int i22 = 8 - ((this.f11405c - 1) % 8);
        if (i22 != 8) {
            byte b11 = (byte) (bArr2[0] & (255 >>> i22));
            bArr2[0] = b11;
            bArr2[0] = (byte) ((128 >>> i22) | b11);
            i14 = 0;
        } else {
            bArr2[0] = 0;
            bArr2[1] = (byte) (bArr2[1] | 128);
        }
        return this.f11403a.b(bArr2, i14, i13 - i14);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        F0 f02 = interfaceC2379k instanceof x0 ? (F0) ((x0) interfaceC2379k).a() : (F0) interfaceC2379k;
        this.f11403a.a(z10, interfaceC2379k);
        BigInteger f10 = f02.f();
        this.f11407e = f10;
        this.f11405c = f10.bitLength();
        this.f11404b = z10;
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        return this.f11404b ? g(bArr, i10, i11) : f(bArr, i10, i11);
    }

    @Override
    public int c() {
        int c10 = this.f11403a.c();
        return this.f11404b ? c10 : (c10 + 1) / 2;
    }

    @Override
    public int d() {
        int d10 = this.f11403a.d();
        return this.f11404b ? (d10 + 1) / 2 : d10;
    }

    public int h() {
        return this.f11406d;
    }

    public InterfaceC2370b i() {
        return this.f11403a;
    }

    public void j(int i10) {
        if (i10 > 7) {
            throw new IllegalArgumentException("padBits > 7");
        }
        this.f11406d = i10;
    }
}
