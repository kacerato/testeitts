package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.MaxBytesExceededException;
import org.bouncycastle.crypto.OutputLengthException;

public class n0 implements Bi.V {

    public static final int f14025j = 20;

    public static final int f14026k = 16;

    public static final int[] f14027l = org.bouncycastle.util.p.u(org.bouncycastle.util.w.j("expand 16-byte kexpand 32-byte k"), 0, 8);

    public static final byte[] f14028m = org.bouncycastle.util.w.j("expand 32-byte k");

    public static final byte[] f14029n = org.bouncycastle.util.w.j("expand 16-byte k");

    public int f14030a;

    public int f14031b;

    public int[] f14032c;

    public int[] f14033d;

    public byte[] f14034e;

    public boolean f14035f;

    public int f14036g;

    public int f14037h;

    public int f14038i;

    public n0() {
        this(20);
    }

    public static void s(int i10, int[] iArr, int[] iArr2) {
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i10 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        boolean z10 = false;
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = 7;
        int i19 = iArr[7];
        int i20 = iArr[8];
        int i21 = 9;
        int i22 = iArr[9];
        int i23 = iArr[10];
        int i24 = iArr[11];
        int i25 = iArr[12];
        int i26 = 13;
        int i27 = iArr[13];
        int i28 = iArr[14];
        int i29 = iArr[15];
        int i30 = i28;
        int i31 = i27;
        int i32 = i25;
        int i33 = i24;
        int i34 = i23;
        int i35 = i22;
        int i36 = i20;
        int i37 = i19;
        int i38 = i17;
        int i39 = i16;
        int i40 = i15;
        int i41 = i14;
        int i42 = i13;
        int i43 = i12;
        int i44 = i11;
        int i45 = i10;
        while (i45 > 0) {
            int h10 = org.bouncycastle.util.k.h(i44 + i32, i18) ^ i40;
            int h11 = i36 ^ org.bouncycastle.util.k.h(h10 + i44, i21);
            int h12 = i32 ^ org.bouncycastle.util.k.h(h11 + h10, i26);
            int h13 = org.bouncycastle.util.k.h(h12 + h11, 18) ^ i44;
            int h14 = i35 ^ org.bouncycastle.util.k.h(i39 + i43, i18);
            int h15 = i31 ^ org.bouncycastle.util.k.h(h14 + i39, i21);
            int h16 = i43 ^ org.bouncycastle.util.k.h(h15 + h14, i26);
            int h17 = org.bouncycastle.util.k.h(h16 + h15, 18) ^ i39;
            int h18 = i30 ^ org.bouncycastle.util.k.h(i34 + i38, 7);
            int h19 = i42 ^ org.bouncycastle.util.k.h(h18 + i34, 9);
            int h20 = i38 ^ org.bouncycastle.util.k.h(h19 + h18, 13);
            int h21 = i34 ^ org.bouncycastle.util.k.h(h20 + h19, 18);
            int h22 = i41 ^ org.bouncycastle.util.k.h(i29 + i33, 7);
            int h23 = i37 ^ org.bouncycastle.util.k.h(h22 + i29, 9);
            int i46 = i45;
            int h24 = i33 ^ org.bouncycastle.util.k.h(h23 + h22, 13);
            int h25 = i29 ^ org.bouncycastle.util.k.h(h24 + h23, 18);
            i43 = h16 ^ org.bouncycastle.util.k.h(h13 + h22, 7);
            i42 = h19 ^ org.bouncycastle.util.k.h(i43 + h13, 9);
            int h26 = h22 ^ org.bouncycastle.util.k.h(i42 + i43, 13);
            int h27 = h13 ^ org.bouncycastle.util.k.h(h26 + i42, 18);
            i38 = h20 ^ org.bouncycastle.util.k.h(h17 + h10, 7);
            i37 = h23 ^ org.bouncycastle.util.k.h(i38 + h17, 9);
            int h28 = org.bouncycastle.util.k.h(i37 + i38, 13) ^ h10;
            i39 = h17 ^ org.bouncycastle.util.k.h(h28 + i37, 18);
            i33 = h24 ^ org.bouncycastle.util.k.h(h21 + h14, 7);
            int h29 = org.bouncycastle.util.k.h(i33 + h21, 9) ^ h11;
            i35 = h14 ^ org.bouncycastle.util.k.h(h29 + i33, 13);
            i34 = h21 ^ org.bouncycastle.util.k.h(i35 + h29, 18);
            i32 = h12 ^ org.bouncycastle.util.k.h(h25 + h18, 7);
            i31 = h15 ^ org.bouncycastle.util.k.h(i32 + h25, 9);
            i30 = h18 ^ org.bouncycastle.util.k.h(i31 + i32, 13);
            i29 = h25 ^ org.bouncycastle.util.k.h(i30 + i31, 18);
            i41 = h26;
            i36 = h29;
            i44 = h27;
            i40 = h28;
            z10 = false;
            i26 = 13;
            i21 = 9;
            i18 = 7;
            i45 = i46 - 2;
        }
        boolean z11 = z10;
        iArr2[z11 ? 1 : 0] = i44 + iArr[z11 ? 1 : 0];
        iArr2[1] = i43 + iArr[1];
        iArr2[2] = i42 + iArr[2];
        iArr2[3] = i41 + iArr[3];
        iArr2[4] = i40 + iArr[4];
        iArr2[5] = i39 + iArr[5];
        iArr2[6] = i38 + iArr[6];
        iArr2[7] = i37 + iArr[7];
        iArr2[8] = i36 + iArr[8];
        iArr2[9] = i35 + iArr[9];
        iArr2[10] = i34 + iArr[10];
        iArr2[11] = i33 + iArr[11];
        iArr2[12] = i32 + iArr[12];
        iArr2[13] = i31 + iArr[13];
        iArr2[14] = i30 + iArr[14];
        iArr2[15] = i29 + iArr[15];
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException(b() + " Init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        if (a10 == null || a10.length != k()) {
            throw new IllegalArgumentException(b() + " requires exactly " + k() + " bytes of IV");
        }
        InterfaceC2379k b10 = w0Var.b();
        if (b10 == null) {
            if (!this.f14035f) {
                throw new IllegalStateException(b() + " KeyParameter can not be null for first initialisation");
            }
            t(null, a10);
        } else {
            if (!(b10 instanceof C3360o0)) {
                throw new IllegalArgumentException(b() + " Init parameters must contain a KeyParameter (or null for re-init)");
            }
            byte[] b11 = ((C3360o0) b10).b();
            t(b11, a10);
            Bi.r.a(new Hi.c(b(), b11.length * 8, interfaceC2379k, x0.a(z10)));
        }
        reset();
        this.f14035f = true;
    }

