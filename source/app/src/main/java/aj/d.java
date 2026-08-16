package aj;

import Bi.I;
import Xi.C3360o0;

public class d implements f {

    public static final long f32286g = 140737488355328L;

    public static final int f32287h = 262144;

    public byte[] f32288a;

    public byte[] f32289b;

    public long f32290c;

    public Zi.d f32291d;

    public I f32292e;

    public int f32293f;

    public d(I i10, int i11, Zi.d dVar, byte[] bArr, byte[] bArr2) {
        if (i11 > g.b(i10)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (dVar.d() < i11) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        this.f32293f = i11;
        this.f32291d = dVar;
        this.f32292e = i10;
        byte[] C10 = org.bouncycastle.util.a.C(d(), bArr2, bArr);
        byte[] bArr3 = new byte[i10.d()];
        this.f32288a = bArr3;
        byte[] bArr4 = new byte[bArr3.length];
        this.f32289b = bArr4;
        org.bouncycastle.util.a.e0(bArr4, (byte) 1);
        e(C10);
        this.f32290c = 1L;
    }

    private byte[] d() {
        byte[] b10 = this.f32291d.b();
        if (b10.length >= (this.f32293f + 7) / 8) {
            return b10;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    @Override
    public int a(byte[] bArr, byte[] bArr2, boolean z10) {
        int length = bArr.length * 8;
        if (length > 262144) {
            throw new IllegalArgumentException("Number of bits per request limited to 262144");
        }
        if (this.f32290c > 140737488355328L) {
            return -1;
        }
        if (z10) {
            b(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            e(bArr2);
        }
        int length2 = bArr.length;
        byte[] bArr3 = new byte[length2];
        int length3 = bArr.length / this.f32289b.length;
        this.f32292e.a(new C3360o0(this.f32288a));
        for (int i10 = 0; i10 < length3; i10++) {
            I i11 = this.f32292e;
            byte[] bArr4 = this.f32289b;
            i11.update(bArr4, 0, bArr4.length);
            this.f32292e.c(this.f32289b, 0);
            byte[] bArr5 = this.f32289b;
            System.arraycopy(bArr5, 0, bArr3, bArr5.length * i10, bArr5.length);
        }
        byte[] bArr6 = this.f32289b;
        if (bArr6.length * length3 < length2) {
            this.f32292e.update(bArr6, 0, bArr6.length);
            this.f32292e.c(this.f32289b, 0);
            byte[] bArr7 = this.f32289b;
            System.arraycopy(bArr7, 0, bArr3, bArr7.length * length3, length2 - (length3 * bArr7.length));
        }
        e(bArr2);
        this.f32290c++;
        System.arraycopy(bArr3, 0, bArr, 0, bArr.length);
        return length;
    }

    @Override
    public void b(byte[] bArr) {
        e(org.bouncycastle.util.a.B(d(), bArr));
        this.f32290c = 1L;
    }

    @Override
    public int c() {
        return this.f32289b.length * 8;
    }

    public final void e(byte[] bArr) {
        f(bArr, (byte) 0);
        if (bArr != null) {
            f(bArr, (byte) 1);
        }
    }

    public final void f(byte[] bArr, byte b10) {
        this.f32292e.a(new C3360o0(this.f32288a));
        I i10 = this.f32292e;
        byte[] bArr2 = this.f32289b;
        i10.update(bArr2, 0, bArr2.length);
        this.f32292e.update(b10);
        if (bArr != null) {
            this.f32292e.update(bArr, 0, bArr.length);
        }
        this.f32292e.c(this.f32288a, 0);
        this.f32292e.a(new C3360o0(this.f32288a));
        I i11 = this.f32292e;
        byte[] bArr3 = this.f32289b;
        i11.update(bArr3, 0, bArr3.length);
        this.f32292e.c(this.f32289b, 0);
    }
}
