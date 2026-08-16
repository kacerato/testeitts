package Li;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class l0 {

    public final InterfaceC2392y f13988a;

    public final b f13989b;

    public boolean f13990c;

    public Xi.J f13991d;

    public Xi.G f13992e;

    public int f13993f;

    public SecureRandom f13994g;

    public static class a {

        public static final int[] f13995a;

        static {
            int[] iArr = new int[b.values().length];
            f13995a = iArr;
            try {
                iArr[b.C1C3C2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum b {
        C1C2C3,
        C1C3C2
    }

    public l0() {
        this(new Ii.S());
    }

    public final void a(InterfaceC2392y interfaceC2392y, jk.f fVar) {
        byte[] b10 = org.bouncycastle.util.b.b(this.f13993f, fVar.v());
        interfaceC2392y.update(b10, 0, b10.length);
    }

    public jk.h b() {
        return new jk.k();
    }

    public final byte[] c(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        int i12;
        int i13 = (this.f13993f * 2) + 1;
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, i10, bArr2, 0, i13);
        jk.i l10 = this.f13992e.a().l(bArr2);
        if (l10.z(this.f13992e.c()).v()) {
            throw new InvalidCipherTextException("[h]C1 at infinity");
        }
        jk.i B10 = l10.z(((Xi.L) this.f13991d).e()).B();
        int f10 = this.f13988a.f();
        int i14 = (i11 - i13) - f10;
        byte[] bArr3 = new byte[i14];
        b bVar = this.f13989b;
        b bVar2 = b.C1C3C2;
        if (bVar == bVar2) {
            System.arraycopy(bArr, i10 + i13 + f10, bArr3, 0, i14);
        } else {
            System.arraycopy(bArr, i10 + i13, bArr3, 0, i14);
        }
        g(this.f13988a, B10, bArr3);
        int f11 = this.f13988a.f();
        byte[] bArr4 = new byte[f11];
        a(this.f13988a, B10.f());
        this.f13988a.update(bArr3, 0, i14);
        a(this.f13988a, B10.g());
        this.f13988a.c(bArr4, 0);
        if (this.f13989b == bVar2) {
            i12 = 0;
            for (int i15 = 0; i15 != f11; i15++) {
                i12 |= bArr4[i15] ^ bArr[(i10 + i13) + i15];
            }
        } else {
            i12 = 0;
            for (int i16 = 0; i16 != f11; i16++) {
                i12 |= bArr4[i16] ^ bArr[((i10 + i13) + i14) + i16];
            }
        }
        org.bouncycastle.util.a.e0(bArr2, (byte) 0);
        org.bouncycastle.util.a.e0(bArr4, (byte) 0);
        if (i12 == 0) {
            return bArr3;
        }
        org.bouncycastle.util.a.e0(bArr3, (byte) 0);
        throw new InvalidCipherTextException("invalid cipher text");
    }

    public final byte[] d(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        byte[] l10;
        jk.i B10;
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        jk.h b10 = b();
        do {
            BigInteger h10 = h();
            l10 = b10.a(this.f13992e.b(), h10).B().l(false);
            B10 = ((Xi.M) this.f13991d).e().z(h10).B();
            g(this.f13988a, B10, bArr2);
        } while (i(bArr2, bArr, i10));
        byte[] bArr3 = new byte[this.f13988a.f()];
        a(this.f13988a, B10.f());
        this.f13988a.update(bArr, i10, i11);
        a(this.f13988a, B10.g());
        this.f13988a.c(bArr3, 0);
        return a.f13995a[this.f13989b.ordinal()] != 1 ? org.bouncycastle.util.a.C(l10, bArr2, bArr3) : org.bouncycastle.util.a.C(l10, bArr3, bArr2);
    }

    public int e(int i10) {
        return (this.f13993f * 2) + 1 + i10 + this.f13988a.f();
    }

    public void f(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f13990c = z10;
        if (z10) {
            Xi.x0 x0Var = (Xi.x0) interfaceC2379k;
            Xi.J j10 = (Xi.J) x0Var.a();
            this.f13991d = j10;
            this.f13992e = j10.d();
            if (((Xi.M) this.f13991d).e().z(this.f13992e.c()).v()) {
                throw new IllegalArgumentException("invalid key: [h]Q at infinity");
            }
            this.f13994g = x0Var.b();
        } else {
            Xi.J j11 = (Xi.J) interfaceC2379k;
            this.f13991d = j11;
            this.f13992e = j11.d();
        }
        this.f13993f = (this.f13992e.a().w() + 7) / 8;
        Bi.r.a(new Hi.c("SM2", Hi.b.b(this.f13992e.a()), this.f13991d, x0.a(z10)));
    }

    public final void g(InterfaceC2392y interfaceC2392y, jk.i iVar, byte[] bArr) {
        org.bouncycastle.util.n nVar;
        org.bouncycastle.util.n nVar2;
        int f10 = interfaceC2392y.f();
        byte[] bArr2 = new byte[Math.max(4, f10)];
        if (interfaceC2392y instanceof org.bouncycastle.util.n) {
            a(interfaceC2392y, iVar.f());
            a(interfaceC2392y, iVar.g());
            nVar = (org.bouncycastle.util.n) interfaceC2392y;
            nVar2 = nVar.copy();
        } else {
            nVar = null;
            nVar2 = null;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < bArr.length) {
            if (nVar != null) {
                nVar.j(nVar2);
            } else {
                a(interfaceC2392y, iVar.f());
                a(interfaceC2392y, iVar.g());
            }
            i11++;
            org.bouncycastle.util.p.h(i11, bArr2, 0);
            interfaceC2392y.update(bArr2, 0, 4);
            interfaceC2392y.c(bArr2, 0);
            int min = Math.min(f10, bArr.length - i10);
            org.bouncycastle.util.c.c(min, bArr2, 0, bArr, i10);
            i10 += min;
        }
    }

    public final BigInteger h() {
        int bitLength = this.f13992e.e().bitLength();
        while (true) {
            BigInteger f10 = org.bouncycastle.util.b.f(bitLength, this.f13994g);
            if (!f10.equals(org.bouncycastle.util.b.f102315a) && f10.compareTo(this.f13992e.e()) < 0) {
                return f10;
            }
        }
    }

    public final boolean i(byte[] bArr, byte[] bArr2, int i10) {
        for (int i11 = 0; i11 != bArr.length; i11++) {
            if (bArr[i11] != bArr2[i10 + i11]) {
                return false;
            }
        }
        return true;
    }

    public byte[] j(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (i10 + i11 > bArr.length || i11 == 0) {
            throw new DataLengthException("input buffer too short");
        }
        return this.f13990c ? d(bArr, i10, i11) : c(bArr, i10, i11);
    }

    public l0(InterfaceC2392y interfaceC2392y) {
        this(interfaceC2392y, b.C1C2C3);
    }

    public l0(InterfaceC2392y interfaceC2392y, b bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("mode cannot be NULL");
        }
        this.f13988a = interfaceC2392y;
        this.f13989b = bVar;
    }

    public l0(b bVar) {
        this(new Ii.S(), bVar);
    }
}
