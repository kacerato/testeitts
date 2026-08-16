package bj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.T;
import Xi.F0;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class s implements T {

    public static final int f33352r = 188;

    public static final int f33353s = 12748;

    public static final int f33354t = 13004;

    public static final int f33355u = 13260;

    public static final int f33356v = 13516;

    public static final int f33357w = 13772;

    public static final int f33358x = 14028;

    public static final int f33359y = 14284;

    public InterfaceC2392y f33360g;

    public InterfaceC2370b f33361h;

    public int f33362i;

    public int f33363j;

    public byte[] f33364k;

    public byte[] f33365l;

    public int f33366m;

    public boolean f33367n;

    public byte[] f33368o;

    public byte[] f33369p;

    public byte[] f33370q;

    public s(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y) {
        this(interfaceC2370b, interfaceC2392y, false);
    }

    private void g(byte[] bArr) {
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr[i10] = 0;
        }
    }

    private boolean h(byte[] bArr, byte[] bArr2) {
        boolean z10;
        int i10 = this.f33366m;
        byte[] bArr3 = this.f33365l;
        if (i10 > bArr3.length) {
            z10 = bArr3.length <= bArr2.length;
            for (int i11 = 0; i11 != this.f33365l.length; i11++) {
                if (bArr[i11] != bArr2[i11]) {
                    z10 = false;
                }
            }
        } else {
            z10 = i10 == bArr2.length;
            for (int i12 = 0; i12 != bArr2.length; i12++) {
                if (bArr[i12] != bArr2[i12]) {
                    z10 = false;
                }
            }
        }
        return z10;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        F0 f02 = (F0) interfaceC2379k;
        this.f33361h.a(z10, f02);
        int bitLength = f02.f().bitLength();
        this.f33363j = bitLength;
        byte[] bArr = new byte[(bitLength + 7) / 8];
        this.f33364k = bArr;
        int i10 = this.f33362i;
        int length = bArr.length;
        if (i10 == 188) {
            this.f33365l = new byte[(length - this.f33360g.f()) - 2];
        } else {
            this.f33365l = new byte[(length - this.f33360g.f()) - 3];
        }
        reset();
    }

    @Override
    public boolean b(byte[] bArr) {
        byte[] b10;
        int i10;
        byte[] bArr2 = this.f33369p;
        if (bArr2 == null) {
            try {
                b10 = this.f33361h.b(bArr, 0, bArr.length);
            } catch (Exception unused) {
                return false;
            }
        } else {
            if (!org.bouncycastle.util.a.g(bArr2, bArr)) {
                throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
            }
            b10 = this.f33370q;
            this.f33369p = null;
            this.f33370q = null;
        }
        if (((b10[0] & Opcodes.OPC_checkcast) ^ 64) == 0 && ((b10[b10.length - 1] & 15) ^ 12) == 0) {
            if (((b10[b10.length - 1] & 255) ^ 188) == 0) {
                i10 = 1;
            } else {
                i10 = 2;
                int i11 = ((b10[b10.length - 2] & 255) << 8) | (b10[b10.length - 1] & 255);
                Integer a10 = t.a(this.f33360g);
                if (a10 == null) {
                    throw new IllegalArgumentException("unrecognised hash in signature");
                }
                int intValue = a10.intValue();
                if (i11 != intValue && (intValue != 15052 || i11 != 16588)) {
                    throw new IllegalStateException("signer initialised with wrong digest for trailer " + i11);
                }
            }
            int i12 = 0;
            while (i12 != b10.length && ((b10[i12] & 15) ^ 10) != 0) {
                i12++;
            }
            int i13 = i12 + 1;
            int f10 = this.f33360g.f();
            byte[] bArr3 = new byte[f10];
            int length = (b10.length - i10) - f10;
            int i14 = length - i13;
            if (i14 <= 0) {
                return i(b10);
            }
            if ((b10[0] & 32) == 0) {
                this.f33367n = true;
                if (this.f33366m > i14) {
                    return i(b10);
                }
                this.f33360g.reset();
                this.f33360g.update(b10, i13, i14);
                this.f33360g.c(bArr3, 0);
                boolean z10 = true;
                for (int i15 = 0; i15 != f10; i15++) {
                    int i16 = length + i15;
                    byte b11 = (byte) (b10[i16] ^ bArr3[i15]);
                    b10[i16] = b11;
                    if (b11 != 0) {
                        z10 = false;
                    }
                }
                if (!z10) {
                    return i(b10);
                }
                byte[] bArr4 = new byte[i14];
                this.f33368o = bArr4;
                System.arraycopy(b10, i13, bArr4, 0, bArr4.length);
            } else {
                this.f33367n = false;
                this.f33360g.c(bArr3, 0);
                boolean z11 = true;
                for (int i17 = 0; i17 != f10; i17++) {
                    int i18 = length + i17;
                    byte b12 = (byte) (b10[i18] ^ bArr3[i17]);
                    b10[i18] = b12;
                    if (b12 != 0) {
                        z11 = false;
                    }
                }
                if (!z11) {
                    return i(b10);
                }
                byte[] bArr5 = new byte[i14];
                this.f33368o = bArr5;
                System.arraycopy(b10, i13, bArr5, 0, bArr5.length);
            }
            if (this.f33366m != 0 && !h(this.f33365l, this.f33368o)) {
                return i(b10);
            }
            g(this.f33365l);
            g(b10);
            this.f33366m = 0;
            return true;
        }
        return i(b10);
    }

    @Override
    public byte[] c() throws CryptoException {
        int length;
        int i10;
        int i11;
        int i12;
        int f10 = this.f33360g.f();
        if (this.f33362i == 188) {
            byte[] bArr = this.f33364k;
            length = (bArr.length - f10) - 1;
            this.f33360g.c(bArr, length);
            byte[] bArr2 = this.f33364k;
            bArr2[bArr2.length - 1] = -68;
            i10 = 8;
        } else {
            byte[] bArr3 = this.f33364k;
            length = (bArr3.length - f10) - 2;
            this.f33360g.c(bArr3, length);
            byte[] bArr4 = this.f33364k;
            int length2 = bArr4.length - 2;
            int i13 = this.f33362i;
            bArr4[length2] = (byte) (i13 >>> 8);
            bArr4[bArr4.length - 1] = (byte) i13;
            i10 = 16;
        }
        int i14 = this.f33366m;
        int i15 = ((((f10 + i14) * 8) + i10) + 4) - this.f33363j;
        if (i15 > 0) {
            int i16 = i14 - ((i15 + 7) / 8);
            i11 = length - i16;
            System.arraycopy(this.f33365l, 0, this.f33364k, i11, i16);
            this.f33368o = new byte[i16];
            i12 = 96;
        } else {
            i11 = length - i14;
            System.arraycopy(this.f33365l, 0, this.f33364k, i11, i14);
            this.f33368o = new byte[this.f33366m];
            i12 = 64;
        }
        int i17 = i11 - 1;
        if (i17 > 0) {
            for (int i18 = i17; i18 != 0; i18--) {
                this.f33364k[i18] = Opcodes.OPC_new;
            }
            byte[] bArr5 = this.f33364k;
            bArr5[i17] = (byte) (bArr5[i17] ^ 1);
            bArr5[0] = 11;
            bArr5[0] = (byte) (11 | i12);
        } else {
            byte[] bArr6 = this.f33364k;
            bArr6[0] = 10;
            bArr6[0] = (byte) (10 | i12);
        }
        InterfaceC2370b interfaceC2370b = this.f33361h;
        byte[] bArr7 = this.f33364k;
        byte[] b10 = interfaceC2370b.b(bArr7, 0, bArr7.length);
        this.f33367n = (i12 & 32) == 0;
        byte[] bArr8 = this.f33365l;
        byte[] bArr9 = this.f33368o;
        System.arraycopy(bArr8, 0, bArr9, 0, bArr9.length);
        this.f33366m = 0;
        g(this.f33365l);
        g(this.f33364k);
        return b10;
    }

    @Override
    public void d(byte[] bArr) throws InvalidCipherTextException {
        int i10;
        byte[] b10 = this.f33361h.b(bArr, 0, bArr.length);
        if (((b10[0] & Opcodes.OPC_checkcast) ^ 64) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        }
        if (((b10[b10.length - 1] & 15) ^ 12) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        }
        if (((b10[b10.length - 1] & 255) ^ 188) == 0) {
            i10 = 1;
        } else {
            i10 = 2;
            int i11 = ((b10[b10.length - 2] & 255) << 8) | (b10[b10.length - 1] & 255);
            Integer a10 = t.a(this.f33360g);
            if (a10 == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            }
            int intValue = a10.intValue();
            if (i11 != intValue && (intValue != 15052 || i11 != 16588)) {
                throw new IllegalStateException("signer initialised with wrong digest for trailer " + i11);
            }
        }
        int i12 = 0;
        while (i12 != b10.length && ((b10[i12] & 15) ^ 10) != 0) {
            i12++;
        }
        int i13 = i12 + 1;
        int length = ((b10.length - i10) - this.f33360g.f()) - i13;
        if (length <= 0) {
            throw new InvalidCipherTextException("malformed block");
        }
        if ((b10[0] & 32) == 0) {
            this.f33367n = true;
            byte[] bArr2 = new byte[length];
            this.f33368o = bArr2;
            System.arraycopy(b10, i13, bArr2, 0, bArr2.length);
        } else {
            this.f33367n = false;
            byte[] bArr3 = new byte[length];
            this.f33368o = bArr3;
            System.arraycopy(b10, i13, bArr3, 0, bArr3.length);
        }
        this.f33369p = bArr;
        this.f33370q = b10;
        InterfaceC2392y interfaceC2392y = this.f33360g;
        byte[] bArr4 = this.f33368o;
        interfaceC2392y.update(bArr4, 0, bArr4.length);
        byte[] bArr5 = this.f33368o;
        this.f33366m = bArr5.length;
        System.arraycopy(bArr5, 0, this.f33365l, 0, bArr5.length);
    }

    @Override
    public boolean e() {
        return this.f33367n;
    }

    @Override
    public byte[] f() {
        return this.f33368o;
    }

    public final boolean i(byte[] bArr) {
        this.f33366m = 0;
        g(this.f33365l);
        g(bArr);
        return false;
    }

    @Override
    public void reset() {
        this.f33360g.reset();
        this.f33366m = 0;
        g(this.f33365l);
        byte[] bArr = this.f33368o;
        if (bArr != null) {
            g(bArr);
        }
        this.f33368o = null;
        this.f33367n = false;
        if (this.f33369p != null) {
            this.f33369p = null;
            g(this.f33370q);
            this.f33370q = null;
        }
    }

    @Override
    public void update(byte b10) {
        this.f33360g.update(b10);
        int i10 = this.f33366m;
        byte[] bArr = this.f33365l;
        if (i10 < bArr.length) {
            bArr[i10] = b10;
        }
        this.f33366m = i10 + 1;
    }

    public s(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, boolean z10) {
        int intValue;
        this.f33361h = interfaceC2370b;
        this.f33360g = interfaceC2392y;
        if (z10) {
            intValue = 188;
        } else {
            Integer a10 = t.a(interfaceC2392y);
            if (a10 == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + interfaceC2392y.b());
            }
            intValue = a10.intValue();
        }
        this.f33362i = intValue;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        while (i11 > 0 && this.f33366m < this.f33365l.length) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
        this.f33360g.update(bArr, i10, i11);
        this.f33366m += i11;
    }
}
