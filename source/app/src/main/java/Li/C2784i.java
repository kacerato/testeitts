package Li;

import Bi.InterfaceC2379k;
import Ti.InterfaceC3091b;
import Xi.C3331a;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class C2784i implements InterfaceC3091b {

    public final b f13895a;

    public byte[] f13897c;

    public byte[] f13898d;

    public final String f13899e;

    public final int f13900f;

    public final int f13901g;

    public final int f13902h;

    public final int f13903i;

    public long f13904j;

    public long f13905k;

    public long f13906l;

    public long f13907m;

    public long f13908n;

    public final long f13909o;

    public long f13910p;

    public long f13911q;

    public long f13912r;

    public long f13913s;

    public long f13914t;

    public final int f13915u;

    public final byte[] f13916v;

    public c f13896b = c.Uninitialized;

    public int f13917w = 0;

    public static class a {

        public static final int[] f13918a;

        public static final int[] f13919b;

        static {
            int[] iArr = new int[c.values().length];
            f13919b = iArr;
            try {
                iArr[c.DecInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13919b[c.EncInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13919b[c.DecAad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13919b[c.EncAad.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13919b[c.EncFinal.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13919b[c.DecData.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f13919b[c.EncData.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f13919b[c.DecFinal.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[b.values().length];
            f13918a = iArr2;
            try {
                iArr2[b.ascon80pq.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f13918a[b.ascon128a.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f13918a[b.ascon128.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum b {
        ascon80pq,
        ascon128a,
        ascon128
    }

    public enum c {
        Uninitialized,
        EncInit,
        EncAad,
        EncData,
        EncFinal,
        DecInit,
        DecAad,
        DecData,
        DecFinal
    }

    public C2784i(b bVar) {
        String str;
        this.f13895a = bVar;
        int i10 = a.f13918a[bVar.ordinal()];
        if (i10 == 1) {
            this.f13900f = 20;
            this.f13901g = 16;
            this.f13902h = 8;
            this.f13909o = -6899501409222262784L;
            str = "Ascon-80pq AEAD";
        } else if (i10 == 2) {
            this.f13900f = 16;
            this.f13901g = 16;
            this.f13902h = 16;
            this.f13909o = -9187330011336540160L;
            str = "Ascon-128a AEAD";
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("invalid parameter setting for ASCON AEAD");
            }
            this.f13900f = 16;
            this.f13901g = 16;
            this.f13902h = 8;
            this.f13909o = -9205344418435956736L;
            str = "Ascon-128 AEAD";
        }
        this.f13899e = str;
        int i11 = this.f13902h;
        this.f13903i = i11 == 8 ? 6 : 8;
        int i12 = i11 + this.f13901g;
        this.f13915u = i12;
        this.f13916v = new byte[i12];
    }

    private void B(boolean z10) {
        if (z10) {
            this.f13897c = null;
        }
        org.bouncycastle.util.a.n(this.f13916v);
        this.f13917w = 0;
        switch (a.f13919b[this.f13896b.ordinal()]) {
            case 1:
            case 2:
                break;
            case 3:
            case 6:
            case 8:
                this.f13896b = c.DecInit;
                break;
            case 4:
            case 5:
            case 7:
                this.f13896b = c.EncFinal;
                return;
            default:
                throw new IllegalStateException(b() + " needs to be initialized");
        }
        o();
        byte[] bArr = this.f13898d;
        if (bArr != null) {
            j(bArr, 0, bArr.length);
        }
    }

    public final void A(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        long A10;
        if (i11 >= 8) {
            long d10 = this.f13910p ^ org.bouncycastle.util.p.d(bArr, i10);
            this.f13910p = d10;
            org.bouncycastle.util.p.D(d10, bArr2, i12);
            int i13 = i10 + 8;
            i12 += 8;
            i11 -= 8;
            long m10 = this.f13911q ^ m(i11);
            this.f13911q = m10;
            if (i11 != 0) {
                A10 = org.bouncycastle.util.p.A(bArr, i13, i11) ^ m10;
                this.f13911q = A10;
                org.bouncycastle.util.p.O(A10, bArr2, i12, i11);
            }
        } else {
            long m11 = this.f13910p ^ m(i11);
            this.f13910p = m11;
            if (i11 != 0) {
                A10 = org.bouncycastle.util.p.A(bArr, i10, i11) ^ m11;
                this.f13910p = A10;
                org.bouncycastle.util.p.O(A10, bArr2, i12, i11);
            }
        }
        s(c.EncFinal);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        C3360o0 c3360o0;
        byte[] a10;
        long d10;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            c3360o0 = c3331a.b();
            a10 = c3331a.d();
            this.f13898d = c3331a.a();
            int c10 = c3331a.c();
            if (c10 != this.f13901g * 8) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + c10);
            }
        } else {
            if (!(interfaceC2379k instanceof Xi.w0)) {
                throw new IllegalArgumentException("invalid parameters passed to Ascon");
            }
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            c3360o0 = (C3360o0) w0Var.b();
            a10 = w0Var.a();
            this.f13898d = null;
        }
        if (c3360o0 == null) {
            throw new IllegalArgumentException("Ascon Init parameters must include a key");
        }
        if (a10 == null || a10.length != this.f13901g) {
            throw new IllegalArgumentException(((Object) this.f13895a) + " requires exactly " + this.f13901g + " bytes of IV");
        }
        byte[] b10 = c3360o0.b();
        if (b10.length != this.f13900f) {
            throw new IllegalArgumentException(((Object) this.f13895a) + " key must be " + this.f13900f + " bytes long");
        }
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        this.f13907m = org.bouncycastle.util.p.d(a10, 0);
        this.f13908n = org.bouncycastle.util.p.d(a10, 8);
        int i10 = this.f13900f;
        if (i10 == 16) {
            this.f13905k = org.bouncycastle.util.p.d(b10, 0);
            d10 = org.bouncycastle.util.p.d(b10, 8);
        } else {
            if (i10 != 20) {
                throw new IllegalStateException();
            }
            this.f13904j = org.bouncycastle.util.p.a(b10, 0);
            this.f13905k = org.bouncycastle.util.p.d(b10, 4);
            d10 = org.bouncycastle.util.p.d(b10, 12);
        }
        this.f13906l = d10;
        this.f13896b = z10 ? c.EncInit : c.DecInit;
        B(true);
    }

    @Override
    public String b() {
        return this.f13899e;
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException, DataLengthException {
        int i11;
        if (q()) {
            int i12 = this.f13917w;
            i11 = this.f13901g + i12;
            if (i10 + i11 > bArr.length) {
                throw new OutputLengthException("output buffer too short");
            }
            A(this.f13916v, 0, i12, bArr, i10);
            byte[] bArr2 = new byte[this.f13901g];
            this.f13897c = bArr2;
            org.bouncycastle.util.p.D(this.f13913s, bArr2, 0);
            org.bouncycastle.util.p.D(this.f13914t, this.f13897c, 8);
            System.arraycopy(this.f13897c, 0, bArr, i10 + this.f13917w, this.f13901g);
            B(false);
        } else {
            int i13 = this.f13917w;
            int i14 = this.f13901g;
            if (i13 < i14) {
                throw new InvalidCipherTextException("data too short");
            }
            i11 = i13 - i14;
            this.f13917w = i11;
            if (i10 + i11 > bArr.length) {
                throw new OutputLengthException("output buffer too short");
            }
            z(this.f13916v, 0, i11, bArr, i10);
            this.f13913s ^= org.bouncycastle.util.p.d(this.f13916v, this.f13917w);
            long d10 = this.f13914t ^ org.bouncycastle.util.p.d(this.f13916v, this.f13917w + 8);
            this.f13914t = d10;
            if ((d10 | this.f13913s) != 0) {
                throw new InvalidCipherTextException("mac check in " + b() + " failed");
            }
            B(true);
        }
        return i11;
    }

    @Override
    public byte[] e() {
        return this.f13897c;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        int i13;
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (q()) {
            int i14 = this.f13917w;
            if (i14 > 0) {
                int i15 = this.f13902h - i14;
                if (i11 < i15) {
                    System.arraycopy(bArr, i10, this.f13916v, i14, i11);
                    this.f13917w += i11;
                    return 0;
                }
                System.arraycopy(bArr, i10, this.f13916v, i14, i15);
                i10 += i15;
                i11 -= i15;
                y(this.f13916v, 0, bArr2, i12);
                i13 = this.f13902h;
            } else {
                i13 = 0;
            }
            while (i11 >= this.f13902h) {
                y(bArr, i10, bArr2, i12 + i13);
                int i16 = this.f13902h;
                i10 += i16;
                i11 -= i16;
                i13 += i16;
            }
            System.arraycopy(bArr, i10, this.f13916v, 0, i11);
            this.f13917w = i11;
            return i13;
        }
        int i17 = this.f13915u;
        int i18 = this.f13917w;
        int i19 = i17 - i18;
        if (i11 < i19) {
            System.arraycopy(bArr, i10, this.f13916v, i18, i11);
            this.f13917w += i11;
            return 0;
        }
        int i20 = 0;
        do {
            int i21 = this.f13917w;
            int i22 = this.f13902h;
            if (i21 < i22) {
                int i23 = i22 - i21;
                System.arraycopy(bArr, i10, this.f13916v, i21, i23);
                i10 += i23;
                i11 -= i23;
                x(this.f13916v, 0, bArr2, i12 + i20);
                i13 = i20 + this.f13902h;
                while (i11 >= this.f13915u) {
                    x(bArr, i10, bArr2, i12 + i13);
                    int i24 = this.f13902h;
                    i10 += i24;
                    i11 -= i24;
                    i13 += i24;
                }
                System.arraycopy(bArr, i10, this.f13916v, 0, i11);
                this.f13917w = i11;
                return i13;
            }
            x(this.f13916v, 0, bArr2, i12 + i20);
            int i25 = this.f13917w;
            int i26 = this.f13902h;
            int i27 = i25 - i26;
            this.f13917w = i27;
            byte[] bArr3 = this.f13916v;
            System.arraycopy(bArr3, i26, bArr3, 0, i27);
            int i28 = this.f13902h;
            i20 += i28;
            i19 += i28;
        } while (i11 >= i19);
        System.arraycopy(bArr, i10, this.f13916v, this.f13917w, i11);
        this.f13917w += i11;
        return i20;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        if (r1 != 8) goto L18;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int g(int i10) {
        int max = Math.max(0, i10);
        int i11 = a.f13919b[this.f13896b.ordinal()];
        if (i11 != 1 && i11 != 3) {
            if (i11 != 5) {
                if (i11 != 6) {
                    if (i11 != 7) {
                    }
                }
                max += this.f13917w;
            }
            max += this.f13917w;
            return max - (max % this.f13902h);
        }
        max = Math.max(0, max - this.f13901g);
        return max - (max % this.f13902h);
    }

    @Override
    public int h(int i10) {
        int max = Math.max(0, i10);
        int i11 = a.f13919b[this.f13896b.ordinal()];
        if (i11 == 1 || i11 == 3) {
            return Math.max(0, max - this.f13901g);
        }
        if (i11 != 5) {
            if (i11 != 6) {
                if (i11 != 7) {
                    if (i11 != 8) {
                        return max + this.f13901g;
                    }
                }
            }
            return Math.max(0, (max + this.f13917w) - this.f13901g);
        }
        return max + this.f13917w + this.f13901g;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        return f(new byte[]{b10}, 0, 1, bArr, i10);
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 <= 0) {
            return;
        }
        p();
        int i12 = this.f13917w;
        if (i12 > 0) {
            int i13 = this.f13902h - i12;
            if (i11 < i13) {
                System.arraycopy(bArr, i10, this.f13916v, i12, i11);
                this.f13917w += i11;
                return;
            } else {
                System.arraycopy(bArr, i10, this.f13916v, i12, i13);
                i10 += i13;
                i11 -= i13;
                w(this.f13916v, 0);
            }
        }
        while (i11 >= this.f13902h) {
            w(bArr, i10);
            int i14 = this.f13902h;
            i10 += i14;
            i11 -= i14;
        }
        System.arraycopy(bArr, i10, this.f13916v, 0, i11);
        this.f13917w = i11;
    }

    @Override
    public void k(byte b10) {
        p();
        byte[] bArr = this.f13916v;
        int i10 = this.f13917w;
        bArr[i10] = b10;
        int i11 = i10 + 1;
        this.f13917w = i11;
        if (i11 == this.f13902h) {
            w(bArr, 0);
        }
    }

    public final void l(int i10) {
        if (i10 >= 8) {
            if (i10 == 12) {
                n(240L);
                n(225L);
                n(210L);
                n(195L);
            }
            n(180L);
            n(165L);
        }
        n(150L);
        n(135L);
        n(120L);
        n(105L);
        n(90L);
        n(75L);
    }

    public final long m(int i10) {
        return 128 << (56 - (i10 << 3));
    }

    public final void n(long j10) {
        long j11 = this.f13910p;
        long j12 = this.f13911q;
        long j13 = this.f13912r;
        long j14 = this.f13913s;
        long j15 = this.f13914t;
        long j16 = ((((j11 ^ j12) ^ j13) ^ j14) ^ j10) ^ ((((j11 ^ j13) ^ j15) ^ j10) & j12);
        long j17 = ((((j11 ^ j13) ^ j14) ^ j15) ^ j10) ^ (((j12 ^ j13) ^ j10) & (j12 ^ j14));
        long j18 = (((j12 ^ j13) ^ j15) ^ j10) ^ (j14 & j15);
        long j19 = ((j13 ^ (j11 ^ j12)) ^ j10) ^ ((~j11) & (j14 ^ j15));
        long j20 = ((j11 ^ j15) & j12) ^ ((j14 ^ j12) ^ j15);
        this.f13910p = (org.bouncycastle.util.m.h(j16, 19) ^ j16) ^ org.bouncycastle.util.m.h(j16, 28);
        this.f13911q = org.bouncycastle.util.m.h(j17, 61) ^ (org.bouncycastle.util.m.h(j17, 39) ^ j17);
        this.f13912r = ~(org.bouncycastle.util.m.h(j18, 6) ^ (org.bouncycastle.util.m.h(j18, 1) ^ j18));
        this.f13913s = (org.bouncycastle.util.m.h(j19, 10) ^ j19) ^ org.bouncycastle.util.m.h(j19, 17);
        this.f13914t = org.bouncycastle.util.m.h(j20, 41) ^ (org.bouncycastle.util.m.h(j20, 7) ^ j20);
    }

    public final void o() {
        long j10 = this.f13909o;
        this.f13910p = j10;
        if (this.f13900f == 20) {
            this.f13910p = j10 ^ this.f13904j;
        }
        this.f13911q = this.f13905k;
        this.f13912r = this.f13906l;
        this.f13913s = this.f13907m;
        this.f13914t = this.f13908n;
        l(12);
        if (this.f13900f == 20) {
            this.f13912r ^= this.f13904j;
        }
        this.f13913s ^= this.f13905k;
        this.f13914t ^= this.f13906l;
    }

    public final void p() {
        c cVar;
        int i10 = a.f13919b[this.f13896b.ordinal()];
        if (i10 == 1) {
            cVar = c.DecAad;
        } else {
            if (i10 != 2) {
                if (i10 == 3 || i10 == 4) {
                    return;
                }
                if (i10 != 5) {
                    throw new IllegalStateException(b() + " needs to be initialized");
                }
                throw new IllegalStateException(b() + " cannot be reused for encryption");
            }
            cVar = c.EncAad;
        }
        this.f13896b = cVar;
    }

    public final boolean q() {
        switch (a.f13919b[this.f13896b.ordinal()]) {
            case 1:
            case 3:
                r(c.DecData);
                return false;
            case 2:
            case 4:
                r(c.EncData);
                return true;
            case 5:
                throw new IllegalStateException(b() + " cannot be reused for encryption");
            case 6:
                return false;
            case 7:
                return true;
            default:
                throw new IllegalStateException(b() + " needs to be initialized");
        }
    }

    public final void r(c cVar) {
        int i10 = a.f13919b[this.f13896b.ordinal()];
        if (i10 == 3 || i10 == 4) {
            byte[] bArr = this.f13916v;
            int i11 = this.f13917w;
            bArr[i11] = Byte.MIN_VALUE;
            if (i11 >= 8) {
                this.f13910p ^= org.bouncycastle.util.p.d(bArr, 0);
                this.f13911q = (((-1) << (56 - ((this.f13917w - 8) << 3))) & org.bouncycastle.util.p.d(this.f13916v, 8)) ^ this.f13911q;
            } else {
                this.f13910p = (((-1) << (56 - (this.f13917w << 3))) & org.bouncycastle.util.p.d(bArr, 0)) ^ this.f13910p;
            }
            l(this.f13903i);
        }
        this.f13914t ^= 1;
        this.f13917w = 0;
        this.f13896b = cVar;
    }

    @Override
    public void reset() {
        B(true);
    }

    public final void s(c cVar) {
        long j10;
        long j11;
        int i10 = a.f13918a[this.f13895a.ordinal()];
        if (i10 == 1) {
            long j12 = this.f13911q;
            long j13 = this.f13904j << 32;
            long j14 = this.f13905k;
            this.f13911q = j12 ^ (j13 | (j14 >> 32));
            long j15 = this.f13912r;
            long j16 = j14 << 32;
            long j17 = this.f13906l;
            this.f13912r = j15 ^ (j16 | (j17 >> 32));
            j10 = this.f13913s;
            j11 = j17 << 32;
        } else {
            if (i10 != 2) {
                if (i10 != 3) {
                    throw new IllegalStateException();
                }
                this.f13911q ^= this.f13905k;
                this.f13912r ^= this.f13906l;
                l(12);
                this.f13913s ^= this.f13905k;
                this.f13914t ^= this.f13906l;
                this.f13896b = cVar;
            }
            this.f13912r ^= this.f13905k;
            j10 = this.f13913s;
            j11 = this.f13906l;
        }
        this.f13913s = j10 ^ j11;
        l(12);
        this.f13913s ^= this.f13905k;
        this.f13914t ^= this.f13906l;
        this.f13896b = cVar;
    }

    public String t() {
        return "v1.2";
    }

    public int u() {
        return this.f13901g;
    }

    public int v() {
        return this.f13900f;
    }

    public final void w(byte[] bArr, int i10) {
        this.f13910p ^= org.bouncycastle.util.p.d(bArr, i10);
        if (this.f13902h == 16) {
            this.f13911q = org.bouncycastle.util.p.d(bArr, i10 + 8) ^ this.f13911q;
        }
        l(this.f13903i);
    }

    public final void x(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (this.f13902h + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        long d10 = org.bouncycastle.util.p.d(bArr, i10);
        org.bouncycastle.util.p.D(this.f13910p ^ d10, bArr2, i11);
        this.f13910p = d10;
        if (this.f13902h == 16) {
            long d11 = org.bouncycastle.util.p.d(bArr, i10 + 8);
            org.bouncycastle.util.p.D(this.f13911q ^ d11, bArr2, i11 + 8);
            this.f13911q = d11;
        }
        l(this.f13903i);
    }

    public final void y(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (this.f13902h + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        long d10 = this.f13910p ^ org.bouncycastle.util.p.d(bArr, i10);
        this.f13910p = d10;
        org.bouncycastle.util.p.D(d10, bArr2, i11);
        if (this.f13902h == 16) {
            long d11 = org.bouncycastle.util.p.d(bArr, i10 + 8) ^ this.f13911q;
            this.f13911q = d11;
            org.bouncycastle.util.p.D(d11, bArr2, i11 + 8);
        }
        l(this.f13903i);
    }

    public final void z(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (i11 >= 8) {
            long d10 = org.bouncycastle.util.p.d(bArr, i10);
            long j10 = this.f13910p ^ d10;
            this.f13910p = j10;
            org.bouncycastle.util.p.D(j10, bArr2, i12);
            this.f13910p = d10;
            int i13 = i10 + 8;
            int i14 = i12 + 8;
            int i15 = i11 - 8;
            this.f13911q ^= m(i15);
            if (i15 != 0) {
                long A10 = org.bouncycastle.util.p.A(bArr, i13, i15);
                long j11 = this.f13911q ^ A10;
                this.f13911q = j11;
                org.bouncycastle.util.p.O(j11, bArr2, i14, i15);
                this.f13911q = A10 ^ (this.f13911q & ((-1) >>> (i15 << 3)));
            }
        } else {
            this.f13910p ^= m(i11);
            if (i11 != 0) {
                long A11 = org.bouncycastle.util.p.A(bArr, i10, i11);
                long j12 = this.f13910p ^ A11;
                this.f13910p = j12;
                org.bouncycastle.util.p.O(j12, bArr2, i12, i11);
                this.f13910p = A11 ^ (this.f13910p & ((-1) >>> (i11 << 3)));
            }
        }
        s(c.DecFinal);
    }
}
