package Ti;

import Bi.I;
import Bi.InterfaceC2379k;
import Li.C2791p;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class k implements InterfaceC3091b {

    public static final int f25198l = 64;

    public static final int f25199m = 32;

    public static final int f25200n = 12;

    public static final int f25201o = 16;

    public static final byte[] f25202p = new byte[15];

    public static final long f25203q = -1;

    public static final long f25204r = 274877906880L;

    public final C2791p f25205a;

    public final I f25206b;

    public final byte[] f25207c;

    public final byte[] f25208d;

    public final byte[] f25209e;

    public final byte[] f25210f;

    public byte[] f25211g;

    public long f25212h;

    public long f25213i;

    public int f25214j;

    public int f25215k;

    public static final class a {

        public static final int f25216a = 0;

        public static final int f25217b = 1;

        public static final int f25218c = 2;

        public static final int f25219d = 3;

        public static final int f25220e = 4;

        public static final int f25221f = 5;

        public static final int f25222g = 6;

        public static final int f25223h = 7;

        public static final int f25224i = 8;
    }

    public k() {
        this(new Si.q());
    }

    private void l() {
        int i10 = this.f25214j;
        int i11 = 2;
        if (i10 != 1) {
            if (i10 == 2) {
                return;
            }
            if (i10 == 4) {
                throw new IllegalStateException("ChaCha20Poly1305 cannot be reused for encryption");
            }
            i11 = 6;
            if (i10 != 5) {
                if (i10 != 6) {
                    throw new IllegalStateException();
                }
                return;
            }
        }
        this.f25214j = i11;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        w0 w0Var;
        C3360o0 c3360o0;
        byte[] a10;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            int c10 = c3331a.c();
            if (128 != c10) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + c10);
            }
            c3360o0 = c3331a.b();
            a10 = c3331a.d();
            w0Var = new w0(c3360o0, a10);
            this.f25211g = c3331a.a();
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("invalid parameters passed to ChaCha20Poly1305");
            }
            w0Var = (w0) interfaceC2379k;
            c3360o0 = (C3360o0) w0Var.b();
            a10 = w0Var.a();
            this.f25211g = null;
        }
        if (c3360o0 == null) {
            if (this.f25214j == 0) {
                throw new IllegalArgumentException("Key must be specified in initial init");
            }
        } else if (32 != c3360o0.c()) {
            throw new IllegalArgumentException("Key must be 256 bits");
        }
        if (a10 == null || 12 != a10.length) {
            throw new IllegalArgumentException("Nonce must be 96 bits");
        }
        if (this.f25214j != 0 && z10 && org.bouncycastle.util.a.g(this.f25208d, a10) && (c3360o0 == null || org.bouncycastle.util.a.g(this.f25207c, c3360o0.b()))) {
            throw new IllegalArgumentException("cannot reuse nonce for ChaCha20Poly1305 encryption");
        }
        if (c3360o0 != null) {
            c3360o0.a(this.f25207c, 0, 32);
        }
        System.arraycopy(a10, 0, this.f25208d, 0, 12);
        this.f25205a.a(true, w0Var);
        this.f25214j = z10 ? 1 : 5;
        t(true, false);
    }

    @Override
    public String b() {
        return "ChaCha20Poly1305";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        int i11;
        if (bArr == null) {
            throw new NullPointerException("'out' cannot be null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("'outOff' cannot be negative");
        }
        m();
        org.bouncycastle.util.a.n(this.f25210f);
        int i12 = this.f25214j;
        if (i12 == 3) {
            int i13 = this.f25215k;
            i11 = i13 + 16;
            if (i10 > bArr.length - i11) {
                throw new OutputLengthException("Output buffer too short");
            }
            if (i13 > 0) {
                s(this.f25209e, 0, i13, bArr, i10);
                this.f25206b.update(bArr, i10, this.f25215k);
            }
            o(4);
            System.arraycopy(this.f25210f, 0, bArr, i10 + this.f25215k, 16);
        } else {
            if (i12 != 7) {
                throw new IllegalStateException();
            }
            int i14 = this.f25215k;
            if (i14 < 16) {
                throw new InvalidCipherTextException("data too short");
            }
            i11 = i14 - 16;
            if (i10 > bArr.length - i11) {
                throw new OutputLengthException("Output buffer too short");
            }
            if (i11 > 0) {
                this.f25206b.update(this.f25209e, 0, i11);
                s(this.f25209e, 0, i11, bArr, i10);
            }
            o(8);
            if (!org.bouncycastle.util.a.H(16, this.f25210f, 0, this.f25209e, i11)) {
                throw new InvalidCipherTextException("mac check in ChaCha20Poly1305 failed");
            }
        }
        t(false, true);
        return i11;
    }

    @Override
    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f25210f);
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        int i13;
        int i14 = i10;
        int i15 = i11;
        if (bArr == null) {
            throw new NullPointerException("'in' cannot be null");
        }
        if (i14 < 0) {
            throw new IllegalArgumentException("'inOff' cannot be negative");
        }
        if (i15 < 0) {
            throw new IllegalArgumentException("'len' cannot be negative");
        }
        if (i14 > bArr.length - i15) {
            throw new DataLengthException("Input buffer too short");
        }
        if (i12 < 0) {
            throw new IllegalArgumentException("'outOff' cannot be negative");
        }
        m();
        int i16 = this.f25214j;
        if (i16 == 3) {
            if (this.f25215k != 0) {
                while (i15 > 0) {
                    i15--;
                    byte[] bArr3 = this.f25209e;
                    int i17 = this.f25215k;
                    int i18 = i14 + 1;
                    bArr3[i17] = bArr[i14];
                    int i19 = i17 + 1;
                    this.f25215k = i19;
                    if (i19 == 64) {
                        s(bArr3, 0, 64, bArr2, i12);
                        this.f25206b.update(bArr2, i12, 64);
                        this.f25215k = 0;
                        i13 = 64;
                        i14 = i18;
                        break;
                    }
                    i14 = i18;
                }
            }
            i13 = 0;
            while (i15 >= 64) {
                int i20 = i12 + i13;
                s(bArr, i14, 64, bArr2, i20);
                this.f25206b.update(bArr2, i20, 64);
                i14 += 64;
                i15 -= 64;
                i13 += 64;
            }
            if (i15 > 0) {
                System.arraycopy(bArr, i14, this.f25209e, 0, i15);
                this.f25215k = i15;
            }
        } else {
            if (i16 != 7) {
                throw new IllegalStateException();
            }
            i13 = 0;
            for (int i21 = 0; i21 < i15; i21++) {
                byte[] bArr4 = this.f25209e;
                int i22 = this.f25215k;
                bArr4[i22] = bArr[i14 + i21];
                int i23 = i22 + 1;
                this.f25215k = i23;
                if (i23 == bArr4.length) {
                    this.f25206b.update(bArr4, 0, 64);
                    s(this.f25209e, 0, 64, bArr2, i12 + i13);
                    byte[] bArr5 = this.f25209e;
                    System.arraycopy(bArr5, 64, bArr5, 0, 16);
                    this.f25215k = 16;
                    i13 += 64;
                }
            }
        }
        return i13;
    }

    @Override
    public int g(int i10) {
        int max = Math.max(0, i10) + this.f25215k;
        int i11 = this.f25214j;
        if (i11 != 1 && i11 != 2 && i11 != 3) {
            if (i11 != 5 && i11 != 6 && i11 != 7) {
                throw new IllegalStateException();
            }
            max = Math.max(0, max - 16);
        }
        return max - (max % 64);
    }

    @Override
    public int h(int i10) {
        int max = Math.max(0, i10) + this.f25215k;
        int i11 = this.f25214j;
        if (i11 == 1 || i11 == 2 || i11 == 3) {
            return max + 16;
        }
        if (i11 == 5 || i11 == 6 || i11 == 7) {
            return Math.max(0, max - 16);
        }
        throw new IllegalStateException();
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        m();
        int i11 = this.f25214j;
        if (i11 == 3) {
            byte[] bArr2 = this.f25209e;
            int i12 = this.f25215k;
            bArr2[i12] = b10;
            int i13 = i12 + 1;
            this.f25215k = i13;
            if (i13 != 64) {
                return 0;
            }
            s(bArr2, 0, 64, bArr, i10);
            this.f25206b.update(bArr, i10, 64);
            this.f25215k = 0;
            return 64;
        }
        if (i11 != 7) {
            throw new IllegalStateException();
        }
        byte[] bArr3 = this.f25209e;
        int i14 = this.f25215k;
        bArr3[i14] = b10;
        int i15 = i14 + 1;
        this.f25215k = i15;
        if (i15 != bArr3.length) {
            return 0;
        }
        this.f25206b.update(bArr3, 0, 64);
        s(this.f25209e, 0, 64, bArr, i10);
        byte[] bArr4 = this.f25209e;
        System.arraycopy(bArr4, 64, bArr4, 0, 16);
        this.f25215k = 16;
        return 64;
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new NullPointerException("'in' cannot be null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("'inOff' cannot be negative");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("'len' cannot be negative");
        }
        if (i10 > bArr.length - i11) {
            throw new DataLengthException("Input buffer too short");
        }
        l();
        if (i11 > 0) {
            this.f25212h = p(this.f25212h, i11, -1L);
            this.f25206b.update(bArr, i10, i11);
        }
    }

    @Override
    public void k(byte b10) {
        l();
        this.f25212h = p(this.f25212h, 1, -1L);
        this.f25206b.update(b10);
    }

    public final void m() {
        int i10;
        switch (this.f25214j) {
            case 1:
            case 2:
                i10 = 3;
                break;
            case 3:
            case 7:
                return;
            case 4:
                throw new IllegalStateException("ChaCha20Poly1305 cannot be reused for encryption");
            case 5:
            case 6:
                i10 = 7;
                break;
            default:
                throw new IllegalStateException();
        }
        n(i10);
    }

    public final void n(int i10) {
        r(this.f25212h);
        this.f25214j = i10;
    }

    public final void o(int i10) {
        r(this.f25213i);
        byte[] bArr = new byte[16];
        org.bouncycastle.util.p.J(this.f25212h, bArr, 0);
        org.bouncycastle.util.p.J(this.f25213i, bArr, 8);
        this.f25206b.update(bArr, 0, 16);
        this.f25206b.c(this.f25210f, 0);
        this.f25214j = i10;
    }

    public final long p(long j10, int i10, long j11) {
        long j12 = i10;
        if (j10 - Long.MIN_VALUE <= (j11 - j12) - Long.MIN_VALUE) {
            return j10 + j12;
        }
        throw new IllegalStateException("Limit exceeded");
    }

    public final void q() {
        byte[] bArr = new byte[64];
        try {
            this.f25205a.f(bArr, 0, 64, bArr, 0);
            this.f25206b.a(new C3360o0(bArr, 0, 32));
        } finally {
            org.bouncycastle.util.a.n(bArr);
        }
    }

    public final void r(long j10) {
        int i10 = ((int) j10) & 15;
        if (i10 != 0) {
            this.f25206b.update(f25202p, 0, 16 - i10);
        }
    }

    @Override
    public void reset() {
        t(true, true);
    }

    public final void s(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (i12 > bArr2.length - i11) {
            throw new OutputLengthException("Output buffer too short");
        }
        this.f25205a.f(bArr, i10, i11, bArr2, i12);
        this.f25213i = p(this.f25213i, i11, f25204r);
    }

    public final void t(boolean z10, boolean z11) {
        org.bouncycastle.util.a.n(this.f25209e);
        if (z10) {
            org.bouncycastle.util.a.n(this.f25210f);
        }
        this.f25212h = 0L;
        this.f25213i = 0L;
        this.f25215k = 0;
        switch (this.f25214j) {
            case 1:
            case 5:
                break;
            case 2:
            case 3:
            case 4:
                this.f25214j = 4;
                return;
            case 6:
            case 7:
            case 8:
                this.f25214j = 5;
                break;
            default:
                throw new IllegalStateException();
        }
        if (z11) {
            this.f25205a.reset();
        }
        q();
        byte[] bArr = this.f25211g;
        if (bArr != null) {
            j(bArr, 0, bArr.length);
        }
    }

    public k(I i10) {
        this.f25207c = new byte[32];
        this.f25208d = new byte[12];
        this.f25209e = new byte[80];
        this.f25210f = new byte[16];
        this.f25214j = 0;
        if (i10 == null) {
            throw new NullPointerException("'poly1305' cannot be null");
        }
        if (16 != i10.d()) {
            throw new IllegalArgumentException("'poly1305' must be a 128-bit MAC");
        }
        this.f25205a = new C2791p();
        this.f25206b = i10;
    }
}
