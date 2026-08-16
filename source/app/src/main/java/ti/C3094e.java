package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3331a;
import Xi.w0;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class C3094e implements InterfaceC3095f {

    public InterfaceC2374f f25179a;

    public int f25180b;

    public boolean f25181c;

    public byte[] f25182d;

    public byte[] f25183e;

    public int f25184f;

    public InterfaceC2379k f25185g;

    public byte[] f25186h;

    public a f25187i = new a();

    public a f25188j = new a();

    public static class a extends ByteArrayOutputStream {
        public byte[] c() {
            return this.buf;
        }
    }

    public C3094e(InterfaceC2374f interfaceC2374f) {
        this.f25179a = interfaceC2374f;
        int c10 = interfaceC2374f.c();
        this.f25180b = c10;
        this.f25186h = new byte[c10];
        if (c10 != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
    }

    public static InterfaceC3095f p(InterfaceC2374f interfaceC2374f) {
        return new C3094e(interfaceC2374f);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2379k b10;
        this.f25181c = z10;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            this.f25182d = c3331a.d();
            this.f25183e = c3331a.a();
            this.f25184f = n(z10, c3331a.c());
            b10 = c3331a.b();
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("invalid parameters passed to CCM: " + interfaceC2379k.getClass().getName());
            }
            w0 w0Var = (w0) interfaceC2379k;
            this.f25182d = w0Var.a();
            this.f25183e = null;
            this.f25184f = n(z10, 64);
            b10 = w0Var.b();
        }
        if (b10 != null) {
            this.f25185g = b10;
        }
        byte[] bArr = this.f25182d;
        if (bArr == null || bArr.length < 7 || bArr.length > 13) {
            throw new IllegalArgumentException("nonce must have length from 7 to 13 octets");
        }
        reset();
    }

    @Override
    public String b() {
        return this.f25179a.b() + "/CCM";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        int q10 = q(this.f25188j.c(), 0, this.f25188j.size(), bArr, i10);
        reset();
        return q10;
    }

    @Override
    public InterfaceC2374f d() {
        return this.f25179a;
    }

    @Override
    public byte[] e() {
        int i10 = this.f25184f;
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f25186h, 0, bArr, 0, i10);
        return bArr;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException, IllegalStateException {
        if (bArr.length < i10 + i11) {
            throw new DataLengthException("Input buffer too short");
        }
        this.f25188j.write(bArr, i10, i11);
        return 0;
    }

    @Override
    public int g(int i10) {
        return 0;
    }

    @Override
    public int h(int i10) {
        int size = i10 + this.f25188j.size();
        if (this.f25181c) {
            return size + this.f25184f;
        }
        int i11 = this.f25184f;
        if (size < i11) {
            return 0;
        }
        return size - i11;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        this.f25188j.write(b10);
        return 0;
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        this.f25187i.write(bArr, i10, i11);
    }

    @Override
    public void k(byte b10) {
        this.f25187i.write(b10);
    }

    public final int l(byte[] bArr, int i10, int i11, byte[] bArr2) {
        Si.c cVar = new Si.c(this.f25179a, this.f25184f * 8);
        cVar.a(this.f25185g);
        byte[] bArr3 = new byte[16];
        if (o()) {
            bArr3[0] = (byte) (bArr3[0] | 64);
        }
        int i12 = 2;
        byte d10 = (byte) (bArr3[0] | ((((cVar.d() - 2) / 2) & 7) << 3));
        bArr3[0] = d10;
        byte[] bArr4 = this.f25182d;
        bArr3[0] = (byte) (d10 | ((14 - bArr4.length) & 7));
        System.arraycopy(bArr4, 0, bArr3, 1, bArr4.length);
        int i13 = i11;
        int i14 = 1;
        while (i13 > 0) {
            bArr3[16 - i14] = (byte) (i13 & 255);
            i13 >>>= 8;
            i14++;
        }
        cVar.update(bArr3, 0, 16);
        if (o()) {
            int m10 = m();
            if (m10 < 65280) {
                cVar.update((byte) (m10 >> 8));
                cVar.update((byte) m10);
            } else {
                cVar.update((byte) -1);
                cVar.update((byte) -2);
                cVar.update((byte) (m10 >> 24));
                cVar.update((byte) (m10 >> 16));
                cVar.update((byte) (m10 >> 8));
                cVar.update((byte) m10);
                i12 = 6;
            }
            byte[] bArr5 = this.f25183e;
            if (bArr5 != null) {
                cVar.update(bArr5, 0, bArr5.length);
            }
            if (this.f25187i.size() > 0) {
                cVar.update(this.f25187i.c(), 0, this.f25187i.size());
            }
            int i15 = (i12 + m10) % 16;
            if (i15 != 0) {
                while (i15 != 16) {
                    cVar.update((byte) 0);
                    i15++;
                }
            }
        }
        cVar.update(bArr, i10, i11);
        return cVar.c(bArr2, 0);
    }

    public final int m() {
        int size = this.f25187i.size();
        byte[] bArr = this.f25183e;
        return size + (bArr == null ? 0 : bArr.length);
    }

    public final int n(boolean z10, int i10) {
        if (!z10 || (i10 >= 32 && i10 <= 128 && (i10 & 15) == 0)) {
            return i10 >>> 3;
        }
        throw new IllegalArgumentException("tag length in octets must be one of {4,6,8,10,12,14,16}");
    }

    public final boolean o() {
        return m() > 0;
    }

    public int q(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IllegalStateException, InvalidCipherTextException, DataLengthException {
        int i13;
        if (this.f25185g == null) {
            throw new IllegalStateException("CCM cipher unitialized.");
        }
        byte[] bArr3 = this.f25182d;
        int length = bArr3.length;
        int i14 = 15 - length;
        if (i14 < 4) {
            if (i11 - (!this.f25181c ? 16 : 0) >= (1 << (i14 * 8))) {
                throw new IllegalStateException("CCM packet too large for choice of q");
            }
        }
        byte[] bArr4 = new byte[this.f25180b];
        bArr4[0] = (byte) ((14 - length) & 7);
        System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
        i s10 = H.s(this.f25179a);
        s10.a(this.f25181c, new w0(this.f25185g, bArr4));
        if (!this.f25181c) {
            int i15 = this.f25184f;
            if (i11 < i15) {
                throw new InvalidCipherTextException("data too short");
            }
            int i16 = i11 - i15;
            if (bArr2.length < i16 + i12) {
                throw new OutputLengthException("Output buffer too short.");
            }
            int i17 = i10 + i16;
            System.arraycopy(bArr, i17, this.f25186h, 0, i15);
            byte[] bArr5 = this.f25186h;
            s10.g(bArr5, 0, bArr5, 0);
            int i18 = this.f25184f;
            while (true) {
                byte[] bArr6 = this.f25186h;
                if (i18 == bArr6.length) {
                    break;
                }
                bArr6[i18] = 0;
                i18++;
            }
            int i19 = i10;
            int i20 = i12;
            while (true) {
                i13 = this.f25180b;
                if (i19 >= i17 - i13) {
                    break;
                }
                s10.g(bArr, i19, bArr2, i20);
                int i21 = this.f25180b;
                i20 += i21;
                i19 += i21;
            }
            byte[] bArr7 = new byte[i13];
            int i22 = i16 - (i19 - i10);
            System.arraycopy(bArr, i19, bArr7, 0, i22);
            s10.g(bArr7, 0, bArr7, 0);
            System.arraycopy(bArr7, 0, bArr2, i20, i22);
            byte[] bArr8 = new byte[this.f25180b];
            l(bArr2, i12, i16, bArr8);
            if (org.bouncycastle.util.a.I(this.f25186h, bArr8)) {
                return i16;
            }
            throw new InvalidCipherTextException("mac check in CCM failed");
        }
        int i23 = this.f25184f + i11;
        if (bArr2.length < i23 + i12) {
            throw new OutputLengthException("Output buffer too short.");
        }
        l(bArr, i10, i11, this.f25186h);
        byte[] bArr9 = new byte[this.f25180b];
        s10.g(this.f25186h, 0, bArr9, 0);
        int i24 = i10;
        int i25 = i12;
        while (true) {
            int i26 = i10 + i11;
            int i27 = this.f25180b;
            if (i24 >= i26 - i27) {
                byte[] bArr10 = new byte[i27];
                int i28 = i26 - i24;
                System.arraycopy(bArr, i24, bArr10, 0, i28);
                s10.g(bArr10, 0, bArr10, 0);
                System.arraycopy(bArr10, 0, bArr2, i25, i28);
                System.arraycopy(bArr9, 0, bArr2, i12 + i11, this.f25184f);
                return i23;
            }
            s10.g(bArr, i24, bArr2, i25);
            int i29 = this.f25180b;
            i25 += i29;
            i24 += i29;
        }
    }

    public byte[] r(byte[] bArr, int i10, int i11) throws IllegalStateException, InvalidCipherTextException {
        int i12;
        if (this.f25181c) {
            i12 = this.f25184f + i11;
        } else {
            int i13 = this.f25184f;
            if (i11 < i13) {
                throw new InvalidCipherTextException("data too short");
            }
            i12 = i11 - i13;
        }
        byte[] bArr2 = new byte[i12];
        q(bArr, i10, i11, bArr2, 0);
        return bArr2;
    }

    @Override
    public void reset() {
        this.f25179a.reset();
        this.f25187i.reset();
        this.f25188j.reset();
    }
}
