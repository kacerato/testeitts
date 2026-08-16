package bj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.S;
import Bi.a0;
import Ii.E;
import Xi.D0;
import Xi.F0;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.DataLengthException;

public class u implements S {

    public static final byte f33383u = -68;

    public InterfaceC2392y f33384g;

    public InterfaceC2392y f33385h;

    public InterfaceC2392y f33386i;

    public InterfaceC2370b f33387j;

    public SecureRandom f33388k;

    public int f33389l;

    public int f33390m;

    public boolean f33391n;

    public int f33392o;

    public int f33393p;

    public byte[] f33394q;

    public byte[] f33395r;

    public byte[] f33396s;

    public byte f33397t;

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, int i10) {
        this(interfaceC2370b, interfaceC2392y, i10, (byte) -68);
    }

    private void g(int i10, byte[] bArr) {
        bArr[0] = (byte) (i10 >>> 24);
        bArr[1] = (byte) (i10 >>> 16);
        bArr[2] = (byte) (i10 >>> 8);
        bArr[3] = (byte) i10;
    }

    private void h(byte[] bArr) {
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr[i10] = 0;
        }
    }

    public static u i(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y) {
        return new u(interfaceC2370b, E.a(interfaceC2392y), interfaceC2392y, interfaceC2392y, interfaceC2392y.f(), (byte) -68);
    }

    public static u j(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, int i10, byte b10) {
        return new u(interfaceC2370b, E.a(interfaceC2392y), interfaceC2392y, interfaceC2392y2, i10, b10);
    }

    public static u k(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, byte[] bArr, byte b10) {
        return new u(interfaceC2370b, E.a(interfaceC2392y), interfaceC2392y, interfaceC2392y2, bArr, b10);
    }

    private byte[] m(byte[] bArr, int i10, int i11, int i12) {
        int i13;
        byte[] bArr2 = new byte[i12];
        byte[] bArr3 = new byte[this.f33390m];
        byte[] bArr4 = new byte[4];
        this.f33386i.reset();
        int i14 = 0;
        while (true) {
            i13 = this.f33390m;
            if (i14 >= i12 / i13) {
                break;
            }
            g(i14, bArr4);
            this.f33386i.update(bArr, i10, i11);
            this.f33386i.update(bArr4, 0, 4);
            this.f33386i.c(bArr3, 0);
            int i15 = this.f33390m;
            System.arraycopy(bArr3, 0, bArr2, i14 * i15, i15);
            i14++;
        }
        if (i13 * i14 < i12) {
            g(i14, bArr4);
            this.f33386i.update(bArr, i10, i11);
            this.f33386i.update(bArr4, 0, 4);
            this.f33386i.c(bArr3, 0);
            int i16 = this.f33390m;
            System.arraycopy(bArr3, 0, bArr2, i14 * i16, i12 - (i14 * i16));
        }
        return bArr2;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        InterfaceC2379k interfaceC2379k2;
        F0 f02;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            interfaceC2379k2 = x0Var.a();
            this.f33388k = x0Var.b();
        } else {
            if (z10) {
                this.f33388k = Bi.r.h();
            }
            interfaceC2379k2 = interfaceC2379k;
        }
        if (interfaceC2379k2 instanceof D0) {
            f02 = ((D0) interfaceC2379k2).b();
            this.f33387j.a(z10, interfaceC2379k);
        } else {
            f02 = (F0) interfaceC2379k2;
            this.f33387j.a(z10, interfaceC2379k2);
        }
        int bitLength = f02.f().bitLength();
        int i10 = bitLength - 1;
        this.f33393p = i10;
        if (i10 < (this.f33389l * 8) + (this.f33392o * 8) + 9) {
            throw new IllegalArgumentException("key too small for specified hash and salt lengths");
        }
        this.f33396s = new byte[(bitLength + 6) / 8];
        reset();
    }

    @Override
    public boolean b(byte[] bArr) {
        byte[] bArr2;
        int length;
        byte b10;
        int f10 = this.f33384g.f();
        int i10 = this.f33389l;
        if (f10 != i10) {
            throw new IllegalStateException();
        }
        InterfaceC2392y interfaceC2392y = this.f33384g;
        byte[] bArr3 = this.f33395r;
        interfaceC2392y.c(bArr3, (bArr3.length - i10) - this.f33392o);
        try {
            byte[] b11 = this.f33387j.b(bArr, 0, bArr.length);
            byte[] bArr4 = this.f33396s;
            org.bouncycastle.util.a.f0(bArr4, 0, bArr4.length - b11.length, (byte) 0);
            byte[] bArr5 = this.f33396s;
            System.arraycopy(b11, 0, bArr5, bArr5.length - b11.length, b11.length);
            bArr2 = this.f33396s;
            length = 255 >>> ((bArr2.length * 8) - this.f33393p);
            b10 = bArr2[0];
        } catch (Exception unused) {
        }
        if ((b10 & 255) != (b10 & length) || bArr2[bArr2.length - 1] != this.f33397t) {
            h(bArr2);
            return false;
        }
        int length2 = bArr2.length;
        int i11 = this.f33389l;
        byte[] l10 = l(bArr2, (length2 - i11) - 1, i11, (bArr2.length - i11) - 1);
        for (int i12 = 0; i12 != l10.length; i12++) {
            byte[] bArr6 = this.f33396s;
            bArr6[i12] = (byte) (bArr6[i12] ^ l10[i12]);
        }
        byte[] bArr7 = this.f33396s;
        bArr7[0] = (byte) (length & bArr7[0]);
        int i13 = 0;
        while (true) {
            byte[] bArr8 = this.f33396s;
            int length3 = bArr8.length;
            int i14 = this.f33389l;
            int i15 = this.f33392o;
            if (i13 != ((length3 - i14) - i15) - 2) {
                if (bArr8[i13] != 0) {
                    h(bArr8);
                    return false;
                }
                i13++;
            } else {
                if (bArr8[((bArr8.length - i14) - i15) - 2] != 1) {
                    h(bArr8);
                    return false;
                }
                if (this.f33391n) {
                    byte[] bArr9 = this.f33394q;
                    byte[] bArr10 = this.f33395r;
                    System.arraycopy(bArr9, 0, bArr10, bArr10.length - i15, i15);
                } else {
                    int length4 = ((bArr8.length - i15) - i14) - 1;
                    byte[] bArr11 = this.f33395r;
                    System.arraycopy(bArr8, length4, bArr11, bArr11.length - i15, i15);
                }
                InterfaceC2392y interfaceC2392y2 = this.f33385h;
                byte[] bArr12 = this.f33395r;
                interfaceC2392y2.update(bArr12, 0, bArr12.length);
                InterfaceC2392y interfaceC2392y3 = this.f33385h;
                byte[] bArr13 = this.f33395r;
                interfaceC2392y3.c(bArr13, bArr13.length - this.f33389l);
                int length5 = this.f33396s.length;
                int i16 = this.f33389l;
                int i17 = (length5 - i16) - 1;
                int length6 = this.f33395r.length - i16;
                while (true) {
                    byte[] bArr14 = this.f33395r;
                    if (length6 == bArr14.length) {
                        h(bArr14);
                        h(this.f33396s);
                        return true;
                    }
                    if ((this.f33396s[i17] ^ bArr14[length6]) != 0) {
                        h(bArr14);
                        h(this.f33396s);
                        return false;
                    }
                    i17++;
                    length6++;
                }
            }
        }
    }

    @Override
    public byte[] c() throws CryptoException, DataLengthException {
        int f10 = this.f33384g.f();
        int i10 = this.f33389l;
        if (f10 != i10) {
            throw new IllegalStateException();
        }
        InterfaceC2392y interfaceC2392y = this.f33384g;
        byte[] bArr = this.f33395r;
        interfaceC2392y.c(bArr, (bArr.length - i10) - this.f33392o);
        if (this.f33392o != 0) {
            if (!this.f33391n) {
                this.f33388k.nextBytes(this.f33394q);
            }
            byte[] bArr2 = this.f33394q;
            byte[] bArr3 = this.f33395r;
            int length = bArr3.length;
            int i11 = this.f33392o;
            System.arraycopy(bArr2, 0, bArr3, length - i11, i11);
        }
        int i12 = this.f33389l;
        byte[] bArr4 = new byte[i12];
        InterfaceC2392y interfaceC2392y2 = this.f33385h;
        byte[] bArr5 = this.f33395r;
        interfaceC2392y2.update(bArr5, 0, bArr5.length);
        this.f33385h.c(bArr4, 0);
        byte[] bArr6 = this.f33396s;
        int length2 = bArr6.length;
        int i13 = this.f33392o;
        int i14 = this.f33389l;
        bArr6[(((length2 - i13) - 1) - i14) - 1] = 1;
        System.arraycopy(this.f33394q, 0, bArr6, ((bArr6.length - i13) - i14) - 1, i13);
        byte[] l10 = l(bArr4, 0, i12, (this.f33396s.length - this.f33389l) - 1);
        for (int i15 = 0; i15 != l10.length; i15++) {
            byte[] bArr7 = this.f33396s;
            bArr7[i15] = (byte) (bArr7[i15] ^ l10[i15]);
        }
        byte[] bArr8 = this.f33396s;
        int length3 = bArr8.length;
        int i16 = this.f33389l;
        System.arraycopy(bArr4, 0, bArr8, (length3 - i16) - 1, i16);
        byte[] bArr9 = this.f33396s;
        bArr9[0] = (byte) ((255 >>> ((bArr9.length * 8) - this.f33393p)) & bArr9[0]);
        bArr9[bArr9.length - 1] = this.f33397t;
        byte[] b10 = this.f33387j.b(bArr9, 0, bArr9.length);
        h(this.f33396s);
        return b10;
    }

    public final byte[] l(byte[] bArr, int i10, int i11, int i12) {
        InterfaceC2392y interfaceC2392y = this.f33386i;
        if (!(interfaceC2392y instanceof a0)) {
            return m(bArr, i10, i11, i12);
        }
        byte[] bArr2 = new byte[i12];
        interfaceC2392y.update(bArr, i10, i11);
        ((a0) this.f33386i).e(bArr2, 0, i12);
        return bArr2;
    }

    @Override
    public void reset() {
        this.f33384g.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33384g.update(b10);
    }

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, int i10, byte b10) {
        this(interfaceC2370b, interfaceC2392y, interfaceC2392y, i10, b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33384g.update(bArr, i10, i11);
    }

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, int i10) {
        this(interfaceC2370b, interfaceC2392y, interfaceC2392y2, i10, (byte) -68);
    }

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, int i10, byte b10) {
        this(interfaceC2370b, interfaceC2392y, interfaceC2392y, interfaceC2392y2, i10, b10);
    }

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, InterfaceC2392y interfaceC2392y3, int i10, byte b10) {
        this.f33387j = interfaceC2370b;
        this.f33384g = interfaceC2392y;
        this.f33385h = interfaceC2392y2;
        this.f33386i = interfaceC2392y3;
        this.f33389l = interfaceC2392y2.f();
        this.f33390m = interfaceC2392y3.f();
        this.f33391n = false;
        this.f33392o = i10;
        this.f33394q = new byte[i10];
        this.f33395r = new byte[i10 + 8 + this.f33389l];
        this.f33397t = b10;
    }

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, InterfaceC2392y interfaceC2392y3, byte[] bArr, byte b10) {
        this.f33387j = interfaceC2370b;
        this.f33384g = interfaceC2392y;
        this.f33385h = interfaceC2392y2;
        this.f33386i = interfaceC2392y3;
        this.f33389l = interfaceC2392y2.f();
        this.f33390m = interfaceC2392y3.f();
        this.f33391n = true;
        int length = bArr.length;
        this.f33392o = length;
        this.f33394q = bArr;
        this.f33395r = new byte[length + 8 + this.f33389l];
        this.f33397t = b10;
    }

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, byte[] bArr) {
        this(interfaceC2370b, interfaceC2392y, interfaceC2392y2, bArr, (byte) -68);
    }

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, byte[] bArr, byte b10) {
        this(interfaceC2370b, interfaceC2392y, interfaceC2392y, interfaceC2392y2, bArr, b10);
    }

    public u(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, byte[] bArr) {
        this(interfaceC2370b, interfaceC2392y, interfaceC2392y, bArr, (byte) -68);
    }
}
