package Li;

import Bi.C2376h;
import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2390w;
import Xi.C3335c;
import Xi.C3346h0;
import Xi.C3348i0;
import Xi.C3358n0;
import Xi.C3360o0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class L {

    public InterfaceC2373e f13637a;

    public InterfaceC2390w f13638b;

    public Bi.I f13639c;

    public C2376h f13640d;

    public byte[] f13641e;

    public boolean f13642f;

    public InterfaceC2379k f13643g;

    public InterfaceC2379k f13644h;

    public C3346h0 f13645i;

    public byte[] f13646j;

    public Oi.u f13647k;

    public Bi.H f13648l;

    public byte[] f13649m;

    public L(InterfaceC2373e interfaceC2373e, InterfaceC2390w interfaceC2390w, Bi.I i10) {
        this.f13637a = interfaceC2373e;
        this.f13638b = interfaceC2390w;
        this.f13639c = i10;
        this.f13641e = new byte[i10.d()];
        this.f13640d = null;
    }

    public final byte[] a(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        byte[] bArr2;
        byte[] bArr3;
        int h10;
        if (i11 < this.f13646j.length + this.f13639c.d()) {
            throw new InvalidCipherTextException("Length of input must be greater than the MAC and V combined");
        }
        if (this.f13640d == null) {
            int length = (i11 - this.f13646j.length) - this.f13639c.d();
            byte[] bArr4 = new byte[length];
            int c10 = this.f13645i.c() / 8;
            bArr2 = new byte[c10];
            int i12 = length + c10;
            byte[] bArr5 = new byte[i12];
            this.f13638b.a(bArr5, 0, i12);
            if (this.f13646j.length != 0) {
                System.arraycopy(bArr5, 0, bArr2, 0, c10);
                System.arraycopy(bArr5, c10, bArr4, 0, length);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, length);
                System.arraycopy(bArr5, length, bArr2, 0, c10);
            }
            bArr3 = new byte[length];
            for (int i13 = 0; i13 != length; i13++) {
                bArr3[i13] = (byte) (bArr[(this.f13646j.length + i10) + i13] ^ bArr4[i13]);
            }
            h10 = 0;
        } else {
            int d10 = ((C3348i0) this.f13645i).d() / 8;
            byte[] bArr6 = new byte[d10];
            int c11 = this.f13645i.c() / 8;
            bArr2 = new byte[c11];
            int i14 = d10 + c11;
            byte[] bArr7 = new byte[i14];
            this.f13638b.a(bArr7, 0, i14);
            System.arraycopy(bArr7, 0, bArr6, 0, d10);
            System.arraycopy(bArr7, d10, bArr2, 0, c11);
            InterfaceC2379k c3360o0 = new C3360o0(bArr6);
            byte[] bArr8 = this.f13649m;
            if (bArr8 != null) {
                c3360o0 = new Xi.w0(c3360o0, bArr8);
            }
            this.f13640d.f(false, c3360o0);
            bArr3 = new byte[this.f13640d.c((i11 - this.f13646j.length) - this.f13639c.d())];
            C2376h c2376h = this.f13640d;
            byte[] bArr9 = this.f13646j;
            h10 = c2376h.h(bArr, i10 + bArr9.length, (i11 - bArr9.length) - this.f13639c.d(), bArr3, 0);
        }
        byte[] b10 = this.f13645i.b();
        byte[] e10 = this.f13646j.length != 0 ? e(b10) : null;
        int i15 = i10 + i11;
        byte[] X10 = org.bouncycastle.util.a.X(bArr, i15 - this.f13639c.d(), i15);
        int length2 = X10.length;
        byte[] bArr10 = new byte[length2];
        this.f13639c.a(new C3360o0(bArr2));
        Bi.I i16 = this.f13639c;
        byte[] bArr11 = this.f13646j;
        i16.update(bArr, i10 + bArr11.length, (i11 - bArr11.length) - length2);
        if (b10 != null) {
            this.f13639c.update(b10, 0, b10.length);
        }
        if (this.f13646j.length != 0) {
            this.f13639c.update(e10, 0, e10.length);
        }
        this.f13639c.c(bArr10, 0);
        if (!org.bouncycastle.util.a.I(X10, bArr10)) {
            throw new InvalidCipherTextException("invalid MAC");
        }
        C2376h c2376h2 = this.f13640d;
        return c2376h2 == null ? bArr3 : org.bouncycastle.util.a.X(bArr3, 0, h10 + c2376h2.a(bArr3, h10));
    }

    public final byte[] b(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        C2376h c2376h;
        InterfaceC2379k c3360o0;
        byte[] bArr2;
        byte[] bArr3;
        if (this.f13640d == null) {
            byte[] bArr4 = new byte[i11];
            int c10 = this.f13645i.c() / 8;
            bArr3 = new byte[c10];
            int i12 = i11 + c10;
            byte[] bArr5 = new byte[i12];
            this.f13638b.a(bArr5, 0, i12);
            if (this.f13646j.length != 0) {
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
            int d10 = ((C3348i0) this.f13645i).d() / 8;
            byte[] bArr6 = new byte[d10];
            int c11 = this.f13645i.c() / 8;
            byte[] bArr7 = new byte[c11];
            int i14 = d10 + c11;
            byte[] bArr8 = new byte[i14];
            this.f13638b.a(bArr8, 0, i14);
            System.arraycopy(bArr8, 0, bArr6, 0, d10);
            System.arraycopy(bArr8, d10, bArr7, 0, c11);
            if (this.f13649m != null) {
                c2376h = this.f13640d;
                c3360o0 = new Xi.w0(new C3360o0(bArr6), this.f13649m);
            } else {
                c2376h = this.f13640d;
                c3360o0 = new C3360o0(bArr6);
            }
            c2376h.f(true, c3360o0);
            bArr2 = new byte[this.f13640d.c(i11)];
            int h10 = this.f13640d.h(bArr, i10, i11, bArr2, 0);
            i11 = h10 + this.f13640d.a(bArr2, h10);
            bArr3 = bArr7;
        }
        byte[] b10 = this.f13645i.b();
        byte[] e10 = this.f13646j.length != 0 ? e(b10) : null;
        int d11 = this.f13639c.d();
        byte[] bArr9 = new byte[d11];
        this.f13639c.a(new C3360o0(bArr3));
        this.f13639c.update(bArr2, 0, bArr2.length);
        if (b10 != null) {
            this.f13639c.update(b10, 0, b10.length);
        }
        if (this.f13646j.length != 0) {
            this.f13639c.update(e10, 0, e10.length);
        }
        this.f13639c.c(bArr9, 0);
        byte[] bArr10 = this.f13646j;
        byte[] bArr11 = new byte[bArr10.length + i11 + d11];
        System.arraycopy(bArr10, 0, bArr11, 0, bArr10.length);
        System.arraycopy(bArr2, 0, bArr11, this.f13646j.length, i11);
        System.arraycopy(bArr9, 0, bArr11, this.f13646j.length + i11, d11);
        return bArr11;
    }

    public final void c(InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof Xi.w0) {
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            this.f13649m = w0Var.a();
            interfaceC2379k = w0Var.b();
        } else {
            this.f13649m = null;
        }
        this.f13645i = (C3346h0) interfaceC2379k;
    }

    public C2376h d() {
        return this.f13640d;
    }

    public byte[] e(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        if (bArr != null) {
            org.bouncycastle.util.p.D(bArr.length * 8, bArr2, 0);
        }
        return bArr2;
    }

    public Bi.I f() {
        return this.f13639c;
    }

    public void g(C3335c c3335c, InterfaceC2379k interfaceC2379k, Bi.H h10) {
        this.f13642f = false;
        this.f13643g = c3335c;
        this.f13648l = h10;
        c(interfaceC2379k);
    }

    public void h(C3335c c3335c, InterfaceC2379k interfaceC2379k, Oi.u uVar) {
        this.f13642f = true;
        this.f13644h = c3335c;
        this.f13647k = uVar;
        c(interfaceC2379k);
    }

    public void i(boolean z10, InterfaceC2379k interfaceC2379k, InterfaceC2379k interfaceC2379k2, InterfaceC2379k interfaceC2379k3) {
        this.f13642f = z10;
        this.f13643g = interfaceC2379k;
        this.f13644h = interfaceC2379k2;
        this.f13646j = new byte[0];
        c(interfaceC2379k3);
    }

    public byte[] j(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.f13642f) {
            Oi.u uVar = this.f13647k;
            if (uVar != null) {
                Bi.C a10 = uVar.a();
                this.f13643g = a10.b().a();
                this.f13646j = a10.a();
            }
        } else if (this.f13648l != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i10, i11);
            try {
                this.f13644h = this.f13648l.a(byteArrayInputStream);
                this.f13646j = org.bouncycastle.util.a.X(bArr, i10, (i11 - byteArrayInputStream.available()) + i10);
            } catch (IOException e10) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e10.getMessage(), e10);
            } catch (IllegalArgumentException e11) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e11.getMessage(), e11);
            }
        }
        this.f13637a.a(this.f13643g);
        byte[] b10 = org.bouncycastle.util.b.b(this.f13637a.c(), this.f13637a.b(this.f13644h));
        byte[] bArr2 = this.f13646j;
        if (bArr2.length != 0) {
            byte[] B10 = org.bouncycastle.util.a.B(bArr2, b10);
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            b10 = B10;
        }
        try {
            this.f13638b.c(new C3358n0(b10, this.f13645i.a()));
            byte[] b11 = this.f13642f ? b(bArr, i10, i11) : a(bArr, i10, i11);
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            return b11;
        } catch (Throwable th2) {
            org.bouncycastle.util.a.e0(b10, (byte) 0);
            throw th2;
        }
    }

    public L(InterfaceC2373e interfaceC2373e, InterfaceC2390w interfaceC2390w, Bi.I i10, C2376h c2376h) {
        this.f13637a = interfaceC2373e;
        this.f13638b = interfaceC2390w;
        this.f13639c = i10;
        this.f13641e = new byte[i10.d()];
        this.f13640d = c2376h;
    }
}
