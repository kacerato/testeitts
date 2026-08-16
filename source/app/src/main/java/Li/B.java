package Li;

import Bi.C2376h;
import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2390w;
import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import Bi.InterfaceC2393z;
import Xi.C3335c;
import Xi.C3346h0;
import Xi.C3348i0;
import Xi.C3350j0;
import Xi.C3358n0;
import Xi.C3360o0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class B {

    public InterfaceC2373e f13497a;

    public InterfaceC2390w f13498b;

    public Bi.I f13499c;

    public C2376h f13500d;

    public byte[] f13501e;

    public byte[] f13502f;

    public boolean f13503g;

    public InterfaceC2379k f13504h;

    public InterfaceC2379k f13505i;

    public C3346h0 f13506j;

    public byte[] f13507k;

    public Oi.u f13508l;

    public Bi.H f13509m;

    public byte[] f13510n;

    public static class a implements InterfaceC2393z {

        public int f13511a;

        public InterfaceC2392y f13512b;

        public byte[] f13513c;

        public byte[] f13514d;

        public a(int i10, InterfaceC2392y interfaceC2392y) {
            this.f13511a = i10;
            this.f13512b = interfaceC2392y;
        }

        @Override
        public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
            int i12 = i11;
            int i13 = i10;
            if (bArr.length - i12 < i13) {
                throw new OutputLengthException("output buffer too small");
            }
            long j10 = i12;
            int f10 = this.f13512b.f();
            if (j10 > 8589934591L) {
                throw new IllegalArgumentException("output length too large");
            }
            long j11 = f10;
            int i14 = (int) (((j10 + j11) - 1) / j11);
            byte[] bArr2 = new byte[this.f13512b.f()];
            int i15 = 4;
            byte[] bArr3 = new byte[4];
            org.bouncycastle.util.p.h(this.f13511a, bArr3, 0);
            int i16 = this.f13511a & (-256);
            int i17 = 0;
            while (i17 < i14) {
                this.f13512b.update(bArr3, 0, i15);
                InterfaceC2392y interfaceC2392y = this.f13512b;
                byte[] bArr4 = this.f13513c;
                interfaceC2392y.update(bArr4, 0, bArr4.length);
                byte[] bArr5 = this.f13514d;
                if (bArr5 != null) {
                    this.f13512b.update(bArr5, 0, bArr5.length);
                }
                this.f13512b.c(bArr2, 0);
                if (i12 > f10) {
                    System.arraycopy(bArr2, 0, bArr, i13, f10);
                    i13 += f10;
                    i12 -= f10;
                } else {
                    System.arraycopy(bArr2, 0, bArr, i13, i12);
                }
                byte b10 = (byte) (bArr3[3] + 1);
                bArr3[3] = b10;
                if (b10 == 0) {
                    i16 += 256;
                    org.bouncycastle.util.p.h(i16, bArr3, 0);
                }
                i17++;
                i15 = 4;
            }
            this.f13512b.reset();
            return (int) j10;
        }

        @Override
        public InterfaceC2392y b() {
            return this.f13512b;
        }

        @Override
        public void c(InterfaceC2391x interfaceC2391x) {
            if (interfaceC2391x instanceof C3358n0) {
                C3358n0 c3358n0 = (C3358n0) interfaceC2391x;
                this.f13513c = c3358n0.b();
                this.f13514d = c3358n0.a();
            } else {
                if (!(interfaceC2391x instanceof C3350j0)) {
                    throw new IllegalArgumentException("KDF parameters required for generator");
                }
                this.f13513c = ((C3350j0) interfaceC2391x).a();
                this.f13514d = null;
            }
        }
    }

    public B(InterfaceC2373e interfaceC2373e, InterfaceC2390w interfaceC2390w, Bi.I i10, byte[] bArr) {
        this.f13497a = interfaceC2373e;
        this.f13498b = interfaceC2390w;
        this.f13499c = i10;
        this.f13501e = new byte[i10.d()];
        this.f13502f = bArr;
        this.f13500d = null;
    }

    public final byte[] a(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        byte[] bArr2;
        byte[] bArr3;
        int h10;
        if (i11 < this.f13507k.length + this.f13499c.d()) {
            throw new InvalidCipherTextException("length of input must be greater than the MAC and V combined");
        }
        if (this.f13500d == null) {
            int length = (i11 - this.f13507k.length) - this.f13499c.d();
            byte[] bArr4 = new byte[length];
            int c10 = this.f13506j.c() / 8;
            bArr2 = new byte[c10];
            int i12 = length + c10;
            byte[] bArr5 = new byte[i12];
            this.f13498b.a(bArr5, 0, i12);
            if (this.f13507k.length != 0) {
                System.arraycopy(bArr5, 0, bArr2, 0, c10);
                System.arraycopy(bArr5, c10, bArr4, 0, length);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, length);
                System.arraycopy(bArr5, length, bArr2, 0, c10);
            }
            bArr3 = new byte[length];
            for (int i13 = 0; i13 != length; i13++) {
                bArr3[i13] = (byte) (bArr[(this.f13507k.length + i10) + i13] ^ bArr4[i13]);
            }
            h10 = 0;
        } else {
            int d10 = ((C3348i0) this.f13506j).d() / 8;
            byte[] bArr6 = new byte[d10];
            int c11 = this.f13506j.c() / 8;
            bArr2 = new byte[c11];
            int i14 = d10 + c11;
            byte[] bArr7 = new byte[i14];
            this.f13498b.a(bArr7, 0, i14);
            System.arraycopy(bArr7, 0, bArr6, 0, d10);
            System.arraycopy(bArr7, d10, bArr2, 0, c11);
            InterfaceC2379k c3360o0 = new C3360o0(bArr6);
            byte[] bArr8 = this.f13510n;
            if (bArr8 != null) {
                c3360o0 = new Xi.w0(c3360o0, bArr8);
            }
            this.f13500d.f(false, c3360o0);
            bArr3 = new byte[this.f13500d.c((i11 - this.f13507k.length) - this.f13499c.d())];
            C2376h c2376h = this.f13500d;
            byte[] bArr9 = this.f13507k;
            h10 = c2376h.h(bArr, i10 + bArr9.length, (i11 - bArr9.length) - this.f13499c.d(), bArr3, 0);
        }
        byte[] b10 = this.f13506j.b();
        byte[] e10 = this.f13507k.length != 0 ? e(b10) : null;
        int i15 = i10 + i11;
        byte[] X10 = org.bouncycastle.util.a.X(bArr, i15 - this.f13499c.d(), i15);
        int length2 = X10.length;
        byte[] bArr10 = new byte[length2];
        Bi.O x10 = Ii.L.x();
        byte[] bArr11 = new byte[x10.f()];
        x10.reset();
        x10.update(bArr2, 0, bArr2.length);
        x10.c(bArr11, 0);
        this.f13499c.a(new C3360o0(bArr11));
        Bi.I i16 = this.f13499c;
        byte[] bArr12 = this.f13510n;
        i16.update(bArr12, 0, bArr12.length);
        Bi.I i17 = this.f13499c;
        byte[] bArr13 = this.f13507k;
        i17.update(bArr, i10 + bArr13.length, (i11 - bArr13.length) - length2);
        if (b10 != null) {
            this.f13499c.update(b10, 0, b10.length);
        }
        if (this.f13507k.length != 0) {
            this.f13499c.update(e10, 0, e10.length);
        }
        Bi.I i18 = this.f13499c;
        byte[] bArr14 = this.f13502f;
        i18.update(bArr14, 0, bArr14.length);
        this.f13499c.c(bArr10, 0);
        if (!org.bouncycastle.util.a.I(X10, bArr10)) {
            throw new InvalidCipherTextException("invalid MAC");
        }
        C2376h c2376h2 = this.f13500d;
        return c2376h2 == null ? bArr3 : org.bouncycastle.util.a.X(bArr3, 0, h10 + c2376h2.a(bArr3, h10));
    }

    public final byte[] b(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        C2376h c2376h;
        InterfaceC2379k c3360o0;
        byte[] bArr2;
        byte[] bArr3;
        if (this.f13500d == null) {
            byte[] bArr4 = new byte[i11];
            int c10 = this.f13506j.c() / 8;
            bArr3 = new byte[c10];
            int i12 = i11 + c10;
            byte[] bArr5 = new byte[i12];
            this.f13498b.a(bArr5, 0, i12);
            if (this.f13507k.length != 0) {
                System.arraycopy(bArr5, 0, bArr3, 0, c10);
                System.arraycopy(bArr5, c10, bArr4, 0, i11);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, i11);
                System.arraycopy(bArr5, i11, bArr3, 0, c10);
            }
            bArr2 = new byte[i11];
            for (int i13 = 0; i13 != i11; i13++) {
                bArr2[i13] = (byte) (bArr[i10 + i13] ^ bArr4[i13]);
            }
        } else {
            int d10 = ((C3348i0) this.f13506j).d() / 8;
            byte[] bArr6 = new byte[d10];
            int c11 = this.f13506j.c() / 8;
            byte[] bArr7 = new byte[c11];
            int i14 = d10 + c11;
            byte[] bArr8 = new byte[i14];
            this.f13498b.a(bArr8, 0, i14);
            System.arraycopy(bArr8, 0, bArr6, 0, d10);
            System.arraycopy(bArr8, d10, bArr7, 0, c11);
            if (this.f13510n != null) {
                c2376h = this.f13500d;
                c3360o0 = new Xi.w0(new C3360o0(bArr6), this.f13510n);
            } else {
                c2376h = this.f13500d;
                c3360o0 = new C3360o0(bArr6);
            }
            c2376h.f(true, c3360o0);
            bArr2 = new byte[this.f13500d.c(i11)];
            int h10 = this.f13500d.h(bArr, i10, i11, bArr2, 0);
            i11 = h10 + this.f13500d.a(bArr2, h10);
            bArr3 = bArr7;
        }
        byte[] b10 = this.f13506j.b();
        byte[] e10 = this.f13507k.length != 0 ? e(b10) : null;
        int d11 = this.f13499c.d();
        byte[] bArr9 = new byte[d11];
        Bi.O x10 = Ii.L.x();
        byte[] bArr10 = new byte[x10.f()];
        x10.reset();
        x10.update(bArr3, 0, bArr3.length);
        x10.c(bArr10, 0);
        this.f13499c.a(new C3360o0(bArr10));
        Bi.I i15 = this.f13499c;
        byte[] bArr11 = this.f13510n;
        i15.update(bArr11, 0, bArr11.length);
        this.f13499c.update(bArr2, 0, bArr2.length);
        if (b10 != null) {
            this.f13499c.update(b10, 0, b10.length);
        }
        if (this.f13507k.length != 0) {
            this.f13499c.update(e10, 0, e10.length);
        }
        Bi.I i16 = this.f13499c;
        byte[] bArr12 = this.f13502f;
        i16.update(bArr12, 0, bArr12.length);
        this.f13499c.c(bArr9, 0);
        byte[] bArr13 = this.f13507k;
        byte[] bArr14 = new byte[bArr13.length + i11 + d11];
        System.arraycopy(bArr13, 0, bArr14, 0, bArr13.length);
        System.arraycopy(bArr2, 0, bArr14, this.f13507k.length, i11);
        System.arraycopy(bArr9, 0, bArr14, this.f13507k.length + i11, d11);
        return bArr14;
    }

    public final void c(InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof Xi.w0) {
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            this.f13510n = w0Var.a();
            interfaceC2379k = w0Var.b();
        } else {
            this.f13510n = null;
        }
        this.f13506j = (C3346h0) interfaceC2379k;
    }

    public C2376h d() {
        return this.f13500d;
    }

    public byte[] e(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        if (bArr != null) {
            org.bouncycastle.util.p.D(bArr.length * 8, bArr2, 0);
        }
        return bArr2;
    }

    public Bi.I f() {
        return this.f13499c;
    }

    public void g(C3335c c3335c, InterfaceC2379k interfaceC2379k, Bi.H h10) {
        this.f13503g = false;
        this.f13504h = c3335c;
        this.f13509m = h10;
        c(interfaceC2379k);
    }

    public void h(C3335c c3335c, InterfaceC2379k interfaceC2379k, Oi.u uVar) {
        this.f13503g = true;
        this.f13505i = c3335c;
        this.f13508l = uVar;
        c(interfaceC2379k);
    }

    public void i(boolean z10, InterfaceC2379k interfaceC2379k, InterfaceC2379k interfaceC2379k2, InterfaceC2379k interfaceC2379k3) {
        this.f13503g = z10;
        this.f13504h = interfaceC2379k;
        this.f13505i = interfaceC2379k2;
        this.f13507k = new byte[0];
        c(interfaceC2379k3);
    }

    public byte[] j(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.f13503g) {
            Oi.u uVar = this.f13508l;
            if (uVar != null) {
                Bi.C a10 = uVar.a();
                this.f13504h = a10.b().a();
                this.f13507k = a10.a();
            }
        } else if (this.f13509m != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i10, i11);
            try {
                this.f13505i = this.f13509m.a(byteArrayInputStream);
                this.f13507k = org.bouncycastle.util.a.X(bArr, i10, (i11 - byteArrayInputStream.available()) + i10);
            } catch (IOException e10) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e10.getMessage(), e10);
            } catch (IllegalArgumentException e11) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e11.getMessage(), e11);
            }
        }
        this.f13497a.a(this.f13504h);
        byte[] b10 = org.bouncycastle.util.b.b(this.f13497a.c(), this.f13497a.b(this.f13505i));
        byte[] bArr2 = this.f13507k;
        if (bArr2.length != 0) {
            byte[] B10 = org.bouncycastle.util.a.B(bArr2, b10);
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            b10 = B10;
        }
        try {
            this.f13498b.c(new C3358n0(b10, this.f13506j.a()));
            byte[] b11 = this.f13503g ? b(bArr, i10, i11) : a(bArr, i10, i11);
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            return b11;
        } catch (Throwable th2) {
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            throw th2;
        }
    }

    public B(InterfaceC2373e interfaceC2373e, InterfaceC2390w interfaceC2390w, Bi.I i10, byte[] bArr, C2376h c2376h) {
        this.f13497a = interfaceC2373e;
        this.f13498b = interfaceC2390w;
        this.f13499c = i10;
        this.f13501e = new byte[i10.d()];
        this.f13502f = bArr;
        this.f13500d = c2376h;
    }
}