    @Override
    public String b() {
        if (this.f14030a == 20) {
            return "Salsa20";
        }
        return "Salsa20/" + this.f14030a;
    }

    public void c() {
        int[] iArr = this.f14032c;
        int i10 = iArr[8] + 1;
        iArr[8] = i10;
        if (i10 == 0) {
            iArr[9] = iArr[9] + 1;
        }
    }

    public void e(long j10) {
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 > 0) {
            int[] iArr = this.f14032c;
            iArr[9] = iArr[9] + i10;
        }
        int[] iArr2 = this.f14032c;
        int i12 = iArr2[8];
        int i13 = i11 + i12;
        iArr2[8] = i13;
        if (i12 == 0 || i13 >= i12) {
            return;
        }
        iArr2[9] = iArr2[9] + 1;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (!this.f14035f) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (m(i11)) {
            throw new MaxBytesExceededException("2^70 byte limit per IV would be exceeded; Change IV");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            byte[] bArr3 = this.f14034e;
            int i14 = this.f14031b;
            bArr2[i13 + i12] = (byte) (bArr3[i14] ^ bArr[i13 + i10]);
            int i15 = (i14 + 1) & 63;
            this.f14031b = i15;
            if (i15 == 0) {
                c();
                g(this.f14034e);
            }
        }
        return i11;
    }

    public void g(byte[] bArr) {
        s(this.f14030a, this.f14032c, this.f14033d);
        org.bouncycastle.util.p.o(this.f14033d, bArr, 0);
    }

    @Override
    public long getPosition() {
        return (h() * 64) + this.f14031b;
    }

    public long h() {
        int[] iArr = this.f14032c;
        return (iArr[9] << 32) | (iArr[8] & 4294967295L);
    }

    @Override
    public byte i(byte b10) {
        if (l()) {
            throw new MaxBytesExceededException("2^70 byte limit per IV; Change IV");
        }
        byte[] bArr = this.f14034e;
        int i10 = this.f14031b;
        byte b11 = (byte) (b10 ^ bArr[i10]);
        int i11 = (i10 + 1) & 63;
        this.f14031b = i11;
        if (i11 == 0) {
            c();
            g(this.f14034e);
        }
        return b11;
    }

    @Override
    public long j(long j10) {
        reset();
        return skip(j10);
    }

    public int k() {
        return 8;
    }

    public final boolean l() {
        int i10 = this.f14036g + 1;
        this.f14036g = i10;
        if (i10 == 0) {
            int i11 = this.f14037h + 1;
            this.f14037h = i11;
            if (i11 == 0) {
                int i12 = this.f14038i + 1;
                this.f14038i = i12;
                return (i12 & 32) != 0;
            }
        }
        return false;
    }

    public final boolean m(int i10) {
        int i11 = this.f14036g + i10;
        this.f14036g = i11;
        if (i11 >= i10 || i11 < 0) {
            return false;
        }
        int i12 = this.f14037h + 1;
        this.f14037h = i12;
        if (i12 != 0) {
            return false;
        }
        int i13 = this.f14038i + 1;
        this.f14038i = i13;
        return (i13 & 32) != 0;
    }

    public void n(int i10, int[] iArr, int i11) {
        int i12 = (i10 - 16) / 4;
        int[] iArr2 = f14027l;
        iArr[i11] = iArr2[i12];
        iArr[i11 + 1] = iArr2[i12 + 1];
        iArr[i11 + 2] = iArr2[i12 + 2];
        iArr[i11 + 3] = iArr2[i12 + 3];
    }

    public void o() {
        int[] iArr = this.f14032c;
        iArr[9] = 0;
        iArr[8] = 0;
    }

    public final void p() {
        this.f14036g = 0;
        this.f14037h = 0;
        this.f14038i = 0;
    }

    public void q() {
        int[] iArr = this.f14032c;
        int i10 = iArr[8];
        if (i10 == 0 && iArr[9] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int i11 = i10 - 1;
        iArr[8] = i11;
        if (i11 == -1) {
            iArr[9] = iArr[9] - 1;
        }
    }

    public void r(long j10) {
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 != 0) {
            int[] iArr = this.f14032c;
            int i12 = iArr[9];
            if ((i12 & 4294967295L) < (i10 & 4294967295L)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr[9] = i12 - i10;
        }
        int[] iArr2 = this.f14032c;
        int i13 = iArr2[8];
        if ((i13 & 4294967295L) >= (4294967295L & i11)) {
            iArr2[8] = i13 - i11;
            return;
        }
        int i14 = iArr2[9];
        if (i14 == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr2[9] = i14 - 1;
        iArr2[8] = i13 - i11;
    }

    @Override
    public void reset() {
        this.f14031b = 0;
        p();
        o();
        g(this.f14034e);
    }

    @Override
    public long skip(long j10) {
        long j11;
        if (j10 >= 0) {
            if (j10 >= 64) {
                long j12 = j10 / 64;
                e(j12);
                j11 = j10 - (j12 * 64);
            } else {
                j11 = j10;
            }
            int i10 = this.f14031b;
            int i11 = (((int) j11) + i10) & 63;
            this.f14031b = i11;
            if (i11 < i10) {
                c();
            }
        } else {
            long j13 = -j10;
            if (j13 >= 64) {
                long j14 = j13 / 64;
                r(j14);
                j13 -= j14 * 64;
            }
            for (long j15 = 0; j15 < j13; j15++) {
                if (this.f14031b == 0) {
                    q();
                }
                this.f14031b = (this.f14031b - 1) & 63;
            }
        }
        g(this.f14034e);
        return j10;
    }

    public void t(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(b() + " requires 128 bit or 256 bit key");
            }
            int length = (bArr.length - 16) / 4;
            int[] iArr = this.f14032c;
            int[] iArr2 = f14027l;
            iArr[0] = iArr2[length];
            iArr[5] = iArr2[length + 1];
            iArr[10] = iArr2[length + 2];
            iArr[15] = iArr2[length + 3];
            org.bouncycastle.util.p.t(bArr, 0, iArr, 1, 4);
            org.bouncycastle.util.p.t(bArr, bArr.length - 16, this.f14032c, 11, 4);
        }
        org.bouncycastle.util.p.t(bArr2, 0, this.f14032c, 6, 2);
    }

    public n0(int i10) {
        this.f14031b = 0;
        this.f14032c = new int[16];
        this.f14033d = new int[16];
        this.f14034e = new byte[64];
        this.f14035f = false;
        if (i10 <= 0 || (i10 & 1) != 0) {
            throw new IllegalArgumentException("'rounds' must be a positive, even number");
        }
        this.f14030a = i10;
    }
}
