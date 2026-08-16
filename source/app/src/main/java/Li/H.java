package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class H implements Bi.Y {

    public static final int f13607i = 5;

    public byte[] f13608a;

    public byte[] f13609b;

    public byte[] f13610c;

    public int[] f13611d;

    public int[] f13612e;

    public int f13613f;

    public int f13614g = 2;

    public boolean f13615h = false;

    private byte c() {
        if (this.f13614g > 1) {
            k();
            this.f13614g = 0;
        }
        byte[] bArr = this.f13610c;
        int i10 = this.f13614g;
        this.f13614g = i10 + 1;
        return bArr[i10];
    }

    private int e() {
        int[] iArr = this.f13612e;
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = (i10 >>> 1) | (i11 << 15);
        int i13 = (i10 >>> 2) | (i11 << 14);
        int i14 = (i10 >>> 4) | (i11 << 12);
        int i15 = (i10 >>> 10) | (i11 << 6);
        int i16 = iArr[2];
        int i17 = (i11 >>> 15) | (i16 << 1);
        int i18 = iArr[3];
        int i19 = (i16 >>> 11) | (i18 << 5);
        int i20 = iArr[4];
        int i21 = (i18 >>> 8) | (i20 << 8);
        int i22 = (i20 << 1) | (i18 >>> 15);
        int[] iArr2 = this.f13611d;
        int i23 = iArr2[0] >>> 3;
        int i24 = iArr2[1];
        int i25 = i23 | (i24 << 13);
        int i26 = iArr2[2];
        int i27 = (i24 >>> 9) | (i26 << 7);
        int i28 = (iArr2[3] << 2) | (i26 >>> 14);
        int i29 = iArr2[4];
        int i30 = i28 & i29;
        int i31 = ((((i27 ^ i22) ^ (i25 & i29)) ^ i30) ^ (i29 & i22)) ^ ((i25 & i27) & i28);
        int i32 = i25 & i28;
        return (((((((((i22 & i30) ^ (((i32 & i22) ^ ((i29 & i32) ^ i31)) ^ ((i27 & i28) & i22))) ^ i12) ^ i13) ^ i14) ^ i15) ^ i17) ^ i19) ^ i21) & 65535;
    }

    private int g() {
        int[] iArr = this.f13611d;
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = (i10 >>> 13) | (i11 << 3);
        int i13 = iArr[2];
        int i14 = (i11 >>> 7) | (i13 << 9);
        int i15 = iArr[3];
        int i16 = (i13 >>> 6) | (i15 << 10);
        int i17 = iArr[4];
        int i18 = (i15 >>> 3) | (i17 << 13);
        return (((i17 << 2) | (i15 >>> 14)) ^ ((((i10 ^ i12) ^ i14) ^ i16) ^ i18)) & 65535;
    }

    private int h() {
        int[] iArr = this.f13612e;
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = (i10 >>> 9) | (i11 << 7);
        int i13 = (i10 >>> 14) | (i11 << 2);
        int i14 = (i10 >>> 15) | (i11 << 1);
        int i15 = iArr[2];
        int i16 = (i11 >>> 5) | (i15 << 11);
        int i17 = (i11 >>> 12) | (i15 << 4);
        int i18 = iArr[3];
        int i19 = (i15 >>> 1) | (i18 << 15);
        int i20 = (i15 >>> 5) | (i18 << 11);
        int i21 = (i15 >>> 13) | (i18 << 3);
        int i22 = iArr[4];
        int i23 = (i18 >>> 4) | (i22 << 12);
        int i24 = (i18 >>> 12) | (i22 << 4);
        int i25 = (i18 >>> 14) | (i22 << 2);
        int i26 = (i22 << 1) | (i18 >>> 15);
        int i27 = i26 & i24;
        int i28 = (((i10 ^ (((((((((i25 ^ i24) ^ i23) ^ i21) ^ i20) ^ i19) ^ i17) ^ i16) ^ i13) ^ i12)) ^ i27) ^ (i20 & i19)) ^ (i14 & i12);
        int i29 = i24 & i23;
        int i30 = i19 & i17 & i16;
        return (((((((((i26 & i21) & i17) & i12) ^ ((i28 ^ (i29 & i21)) ^ i30)) ^ ((i29 & i20) & i19)) ^ ((i27 & i16) & i14)) ^ (((i27 & i23) & i21) & i20)) ^ ((i30 & i14) & i12)) ^ (((((i23 & i21) & i20) & i19) & i17) & i16)) & 65535;
    }

    private void j() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.f13613f = e();
            this.f13612e = m(this.f13612e, (h() ^ this.f13611d[0]) ^ this.f13613f);
            this.f13611d = m(this.f13611d, g() ^ this.f13613f);
        }
        this.f13615h = true;
    }

    private void k() {
        int e10 = e();
        this.f13613f = e10;
        byte[] bArr = this.f13610c;
        bArr[0] = (byte) e10;
        bArr[1] = (byte) (e10 >> 8);
        this.f13612e = m(this.f13612e, h() ^ this.f13611d[0]);
        this.f13611d = m(this.f13611d, g());
    }

    private void l(byte[] bArr, byte[] bArr2) {
        bArr2[8] = -1;
        bArr2[9] = -1;
        this.f13608a = bArr;
        this.f13609b = bArr2;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.f13612e;
            if (i10 >= iArr.length) {
                return;
            }
            byte[] bArr3 = this.f13608a;
            int i12 = i11 + 1;
            iArr[i10] = ((bArr3[i11] & 255) | (bArr3[i12] << 8)) & 65535;
            int[] iArr2 = this.f13611d;
            byte[] bArr4 = this.f13609b;
            iArr2[i10] = ((bArr4[i11] & 255) | (bArr4[i12] << 8)) & 65535;
            i11 += 2;
            i10++;
        }
    }

    private int[] m(int[] iArr, int i10) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = iArr[4];
        iArr[4] = i10;
        return iArr;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("Grain v1 init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        if (a10 == null || a10.length != 8) {
            throw new IllegalArgumentException("Grain v1 requires exactly 8 bytes of IV");
        }
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException("Grain v1 init parameters must include a key");
        }
        byte[] b10 = ((C3360o0) w0Var.b()).b();
        if (b10.length != 10) {
            throw new IllegalArgumentException("Grain v1 key must be 80 bits long");
        }
        byte[] bArr = new byte[b10.length];
        this.f13609b = bArr;
        this.f13608a = new byte[b10.length];
        this.f13611d = new int[5];
        this.f13612e = new int[5];
        this.f13610c = new byte[2];
        System.arraycopy(a10, 0, bArr, 0, a10.length);
        System.arraycopy(b10, 0, this.f13608a, 0, b10.length);
        Bi.r.a(new Hi.c(b(), 80, interfaceC2379k, x0.a(z10)));
        reset();
    }

    @Override
    public String b() {
        return "Grain v1";
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (!this.f13615h) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            bArr2[i12 + i13] = (byte) (bArr[i10 + i13] ^ c());
        }
        return i11;
    }

    @Override
    public byte i(byte b10) {
        if (this.f13615h) {
            return (byte) (b10 ^ c());
        }
        throw new IllegalStateException(b() + " not initialised");
    }

    @Override
    public void reset() {
        this.f13614g = 2;
        l(this.f13608a, this.f13609b);
        j();
    }
}
