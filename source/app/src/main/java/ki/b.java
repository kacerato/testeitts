package Ki;

import Bi.D;
import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.r;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.util.g;
import org.bouncycastle.util.n;
import org.bouncycastle.util.p;

public class b implements InterfaceC2370b {

    public final InterfaceC2370b f11408a;

    public final InterfaceC2392y f11409b;

    public final int f11410c;

    public final byte[] f11411d;

    public SecureRandom f11412e;

    public boolean f11413f;

    public b(InterfaceC2370b interfaceC2370b) {
        this(interfaceC2370b, g.d(), null);
    }

    public static int g(InterfaceC2392y interfaceC2392y) {
        if ((interfaceC2392y instanceof n) && (interfaceC2392y instanceof D)) {
            return ((D) interfaceC2392y).i() - 1;
        }
        return Integer.MAX_VALUE;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f11412e = z10 ? r.i(interfaceC2379k instanceof x0 ? ((x0) interfaceC2379k).b() : null) : null;
        this.f11413f = z10;
        this.f11408a.a(z10, interfaceC2379k);
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        return this.f11413f ? f(bArr, i10, i11) : e(bArr, i10, i11);
    }

    @Override
    public int c() {
        int c10 = this.f11408a.c();
        return this.f11413f ? c10 : (c10 - 1) - (this.f11411d.length * 2);
    }

    @Override
    public int d() {
        int d10 = this.f11408a.d();
        return this.f11413f ? (d10 - 1) - (this.f11411d.length * 2) : d10;
    }

    public byte[] e(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        byte[] bArr2;
        int c10 = c();
        int c11 = this.f11408a.c();
        byte[] bArr3 = new byte[c11];
        byte[] b10 = this.f11408a.b(bArr, i10, i11);
        int length = ((c11 - b10.length) | c10) >> 31;
        int min = Math.min(c11, b10.length);
        System.arraycopy(b10, 0, bArr3, c11 - min, min);
        org.bouncycastle.util.a.e0(b10, (byte) 0);
        this.f11409b.reset();
        byte[] bArr4 = this.f11411d;
        i(bArr3, bArr4.length, c11 - bArr4.length, bArr3, 0, bArr4.length);
        byte[] bArr5 = this.f11411d;
        i(bArr3, 0, bArr5.length, bArr3, bArr5.length, c11 - bArr5.length);
        int i12 = 0;
        while (true) {
            bArr2 = this.f11411d;
            if (i12 == bArr2.length) {
                break;
            }
            length |= bArr3[bArr2.length + i12] ^ bArr2[i12];
            i12++;
        }
        int i13 = -1;
        for (int length2 = bArr2.length * 2; length2 != c11; length2++) {
            i13 += (((-(bArr3[length2] & 255)) & i13) >> 31) & length2;
        }
        if (((i13 >> 31) | length | (bArr3[i13 + 1] ^ 1)) != 0) {
            org.bouncycastle.util.a.e0(bArr3, (byte) 0);
            throw new InvalidCipherTextException("data wrong");
        }
        int i14 = i13 + 2;
        int i15 = c11 - i14;
        byte[] bArr6 = new byte[i15];
        System.arraycopy(bArr3, i14, bArr6, 0, i15);
        org.bouncycastle.util.a.e0(bArr3, (byte) 0);
        return bArr6;
    }

    public byte[] f(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        int d10 = d();
        if (i11 > d10) {
            throw new DataLengthException("input data too long");
        }
        int length = d10 + 1 + (this.f11411d.length * 2);
        byte[] bArr2 = new byte[length];
        int i12 = length - i11;
        System.arraycopy(bArr, i10, bArr2, i12, i11);
        bArr2[i12 - 1] = 1;
        byte[] bArr3 = this.f11411d;
        System.arraycopy(bArr3, 0, bArr2, bArr3.length, bArr3.length);
        int length2 = this.f11411d.length;
        byte[] bArr4 = new byte[length2];
        this.f11412e.nextBytes(bArr4);
        System.arraycopy(bArr4, 0, bArr2, 0, this.f11411d.length);
        this.f11409b.reset();
        byte[] bArr5 = this.f11411d;
        i(bArr4, 0, length2, bArr2, bArr5.length, length - bArr5.length);
        byte[] bArr6 = this.f11411d;
        i(bArr2, bArr6.length, length - bArr6.length, bArr2, 0, bArr6.length);
        return this.f11408a.b(bArr2, 0, length);
    }

    public InterfaceC2370b h() {
        return this.f11408a;
    }

    public final void i(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14;
        int f10 = this.f11409b.f();
        byte[] bArr3 = new byte[f10];
        byte[] bArr4 = new byte[4];
        int i15 = i13 + i12;
        int i16 = i15 - f10;
        this.f11409b.update(bArr, i10, i11);
        if (i11 > this.f11410c) {
            n nVar = (n) this.f11409b;
            n copy = nVar.copy();
            i14 = 0;
            while (i12 < i16) {
                p.h(i14, bArr4, 0);
                this.f11409b.update(bArr4, 0, 4);
                this.f11409b.c(bArr3, 0);
                nVar.j(copy);
                org.bouncycastle.util.c.c(f10, bArr3, 0, bArr2, i12);
                i12 += f10;
                i14++;
            }
        } else {
            int i17 = i12;
            int i18 = 0;
            while (i17 < i16) {
                p.h(i18, bArr4, 0);
                this.f11409b.update(bArr4, 0, 4);
                this.f11409b.c(bArr3, 0);
                this.f11409b.update(bArr, i10, i11);
                org.bouncycastle.util.c.c(f10, bArr3, 0, bArr2, i17);
                i17 += f10;
                i18++;
            }
            i14 = i18;
            i12 = i17;
        }
        p.h(i14, bArr4, 0);
        this.f11409b.update(bArr4, 0, 4);
        this.f11409b.c(bArr3, 0);
        org.bouncycastle.util.c.c(i15 - i12, bArr3, 0, bArr2, i12);
    }

    public b(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y) {
        this(interfaceC2370b, interfaceC2392y, null);
    }

    public b(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, byte[] bArr) {
        this.f11408a = interfaceC2370b;
        this.f11409b = interfaceC2392y2;
        this.f11410c = g(interfaceC2392y2);
        byte[] bArr2 = new byte[interfaceC2392y.f()];
        this.f11411d = bArr2;
        interfaceC2392y.reset();
        if (bArr != null) {
            interfaceC2392y.update(bArr, 0, bArr.length);
        }
        interfaceC2392y.c(bArr2, 0);
    }

    public b(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, byte[] bArr) {
        this(interfaceC2370b, interfaceC2392y, interfaceC2392y, bArr);
    }
}
