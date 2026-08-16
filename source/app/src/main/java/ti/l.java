package Ti;

import Bi.I;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3331a;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class l implements InterfaceC3090a {

    public static final byte f25225m = 0;

    public static final byte f25226n = 1;

    public static final byte f25227o = 2;

    public i f25228a;

    public boolean f25229b;

    public int f25230c;

    public I f25231d;

    public byte[] f25232e;

    public byte[] f25233f;

    public byte[] f25234g;

    public int f25235h;

    public byte[] f25236i;

    public int f25237j;

    public boolean f25238k;

    public byte[] f25239l;

    public l(InterfaceC2374f interfaceC2374f) {
        this.f25230c = interfaceC2374f.c();
        Si.e eVar = new Si.e(interfaceC2374f);
        this.f25231d = eVar;
        this.f25234g = new byte[this.f25230c];
        this.f25233f = new byte[eVar.d()];
        this.f25232e = new byte[this.f25231d.d()];
        this.f25228a = H.s(interfaceC2374f);
    }

    private void p(boolean z10) {
        this.f25228a.reset();
        this.f25231d.reset();
        this.f25237j = 0;
        org.bouncycastle.util.a.e0(this.f25236i, (byte) 0);
        if (z10) {
            org.bouncycastle.util.a.e0(this.f25234g, (byte) 0);
        }
        int i10 = this.f25230c;
        byte[] bArr = new byte[i10];
        bArr[i10 - 1] = 1;
        this.f25231d.update(bArr, 0, i10);
        this.f25238k = false;
        byte[] bArr2 = this.f25239l;
        if (bArr2 != null) {
            j(bArr2, 0, bArr2.length);
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        byte[] a10;
        InterfaceC2379k b10;
        this.f25229b = z10;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            a10 = c3331a.d();
            this.f25239l = c3331a.a();
            this.f25235h = c3331a.c() / 8;
            b10 = c3331a.b();
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("invalid parameters passed to EAX");
            }
            w0 w0Var = (w0) interfaceC2379k;
            a10 = w0Var.a();
            this.f25239l = null;
            this.f25235h = this.f25231d.d() / 2;
            b10 = w0Var.b();
        }
        this.f25236i = new byte[z10 ? this.f25230c : this.f25230c + this.f25235h];
        byte[] bArr = new byte[this.f25230c];
        this.f25231d.a(b10);
        int i10 = this.f25230c;
        bArr[i10 - 1] = 0;
        this.f25231d.update(bArr, 0, i10);
        this.f25231d.update(a10, 0, a10.length);
        this.f25231d.c(this.f25232e, 0);
        this.f25228a.a(true, new w0(b10, this.f25232e));
        reset();
    }

    @Override
    public String b() {
        return this.f25228a.d().b() + "/EAX";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        n();
        int i11 = this.f25237j;
        byte[] bArr2 = this.f25236i;
        byte[] bArr3 = new byte[bArr2.length];
        this.f25237j = 0;
        if (this.f25229b) {
            int i12 = i10 + i11;
            if (bArr.length < this.f25235h + i12) {
                throw new OutputLengthException("Output buffer too short");
            }
            this.f25228a.g(bArr2, 0, bArr3, 0);
            System.arraycopy(bArr3, 0, bArr, i10, i11);
            this.f25231d.update(bArr3, 0, i11);
            l();
            System.arraycopy(this.f25234g, 0, bArr, i12, this.f25235h);
            p(false);
            return i11 + this.f25235h;
        }
        int i13 = this.f25235h;
        if (i11 < i13) {
            throw new InvalidCipherTextException("data too short");
        }
        if (bArr.length < (i10 + i11) - i13) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (i11 > i13) {
            this.f25231d.update(bArr2, 0, i11 - i13);
            this.f25228a.g(this.f25236i, 0, bArr3, 0);
            System.arraycopy(bArr3, 0, bArr, i10, i11 - this.f25235h);
        }
        l();
        if (!q(this.f25236i, i11 - this.f25235h)) {
            throw new InvalidCipherTextException("mac check in EAX failed");
        }
        p(false);
        return i11 - this.f25235h;
    }

    @Override
    public InterfaceC2374f d() {
        return this.f25228a.d();
    }

    @Override
    public byte[] e() {
        int i10 = this.f25235h;
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f25234g, 0, bArr, 0, i10);
        return bArr;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        n();
        if (bArr.length < i10 + i11) {
            throw new DataLengthException("Input buffer too short");
        }
        int i13 = 0;
        for (int i14 = 0; i14 != i11; i14++) {
            i13 += o(bArr[i10 + i14], bArr2, i12 + i13);
        }
        return i13;
    }

    @Override
    public int g(int i10) {
        int i11 = i10 + this.f25237j;
        if (!this.f25229b) {
            int i12 = this.f25235h;
            if (i11 < i12) {
                return 0;
            }
            i11 -= i12;
        }
        return i11 - (i11 % this.f25230c);
    }

    @Override
    public int h(int i10) {
        int i11 = i10 + this.f25237j;
        if (this.f25229b) {
            return i11 + this.f25235h;
        }
        int i12 = this.f25235h;
        if (i11 < i12) {
            return 0;
        }
        return i11 - i12;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        n();
        return o(b10, bArr, i10);
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        if (this.f25238k) {
            throw new IllegalStateException("AAD data cannot be added after encryption/decryption processing has begun.");
        }
        this.f25231d.update(bArr, i10, i11);
    }

    @Override
    public void k(byte b10) {
        if (this.f25238k) {
            throw new IllegalStateException("AAD data cannot be added after encryption/decryption processing has begun.");
        }
        this.f25231d.update(b10);
    }

    public final void l() {
        byte[] bArr = new byte[this.f25230c];
        int i10 = 0;
        this.f25231d.c(bArr, 0);
        while (true) {
            byte[] bArr2 = this.f25234g;
            if (i10 >= bArr2.length) {
                return;
            }
            bArr2[i10] = (byte) ((this.f25232e[i10] ^ this.f25233f[i10]) ^ bArr[i10]);
            i10++;
        }
    }

    public int m() {
        return this.f25228a.c();
    }

    public final void n() {
        if (this.f25238k) {
            return;
        }
        this.f25238k = true;
        this.f25231d.c(this.f25233f, 0);
        int i10 = this.f25230c;
        byte[] bArr = new byte[i10];
        bArr[i10 - 1] = 2;
        this.f25231d.update(bArr, 0, i10);
    }

    public final int o(byte b10, byte[] bArr, int i10) {
        int g10;
        byte[] bArr2 = this.f25236i;
        int i11 = this.f25237j;
        int i12 = i11 + 1;
        this.f25237j = i12;
        bArr2[i11] = b10;
        if (i12 != bArr2.length) {
            return 0;
        }
        int length = bArr.length;
        int i13 = this.f25230c;
        if (length < i10 + i13) {
            throw new OutputLengthException("Output buffer is too short");
        }
        if (this.f25229b) {
            g10 = this.f25228a.g(bArr2, 0, bArr, i10);
            this.f25231d.update(bArr, i10, this.f25230c);
        } else {
            this.f25231d.update(bArr2, 0, i13);
            g10 = this.f25228a.g(this.f25236i, 0, bArr, i10);
        }
        this.f25237j = 0;
        if (!this.f25229b) {
            byte[] bArr3 = this.f25236i;
            System.arraycopy(bArr3, this.f25230c, bArr3, 0, this.f25235h);
            this.f25237j = this.f25235h;
        }
        return g10;
    }

    public final boolean q(byte[] bArr, int i10) {
        int i11 = 0;
        for (int i12 = 0; i12 < this.f25235h; i12++) {
            i11 |= this.f25234g[i12] ^ bArr[i10 + i12];
        }
        return i11 == 0;
    }

    @Override
    public void reset() {
        p(true);
    }
}
