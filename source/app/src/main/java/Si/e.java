package Si;

import Bi.I;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Ti.C3092c;
import Xi.C3360o0;

public class e implements I {

    public byte[] f23393a;

    public byte[] f23394b;

    public byte[] f23395c;

    public byte[] f23396d;

    public int f23397e;

    public InterfaceC2374f f23398f;

    public int f23399g;

    public byte[] f23400h;

    public byte[] f23401i;

    public e(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, interfaceC2374f.c() * 8);
    }

    public static byte[] f(int i10) {
        int i11 = i10 * 8;
        int i12 = 135;
        switch (i11) {
            case 64:
            case 320:
                i12 = 27;
                break;
            case 128:
            case 192:
                break;
            case 160:
                i12 = 45;
                break;
            case 224:
                i12 = 777;
                break;
            case 256:
                i12 = 1061;
                break;
            case 384:
                i12 = 4109;
                break;
            case 448:
                i12 = 2129;
                break;
            case 512:
                i12 = 293;
                break;
            case 768:
                i12 = 655377;
                break;
            case 1024:
                i12 = 524355;
                break;
            case 2048:
                i12 = 548865;
                break;
            default:
                throw new IllegalArgumentException("Unknown block size for CMAC: " + i11);
        }
        return org.bouncycastle.util.p.k(i12);
    }

    public static int g(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            int i11 = bArr[length] & 255;
            bArr2[length] = (byte) (i10 | (i11 << 1));
            i10 = (i11 >>> 7) & 1;
        }
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        h(interfaceC2379k);
        this.f23398f.a(true, interfaceC2379k);
        byte[] bArr = this.f23394b;
        byte[] bArr2 = new byte[bArr.length];
        this.f23398f.g(bArr, 0, bArr2, 0);
        byte[] e10 = e(bArr2);
        this.f23400h = e10;
        this.f23401i = e(e10);
        reset();
    }

    @Override
    public String b() {
        return this.f23398f.b();
    }

    @Override
    public int c(byte[] bArr, int i10) {
        byte[] bArr2;
        if (this.f23397e == this.f23398f.c()) {
            bArr2 = this.f23400h;
        } else {
            new Wi.c().a(this.f23396d, this.f23397e);
            bArr2 = this.f23401i;
        }
        int i11 = 0;
        while (true) {
            byte[] bArr3 = this.f23395c;
            if (i11 >= bArr3.length) {
                this.f23398f.g(this.f23396d, 0, bArr3, 0);
                System.arraycopy(this.f23395c, 0, bArr, i10, this.f23399g);
                reset();
                return this.f23399g;
            }
            byte[] bArr4 = this.f23396d;
            bArr4[i11] = (byte) (bArr4[i11] ^ bArr2[i11]);
            i11++;
        }
    }

    @Override
    public int d() {
        return this.f23399g;
    }

    public final byte[] e(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i10 = (-g(bArr, bArr2)) & 255;
        int length = bArr.length - 3;
        byte b10 = bArr2[length];
        byte[] bArr3 = this.f23393a;
        bArr2[length] = (byte) (b10 ^ (bArr3[1] & i10));
        int length2 = bArr.length - 2;
        bArr2[length2] = (byte) ((bArr3[2] & i10) ^ bArr2[length2]);
        int length3 = bArr.length - 1;
        bArr2[length3] = (byte) ((i10 & bArr3[3]) ^ bArr2[length3]);
        return bArr2;
    }

    public void h(InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k != null && !(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("CMac mode only permits key to be set.");
        }
    }

    @Override
    public void reset() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f23396d;
            if (i10 >= bArr.length) {
                this.f23397e = 0;
                this.f23398f.reset();
                return;
            } else {
                bArr[i10] = 0;
                i10++;
            }
        }
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f23397e;
        byte[] bArr = this.f23396d;
        if (i10 == bArr.length) {
            this.f23398f.g(bArr, 0, this.f23395c, 0);
            this.f23397e = 0;
        }
        byte[] bArr2 = this.f23396d;
        int i11 = this.f23397e;
        this.f23397e = i11 + 1;
        bArr2[i11] = b10;
    }

    public e(InterfaceC2374f interfaceC2374f, int i10) {
        if (i10 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        if (i10 > interfaceC2374f.c() * 8) {
            throw new IllegalArgumentException("MAC size must be less or equal to " + (interfaceC2374f.c() * 8));
        }
        this.f23398f = C3092c.m(interfaceC2374f);
        this.f23399g = i10 / 8;
        this.f23393a = f(interfaceC2374f.c());
        this.f23395c = new byte[interfaceC2374f.c()];
        this.f23396d = new byte[interfaceC2374f.c()];
        this.f23394b = new byte[interfaceC2374f.c()];
        this.f23397e = 0;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int c10 = this.f23398f.c();
        int i12 = this.f23397e;
        int i13 = c10 - i12;
        if (i11 > i13) {
            System.arraycopy(bArr, i10, this.f23396d, i12, i13);
            this.f23398f.g(this.f23396d, 0, this.f23395c, 0);
            this.f23397e = 0;
            i11 -= i13;
            i10 += i13;
            while (i11 > c10) {
                this.f23398f.g(bArr, i10, this.f23395c, 0);
                i11 -= c10;
                i10 += c10;
            }
        }
        System.arraycopy(bArr, i10, this.f23396d, this.f23397e, i11);
        this.f23397e += i11;
    }
}
