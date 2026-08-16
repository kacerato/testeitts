package Sl;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.r;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class h implements InterfaceC2370b {

    public boolean f23713a;

    public e f23714b;

    public g f23715c;

    public f f23716d;

    public SecureRandom f23717e;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        SecureRandom secureRandom;
        this.f23713a = z10;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            secureRandom = x0Var.b();
            interfaceC2379k = x0Var.a();
        } else {
            secureRandom = null;
        }
        if (z10) {
            g gVar = (g) interfaceC2379k;
            this.f23715c = gVar;
            this.f23716d = null;
            this.f23714b = gVar.d();
            this.f23717e = r.i(secureRandom);
            return;
        }
        this.f23715c = null;
        f fVar = (f) interfaceC2379k;
        this.f23716d = fVar;
        this.f23714b = fVar.d();
        this.f23717e = null;
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return this.f23713a ? m(bArr2, this.f23715c) : k(bArr2, this.f23716d);
    }

    @Override
    public int c() {
        e eVar = this.f23714b;
        return ((eVar.f23684b * p(eVar.f23685c)) + 7) / 8;
    }

    @Override
    public int d() {
        return this.f23714b.f23696n;
    }

    public final Yl.e e(byte[] bArr, int i10, int i11, boolean z10) {
        InterfaceC2392y interfaceC2392y = this.f23714b.f23683B;
        int f10 = interfaceC2392y.f();
        byte[] bArr2 = new byte[i11 * f10];
        if (z10) {
            bArr = h(interfaceC2392y, bArr);
        }
        int i12 = 0;
        while (i12 < i11) {
            interfaceC2392y.update(bArr, 0, bArr.length);
            q(interfaceC2392y, i12);
            System.arraycopy(g(interfaceC2392y), 0, bArr2, i12 * f10, f10);
            i12++;
        }
        Yl.e eVar = new Yl.e(i10);
        while (true) {
            int i13 = 0;
            for (int i14 = 0; i14 != bArr2.length; i14++) {
                int i15 = bArr2[i14] & 255;
                if (i15 < 243) {
                    for (int i16 = 0; i16 < 4; i16++) {
                        int i17 = i15 % 3;
                        eVar.f30630a[i13] = i17 - 1;
                        i13++;
                        if (i13 == i10) {
                            return eVar;
                        }
                        i15 = (i15 - i17) / 3;
                    }
                    eVar.f30630a[i13] = i15 - 1;
                    i13++;
                    if (i13 == i10) {
                        return eVar;
                    }
                }
            }
            if (i13 >= i10) {
                return eVar;
            }
            interfaceC2392y.update(bArr, 0, bArr.length);
            q(interfaceC2392y, i12);
            bArr2 = g(interfaceC2392y);
            i12++;
        }
    }

    public final byte[] f(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[bArr.length + i10 + bArr3.length + bArr4.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr5, bArr.length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr5, bArr.length + bArr2.length, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, bArr.length + bArr2.length + bArr3.length, bArr4.length);
        return bArr5;
    }

    public final byte[] g(InterfaceC2392y interfaceC2392y) {
        byte[] bArr = new byte[interfaceC2392y.f()];
        interfaceC2392y.c(bArr, 0);
        return bArr;
    }

    public final byte[] h(InterfaceC2392y interfaceC2392y, byte[] bArr) {
        byte[] bArr2 = new byte[interfaceC2392y.f()];
        interfaceC2392y.update(bArr, 0, bArr.length);
        interfaceC2392y.c(bArr2, 0);
        return bArr2;
    }

    public final byte[] i(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[i10];
        if (i10 >= bArr.length) {
            i10 = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        return bArr2;
    }

    public Yl.e j(Yl.e eVar, Yl.i iVar, Yl.e eVar2) {
        e eVar3 = this.f23714b;
        boolean z10 = eVar3.f23708z;
        Yl.e e10 = iVar.e(eVar, eVar3.f23685c);
        if (z10) {
            e10.E(3);
            e10.h(eVar);
        }
        e10.j(this.f23714b.f23685c);
        e10.B();
        if (!this.f23714b.f23708z) {
            e10 = new Yl.d(e10).e(eVar2, 3);
        }
        e10.j(3);
        return e10;
    }

    public final byte[] k(byte[] bArr, f fVar) throws InvalidCipherTextException {
        Yl.i iVar = fVar.f23709d;
        Yl.e eVar = fVar.f23710e;
        Yl.e eVar2 = fVar.f23711f;
        e eVar3 = this.f23714b;
        int i10 = eVar3.f23684b;
        int i11 = eVar3.f23685c;
        int i12 = eVar3.f23697o;
        int i13 = eVar3.f23696n;
        int i14 = eVar3.f23700r;
        int i15 = eVar3.f23701s;
        int i16 = eVar3.f23704v;
        boolean z10 = eVar3.f23705w;
        byte[] bArr2 = eVar3.f23706x;
        if (i13 > 255) {
            throw new DataLengthException("maxMsgLenBytes values bigger than 255 are not supported");
        }
        int i17 = i12 / 8;
        Yl.e t10 = Yl.e.t(bArr, i10, i11);
        Yl.e j10 = j(t10, iVar, eVar);
        if (j10.l(-1) < i14) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal -1");
        }
        if (j10.l(0) < i14) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal 0");
        }
        if (j10.l(1) < i14) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal 1");
        }
        Yl.e eVar4 = (Yl.e) t10.clone();
        eVar4.R(j10);
        eVar4.D(i11);
        Yl.e eVar5 = (Yl.e) eVar4.clone();
        eVar5.D(4);
        j10.R(e(eVar5.U(4), i10, i16, z10));
        j10.B();
        byte[] V10 = j10.V();
        byte[] bArr3 = new byte[i17];
        System.arraycopy(V10, 0, bArr3, 0, i17);
        int i18 = 255 & V10[i17];
        if (i18 > i13) {
            throw new InvalidCipherTextException("Message too long: " + i18 + ">" + i13);
        }
        byte[] bArr4 = new byte[i18];
        int i19 = i17 + 1;
        System.arraycopy(V10, i19, bArr4, 0, i18);
        int i20 = i19 + i18;
        int length = V10.length - i20;
        byte[] bArr5 = new byte[length];
        System.arraycopy(V10, i20, bArr5, 0, length);
        if (!org.bouncycastle.util.a.I(bArr5, new byte[length])) {
            throw new InvalidCipherTextException("The message is not followed by zeroes");
        }
        Yl.e a10 = o(f(bArr2, bArr4, i18, bArr3, i(eVar2.U(i11), i15 / 8)), bArr4).a(eVar2);
        a10.D(i11);
        if (a10.equals(eVar4)) {
            return bArr4;
        }
        throw new InvalidCipherTextException("Invalid message encoding");
    }

    public Yl.e l(Yl.e eVar, Yl.m mVar, Yl.e eVar2) {
        Yl.e e10 = mVar.e(eVar2, this.f23714b.f23685c);
        e10.i(eVar, this.f23714b.f23685c);
        e10.o(this.f23714b.f23685c);
        return e10;
    }

    public final byte[] m(byte[] bArr, g gVar) {
        byte[] bArr2 = bArr;
        Yl.e eVar = gVar.f23712d;
        e eVar2 = this.f23714b;
        int i10 = eVar2.f23684b;
        int i11 = eVar2.f23685c;
        int i12 = eVar2.f23696n;
        int i13 = eVar2.f23697o;
        int i14 = eVar2.f23698p;
        int i15 = eVar2.f23700r;
        int i16 = eVar2.f23701s;
        int i17 = eVar2.f23704v;
        boolean z10 = eVar2.f23705w;
        byte[] bArr3 = eVar2.f23706x;
        int length = bArr2.length;
        if (i12 > 255) {
            throw new IllegalArgumentException("llen values bigger than 1 are not supported");
        }
        if (length > i12) {
            throw new DataLengthException("Message too long: " + length + ">" + i12);
        }
        while (true) {
            int i18 = i13 / 8;
            byte[] bArr4 = new byte[i18];
            boolean z11 = z10;
            this.f23717e.nextBytes(bArr4);
            int i19 = (i12 + 1) - length;
            int i20 = i17;
            int i21 = i13;
            byte[] bArr5 = new byte[i14 / 8];
            int i22 = i14;
            System.arraycopy(bArr4, 0, bArr5, 0, i18);
            bArr5[i18] = (byte) length;
            int i23 = i18 + 1;
            System.arraycopy(bArr2, 0, bArr5, i23, bArr2.length);
            System.arraycopy(new byte[i19], 0, bArr5, i23 + bArr2.length, i19);
            Yl.e u10 = Yl.e.u(bArr5, i10);
            int i24 = length;
            byte[] bArr6 = bArr3;
            int i25 = i16;
            Yl.e e10 = o(f(bArr3, bArr, i24, bArr4, i(eVar.U(i11), i16 / 8)), bArr5).e(eVar, i11);
            Yl.e eVar3 = (Yl.e) e10.clone();
            eVar3.D(4);
            u10.h(e(eVar3.U(4), i10, i20, z11));
            u10.B();
            if (u10.l(-1) >= i15 && u10.l(0) >= i15 && u10.l(1) >= i15) {
                e10.i(u10, i11);
                e10.o(i11);
                return e10.U(i11);
            }
            z10 = z11;
            i17 = i20;
            i16 = i25;
            i13 = i21;
            i14 = i22;
            length = i24;
            bArr3 = bArr6;
            bArr2 = bArr;
        }
    }

    public final int[] n(a aVar, int i10) {
        int[] iArr = new int[this.f23714b.f23684b];
        for (int i11 = -1; i11 <= 1; i11 += 2) {
            int i12 = 0;
            while (i12 < i10) {
                int d10 = aVar.d();
                if (iArr[d10] == 0) {
                    iArr[d10] = i11;
                    i12++;
                }
            }
        }
        return iArr;
    }

    public final Yl.i o(byte[] bArr, byte[] bArr2) {
        a aVar = new a(bArr, this.f23714b);
        e eVar = this.f23714b;
        if (eVar.f23682A == 1) {
            return new Yl.j(new Yl.l(n(aVar, eVar.f23691i)), new Yl.l(n(aVar, this.f23714b.f23692j)), new Yl.l(n(aVar, this.f23714b.f23693k)));
        }
        int i10 = eVar.f23690h;
        boolean z10 = eVar.f23707y;
        int[] n10 = n(aVar, i10);
        return z10 ? new Yl.l(n10) : new Yl.d(n10);
    }

    public final int p(int i10) {
        if (i10 == 2048) {
            return 11;
        }
        throw new IllegalStateException("log2 not fully implemented");
    }

    public final void q(InterfaceC2392y interfaceC2392y, int i10) {
        interfaceC2392y.update((byte) (i10 >> 24));
        interfaceC2392y.update((byte) (i10 >> 16));
        interfaceC2392y.update((byte) (i10 >> 8));
        interfaceC2392y.update((byte) i10);
    }
}
