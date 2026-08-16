package Si;

import Bi.I;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import pk.AbstractC15010e;

public class q implements I {

    public static final int f23469w = 16;

    public final InterfaceC2374f f23470a;

    public final byte[] f23471b;

    public int f23472c;

    public int f23473d;

    public int f23474e;

    public int f23475f;

    public int f23476g;

    public int f23477h;

    public int f23478i;

    public int f23479j;

    public int f23480k;

    public int f23481l;

    public int f23482m;

    public int f23483n;

    public int f23484o;

    public final byte[] f23485p;

    public int f23486q;

    public int f23487r;

    public int f23488s;

    public int f23489t;

    public int f23490u;

    public int f23491v;

    public q() {
        this.f23471b = new byte[1];
        this.f23485p = new byte[16];
        this.f23486q = 0;
        this.f23470a = null;
    }

    public static final long e(int i10, int i11) {
        return (i10 & 4294967295L) * i11;
    }

    private void f() {
        int i10 = this.f23486q;
        if (i10 < 16) {
            this.f23485p[i10] = 1;
            for (int i11 = i10 + 1; i11 < 16; i11++) {
                this.f23485p[i11] = 0;
            }
        }
        long r10 = org.bouncycastle.util.p.r(this.f23485p, 0);
        long j10 = r10 & 4294967295L;
        long r11 = org.bouncycastle.util.p.r(this.f23485p, 4) & 4294967295L;
        long r12 = org.bouncycastle.util.p.r(this.f23485p, 8) & 4294967295L;
        long r13 = 4294967295L & org.bouncycastle.util.p.r(this.f23485p, 12);
        int i12 = (int) (this.f23487r + (r10 & AbstractC15010e.f104121c));
        this.f23487r = i12;
        this.f23488s = (int) (this.f23488s + ((((r11 << 32) | j10) >>> 26) & AbstractC15010e.f104121c));
        this.f23489t = (int) (this.f23489t + (((r11 | (r12 << 32)) >>> 20) & AbstractC15010e.f104121c));
        this.f23490u = (int) (this.f23490u + ((((r13 << 32) | r12) >>> 14) & AbstractC15010e.f104121c));
        int i13 = (int) (this.f23491v + (r13 >>> 8));
        this.f23491v = i13;
        if (this.f23486q == 16) {
            this.f23491v = i13 + 16777216;
        }
        long e10 = e(i12, this.f23472c) + e(this.f23488s, this.f23480k) + e(this.f23489t, this.f23479j) + e(this.f23490u, this.f23478i) + e(this.f23491v, this.f23477h);
        long e11 = e(this.f23487r, this.f23473d) + e(this.f23488s, this.f23472c) + e(this.f23489t, this.f23480k) + e(this.f23490u, this.f23479j) + e(this.f23491v, this.f23478i);
        long e12 = e(this.f23487r, this.f23474e) + e(this.f23488s, this.f23473d) + e(this.f23489t, this.f23472c) + e(this.f23490u, this.f23480k) + e(this.f23491v, this.f23479j);
        long e13 = e(this.f23487r, this.f23475f) + e(this.f23488s, this.f23474e) + e(this.f23489t, this.f23473d) + e(this.f23490u, this.f23472c) + e(this.f23491v, this.f23480k);
        long e14 = e(this.f23487r, this.f23476g) + e(this.f23488s, this.f23475f) + e(this.f23489t, this.f23474e) + e(this.f23490u, this.f23473d) + e(this.f23491v, this.f23472c);
        long j11 = e11 + (e10 >>> 26);
        long j12 = e12 + (j11 >>> 26);
        this.f23489t = ((int) j12) & 67108863;
        long j13 = e13 + (j12 >>> 26);
        this.f23490u = ((int) j13) & 67108863;
        long j14 = e14 + (j13 >>> 26);
        this.f23491v = ((int) j14) & 67108863;
        int i14 = (((int) e10) & 67108863) + (((int) (j14 >>> 26)) * 5);
        this.f23488s = (((int) j11) & 67108863) + (i14 >>> 26);
        this.f23487r = i14 & 67108863;
    }

