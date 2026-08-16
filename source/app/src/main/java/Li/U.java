package Li;

import Bi.InterfaceC2379k;
import Ti.InterfaceC3091b;
import Xi.C3360o0;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class U implements InterfaceC3091b {

    public boolean f13754a;

    public boolean f13755b;

    public byte[] f13756c;

    public byte[] f13757d;

    public byte[] f13758e;

    public byte[][] f13759f;

    public byte[] f13760g;

    public byte[] f13761h;

    public boolean f13762i;

    public boolean f13763j;

    public final int f13768o;

    public final int f13769p;

    public final int f13770q;

    public final int f13772s;

    public final ByteArrayOutputStream f13764k = new ByteArrayOutputStream();

    public final ByteArrayOutputStream f13765l = new ByteArrayOutputStream();

    public final int f13766m = 16;

    public final int f13767n = 16;

    public final int f13771r = 16;

    public final int f13773t = 12;

    public final int f13774u = 8;

    public final int f13775v = 3;

    public final int f13776w = 7;

    public final int f13777x = 64;

    public final int f13778y = 4;

    public final int f13779z = 3;

    public final byte[][] f13751A = {new byte[]{1, 3, 7, 14, 13, 11, 6, 12, 9, 2, 5, 10}, new byte[]{0, 2, 6, 15, 12, 10, 7, 13, 8, 3, 4, 11}, new byte[]{2, 0, 4, 13, 14, 8, 5, 15, 10, 1, 6, 9}, new byte[]{6, 4, 0, 9, 10, 12, 1, 11, 14, 5, 2, 13}, new byte[]{14, 12, 8, 1, 2, 4, 9, 3, 6, 13, 10, 5}, new byte[]{15, 13, 9, 0, 3, 5, 8, 2, 7, 12, 11, 4}, new byte[]{13, 15, 11, 2, 1, 7, 10, 0, 5, 14, 9, 6}, new byte[]{9, 11, 15, 6, 5, 3, 14, 4, 1, 10, 13, 2}};

    public final byte[][] f13752B = {new byte[]{2, 4, 2, 11, 2, 8, 5, 6}, new byte[]{12, 9, 8, 13, 7, 7, 5, 2}, new byte[]{4, 4, 13, 13, 9, 4, 13, 9}, new byte[]{1, 6, 5, 1, 12, 13, 15, 14}, new byte[]{15, 12, 9, 13, 14, 5, 14, 13}, new byte[]{9, 14, 5, 15, 4, 12, 9, 6}, new byte[]{12, 2, 2, 10, 3, 1, 1, 14}, new byte[]{15, 1, 13, 10, 5, 10, 2, 3}};

    public final byte[] f13753C = {12, 5, 6, 11, 9, 0, 10, 13, 3, 14, 15, 8, 4, 7, 1, 2};

    public static class a {

        public static final int[] f13780a;

        static {
            int[] iArr = new int[b.values().length];
            f13780a = iArr;
            try {
                iArr[b.pb32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13780a[b.pb128.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum b {
        pb32,
        pb128
    }

    public U(b bVar) {
        int i10;
        int i11;
        int i12 = a.f13780a[bVar.ordinal()];
        if (i12 == 1) {
            i10 = 32;
            i11 = 224;
        } else if (i12 != 2) {
            i11 = 0;
            i10 = 0;
        } else {
            i10 = 128;
            i11 = 128;
        }
        int i13 = i10 + 7;
        this.f13768o = i13 >>> 3;
        this.f13769p = i13 >>> 4;
        int i14 = i10 + i11;
        int i15 = (7 + i14) >>> 3;
        this.f13770q = i15;
        this.f13772s = (i14 - ((i15 - 1) << 3)) - 3;
        this.f13763j = false;
    }

    private void q(boolean z10) {
        if (z10) {
            this.f13761h = null;
        }
        this.f13754a = true;
        this.f13764k.reset();
        this.f13765l.reset();
        byte[] bArr = this.f13756c;
        System.arraycopy(bArr, 0, this.f13758e, 0, bArr.length);
        byte[] bArr2 = this.f13757d;
        System.arraycopy(bArr2, 0, this.f13758e, this.f13756c.length, bArr2.length);
        this.f13762i = false;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f13755b = z10;
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("Photon-Beetle AEAD init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        this.f13757d = a10;
        if (a10 == null || a10.length != 16) {
            throw new IllegalArgumentException("Photon-Beetle AEAD requires exactly 16 bytes of IV");
        }
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException("Photon-Beetle AEAD init parameters must include a key");
        }
        byte[] b10 = ((C3360o0) w0Var.b()).b();
        this.f13756c = b10;
        if (b10.length != 16) {
            throw new IllegalArgumentException("Photon-Beetle AEAD key must be 128 bits long");
        }
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        this.f13758e = new byte[this.f13770q];
        this.f13759f = (byte[][]) Array.newInstance(Byte.TYPE, 8, 8);
        this.f13761h = new byte[16];
        this.f13763j = true;
        q(false);
    }

    @Override
    public String b() {
        return "Photon-Beetle AEAD";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        if (!this.f13763j) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        int size = this.f13765l.size();
        boolean z10 = this.f13755b;
        int i11 = size - (z10 ? 0 : 16);
        if ((z10 && i11 + 16 + i10 > bArr.length) || (!z10 && i11 + i10 > bArr.length)) {
            throw new OutputLengthException("output buffer too short");
        }
        byte[] byteArray = this.f13765l.toByteArray();
        byte[] byteArray2 = this.f13764k.toByteArray();
        this.f13760g = byteArray2;
        int length = byteArray2.length;
        if (length != 0 || i11 != 0) {
            this.f13754a = false;
        }
        byte s10 = s(i11 != 0, length % this.f13768o == 0, (byte) 3, (byte) 4);
        byte s11 = s(length != 0, i11 % this.f13768o == 0, (byte) 5, (byte) 6);
        if (length != 0) {
            int i12 = this.f13768o;
            int i13 = ((length + i12) - 1) / i12;
            int i14 = 0;
            while (true) {
                int i15 = i13 - 1;
                l();
                if (i14 >= i15) {
                    break;
                }
                byte[] bArr2 = this.f13760g;
                int i16 = this.f13768o;
                m(bArr2, i14 * i16, i16);
                i14++;
            }
            int i17 = this.f13768o;
            int i18 = length - (i14 * i17);
            m(this.f13760g, i14 * i17, i18);
            if (i18 < this.f13768o) {
                byte[] bArr3 = this.f13758e;
                bArr3[i18] = (byte) (bArr3[i18] ^ 1);
            }
            byte[] bArr4 = this.f13758e;
            int i19 = this.f13770q - 1;
            bArr4[i19] = (byte) ((s10 << this.f13772s) ^ bArr4[i19]);
        }
        if (i11 != 0) {
            int i20 = this.f13768o;
            int i21 = ((i11 + i20) - 1) / i20;
            int i22 = 0;
            while (true) {
                int i23 = i21 - 1;
                l();
                if (i22 >= i23) {
                    break;
                }
                int i24 = this.f13768o;
                r(bArr, i10 + (i22 * i24), byteArray, i22 * i24, i24);
                i22++;
            }
            int i25 = this.f13768o;
            int i26 = i11 - (i22 * i25);
            r(bArr, i10 + (i22 * i25), byteArray, i22 * i25, i26);
            if (i26 < this.f13768o) {
                byte[] bArr5 = this.f13758e;
                bArr5[i26] = (byte) (bArr5[i26] ^ 1);
            }
            byte[] bArr6 = this.f13758e;
            int i27 = this.f13770q - 1;
            bArr6[i27] = (byte) (bArr6[i27] ^ (s11 << this.f13772s));
        }
        int i28 = i10 + i11;
        if (this.f13754a) {
            byte[] bArr7 = this.f13758e;
            int i29 = this.f13770q - 1;
            bArr7[i29] = (byte) (bArr7[i29] ^ (1 << this.f13772s));
        }
        l();
        byte[] bArr8 = new byte[16];
        this.f13761h = bArr8;
        System.arraycopy(this.f13758e, 0, bArr8, 0, 16);
        if (this.f13755b) {
            System.arraycopy(this.f13761h, 0, bArr, i28, 16);
            i11 += 16;
        } else {
            for (int i30 = 0; i30 < 16; i30++) {
                if (this.f13761h[i30] != byteArray[i11 + i30]) {
                    throw new IllegalArgumentException("Mac does not match");
                }
            }
        }
        q(false);
        return i11;
    }

    @Override
    public byte[] e() {
        return this.f13761h;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.f13765l.write(bArr, i10, i11);
        return 0;
    }

    @Override
    public int g(int i10) {
        return i10;
    }

    @Override
    public int h(int i10) {
        return i10 + 16;
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
        this.f13764k.write(bArr, i10, i11);
    }

    @Override
    public void k(byte b10) {
        this.f13764k.write(b10);
    }

    public final void l() {
        for (int i10 = 0; i10 < 64; i10++) {
            this.f13759f[i10 >>> 3][i10 & 7] = (byte) (((this.f13758e[i10 >> 1] & 255) >>> ((i10 & 1) * 4)) & 15);
        }
        for (int i11 = 0; i11 < 12; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                byte[] bArr = this.f13759f[i12];
                bArr[0] = (byte) (bArr[0] ^ this.f13751A[i12][i11]);
            }
            for (int i13 = 0; i13 < 8; i13++) {
                for (int i14 = 0; i14 < 8; i14++) {
                    byte[] bArr2 = this.f13759f[i13];
                    bArr2[i14] = this.f13753C[bArr2[i14]];
                }
            }
            for (int i15 = 1; i15 < 8; i15++) {
                System.arraycopy(this.f13759f[i15], 0, this.f13758e, 0, 8);
                int i16 = 8 - i15;
                System.arraycopy(this.f13758e, i15, this.f13759f[i15], 0, i16);
                System.arraycopy(this.f13758e, 0, this.f13759f[i15], i16, i15);
            }
            for (int i17 = 0; i17 < 8; i17++) {
                for (int i18 = 0; i18 < 8; i18++) {
                    byte b10 = 0;
                    for (int i19 = 0; i19 < 8; i19++) {
                        int i20 = this.f13752B[i18][i19];
                        byte b11 = this.f13759f[i19][i17];
                        int i21 = 0;
                        for (int i22 = 0; i22 < 4; i22++) {
                            if (((b11 >>> i22) & 1) != 0) {
                                i21 ^= i20;
                            }
                            int i23 = (i20 >>> 3) & 1;
                            i20 <<= 1;
                            if (i23 != 0) {
                                i20 ^= 3;
                            }
                        }
                        b10 = (byte) (b10 ^ (i21 & 15));
                    }
                    this.f13758e[i18] = b10;
                }
                for (int i24 = 0; i24 < 8; i24++) {
                    this.f13759f[i24][i17] = this.f13758e[i24];
                }
            }
        }
        for (int i25 = 0; i25 < 64; i25 += 2) {
            byte[] bArr3 = this.f13759f[i25 >>> 3];
            this.f13758e[i25 >>> 1] = (byte) (((bArr3[(i25 + 1) & 7] & 15) << 4) | (bArr3[i25 & 7] & 15));
        }
    }

    public final void m(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            byte[] bArr2 = this.f13758e;
            bArr2[i12] = (byte) (bArr[i10] ^ bArr2[i12]);
            i12++;
            i10++;
        }
    }

    public int n() {
        return this.f13768o;
    }

    public int o() {
        return 16;
    }

    public int p() {
        return 16;
    }

    public final void r(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        int i13;
        int i14 = 0;
        byte[] bArr3 = this.f13759f[0];
        int min = Math.min(i12, this.f13769p);
        int i15 = 0;
        while (true) {
            i13 = this.f13769p;
            if (i15 >= i13 - 1) {
                break;
            }
            byte[] bArr4 = this.f13758e;
            int i16 = i15 + 1;
            bArr3[i15] = (byte) (((bArr4[i16] & 1) << 7) | ((bArr4[i15] & 255) >>> 1));
            i15 = i16;
        }
        byte[] bArr5 = this.f13758e;
        bArr3[i13 - 1] = (byte) (((bArr5[i15] & 255) >>> 1) | ((bArr5[0] & 1) << 7));
        while (i14 < min) {
            bArr[i14 + i10] = (byte) (bArr2[i14 + i11] ^ this.f13758e[this.f13769p + i14]);
            i14++;
        }
        while (i14 < i12) {
            bArr[i14 + i10] = (byte) (bArr2[i14 + i11] ^ bArr3[i14 - this.f13769p]);
            i14++;
        }
        if (this.f13755b) {
            m(bArr2, i11, i12);
        } else {
            m(bArr, i11, i12);
        }
    }

    @Override
    public void reset() {
        if (!this.f13763j) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        q(true);
    }

    public final byte s(boolean z10, boolean z11, byte b10, byte b11) {
        if (z10 && z11) {
            return (byte) 1;
        }
        if (z10) {
            return (byte) 2;
        }
        return z11 ? b10 : b11;
    }
}
