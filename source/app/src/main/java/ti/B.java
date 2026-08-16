package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.w0;
import java.util.Vector;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class B implements InterfaceC3090a {

    public static final int f25121w = 16;

    public InterfaceC2374f f25122a;

    public InterfaceC2374f f25123b;

    public boolean f25124c;

    public int f25125d;

    public byte[] f25126e;

    public Vector f25127f;

    public byte[] f25128g;

    public byte[] f25129h;

    public byte[] f25133l;

    public byte[] f25134m;

    public int f25135n;

    public int f25136o;

    public long f25137p;

    public long f25138q;

    public byte[] f25139r;

    public byte[] f25140s;

    public byte[] f25142u;

    public byte[] f25143v;

    public byte[] f25130i = null;

    public byte[] f25131j = new byte[24];

    public byte[] f25132k = new byte[16];

    public byte[] f25141t = new byte[16];

    public B(InterfaceC2374f interfaceC2374f, InterfaceC2374f interfaceC2374f2) {
        if (interfaceC2374f == null) {
            throw new IllegalArgumentException("'hashCipher' cannot be null");
        }
        if (interfaceC2374f.c() != 16) {
            throw new IllegalArgumentException("'hashCipher' must have a block size of 16");
        }
        if (interfaceC2374f2 == null) {
            throw new IllegalArgumentException("'mainCipher' cannot be null");
        }
        if (interfaceC2374f2.c() != 16) {
            throw new IllegalArgumentException("'mainCipher' must have a block size of 16");
        }
        if (!interfaceC2374f.b().equals(interfaceC2374f2.b())) {
            throw new IllegalArgumentException("'hashCipher' and 'mainCipher' must be the same algorithm");
        }
        this.f25122a = interfaceC2374f;
        this.f25123b = interfaceC2374f2;
    }

    public static byte[] l(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) ((135 >>> ((1 - u(bArr, bArr2)) << 3)) ^ bArr2[15]);
        return bArr2;
    }

    public static void m(byte[] bArr, int i10) {
        bArr[i10] = Byte.MIN_VALUE;
        while (true) {
            i10++;
            if (i10 >= 16) {
                return;
            } else {
                bArr[i10] = 0;
            }
        }
    }

    public static int n(long j10) {
        return org.bouncycastle.util.m.d(j10);
    }

    public static int u(byte[] bArr, byte[] bArr2) {
        int i10 = 16;
        int i11 = 0;
        while (true) {
            i10--;
            if (i10 < 0) {
                return i11;
            }
            int i12 = bArr[i10] & 255;
            bArr2[i10] = (byte) (i11 | (i12 << 1));
            i11 = (i12 >>> 7) & 1;
        }
    }

    public static void w(byte[] bArr, byte[] bArr2) {
        org.bouncycastle.util.c.d(16, bArr2, bArr);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        byte[] a10;
        C3360o0 c3360o0;
        boolean z11 = this.f25124c;
        this.f25124c = z10;
        this.f25143v = null;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            a10 = c3331a.d();
            this.f25126e = c3331a.a();
            int c10 = c3331a.c();
            if (c10 < 64 || c10 > 128 || c10 % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + c10);
            }
            this.f25125d = c10 / 8;
            c3360o0 = c3331a.b();
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("invalid parameters passed to OCB");
            }
            w0 w0Var = (w0) interfaceC2379k;
            a10 = w0Var.a();
            this.f25126e = null;
            this.f25125d = 16;
            c3360o0 = (C3360o0) w0Var.b();
        }
        this.f25133l = new byte[16];
        this.f25134m = new byte[z10 ? 16 : this.f25125d + 16];
        if (a10 == null) {
            a10 = new byte[0];
        }
        if (a10.length > 15) {
            throw new IllegalArgumentException("IV must be no more than 15 bytes");
        }
        if (c3360o0 != null) {
            this.f25122a.a(true, c3360o0);
            this.f25123b.a(z10, c3360o0);
            this.f25130i = null;
        } else if (z11 != z10) {
            throw new IllegalArgumentException("cannot change encrypting state without providing key.");
        }
        byte[] bArr = new byte[16];
        this.f25128g = bArr;
        this.f25122a.g(bArr, 0, bArr, 0);
        this.f25129h = l(this.f25128g);
        Vector vector = new Vector();
        this.f25127f = vector;
        vector.addElement(l(this.f25129h));
        int s10 = s(a10);
        int i10 = s10 % 8;
        int i11 = s10 / 8;
        if (i10 == 0) {
            System.arraycopy(this.f25131j, i11, this.f25132k, 0, 16);
        } else {
            for (int i12 = 0; i12 < 16; i12++) {
                byte[] bArr2 = this.f25131j;
                int i13 = bArr2[i11] & 255;
                i11++;
                this.f25132k[i12] = (byte) (((bArr2[i11] & 255) >>> (8 - i10)) | (i13 << i10));
            }
        }
        this.f25135n = 0;
        this.f25136o = 0;
        this.f25137p = 0L;
        this.f25138q = 0L;
        this.f25139r = new byte[16];
        this.f25140s = new byte[16];
        System.arraycopy(this.f25132k, 0, this.f25141t, 0, 16);
        this.f25142u = new byte[16];
        byte[] bArr3 = this.f25126e;
        if (bArr3 != null) {
            j(bArr3, 0, bArr3.length);
        }
    }

    @Override
    public String b() {
        return this.f25123b.b() + "/OCB";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        byte[] bArr2;
        if (this.f25124c) {
            bArr2 = null;
        } else {
            int i11 = this.f25136o;
            int i12 = this.f25125d;
            if (i11 < i12) {
                throw new InvalidCipherTextException("data too short");
            }
            int i13 = i11 - i12;
            this.f25136o = i13;
            bArr2 = new byte[i12];
            System.arraycopy(this.f25134m, i13, bArr2, 0, i12);
        }
        int i14 = this.f25135n;
        if (i14 > 0) {
            m(this.f25133l, i14);
            v(this.f25128g);
        }
        int i15 = this.f25136o;
        if (i15 > 0) {
            if (this.f25124c) {
                m(this.f25134m, i15);
                w(this.f25142u, this.f25134m);
            }
            w(this.f25141t, this.f25128g);
            byte[] bArr3 = new byte[16];
            this.f25122a.g(this.f25141t, 0, bArr3, 0);
            w(this.f25134m, bArr3);
            int length = bArr.length;
            int i16 = this.f25136o;
            if (length < i10 + i16) {
                throw new OutputLengthException("Output buffer too short");
            }
            System.arraycopy(this.f25134m, 0, bArr, i10, i16);
            if (!this.f25124c) {
                m(this.f25134m, this.f25136o);
                w(this.f25142u, this.f25134m);
            }
        }
        w(this.f25142u, this.f25141t);
        w(this.f25142u, this.f25129h);
        InterfaceC2374f interfaceC2374f = this.f25122a;
        byte[] bArr4 = this.f25142u;
        interfaceC2374f.g(bArr4, 0, bArr4, 0);
        w(this.f25142u, this.f25140s);
        int i17 = this.f25125d;
        byte[] bArr5 = new byte[i17];
        this.f25143v = bArr5;
        System.arraycopy(this.f25142u, 0, bArr5, 0, i17);
        int i18 = this.f25136o;
        if (this.f25124c) {
            int length2 = bArr.length;
            int i19 = i10 + i18;
            int i20 = this.f25125d;
            if (length2 < i19 + i20) {
                throw new OutputLengthException("Output buffer too short");
            }
            System.arraycopy(this.f25143v, 0, bArr, i19, i20);
            i18 += this.f25125d;
        } else if (!org.bouncycastle.util.a.I(this.f25143v, bArr2)) {
            throw new InvalidCipherTextException("mac check in OCB failed");
        }
        t(false);
        return i18;
    }

    @Override
    public InterfaceC2374f d() {
        return this.f25123b;
    }

    @Override
    public byte[] e() {
        byte[] bArr = this.f25143v;
        return bArr == null ? new byte[this.f25125d] : org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (bArr.length < i10 + i11) {
            throw new DataLengthException("Input buffer too short");
        }
        int i13 = 0;
        for (int i14 = 0; i14 < i11; i14++) {
            byte[] bArr3 = this.f25134m;
            int i15 = this.f25136o;
            bArr3[i15] = bArr[i10 + i14];
            int i16 = i15 + 1;
            this.f25136o = i16;
            if (i16 == bArr3.length) {
                r(bArr2, i12 + i13);
                i13 += 16;
            }
        }
        return i13;
    }

    @Override
    public int g(int i10) {
        int i11 = i10 + this.f25136o;
        if (!this.f25124c) {
            int i12 = this.f25125d;
            if (i11 < i12) {
                return 0;
            }
            i11 -= i12;
        }
        return i11 - (i11 % 16);
    }

    @Override
    public int h(int i10) {
        int i11 = i10 + this.f25136o;
        if (this.f25124c) {
            return i11 + this.f25125d;
        }
        int i12 = this.f25125d;
        if (i11 < i12) {
            return 0;
        }
        return i11 - i12;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        byte[] bArr2 = this.f25134m;
        int i11 = this.f25136o;
        bArr2[i11] = b10;
        int i12 = i11 + 1;
        this.f25136o = i12;
        if (i12 != bArr2.length) {
            return 0;
        }
        r(bArr, i10);
        return 16;
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            byte[] bArr2 = this.f25133l;
            int i13 = this.f25135n;
            bArr2[i13] = bArr[i10 + i12];
            int i14 = i13 + 1;
            this.f25135n = i14;
            if (i14 == bArr2.length) {
                q();
            }
        }
    }

    @Override
    public void k(byte b10) {
        byte[] bArr = this.f25133l;
        int i10 = this.f25135n;
        bArr[i10] = b10;
        int i11 = i10 + 1;
        this.f25135n = i11;
        if (i11 == bArr.length) {
            q();
        }
    }

    public void o(byte[] bArr) {
        if (bArr != null) {
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
        }
    }

    public byte[] p(int i10) {
        while (i10 >= this.f25127f.size()) {
            Vector vector = this.f25127f;
            vector.addElement(l((byte[]) vector.lastElement()));
        }
        return (byte[]) this.f25127f.elementAt(i10);
    }

    public void q() {
        long j10 = this.f25137p + 1;
        this.f25137p = j10;
        v(p(n(j10)));
        this.f25135n = 0;
    }

    public void r(byte[] bArr, int i10) {
        if (bArr.length < i10 + 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.f25124c) {
            w(this.f25142u, this.f25134m);
            this.f25136o = 0;
        }
        byte[] bArr2 = this.f25141t;
        long j10 = this.f25138q + 1;
        this.f25138q = j10;
        w(bArr2, p(n(j10)));
        w(this.f25134m, this.f25141t);
        InterfaceC2374f interfaceC2374f = this.f25123b;
        byte[] bArr3 = this.f25134m;
        interfaceC2374f.g(bArr3, 0, bArr3, 0);
        w(this.f25134m, this.f25141t);
        System.arraycopy(this.f25134m, 0, bArr, i10, 16);
        if (this.f25124c) {
            return;
        }
        w(this.f25142u, this.f25134m);
        byte[] bArr4 = this.f25134m;
        System.arraycopy(bArr4, 16, bArr4, 0, this.f25125d);
        this.f25136o = this.f25125d;
    }

    @Override
    public void reset() {
        t(true);
    }

    public int s(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i10 = 0;
        System.arraycopy(bArr, 0, bArr2, 16 - bArr.length, bArr.length);
        bArr2[0] = (byte) (this.f25125d << 4);
        int length = 15 - bArr.length;
        bArr2[length] = (byte) (bArr2[length] | 1);
        byte b10 = bArr2[15];
        int i11 = b10 & Opcodes.OPC_lstore_0;
        bArr2[15] = (byte) (b10 & Opcodes.OPC_checkcast);
        byte[] bArr3 = this.f25130i;
        if (bArr3 == null || !org.bouncycastle.util.a.g(bArr2, bArr3)) {
            byte[] bArr4 = new byte[16];
            this.f25130i = bArr2;
            this.f25122a.g(bArr2, 0, bArr4, 0);
            System.arraycopy(bArr4, 0, this.f25131j, 0, 16);
            while (i10 < 8) {
                byte[] bArr5 = this.f25131j;
                int i12 = i10 + 16;
                byte b11 = bArr4[i10];
                i10++;
                bArr5[i12] = (byte) (b11 ^ bArr4[i10]);
            }
        }
        return i11;
    }

    public void t(boolean z10) {
        this.f25122a.reset();
        this.f25123b.reset();
        o(this.f25133l);
        o(this.f25134m);
        this.f25135n = 0;
        this.f25136o = 0;
        this.f25137p = 0L;
        this.f25138q = 0L;
        o(this.f25139r);
        o(this.f25140s);
        System.arraycopy(this.f25132k, 0, this.f25141t, 0, 16);
        o(this.f25142u);
        if (z10) {
            this.f25143v = null;
        }
        byte[] bArr = this.f25126e;
        if (bArr != null) {
            j(bArr, 0, bArr.length);
        }
    }

    public void v(byte[] bArr) {
        w(this.f25139r, bArr);
        w(this.f25133l, this.f25139r);
        InterfaceC2374f interfaceC2374f = this.f25122a;
        byte[] bArr2 = this.f25133l;
        interfaceC2374f.g(bArr2, 0, bArr2, 0);
        w(this.f25140s, this.f25133l);
    }
}
