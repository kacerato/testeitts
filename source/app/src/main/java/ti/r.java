package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class r implements s {

    public static final int f25279y = 16;

    public InterfaceC2374f f25280a;

    public Ui.d f25281b;

    public Ui.c f25282c;

    public boolean f25283d;

    public boolean f25284e;

    public int f25285f;

    public byte[] f25286g;

    public byte[] f25287h;

    public byte[] f25288i;

    public byte[] f25289j;

    public byte[] f25290k;

    public byte[] f25291l;

    public byte[] f25292m;

    public byte[] f25293n;

    public byte[] f25294o;

    public byte[] f25295p;

    public byte[] f25296q;

    public int f25297r;

    public int f25298s;

    public long f25299t;

    public byte[] f25300u;

    public int f25301v;

    public long f25302w;

    public long f25303x;

    public r(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, null);
    }

    private void t() {
        if (this.f25302w > 0) {
            System.arraycopy(this.f25294o, 0, this.f25295p, 0, 16);
            this.f25303x = this.f25302w;
        }
        int i10 = this.f25301v;
        if (i10 > 0) {
            r(this.f25295p, this.f25300u, 0, i10);
            this.f25303x += this.f25301v;
        }
        if (this.f25303x > 0) {
            System.arraycopy(this.f25295p, 0, this.f25293n, 0, 16);
        }
    }

    public static s u(InterfaceC2374f interfaceC2374f) {
        return new r(interfaceC2374f);
    }

    public static s v(InterfaceC2374f interfaceC2374f, Ui.d dVar) {
        return new r(interfaceC2374f, dVar);
    }

    private void x(boolean z10) {
        this.f25280a.reset();
        this.f25293n = new byte[16];
        this.f25294o = new byte[16];
        this.f25295p = new byte[16];
        this.f25300u = new byte[16];
        this.f25301v = 0;
        this.f25302w = 0L;
        this.f25303x = 0L;
        this.f25296q = org.bouncycastle.util.a.p(this.f25290k);
        this.f25297r = -2;
        this.f25298s = 0;
        this.f25299t = 0L;
        byte[] bArr = this.f25291l;
        if (bArr != null) {
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
        }
        if (z10) {
            this.f25292m = null;
        }
        if (this.f25283d) {
            this.f25284e = false;
            return;
        }
        byte[] bArr2 = this.f25288i;
        if (bArr2 != null) {
            j(bArr2, 0, bArr2.length);
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        byte[] a10;
        C3360o0 c3360o0;
        byte[] bArr;
        this.f25283d = z10;
        this.f25292m = null;
        this.f25284e = true;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            a10 = c3331a.d();
            this.f25288i = c3331a.a();
            int c10 = c3331a.c();
            if (c10 < 32 || c10 > 128 || c10 % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + c10);
            }
            this.f25285f = c10 / 8;
            c3360o0 = c3331a.b();
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("invalid parameters passed to GCM");
            }
            w0 w0Var = (w0) interfaceC2379k;
            a10 = w0Var.a();
            this.f25288i = null;
            this.f25285f = 16;
            c3360o0 = (C3360o0) w0Var.b();
        }
        this.f25291l = new byte[z10 ? 16 : this.f25285f + 16];
        if (a10 == null || a10.length < 1) {
            throw new IllegalArgumentException("IV must be at least 1 byte");
        }
        if (z10 && (bArr = this.f25287h) != null && org.bouncycastle.util.a.g(bArr, a10)) {
            if (c3360o0 == null) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
            byte[] bArr2 = this.f25286g;
            if (bArr2 != null && org.bouncycastle.util.a.g(bArr2, c3360o0.b())) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
        }
        this.f25287h = a10;
        if (c3360o0 != null) {
            this.f25286g = c3360o0.b();
        }
        if (c3360o0 != null) {
            this.f25280a.a(true, c3360o0);
            byte[] bArr3 = new byte[16];
            this.f25289j = bArr3;
            this.f25280a.g(bArr3, 0, bArr3, 0);
            this.f25281b.a(this.f25289j);
            this.f25282c = null;
        } else if (this.f25289j == null) {
            throw new IllegalArgumentException("Key must be specified in initial init");
        }
        byte[] bArr4 = new byte[16];
        this.f25290k = bArr4;
        byte[] bArr5 = this.f25287h;
        if (bArr5.length == 12) {
            System.arraycopy(bArr5, 0, bArr4, 0, bArr5.length);
            this.f25290k[15] = 1;
        } else {
            o(bArr4, bArr5, bArr5.length);
            byte[] bArr6 = new byte[16];
            org.bouncycastle.util.p.D(this.f25287h.length * 8, bArr6, 8);
            p(this.f25290k, bArr6);
        }
        this.f25293n = new byte[16];
        this.f25294o = new byte[16];
        this.f25295p = new byte[16];
        this.f25300u = new byte[16];
        this.f25301v = 0;
        this.f25302w = 0L;
        this.f25303x = 0L;
        this.f25296q = org.bouncycastle.util.a.p(this.f25290k);
        this.f25297r = -2;
        this.f25298s = 0;
        this.f25299t = 0L;
        byte[] bArr7 = this.f25288i;
        if (bArr7 != null) {
            j(bArr7, 0, bArr7.length);
        }
    }

    @Override
    public String b() {
        return this.f25280a.b() + "/GCM";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        l();
        if (this.f25299t == 0) {
            t();
        }
        int i11 = this.f25298s;
        if (!this.f25283d) {
            int i12 = this.f25285f;
            if (i11 < i12) {
                throw new InvalidCipherTextException("data too short");
            }
            i11 -= i12;
            if (bArr.length - i10 < i11) {
                throw new OutputLengthException("Output buffer too short");
            }
        } else if (bArr.length - i10 < this.f25285f + i11) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (i11 > 0) {
            w(this.f25291l, 0, i11, bArr, i10);
        }
        long j10 = this.f25302w;
        int i13 = this.f25301v;
        long j11 = j10 + i13;
        this.f25302w = j11;
        if (j11 > this.f25303x) {
            if (i13 > 0) {
                r(this.f25294o, this.f25300u, 0, i13);
            }
            if (this.f25303x > 0) {
                Ui.e.N(this.f25294o, this.f25295p);
            }
            long j12 = ((this.f25299t * 8) + 127) >>> 7;
            byte[] bArr2 = new byte[16];
            if (this.f25282c == null) {
                Ui.a aVar = new Ui.a();
                this.f25282c = aVar;
                aVar.a(this.f25289j);
            }
            this.f25282c.b(j12, bArr2);
            Ui.e.q(this.f25294o, bArr2);
            Ui.e.N(this.f25293n, this.f25294o);
        }
        byte[] bArr3 = new byte[16];
        org.bouncycastle.util.p.D(this.f25302w * 8, bArr3, 0);
        org.bouncycastle.util.p.D(this.f25299t * 8, bArr3, 8);
        p(this.f25293n, bArr3);
        byte[] bArr4 = new byte[16];
        this.f25280a.g(this.f25290k, 0, bArr4, 0);
        Ui.e.N(bArr4, this.f25293n);
        int i14 = this.f25285f;
        byte[] bArr5 = new byte[i14];
        this.f25292m = bArr5;
        System.arraycopy(bArr4, 0, bArr5, 0, i14);
        if (this.f25283d) {
            System.arraycopy(this.f25292m, 0, bArr, i10 + this.f25298s, this.f25285f);
            i11 += this.f25285f;
        } else {
            int i15 = this.f25285f;
            byte[] bArr6 = new byte[i15];
            System.arraycopy(this.f25291l, i11, bArr6, 0, i15);
            if (!org.bouncycastle.util.a.I(this.f25292m, bArr6)) {
                throw new InvalidCipherTextException("mac check in GCM failed");
            }
        }
        x(false);
        return i11;
    }

    @Override
    public InterfaceC2374f d() {
        return this.f25280a;
    }

    @Override
    public byte[] e() {
        byte[] bArr = this.f25292m;
        return bArr == null ? new byte[this.f25285f] : org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        int i13;
        l();
        if (bArr.length - i10 < i11) {
            throw new DataLengthException("Input buffer too short");
        }
        int i14 = 16;
        if (this.f25283d) {
            int i15 = this.f25298s;
            if (i15 > 0) {
                int i16 = 16 - i15;
                if (i11 < i16) {
                    System.arraycopy(bArr, i10, this.f25291l, i15, i11);
                    this.f25298s += i11;
                    return 0;
                }
                System.arraycopy(bArr, i10, this.f25291l, i15, i16);
                n(this.f25291l, 0, bArr2, i12);
                i10 += i16;
                i11 -= i16;
            } else {
                i14 = 0;
            }
            int i17 = i11 + i10;
            int i18 = i17 - 16;
            while (i10 <= i18) {
                n(bArr, i10, bArr2, i12 + i14);
                i10 += 16;
                i14 += 16;
            }
            int i19 = i17 - i10;
            this.f25298s = i19;
            System.arraycopy(bArr, i10, this.f25291l, 0, i19);
            return i14;
        }
        byte[] bArr3 = this.f25291l;
        int length = bArr3.length;
        int i20 = this.f25298s;
        int i21 = length - i20;
        if (i11 < i21) {
            System.arraycopy(bArr, i10, bArr3, i20, i11);
            this.f25298s += i11;
            return 0;
        }
        if (i20 >= 16) {
            m(bArr3, 0, bArr2, i12);
            byte[] bArr4 = this.f25291l;
            int i22 = this.f25298s - 16;
            this.f25298s = i22;
            System.arraycopy(bArr4, 16, bArr4, 0, i22);
            if (i11 < i21 + 16) {
                System.arraycopy(bArr, i10, this.f25291l, this.f25298s, i11);
                this.f25298s += i11;
                return 16;
            }
            i13 = 16;
        } else {
            i13 = 0;
        }
        byte[] bArr5 = this.f25291l;
        int length2 = (i11 + i10) - bArr5.length;
        int i23 = this.f25298s;
        int i24 = 16 - i23;
        System.arraycopy(bArr, i10, bArr5, i23, i24);
        m(this.f25291l, 0, bArr2, i12 + i13);
        int i25 = i10 + i24;
        i14 = i13 + 16;
        while (i25 <= length2) {
            m(bArr, i25, bArr2, i12 + i14);
            i25 += 16;
            i14 += 16;
        }
        byte[] bArr6 = this.f25291l;
        int length3 = (bArr6.length + length2) - i25;
        this.f25298s = length3;
        System.arraycopy(bArr, i25, bArr6, 0, length3);
        return i14;
    }

    @Override
    public int g(int i10) {
        int i11 = i10 + this.f25298s;
        if (!this.f25283d) {
            int i12 = this.f25285f;
            if (i11 < i12) {
                return 0;
            }
            i11 -= i12;
        }
        return i11 - (i11 % 16);
    }

    @Override
    public int h(int i10) {
        int i11 = i10 + this.f25298s;
        if (this.f25283d) {
            return i11 + this.f25285f;
        }
        int i12 = this.f25285f;
        if (i11 < i12) {
            return 0;
        }
        return i11 - i12;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        l();
        byte[] bArr2 = this.f25291l;
        int i11 = this.f25298s;
        bArr2[i11] = b10;
        int i12 = i11 + 1;
        this.f25298s = i12;
        if (i12 != bArr2.length) {
            return 0;
        }
        if (this.f25283d) {
            n(bArr2, 0, bArr, i10);
            this.f25298s = 0;
        } else {
            m(bArr2, 0, bArr, i10);
            byte[] bArr3 = this.f25291l;
            System.arraycopy(bArr3, 16, bArr3, 0, this.f25285f);
            this.f25298s = this.f25285f;
        }
        return 16;
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        l();
        int i12 = this.f25301v;
        if (i12 > 0) {
            int i13 = 16 - i12;
            if (i11 < i13) {
                System.arraycopy(bArr, i10, this.f25300u, i12, i11);
                this.f25301v += i11;
                return;
            } else {
                System.arraycopy(bArr, i10, this.f25300u, i12, i13);
                p(this.f25294o, this.f25300u);
                this.f25302w += 16;
                i10 += i13;
                i11 -= i13;
            }
        }
        int i14 = i11 + i10;
        int i15 = i14 - 16;
        while (i10 <= i15) {
            q(this.f25294o, bArr, i10);
            this.f25302w += 16;
            i10 += 16;
        }
        int i16 = i14 - i10;
        this.f25301v = i16;
        System.arraycopy(bArr, i10, this.f25300u, 0, i16);
    }

    @Override
    public void k(byte b10) {
        l();
        byte[] bArr = this.f25300u;
        int i10 = this.f25301v;
        bArr[i10] = b10;
        int i11 = i10 + 1;
        this.f25301v = i11;
        if (i11 == 16) {
            p(this.f25294o, bArr);
            this.f25301v = 0;
            this.f25302w += 16;
        }
    }

    public final void l() {
        if (this.f25284e) {
            return;
        }
        if (!this.f25283d) {
            throw new IllegalStateException("GCM cipher needs to be initialised");
        }
        throw new IllegalStateException("GCM cipher cannot be reused for encryption");
    }

    public final void m(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (bArr2.length - i11 < 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.f25299t == 0) {
            t();
        }
        byte[] bArr3 = new byte[16];
        s(bArr3);
        q(this.f25293n, bArr, i10);
        Ui.e.M(bArr3, 0, bArr, i10, bArr2, i11);
        this.f25299t += 16;
    }

    public final void n(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (bArr2.length - i11 < 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.f25299t == 0) {
            t();
        }
        byte[] bArr3 = new byte[16];
        s(bArr3);
        Ui.e.O(bArr3, bArr, i10);
        p(this.f25293n, bArr3);
        System.arraycopy(bArr3, 0, bArr2, i11, 16);
        this.f25299t += 16;
    }

    public final void o(byte[] bArr, byte[] bArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11 += 16) {
            r(bArr, bArr2, i11, Math.min(i10 - i11, 16));
        }
    }

    public final void p(byte[] bArr, byte[] bArr2) {
        Ui.e.N(bArr, bArr2);
        this.f25281b.b(bArr);
    }

    public final void q(byte[] bArr, byte[] bArr2, int i10) {
        Ui.e.O(bArr, bArr2, i10);
        this.f25281b.b(bArr);
    }

    public final void r(byte[] bArr, byte[] bArr2, int i10, int i11) {
        Ui.e.P(bArr, bArr2, i10, i11);
        this.f25281b.b(bArr);
    }

    @Override
    public void reset() {
        x(true);
    }

    public final void s(byte[] bArr) {
        int i10 = this.f25297r;
        if (i10 == 0) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.f25297r = i10 - 1;
        byte[] bArr2 = this.f25296q;
        int i11 = (bArr2[15] & 255) + 1;
        bArr2[15] = (byte) i11;
        int i12 = (i11 >>> 8) + (bArr2[14] & 255);
        bArr2[14] = (byte) i12;
        int i13 = (i12 >>> 8) + (bArr2[13] & 255);
        bArr2[13] = (byte) i13;
        bArr2[12] = (byte) ((i13 >>> 8) + (bArr2[12] & 255));
        this.f25280a.g(bArr2, 0, bArr, 0);
    }

    public final void w(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        byte[] bArr3 = new byte[16];
        s(bArr3);
        if (this.f25283d) {
            Ui.e.L(bArr, i10, bArr3, 0, i11);
            r(this.f25293n, bArr, i10, i11);
        } else {
            r(this.f25293n, bArr, i10, i11);
            Ui.e.L(bArr, i10, bArr3, 0, i11);
        }
        System.arraycopy(bArr, i10, bArr2, i12, i11);
        this.f25299t += i11;
    }

    public r(InterfaceC2374f interfaceC2374f, Ui.d dVar) {
        if (interfaceC2374f.c() != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
        dVar = dVar == null ? new Ui.g() : dVar;
        this.f25280a = interfaceC2374f;
        this.f25281b = dVar;
    }
}
