package Li;

import Bi.InterfaceC2379k;
import Ti.InterfaceC3091b;
import Xi.C3360o0;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class C0 implements InterfaceC3091b {

    public boolean f13537a;

    public byte[] f13538b;

    public int f13539c;

    public a f13540d;

    public int f13541e;

    public byte[] f13544h;

    public byte[] f13545i;

    public byte[] f13554r;

    public boolean f13556t;

    public boolean f13557u;

    public final int f13542f = 48;

    public final int f13543g = 24;

    public final int f13546j = 1;

    public final int f13547k = 2;

    public final int f13548l = 12;

    public final int f13549m = 3;

    public final int f13550n = 4;

    public final int f13551o = 12;

    public final int f13552p = 16;

    public final int f13553q = 44;

    public final int[] f13555s = {88, 56, 960, 208, 288, 20, 96, 44, 896, 240, 416, 18};

    public boolean f13558v = false;

    public final ByteArrayOutputStream f13559w = new ByteArrayOutputStream();

    public final ByteArrayOutputStream f13560x = new ByteArrayOutputStream();

    public enum a {
        ModeHash,
        ModeKeyed
    }

    private int t(int i10, int i11) {
        return ((i11 % 3) * 4) + (i10 % 4);
    }

    private void v(boolean z10) {
        if (z10) {
            this.f13554r = null;
        }
        org.bouncycastle.util.a.e0(this.f13538b, (byte) 0);
        this.f13556t = false;
        this.f13557u = false;
        this.f13539c = 2;
        this.f13560x.reset();
        this.f13559w.reset();
        byte[] bArr = this.f13544h;
        int length = bArr.length;
        int length2 = this.f13545i.length;
        byte[] bArr2 = new byte[44];
        this.f13540d = a.ModeKeyed;
        this.f13541e = 44;
        System.arraycopy(bArr, 0, bArr2, 0, length);
        System.arraycopy(this.f13545i, 0, bArr2, length, length2);
        int i10 = length + length2;
        bArr2[i10] = (byte) length2;
        l(bArr2, 0, i10 + 1, this.f13541e, 2);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f13537a = z10;
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("Xoodyak init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        this.f13545i = a10;
        if (a10 == null || a10.length != 16) {
            throw new IllegalArgumentException("Xoodyak requires exactly 16 bytes of IV");
        }
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException("Xoodyak init parameters must include a key");
        }
        byte[] b10 = ((C3360o0) w0Var.b()).b();
        this.f13544h = b10;
        if (b10.length != 16) {
            throw new IllegalArgumentException("Xoodyak key must be 128 bits long");
        }
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        this.f13538b = new byte[48];
        this.f13554r = new byte[16];
        this.f13558v = true;
        reset();
    }

    @Override
    public String b() {
        return "Xoodyak AEAD";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        int i11;
        if (!this.f13558v) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        byte[] byteArray = this.f13560x.toByteArray();
        int size = this.f13560x.size();
        boolean z10 = this.f13537a;
        if ((z10 && size + 16 + i10 > bArr.length) || (!z10 && (size - 16) + i10 > bArr.length)) {
            throw new OutputLengthException("output buffer too short");
        }
        u();
        if (this.f13537a) {
            p(byteArray, 0, size, bArr, i10);
            byte[] bArr2 = new byte[16];
            this.f13554r = bArr2;
            o(bArr2, 16, 64);
            System.arraycopy(this.f13554r, 0, bArr, i10 + size, 16);
            i11 = size + 16;
        } else {
            i11 = size - 16;
            p(byteArray, 0, i11, bArr, i10);
            byte[] bArr3 = new byte[16];
            this.f13554r = bArr3;
            o(bArr3, 16, 64);
            int i12 = i11;
            int i13 = 0;
            while (i13 < 16) {
                int i14 = i12 + 1;
                if (this.f13554r[i13] != byteArray[i12]) {
                    throw new IllegalArgumentException("Mac does not match");
                }
                i13++;
                i12 = i14;
            }
        }
        v(false);
        return i11;
    }

    @Override
    public byte[] e() {
        return this.f13554r;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (!this.f13558v) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        if (this.f13540d != a.ModeKeyed) {
            throw new IllegalArgumentException("Xoodyak has not been initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.f13560x.write(bArr, i10, i11);
        int size = this.f13560x.size() - (this.f13537a ? 0 : 16);
        if (size < q()) {
            return 0;
        }
        byte[] byteArray = this.f13560x.toByteArray();
        int q10 = (size / q()) * q();
        if (q10 + i12 > bArr2.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        u();
        p(byteArray, 0, q10, bArr2, i12);
        this.f13560x.reset();
        this.f13560x.write(byteArray, q10, byteArray.length - q10);
        return q10;
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
        if (!this.f13556t) {
            if (i10 + i11 > bArr.length) {
                throw new DataLengthException("input buffer too short");
            }
            this.f13559w.write(bArr, i10, i11);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AAD cannot be added after reading a full block(");
            sb2.append(q());
            sb2.append(" bytes) of input for ");
            sb2.append(this.f13537a ? "encryption" : "decryption");
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    @Override
    public void k(byte b10) {
        if (!this.f13556t) {
            this.f13559w.write(b10);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AAD cannot be added after reading a full block(");
        sb2.append(q());
        sb2.append(" bytes) of input for ");
        sb2.append(this.f13537a ? "encryption" : "decryption");
        throw new IllegalArgumentException(sb2.toString());
    }

    public final void l(byte[] bArr, int i10, int i11, int i12, int i13) {
        while (true) {
            if (this.f13539c != 2) {
                o(null, 0, 0);
            }
            int min = Math.min(i11, i12);
            m(bArr, i10, min, i13);
            i10 += min;
            i11 -= min;
            if (i11 == 0) {
                return;
            } else {
                i13 = 0;
            }
        }
    }

    public void m(byte[] bArr, int i10, int i11, int i12) {
        int i13 = 0;
        while (i13 < i11) {
            byte[] bArr2 = this.f13538b;
            bArr2[i13] = (byte) (bArr[i10] ^ bArr2[i13]);
            i13++;
            i10++;
        }
        byte[] bArr3 = this.f13538b;
        bArr3[i11] = (byte) (bArr3[i11] ^ 1);
        byte b10 = bArr3[47];
        if (this.f13540d == a.ModeHash) {
            i12 &= 1;
        }
        bArr3[47] = (byte) (b10 ^ i12);
        this.f13539c = 1;
    }

    public final int n(int i10, int i11) {
        return (i10 >>> ((32 - i11) & 31)) ^ (i10 << (i11 & 31));
    }

    public final void o(byte[] bArr, int i10, int i11) {
        int i12;
        if (this.f13540d != a.ModeHash) {
            byte[] bArr2 = this.f13538b;
            bArr2[47] = (byte) (bArr2[47] ^ i11);
        }
        int i13 = 12;
        int[] iArr = new int[12];
        org.bouncycastle.util.p.t(this.f13538b, 0, iArr, 0, 12);
        int[] iArr2 = new int[12];
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[4];
        for (int i14 = 0; i14 < i13; i14++) {
            for (int i15 = 0; i15 < 4; i15++) {
                iArr3[i15] = (iArr[t(i15, 1)] ^ iArr[t(i15, 0)]) ^ iArr[t(i15, 2)];
            }
            int i16 = 0;
            while (true) {
                i12 = 3;
                if (i16 >= 4) {
                    break;
                }
                int i17 = iArr3[3 & (i16 + 3)];
                iArr4[i16] = n(i17, 14) ^ n(i17, 5);
                i16++;
            }
            for (int i18 = 0; i18 < 4; i18++) {
                for (int i19 = 0; i19 < 3; i19++) {
                    int t10 = t(i18, i19);
                    iArr[t10] = iArr[t10] ^ iArr4[i18];
                }
            }
            for (int i20 = 0; i20 < 4; i20++) {
                iArr2[t(i20, 0)] = iArr[t(i20, 0)];
                iArr2[t(i20, 1)] = iArr[t(i20 + 3, 1)];
                iArr2[t(i20, 2)] = n(iArr[t(i20, 2)], 11);
            }
            iArr2[0] = iArr2[0] ^ this.f13555s[i14];
            int i21 = 0;
            while (i21 < 4) {
                int i22 = 0;
                while (i22 < i12) {
                    int i23 = i22 + 1;
                    iArr[t(i21, i22)] = ((~iArr2[t(i21, i23)]) & iArr2[t(i21, i22 + 2)]) ^ iArr2[t(i21, i22)];
                    i22 = i23;
                    i12 = 3;
                }
                i21++;
                i12 = 3;
            }
            for (int i24 = 0; i24 < 4; i24++) {
                iArr2[t(i24, 0)] = iArr[t(i24, 0)];
                iArr2[t(i24, 1)] = n(iArr[t(i24, 1)], 1);
                iArr2[t(i24, 2)] = n(iArr[t(i24 + 2, 2)], 8);
            }
            i13 = 12;
            System.arraycopy(iArr2, 0, iArr, 0, 12);
        }
        org.bouncycastle.util.p.n(iArr, 0, i13, this.f13538b, 0);
        this.f13539c = 2;
        if (bArr != null) {
            System.arraycopy(this.f13538b, 0, bArr, 0, i10);
        }
    }

    public final int p(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        byte[] bArr3 = new byte[24];
        int i13 = this.f13557u ? 0 : 128;
        int i14 = i11;
        while (true) {
            if (i14 == 0 && this.f13557u) {
                return i11;
            }
            int min = Math.min(i14, 24);
            if (this.f13537a) {
                System.arraycopy(bArr, i10, bArr3, 0, min);
            }
            o(null, 0, i13);
            int i15 = 0;
            while (i15 < min) {
                bArr2[i12 + i15] = (byte) (bArr[i10] ^ this.f13538b[i15]);
                i15++;
                i10++;
            }
            if (this.f13537a) {
                m(bArr3, 0, min, 0);
            } else {
                m(bArr2, i12, min, 0);
            }
            i12 += min;
            i14 -= min;
            this.f13557u = true;
            i13 = 0;
        }
    }

    public int q() {
        return 24;
    }

    public int r() {
        return 16;
    }

    @Override
    public void reset() {
        if (!this.f13558v) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        v(true);
    }

    public int s() {
        return 16;
    }

    public final void u() {
        if (this.f13556t) {
            return;
        }
        byte[] byteArray = this.f13559w.toByteArray();
        l(byteArray, 0, byteArray.length, this.f13541e, 3);
        this.f13556t = true;
    }
}
