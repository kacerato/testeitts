package Ti;

import Bi.C2388u;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class z extends C2388u {

    public static final long f25378t = 135;

    public static final long f25379u = 1061;

    public static final long f25380v = 293;

    public final int f25381o;

    public final long f25382p;

    public final long[] f25383q;

    public final long[] f25384r;

    public int f25385s;

    public z(InterfaceC2374f interfaceC2374f) {
        this.f1897k = interfaceC2374f;
        int c10 = interfaceC2374f.c();
        this.f25381o = c10;
        this.f25382p = k(c10);
        this.f25383q = new long[c10 >>> 3];
        this.f25384r = new long[c10 >>> 3];
        this.f25385s = -1;
    }

    public static void j(long j10, long[] jArr) {
        long j11 = 0;
        int i10 = 0;
        while (i10 < jArr.length) {
            long j12 = jArr[i10];
            jArr[i10] = j11 ^ (j12 << 1);
            i10++;
            j11 = j12 >>> 63;
        }
        jArr[0] = (j10 & (-j11)) ^ jArr[0];
    }

    public static long k(int i10) {
        if (i10 == 16) {
            return 135L;
        }
        if (i10 == 32) {
            return f25379u;
        }
        if (i10 == 64) {
            return 293L;
        }
        throw new IllegalArgumentException("Only 128, 256, and 512 -bit block sizes supported");
    }

    @Override
    public int a(byte[] bArr, int i10) {
        i();
        return 0;
    }

    @Override
    public int c(int i10) {
        return i10;
    }

    @Override
    public int e(int i10) {
        return i10;
    }

    @Override
    public void f(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof w0)) {
            throw new IllegalArgumentException("Invalid parameters passed");
        }
        w0 w0Var = (w0) interfaceC2379k;
        InterfaceC2379k b10 = w0Var.b();
        byte[] a10 = w0Var.a();
        int length = a10.length;
        int i10 = this.f25381o;
        if (length != i10) {
            throw new IllegalArgumentException("Currently only support IVs of exactly one block");
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(a10, 0, bArr, 0, i10);
        this.f1897k.a(true, b10);
        this.f1897k.g(bArr, 0, bArr, 0);
        this.f1897k.a(z10, b10);
        org.bouncycastle.util.p.y(bArr, 0, this.f25383q);
        long[] jArr = this.f25383q;
        System.arraycopy(jArr, 0, this.f25384r, 0, jArr.length);
        this.f25385s = 0;
    }

    @Override
    public int g(byte b10, byte[] bArr, int i10) {
        throw new IllegalStateException("unsupported operation");
    }

    @Override
    public int h(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (bArr.length - i10 < i11) {
            throw new DataLengthException("Input buffer too short");
        }
        if (bArr2.length - i10 < i11) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (i11 % this.f25381o != 0) {
            throw new IllegalArgumentException("Partial blocks not supported");
        }
        int i13 = 0;
        while (i13 < i11) {
            l(bArr, i10 + i13, bArr2, i12 + i13);
            i13 += this.f25381o;
        }
        return i11;
    }

    @Override
    public void i() {
        this.f1897k.reset();
        long[] jArr = this.f25383q;
        System.arraycopy(jArr, 0, this.f25384r, 0, jArr.length);
        this.f25385s = 0;
    }

    public final void l(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = this.f25385s;
        if (i12 == -1) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.f25385s = i12 + 1;
        j(this.f25382p, this.f25384r);
        byte[] bArr3 = new byte[this.f25381o];
        org.bouncycastle.util.p.L(this.f25384r, bArr3, 0);
        int i13 = this.f25381o;
        byte[] bArr4 = new byte[i13];
        System.arraycopy(bArr3, 0, bArr4, 0, i13);
        for (int i14 = 0; i14 < this.f25381o; i14++) {
            bArr4[i14] = (byte) (bArr4[i14] ^ bArr[i10 + i14]);
        }
        this.f1897k.g(bArr4, 0, bArr4, 0);
        for (int i15 = 0; i15 < this.f25381o; i15++) {
            bArr2[i11 + i15] = (byte) (bArr4[i15] ^ bArr3[i15]);
        }
    }
}
