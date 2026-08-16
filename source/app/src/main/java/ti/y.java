package Ti;

import Bi.C2376h;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.w0;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class y implements InterfaceC3090a {

    public static final int f25365m = 64;

    public InterfaceC2374f f25366a;

    public C2376h f25367b;

    public boolean f25369d;

    public byte[] f25370e;

    public byte[] f25371f;

    public byte[] f25372g;

    public Vi.d f25373h;

    public long[] f25374i;

    public final int f25375j;

    public a f25376k = new a();

    public a f25377l = new a();

    public int f25368c = -1;

    public static class a extends ByteArrayOutputStream {
        public byte[] c() {
            return this.buf;
        }
    }

    public y(InterfaceC2374f interfaceC2374f) {
        this.f25366a = interfaceC2374f;
        this.f25367b = new C2376h(new x(interfaceC2374f));
        int c10 = this.f25366a.c();
        this.f25375j = c10;
        this.f25370e = new byte[c10];
        this.f25372g = new byte[c10];
        this.f25373h = m(c10);
        this.f25374i = new long[c10 >>> 3];
        this.f25371f = null;
    }

    public static Vi.d m(int i10) {
        if (i10 == 16) {
            return new Vi.i();
        }
        if (i10 == 32) {
            return new Vi.j();
        }
        if (i10 == 64) {
            return new Vi.h();
        }
        throw new IllegalArgumentException("Only 128, 256, and 512 -bit block sizes supported");
    }

    public static void o(long[] jArr, byte[] bArr, int i10) {
        for (int i11 = 0; i11 < jArr.length; i11++) {
            jArr[i11] = jArr[i11] ^ org.bouncycastle.util.p.x(bArr, i10);
            i10 += 8;
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        C3360o0 c3360o0;
        this.f25369d = z10;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            byte[] d10 = c3331a.d();
            byte[] bArr = this.f25372g;
            int length = bArr.length - d10.length;
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
            System.arraycopy(d10, 0, this.f25372g, length, d10.length);
            this.f25370e = c3331a.a();
            int c10 = c3331a.c();
            if (c10 < 64 || c10 > (this.f25375j << 3) || (c10 & 7) != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + c10);
            }
            this.f25368c = c10 >>> 3;
            c3360o0 = c3331a.b();
            byte[] bArr2 = this.f25370e;
            if (bArr2 != null) {
                j(bArr2, 0, bArr2.length);
            }
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("Invalid parameter passed");
            }
            w0 w0Var = (w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            byte[] bArr3 = this.f25372g;
            int length2 = bArr3.length - a10.length;
            org.bouncycastle.util.a.e0(bArr3, (byte) 0);
            System.arraycopy(a10, 0, this.f25372g, length2, a10.length);
            this.f25370e = null;
            this.f25368c = this.f25375j;
            c3360o0 = (C3360o0) w0Var.b();
        }
        this.f25371f = new byte[this.f25375j];
        this.f25367b.f(true, new w0(c3360o0, this.f25372g));
        this.f25366a.a(true, c3360o0);
    }

    @Override
    public String b() {
        return this.f25366a.b() + "/KGCM";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        int a10;
        int size = this.f25377l.size();
        if (!this.f25369d && size < this.f25368c) {
            throw new InvalidCipherTextException("data too short");
        }
        byte[] bArr2 = new byte[this.f25375j];
        this.f25366a.g(bArr2, 0, bArr2, 0);
        long[] jArr = new long[this.f25375j >>> 3];
        org.bouncycastle.util.p.y(bArr2, 0, jArr);
        this.f25373h.a(jArr);
        org.bouncycastle.util.a.e0(bArr2, (byte) 0);
        org.bouncycastle.util.a.l0(jArr, 0L);
        int size2 = this.f25376k.size();
        if (size2 > 0) {
            n(this.f25376k.c(), 0, size2);
        }
        if (!this.f25369d) {
            int i11 = size - this.f25368c;
            if (bArr.length - i10 < i11) {
                throw new OutputLengthException("Output buffer too short");
            }
            l(this.f25377l.c(), 0, i11, size2);
            int h10 = this.f25367b.h(this.f25377l.c(), 0, i11, bArr, i10);
            a10 = h10 + this.f25367b.a(bArr, i10 + h10);
        } else {
            if ((bArr.length - i10) - this.f25368c < size) {
                throw new OutputLengthException("Output buffer too short");
            }
            int h11 = this.f25367b.h(this.f25377l.c(), 0, size, bArr, i10);
            a10 = h11 + this.f25367b.a(bArr, i10 + h11);
            l(bArr, i10, size, size2);
        }
        byte[] bArr3 = this.f25371f;
        if (bArr3 == null) {
            throw new IllegalStateException("mac is not calculated");
        }
        if (this.f25369d) {
            System.arraycopy(bArr3, 0, bArr, i10 + a10, this.f25368c);
            reset();
            return a10 + this.f25368c;
        }
        byte[] bArr4 = new byte[this.f25368c];
        byte[] c10 = this.f25377l.c();
        int i12 = this.f25368c;
        System.arraycopy(c10, size - i12, bArr4, 0, i12);
        int i13 = this.f25368c;
        byte[] bArr5 = new byte[i13];
        System.arraycopy(this.f25371f, 0, bArr5, 0, i13);
        if (!org.bouncycastle.util.a.I(bArr4, bArr5)) {
            throw new InvalidCipherTextException("mac verification failed");
        }
        reset();
        return a10;
    }

    @Override
    public InterfaceC2374f d() {
        return this.f25366a;
    }

    @Override
    public byte[] e() {
        int i10 = this.f25368c;
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f25371f, 0, bArr, 0, i10);
        return bArr;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException, IllegalStateException {
        if (bArr.length < i10 + i11) {
            throw new DataLengthException("input buffer too short");
        }
        this.f25377l.write(bArr, i10, i11);
        return 0;
    }

    @Override
    public int g(int i10) {
        return 0;
    }

    @Override
    public int h(int i10) {
        int size = i10 + this.f25377l.size();
        if (this.f25369d) {
            return size + this.f25368c;
        }
        int i11 = this.f25368c;
        if (size < i11) {
            return 0;
        }
        return size - i11;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        this.f25377l.write(b10);
        return 0;
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        this.f25376k.write(bArr, i10, i11);
    }

    @Override
    public void k(byte b10) {
        this.f25376k.write(b10);
    }

    public final void l(byte[] bArr, int i10, int i11, int i12) {
        int i13 = i10 + i11;
        while (i10 < i13) {
            o(this.f25374i, bArr, i10);
            this.f25373h.b(this.f25374i);
            i10 += this.f25375j;
        }
        long[] jArr = this.f25374i;
        jArr[0] = ((i12 & 4294967295L) << 3) ^ jArr[0];
        int i14 = this.f25375j >>> 4;
        jArr[i14] = jArr[i14] ^ ((4294967295L & i11) << 3);
        byte[] N10 = org.bouncycastle.util.p.N(jArr);
        this.f25371f = N10;
        this.f25366a.g(N10, 0, N10, 0);
    }

    public final void n(byte[] bArr, int i10, int i11) {
        int i12 = i11 + i10;
        while (i10 < i12) {
            o(this.f25374i, bArr, i10);
            this.f25373h.b(this.f25374i);
            i10 += this.f25375j;
        }
    }

    @Override
    public void reset() {
        org.bouncycastle.util.a.l0(this.f25374i, 0L);
        this.f25366a.reset();
        this.f25377l.reset();
        this.f25376k.reset();
        byte[] bArr = this.f25370e;
        if (bArr != null) {
            j(bArr, 0, bArr.length);
        }
    }
}