    private void g(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        }
        int i10 = 16;
        if (this.f23470a != null && (bArr2 == null || bArr2.length != 16)) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit IV.");
        }
        int r10 = org.bouncycastle.util.p.r(bArr, 0);
        int r11 = org.bouncycastle.util.p.r(bArr, 4);
        int r12 = org.bouncycastle.util.p.r(bArr, 8);
        int r13 = org.bouncycastle.util.p.r(bArr, 12);
        this.f23472c = 67108863 & r10;
        int i11 = ((r10 >>> 26) | (r11 << 6)) & 67108611;
        this.f23473d = i11;
        int i12 = ((r11 >>> 20) | (r12 << 12)) & 67092735;
        this.f23474e = i12;
        int i13 = ((r12 >>> 14) | (r13 << 18)) & 66076671;
        this.f23475f = i13;
        int i14 = (r13 >>> 8) & 1048575;
        this.f23476g = i14;
        this.f23477h = i11 * 5;
        this.f23478i = i12 * 5;
        this.f23479j = i13 * 5;
        this.f23480k = i14 * 5;
        InterfaceC2374f interfaceC2374f = this.f23470a;
        if (interfaceC2374f != null) {
            byte[] bArr3 = new byte[16];
            interfaceC2374f.a(true, new C3360o0(bArr, 16, 16));
            this.f23470a.g(bArr2, 0, bArr3, 0);
            i10 = 0;
            bArr = bArr3;
        }
        this.f23481l = org.bouncycastle.util.p.r(bArr, i10);
        this.f23482m = org.bouncycastle.util.p.r(bArr, i10 + 4);
        this.f23483n = org.bouncycastle.util.p.r(bArr, i10 + 8);
        this.f23484o = org.bouncycastle.util.p.r(bArr, i10 + 12);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        byte[] bArr;
        if (this.f23470a == null) {
            bArr = null;
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("Poly1305 requires an IV when used with a block cipher.");
            }
            w0 w0Var = (w0) interfaceC2379k;
            bArr = w0Var.a();
            interfaceC2379k = w0Var.b();
        }
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("Poly1305 requires a key.");
        }
        g(((C3360o0) interfaceC2379k).b(), bArr);
        reset();
    }

    @Override
    public String b() {
        if (this.f23470a == null) {
            return "Poly1305";
        }
        return "Poly1305-" + this.f23470a.b();
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        if (i10 + 16 > bArr.length) {
            throw new OutputLengthException("Output buffer is too short.");
        }
        if (this.f23486q > 0) {
            f();
        }
        int i11 = this.f23488s;
        int i12 = this.f23487r;
        int i13 = i11 + (i12 >>> 26);
        int i14 = this.f23489t + (i13 >>> 26);
        int i15 = this.f23490u + (i14 >>> 26);
        int i16 = i14 & 67108863;
        int i17 = this.f23491v + (i15 >>> 26);
        int i18 = i15 & 67108863;
        int i19 = (i12 & 67108863) + ((i17 >>> 26) * 5);
        int i20 = i17 & 67108863;
        int i21 = (i13 & 67108863) + (i19 >>> 26);
        int i22 = i19 & 67108863;
        int i23 = i22 + 5;
        int i24 = (i23 >>> 26) + i21;
        int i25 = (i24 >>> 26) + i16;
        int i26 = (i25 >>> 26) + i18;
        int i27 = 67108863 & i26;
        int i28 = ((i26 >>> 26) + i20) - 67108864;
        int i29 = (i28 >>> 31) - 1;
        int i30 = ~i29;
        this.f23487r = (i22 & i30) | (i23 & 67108863 & i29);
        this.f23488s = (i21 & i30) | (i24 & 67108863 & i29);
        this.f23489t = (i16 & i30) | (i25 & 67108863 & i29);
        this.f23490u = (i27 & i29) | (i18 & i30);
        this.f23491v = (i20 & i30) | (i28 & i29);
        long j10 = ((r1 | (r0 << 26)) & 4294967295L) + (this.f23481l & 4294967295L);
        long j11 = (((r3 >>> 12) | (r2 << 14)) & 4294967295L) + (this.f23483n & 4294967295L);
        org.bouncycastle.util.p.m((int) j10, bArr, i10);
        long j12 = (((r0 >>> 6) | (r3 << 20)) & 4294967295L) + (this.f23482m & 4294967295L) + (j10 >>> 32);
        org.bouncycastle.util.p.m((int) j12, bArr, i10 + 4);
        long j13 = j11 + (j12 >>> 32);
        org.bouncycastle.util.p.m((int) j13, bArr, i10 + 8);
        org.bouncycastle.util.p.m((int) ((((r2 >>> 18) | (r4 << 8)) & 4294967295L) + (4294967295L & this.f23484o) + (j13 >>> 32)), bArr, i10 + 12);
        reset();
        return 16;
    }

    @Override
    public int d() {
        return 16;
    }

    @Override
    public void reset() {
        this.f23486q = 0;
        this.f23491v = 0;
        this.f23490u = 0;
        this.f23489t = 0;
        this.f23488s = 0;
        this.f23487r = 0;
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        byte[] bArr = this.f23471b;
        bArr[0] = b10;
        update(bArr, 0, 1);
    }

    public q(InterfaceC2374f interfaceC2374f) {
        this.f23471b = new byte[1];
        this.f23485p = new byte[16];
        this.f23486q = 0;
        if (interfaceC2374f.c() != 16) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit block cipher.");
        }
        this.f23470a = interfaceC2374f;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        int i12 = 0;
        while (i11 > i12) {
            if (this.f23486q == 16) {
                f();
                this.f23486q = 0;
            }
            int min = Math.min(i11 - i12, 16 - this.f23486q);
            System.arraycopy(bArr, i12 + i10, this.f23485p, this.f23486q, min);
            i12 += min;
            this.f23486q += min;
        }
    }
}
