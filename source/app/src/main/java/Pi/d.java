package Pi;

import Bi.C2371c;
import Xi.C3335c;
import android.provider.Telephony;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.util.p;
import org.bouncycastle.util.w;

public class d {

    public static final byte f21507j = 0;

    public static final byte f21508k = 1;

    public static final byte f21509l = 2;

    public static final byte f21510m = 3;

    public static final short f21511n = 16;

    public static final short f21512o = 17;

    public static final short f21513p = 18;

    public static final short f21514q = 32;

    public static final short f21515r = 33;

    public static final short f21516s = 1;

    public static final short f21517t = 2;

    public static final short f21518u = 3;

    public static final short f21519v = 1;

    public static final short f21520w = 2;

    public static final short f21521x = 3;

    public static final short f21522y = -1;

    public final byte[] f21523a = null;

    public final byte[] f21524b = null;

    public final byte f21525c;

    public final short f21526d;

    public final short f21527e;

    public final short f21528f;

    public final b f21529g;

    public final c f21530h;

    public short f21531i;

    public d(byte b10, short s10, short s11, short s12) {
        this.f21525c = b10;
        this.f21526d = s10;
        this.f21527e = s11;
        this.f21528f = s12;
        this.f21530h = new c(s11);
        this.f21529g = new b(s10);
        this.f21531i = s12 == 1 ? (short) 16 : (short) 32;
    }

    public f a(C3335c c3335c, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[][] g10 = this.f21529g.g(c3335c);
        return new f(i((byte) 1, g10[0], bArr, bArr2, bArr3), g10[1]);
    }

    public final void b(byte b10, byte[] bArr, byte[] bArr2) {
        boolean g10 = org.bouncycastle.util.a.g(bArr, this.f21523a);
        if ((!g10) != (!org.bouncycastle.util.a.g(bArr2, this.f21524b))) {
            throw new IllegalArgumentException("Inconsistent PSK inputs");
        }
        if (!g10 && b10 % 2 == 0) {
            throw new IllegalArgumentException("PSK input provided when not needed");
        }
        if (g10 && b10 % 2 == 1) {
            throw new IllegalArgumentException("Missing required PSK input");
        }
    }

    public C2371c c(byte[] bArr) {
        return this.f21529g.d(bArr);
    }

    public C2371c d(byte[] bArr, byte[] bArr2) {
        return this.f21529g.e(bArr, bArr2);
    }

    public C3335c e(byte[] bArr) {
        return this.f21529g.f(bArr);
    }

    public C2371c f() {
        return this.f21529g.j();
    }

    public short g() {
        return this.f21528f;
    }

    public int h() {
        short s10 = this.f21526d;
        if (s10 == 32) {
            return 32;
        }
        if (s10 == 33) {
            return 56;
        }
        switch (s10) {
            case 16:
                return 65;
            case 17:
                return 97;
            case 18:
                return 133;
            default:
                throw new IllegalArgumentException("invalid kem id");
        }
    }

    public final e i(byte b10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        b(b10, bArr3, bArr4);
        byte[] D10 = org.bouncycastle.util.a.D(w.j("HPKE"), p.Q(this.f21526d), p.Q(this.f21527e), p.Q(this.f21528f));
        byte[] C10 = org.bouncycastle.util.a.C(new byte[]{b10}, this.f21530h.d(null, D10, "psk_id_hash", bArr4), this.f21530h.d(null, D10, "info_hash", bArr2));
        byte[] d10 = this.f21530h.d(bArr, D10, "secret", bArr3);
        byte[] c10 = this.f21530h.c(d10, D10, "key", C10, this.f21531i);
        byte[] c11 = this.f21530h.c(d10, D10, "base_nonce", C10, 12);
        c cVar = this.f21530h;
        return new e(new a(this.f21528f, c10, c11), this.f21530h, cVar.c(d10, D10, Telephony.BaseMmsColumns.EXPIRY, C10, cVar.e()), D10);
    }

    public byte[] j(byte[] bArr, C2371c c2371c, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, C3335c c3335c) throws InvalidCipherTextException {
        e t10;
        byte b10 = this.f21525c;
        if (b10 == 0) {
            t10 = t(bArr, c2371c, bArr2);
        } else if (b10 == 1) {
            t10 = w(bArr, c2371c, bArr2, bArr5, bArr6);
        } else if (b10 == 2) {
            t10 = r(bArr, c2371c, bArr2, c3335c);
        } else {
            if (b10 != 3) {
                throw new IllegalStateException("Unknown mode");
            }
            t10 = p(bArr, c2371c, bArr2, bArr5, bArr6, c3335c);
        }
        return t10.d(bArr3, bArr4);
    }

