package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Li.C2769a;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.w0;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class t implements InterfaceC3090a {

    public static final int f25304n = 16;

    public static final int f25305o = 8;

    public static final int f25306p = 12;

    public static final int f25307q = 2147483623;

    public static final byte f25308r = Byte.MIN_VALUE;

    public static final byte f25309s = -31;

    public static final int f25310t = 1;

    public static final int f25311u = 2;

    public final InterfaceC2374f f25312a;

    public final Ui.d f25313b;

    public final byte[] f25314c;

    public final byte[] f25315d;

    public final c f25316e;

    public final c f25317f;

    public b f25318g;

    public b f25319h;

    public boolean f25320i;

    public byte[] f25321j;

    public byte[] f25322k;

    public int f25323l;

    public byte[] f25324m;

    public static class b extends ByteArrayOutputStream {
        public void c() {
            org.bouncycastle.util.a.e0(d(), (byte) 0);
        }

        public byte[] d() {
            return this.buf;
        }
    }

    public class c {

        public final byte[] f25325a;

        public final byte[] f25326b;

        public int f25327c;

        public long f25328d;

        public c() {
            this.f25325a = new byte[16];
            this.f25326b = new byte[1];
        }

        public void a() {
            if (this.f25327c > 0) {
                org.bouncycastle.util.a.e0(t.this.f25315d, (byte) 0);
                t.x(this.f25325a, 0, this.f25327c, t.this.f25315d);
                t tVar = t.this;
                tVar.y(tVar.f25315d);
            }
        }

        public long b() {
            return this.f25328d;
        }

        public void c() {
            this.f25327c = 0;
            this.f25328d = 0L;
        }

        public void d(byte b10) {
            byte[] bArr = this.f25326b;
            bArr[0] = b10;
            e(bArr, 0, 1);
        }

        public void e(byte[] bArr, int i10, int i11) {
            int i12;
            int i13 = this.f25327c;
            int i14 = 16 - i13;
            if (i13 <= 0 || i11 < i14) {
                i12 = i11;
                i14 = 0;
            } else {
                System.arraycopy(bArr, i10, this.f25325a, i13, i14);
                t.x(this.f25325a, 0, 16, t.this.f25315d);
                t tVar = t.this;
                tVar.y(tVar.f25315d);
                i12 = i11 - i14;
                this.f25327c = 0;
            }
            while (i12 >= 16) {
                t.x(bArr, i10 + i14, 16, t.this.f25315d);
                t tVar2 = t.this;
                tVar2.y(tVar2.f25315d);
                i14 += 16;
                i12 -= 16;
            }
            if (i12 > 0) {
                System.arraycopy(bArr, i10 + i14, this.f25325a, this.f25327c, i12);
                this.f25327c += i12;
            }
            this.f25328d += i11;
        }
    }

    public t() {
        this(C2769a.r());
    }

    public static void A(byte[] bArr) {
        for (int i10 = 0; i10 < 4; i10++) {
            byte b10 = (byte) (bArr[i10] + 1);
            bArr[i10] = b10;
            if (b10 != 0) {
                return;
            }
        }
    }

    public static void B(byte[] bArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            byte b10 = bArr[i11];
            bArr[i11] = (byte) (i10 | ((b10 >> 1) & 127));
            i10 = (b10 & 1) == 0 ? 0 : -128;
        }
        if (i10 != 0) {
            bArr[0] = (byte) (bArr[0] ^ f25309s);
        }
    }

    public static void D(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < 16; i10++) {
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
        }
    }

    public static void E(byte[] bArr, byte[] bArr2, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i12] = (byte) (bArr[i12] ^ bArr2[i12 + i10]);
        }
    }

    public static int o(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public static void r(byte[] bArr, int i10, int i11, boolean z10) {
        int o10 = o(bArr);
        int i12 = i10 + i11;
        if (i11 < 0 || i10 < 0 || i12 < 0 || i12 > o10) {
            if (!z10) {
                throw new DataLengthException("Input buffer too short.");
            }
        }
    }

    public static void x(byte[] bArr, int i10, int i11, byte[] bArr2) {
        int i12 = 0;
        int i13 = 15;
        while (i12 < i11) {
            bArr2[i13] = bArr[i10 + i12];
            i12++;
            i13--;
        }
    }

    public final void C() {
        b bVar = this.f25318g;
        if (bVar != null) {
            bVar.c();
        }
        this.f25316e.c();
        this.f25317f.c();
        this.f25318g = new b();
        this.f25319h = this.f25320i ? null : new b();
        this.f25323l &= -3;
        org.bouncycastle.util.a.e0(this.f25314c, (byte) 0);
        byte[] bArr = this.f25321j;
        if (bArr != null) {
            this.f25316e.e(bArr, 0, bArr.length);
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        byte[] a10;
        C3360o0 c3360o0;
        byte[] bArr;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            bArr = c3331a.a();
            a10 = c3331a.d();
            c3360o0 = c3331a.b();
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("invalid parameters passed to GCM-SIV");
            }
            w0 w0Var = (w0) interfaceC2379k;
            a10 = w0Var.a();
            c3360o0 = (C3360o0) w0Var.b();
            bArr = null;
        }
        if (a10 == null || a10.length != 12) {
            throw new IllegalArgumentException("Invalid nonce");
        }
        if (c3360o0 == null || !(c3360o0.c() == 16 || c3360o0.c() == 32)) {
            throw new IllegalArgumentException("Invalid key");
        }
        this.f25320i = z10;
        this.f25321j = bArr;
        this.f25322k = a10;
        v(c3360o0);
        C();
    }

    @Override
    public String b() {
        return this.f25312a.b() + "-GCM-SIV";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        s(0);
        r(bArr, i10, h(0), true);
        if (!this.f25320i) {
            u();
            int size = this.f25318g.size();
            System.arraycopy(this.f25318g.d(), 0, bArr, i10, size);
            C();
            return size;
        }
        byte[] p10 = p();
        int w10 = w(p10, bArr, i10) + 16;
        System.arraycopy(p10, 0, bArr, i10 + this.f25318g.size(), 16);
        byte[] bArr2 = this.f25324m;
        System.arraycopy(p10, 0, bArr2, 0, bArr2.length);
        C();
        return w10;
    }

    @Override
    public InterfaceC2374f d() {
        return this.f25312a;
    }

    @Override
    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f25324m);
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        s(i11);
        r(bArr, i10, i11, false);
        if (this.f25320i) {
            this.f25318g.write(bArr, i10, i11);
            this.f25317f.e(bArr, i10, i11);
        } else {
            this.f25319h.write(bArr, i10, i11);
        }
        return 0;
    }

    @Override
    public int g(int i10) {
        return 0;
    }

    @Override
    public int h(int i10) {
        if (this.f25320i) {
            return i10 + this.f25318g.size() + 16;
        }
        int size = i10 + this.f25319h.size();
        if (size > 16) {
            return size - 16;
        }
        return 0;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        s(1);
        if (!this.f25320i) {
            this.f25319h.write(b10);
            return 0;
        }
        this.f25318g.write(b10);
        this.f25317f.d(b10);
        return 0;
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        q(i11);
        r(bArr, i10, i11, false);
        this.f25316e.e(bArr, i10, i11);
    }

    @Override
    public void k(byte b10) {
        q(1);
        this.f25316e.d(b10);
    }

    public final byte[] p() {
        this.f25317f.a();
        byte[] t10 = t();
        byte[] bArr = new byte[16];
        for (int i10 = 0; i10 < 12; i10++) {
            t10[i10] = (byte) (t10[i10] ^ this.f25322k[i10]);
        }
        t10[15] = (byte) (t10[15] & (-129));
        this.f25312a.g(t10, 0, bArr, 0);
        return bArr;
    }

    public final void q(int i10) {
        int i11 = this.f25323l;
        if ((i11 & 1) == 0) {
            throw new IllegalStateException("Cipher is not initialised");
        }
        if ((i11 & 2) != 0) {
            throw new IllegalStateException("AEAD data cannot be processed after ordinary data");
        }
        if (this.f25316e.b() - Long.MIN_VALUE > (f25307q - i10) - Long.MIN_VALUE) {
            throw new IllegalStateException("AEAD byte count exceeded");
        }
    }

    @Override
    public void reset() {
        C();
    }

    public final void s(int i10) {
        long j10;
        int i11 = this.f25323l;
        if ((i11 & 1) == 0) {
            throw new IllegalStateException("Cipher is not initialised");
        }
        if ((i11 & 2) == 0) {
            this.f25316e.a();
            this.f25323l |= 2;
        }
        long size = this.f25318g.size();
        if (this.f25320i) {
            j10 = 2147483623;
        } else {
            size = this.f25319h.size();
            j10 = 2147483639;
        }
        if (size - Long.MIN_VALUE > (j10 - i10) - Long.MIN_VALUE) {
            throw new IllegalStateException("byte count exceeded");
        }
    }

    public final byte[] t() {
        byte[] bArr = new byte[16];
        z();
        x(this.f25314c, 0, 16, bArr);
        return bArr;
    }

    public final void u() throws InvalidCipherTextException {
        byte[] d10 = this.f25319h.d();
        int size = this.f25319h.size();
        int i10 = size - 16;
        if (i10 < 0) {
            throw new InvalidCipherTextException("Data too short");
        }
        byte[] X10 = org.bouncycastle.util.a.X(d10, i10, size);
        byte[] p10 = org.bouncycastle.util.a.p(X10);
        p10[15] = (byte) (p10[15] | Byte.MIN_VALUE);
        byte[] bArr = new byte[16];
        int i11 = 0;
        while (i10 > 0) {
            this.f25312a.g(p10, 0, bArr, 0);
            int min = Math.min(16, i10);
            E(bArr, d10, i11, min);
            this.f25318g.write(bArr, 0, min);
            this.f25317f.e(bArr, 0, min);
            i10 -= min;
            i11 += min;
            A(p10);
        }
        byte[] p11 = p();
        if (!org.bouncycastle.util.a.I(p11, X10)) {
            reset();
            throw new InvalidCipherTextException("mac check failed");
        }
        byte[] bArr2 = this.f25324m;
        System.arraycopy(p11, 0, bArr2, 0, bArr2.length);
    }

    public final void v(C3360o0 c3360o0) {
        byte[] bArr = new byte[16];
        byte[] bArr2 = new byte[16];
        byte[] bArr3 = new byte[16];
        int c10 = c3360o0.c();
        byte[] bArr4 = new byte[c10];
        System.arraycopy(this.f25322k, 0, bArr, 4, 12);
        this.f25312a.a(true, c3360o0);
        this.f25312a.g(bArr, 0, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr3, 0, 8);
        bArr[0] = (byte) (bArr[0] + 1);
        this.f25312a.g(bArr, 0, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr3, 8, 8);
        bArr[0] = (byte) (bArr[0] + 1);
        this.f25312a.g(bArr, 0, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr4, 0, 8);
        bArr[0] = (byte) (bArr[0] + 1);
        this.f25312a.g(bArr, 0, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr4, 8, 8);
        if (c10 == 32) {
            bArr[0] = (byte) (bArr[0] + 1);
            this.f25312a.g(bArr, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr4, 16, 8);
            bArr[0] = (byte) (bArr[0] + 1);
            this.f25312a.g(bArr, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr4, 24, 8);
        }
        this.f25312a.a(true, new C3360o0(bArr4));
        x(bArr3, 0, 16, bArr2);
        B(bArr2);
        this.f25313b.a(bArr2);
        this.f25323l |= 1;
    }

    public final int w(byte[] bArr, byte[] bArr2, int i10) {
        byte[] d10 = this.f25318g.d();
        byte[] p10 = org.bouncycastle.util.a.p(bArr);
        p10[15] = (byte) (p10[15] | Byte.MIN_VALUE);
        byte[] bArr3 = new byte[16];
        int size = this.f25318g.size();
        int i11 = 0;
        while (size > 0) {
            this.f25312a.g(p10, 0, bArr3, 0);
            int min = Math.min(16, size);
            E(bArr3, d10, i11, min);
            System.arraycopy(bArr3, 0, bArr2, i10 + i11, min);
            size -= min;
            i11 += min;
            A(p10);
        }
        return this.f25318g.size();
    }

    public final void y(byte[] bArr) {
        D(this.f25314c, bArr);
        this.f25313b.b(this.f25314c);
    }

    public final void z() {
        byte[] bArr = new byte[16];
        org.bouncycastle.util.p.D(this.f25317f.b() * 8, bArr, 0);
        org.bouncycastle.util.p.D(this.f25316e.b() * 8, bArr, 8);
        y(bArr);
    }

    public t(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, new Ui.g());
    }

    public t(InterfaceC2374f interfaceC2374f, Ui.d dVar) {
        this.f25314c = new byte[16];
        this.f25315d = new byte[16];
        this.f25324m = new byte[16];
        if (interfaceC2374f.c() != 16) {
            throw new IllegalArgumentException("Cipher required with a block size of 16.");
        }
        this.f25312a = interfaceC2374f;
        this.f25313b = dVar;
        this.f25316e = new c();
        this.f25317f = new c();
    }
}
