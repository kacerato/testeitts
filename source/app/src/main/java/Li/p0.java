package Li;

import Bi.EnumC2383o;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public abstract class p0 implements InterfaceC2374f {

    public static final int f14039d = 16;

    public static final int f14040e = 32;

    public static final int f14041f = -1640531527;

    public boolean f14042a;

    public int[] f14043b;

    public int f14044c;

    public p0() {
        Bi.r.a(new Hi.c(b(), 256));
    }

    private EnumC2383o k() {
        return this.f14043b == null ? EnumC2383o.ANY : this.f14042a ? EnumC2383o.ENCRYPTION : EnumC2383o.DECRYPTION;
    }

    public static int v(int i10, int i11) {
        return (i10 >>> (-i11)) | (i10 << i11);
    }

    public static int w(int i10, int i11) {
        return (i10 << (-i11)) | (i10 >>> i11);
    }

    public final void A(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = i10 ^ i11;
        int i15 = i10 & i12;
        int i16 = i10 | i13;
        int i17 = i12 ^ i13;
        int i18 = i15 | (i14 & i16);
        int i19 = i17 ^ i18;
        iArr[2] = i19;
        int i20 = (i16 ^ i11) ^ i18;
        int i21 = i14 ^ (i17 & i20);
        iArr[0] = i21;
        int i22 = i21 & i19;
        iArr[1] = i20 ^ i22;
        iArr[3] = (i11 | i13) ^ (i17 ^ i22);
    }

    public final void B(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = i10 ^ i13;
        int i15 = i12 ^ (i13 & i14);
        int i16 = i11 | i15;
        iArr[3] = i14 ^ i16;
        int i17 = ~i11;
        int i18 = (i14 | i17) ^ i15;
        iArr[0] = i18;
        int i19 = i17 ^ i14;
        int i20 = (i16 & i19) ^ (i18 & i10);
        iArr[2] = i20;
        iArr[1] = (i10 ^ i15) ^ (i19 & i20);
    }

    public final void C(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = ~i10;
        int i15 = i10 ^ i11;
        int i16 = i10 ^ i13;
        int i17 = (i12 ^ i14) ^ (i15 | i16);
        iArr[0] = i17;
        int i18 = i13 & i17;
        int i19 = (i15 ^ i17) ^ i18;
        iArr[1] = i19;
        int i20 = i16 ^ (i17 | i14);
        iArr[2] = (i15 | i18) ^ i20;
        iArr[3] = (i20 & i19) ^ (i11 ^ i18);
    }

    public final void D(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = ~i10;
        int i15 = i10 ^ i13;
        int i16 = i11 ^ i15;
        int i17 = i12 ^ (i14 | i15);
        int i18 = i11 ^ i17;
        iArr[1] = i18;
        int i19 = (i15 | i18) ^ i13;
        int i20 = (i17 & i19) ^ i16;
        iArr[2] = i20;
        int i21 = i19 ^ i17;
        iArr[0] = i20 ^ i21;
        iArr[3] = (i21 & i16) ^ (~i17);
    }

    public final void E(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = i11 ^ i12;
        int i15 = (i12 & i14) ^ i13;
        int i16 = i10 ^ i15;
        int i17 = i11 ^ ((i13 | i14) & i16);
        iArr[1] = i17;
        int i18 = (i10 & i16) ^ i14;
        iArr[3] = i18;
        int i19 = (i17 | i15) ^ i16;
        int i20 = i15 ^ (i18 & i19);
        iArr[2] = i20;
        iArr[0] = (i18 & i20) ^ (~i19);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof C3360o0) {
            this.f14042a = z10;
            byte[] b10 = ((C3360o0) interfaceC2379k).b();
            this.f14043b = u(b10);
            Bi.r.a(new Hi.c(b(), b10.length * 8, interfaceC2379k, k()));
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to " + b() + " init - " + interfaceC2379k.getClass().getName());
    }

    @Override
    public String b() {
        return "Serpent";
    }

    @Override
    public int c() {
        return 16;
    }

    public final void f(int[] iArr) {
        int v10 = v(iArr[0], 13);
        int v11 = v(iArr[2], 3);
        int i10 = (iArr[1] ^ v10) ^ v11;
        int i11 = (iArr[3] ^ v11) ^ (v10 << 3);
        iArr[1] = v(i10, 1);
        int v12 = v(i11, 7);
        iArr[3] = v12;
        iArr[0] = v((v10 ^ iArr[1]) ^ v12, 5);
        iArr[2] = v((iArr[3] ^ v11) ^ (iArr[1] << 7), 22);
    }

    @Override
    public final int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (this.f14043b == null) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f14042a) {
            j(bArr, i10, bArr2, i11);
            return 16;
        }
        i(bArr, i10, bArr2, i11);
        return 16;
    }

    public abstract void i(byte[] bArr, int i10, byte[] bArr2, int i11);

    public abstract void j(byte[] bArr, int i10, byte[] bArr2, int i11);

    public final void l(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = ~i10;
        int i15 = i11 ^ i10;
        int i16 = (i14 | i15) ^ i13;
        int i17 = i12 ^ i16;
        int i18 = i15 ^ i17;
        iArr[2] = i18;
        int i19 = (i15 & i13) ^ i14;
        int i20 = (i18 & i19) ^ i16;
        iArr[1] = i20;
        int i21 = (i10 & i16) ^ (i20 | i17);
        iArr[3] = i21;
        iArr[0] = i21 ^ (i19 ^ i17);
    }

    public final void m(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = i13 ^ i11;
        int i15 = i10 ^ (i11 & i14);
        int i16 = i14 ^ i15;
        int i17 = i12 ^ i16;
        iArr[3] = i17;
        int i18 = i11 ^ (i14 & i15);
        int i19 = i15 ^ (i17 | i18);
        iArr[1] = i19;
        int i20 = ~i19;
        int i21 = i18 ^ i17;
        iArr[0] = i20 ^ i21;
        iArr[2] = (i20 | i21) ^ i16;
    }

    public final void n(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = i11 ^ i13;
        int i15 = ~i14;
        int i16 = i10 ^ i12;
        int i17 = i12 ^ i14;
        int i18 = (i11 & i17) ^ i16;
        iArr[0] = i18;
        int i19 = (((i10 | i15) ^ i13) | i16) ^ i14;
        iArr[3] = i19;
        int i20 = ~i17;
        int i21 = i19 | i18;
        iArr[1] = i20 ^ i21;
        iArr[2] = (i21 ^ i16) ^ (i13 & i20);
    }

    public final void o(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = i10 | i11;
        int i15 = i11 ^ i12;
        int i16 = i10 ^ (i11 & i15);
        int i17 = i12 ^ i16;
        int i18 = i13 | i16;
        int i19 = i15 ^ i18;
        iArr[0] = i19;
        int i20 = (i18 | i15) ^ i13;
        iArr[2] = i17 ^ i20;
        int i21 = i14 ^ i20;
        int i22 = i16 ^ (i19 & i21);
        iArr[3] = i22;
        iArr[1] = i22 ^ (i21 ^ i19);
    }

    public final void p(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = i11 ^ ((i12 | i13) & i10);
        int i15 = i12 ^ (i10 & i14);
        int i16 = i13 ^ i15;
        iArr[1] = i16;
        int i17 = ~i10;
        int i18 = (i15 & i16) ^ i14;
        iArr[3] = i18;
        int i19 = i13 ^ (i16 | i17);
        iArr[0] = i18 ^ i19;
        iArr[2] = (i17 ^ i16) ^ (i14 & i19);
    }

    public final void q(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = ~i12;
        int i15 = (i11 & i14) ^ i13;
        int i16 = i10 & i15;
        int i17 = (i11 ^ i14) ^ i16;
        iArr[3] = i17;
        int i18 = i17 | i11;
        iArr[1] = i15 ^ (i10 & i18);
        int i19 = i13 | i10;
        iArr[0] = (i14 ^ i18) ^ i19;
        iArr[2] = ((i10 ^ i12) | i16) ^ (i11 & i19);
    }

    public final void r(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = ~i10;
        int i15 = i10 ^ i11;
        int i16 = i12 ^ i15;
        int i17 = (i12 | i14) ^ i13;
        iArr[1] = i16 ^ i17;
        int i18 = i15 ^ (i16 & i17);
        int i19 = i17 ^ (i11 | i18);
        iArr[3] = i19;
        int i20 = i11 | i19;
        iArr[0] = i18 ^ i20;
        iArr[2] = (i13 & i14) ^ (i20 ^ i16);
    }

    @Override
    public void reset() {
    }

    public final void s(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = (i10 & i11) | i12;
        int i15 = (i10 | i11) & i13;
        int i16 = i14 ^ i15;
        iArr[3] = i16;
        int i17 = i11 ^ i15;
        int i18 = ((i16 ^ (~i13)) | i17) ^ i10;
        iArr[1] = i18;
        int i19 = (i17 ^ i12) ^ (i13 | i18);
        iArr[0] = i19;
        iArr[2] = ((i10 & i16) ^ i19) ^ (i14 ^ i18);
    }

    public final void t(int[] iArr) {
        int w10 = (w(iArr[2], 22) ^ iArr[3]) ^ (iArr[1] << 7);
        int w11 = w(iArr[0], 5) ^ iArr[1];
        int i10 = iArr[3];
        int i11 = w11 ^ i10;
        int w12 = w(i10, 7);
        int w13 = w(iArr[1], 1);
        iArr[3] = (w12 ^ w10) ^ (i11 << 3);
        iArr[1] = (w13 ^ i11) ^ w10;
        iArr[2] = w(w10, 3);
        iArr[0] = w(i11, 13);
    }

    public abstract int[] u(byte[] bArr);

    public final void x(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = i10 ^ i13;
        int i15 = i12 ^ i14;
        int i16 = i11 ^ i15;
        int i17 = (i13 & i10) ^ i16;
        iArr[3] = i17;
        int i18 = i10 ^ (i11 & i14);
        iArr[2] = (i12 | i18) ^ i16;
        int i19 = (i15 ^ i18) & i17;
        iArr[1] = (~i15) ^ i19;
        iArr[0] = (~i18) ^ i19;
    }

    public final void y(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = (~i10) ^ i11;
        int i15 = (i10 | i14) ^ i12;
        int i16 = i13 ^ i15;
        iArr[2] = i16;
        int i17 = i11 ^ (i13 | i14);
        int i18 = i16 ^ i14;
        int i19 = (i15 & i17) ^ i18;
        iArr[3] = i19;
        int i20 = i17 ^ i15;
        iArr[1] = i19 ^ i20;
        iArr[0] = i15 ^ (i20 & i18);
    }

    public final void z(int[] iArr, int i10, int i11, int i12, int i13) {
        int i14 = ~i10;
        int i15 = i11 ^ i13;
        int i16 = (i12 & i14) ^ i15;
        iArr[0] = i16;
        int i17 = i12 ^ i14;
        int i18 = i11 & (i12 ^ i16);
        int i19 = i17 ^ i18;
        iArr[3] = i19;
        int i20 = i10 ^ ((i18 | i13) & (i16 | i17));
        iArr[2] = i20;
        iArr[1] = (i20 ^ (i13 | i14)) ^ (i15 ^ i19);
    }
}