    public byte[] k(byte[] bArr, C2371c c2371c, byte[] bArr2, byte[] bArr3, int i10, byte[] bArr4, byte[] bArr5, C3335c c3335c) {
        e t10;
        byte b10 = this.f21525c;
        if (b10 == 0) {
            t10 = t(bArr, c2371c, bArr2);
        } else if (b10 == 1) {
            t10 = w(bArr, c2371c, bArr2, bArr4, bArr5);
        } else if (b10 == 2) {
            t10 = r(bArr, c2371c, bArr2, c3335c);
        } else {
            if (b10 != 3) {
                throw new IllegalStateException("Unknown mode");
            }
            t10 = p(bArr, c2371c, bArr2, bArr4, bArr5, c3335c);
        }
        return t10.b(bArr3, i10);
    }

    public byte[][] l(C3335c c3335c, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, C2371c c2371c) throws InvalidCipherTextException {
        f u10;
        byte b10 = this.f21525c;
        if (b10 == 0) {
            u10 = u(c3335c, bArr);
        } else if (b10 == 1) {
            u10 = a(c3335c, bArr, bArr4, bArr5);
        } else if (b10 == 2) {
            u10 = s(c3335c, bArr, c2371c);
        } else {
            if (b10 != 3) {
                throw new IllegalStateException("Unknown mode");
            }
            u10 = q(c3335c, bArr, bArr4, bArr5, c2371c);
        }
        return new byte[][]{u10.f(bArr2, bArr3), u10.h()};
    }

    public byte[][] m(C3335c c3335c, byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, C2371c c2371c) {
        f u10;
        byte b10 = this.f21525c;
        if (b10 == 0) {
            u10 = u(c3335c, bArr);
        } else if (b10 == 1) {
            u10 = a(c3335c, bArr, bArr3, bArr4);
        } else if (b10 == 2) {
            u10 = s(c3335c, bArr, c2371c);
        } else {
            if (b10 != 3) {
                throw new IllegalStateException("Unknown mode");
            }
            u10 = q(c3335c, bArr, bArr3, bArr4, c2371c);
        }
        return new byte[][]{u10.f21536e, u10.b(bArr2, i10)};
    }

    public byte[] n(C3335c c3335c) {
        return this.f21529g.k(c3335c);
    }

    public byte[] o(C3335c c3335c) {
        return this.f21529g.l(c3335c);
    }

    public e p(byte[] bArr, C2371c c2371c, byte[] bArr2, byte[] bArr3, byte[] bArr4, C3335c c3335c) {
        return i((byte) 3, this.f21529g.a(bArr, c2371c, c3335c), bArr2, bArr3, bArr4);
    }

    public f q(C3335c c3335c, byte[] bArr, byte[] bArr2, byte[] bArr3, C2371c c2371c) {
        byte[][] b10 = this.f21529g.b(c3335c, c2371c);
        return new f(i((byte) 3, b10[0], bArr, bArr2, bArr3), b10[1]);
    }

    public e r(byte[] bArr, C2371c c2371c, byte[] bArr2, C3335c c3335c) {
        return i((byte) 2, this.f21529g.a(bArr, c2371c, c3335c), bArr2, this.f21523a, this.f21524b);
    }

    public f s(C3335c c3335c, byte[] bArr, C2371c c2371c) {
        byte[][] b10 = this.f21529g.b(c3335c, c2371c);
        return new f(i((byte) 2, b10[0], bArr, this.f21523a, this.f21524b), b10[1]);
    }

    public e t(byte[] bArr, C2371c c2371c, byte[] bArr2) {
        return i((byte) 0, this.f21529g.c(bArr, c2371c), bArr2, this.f21523a, this.f21524b);
    }

    public f u(C3335c c3335c, byte[] bArr) {
        byte[][] g10 = this.f21529g.g(c3335c);
        return new f(i((byte) 0, g10[0], bArr, this.f21523a, this.f21524b), g10[1]);
    }

    public f v(C3335c c3335c, byte[] bArr, C2371c c2371c) {
        byte[][] h10 = this.f21529g.h(c3335c, c2371c);
        return new f(i((byte) 0, h10[0], bArr, this.f21523a, this.f21524b), h10[1]);
    }

    public e w(byte[] bArr, C2371c c2371c, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        return i((byte) 1, this.f21529g.c(bArr, c2371c), bArr2, bArr3, bArr4);
    }
}
