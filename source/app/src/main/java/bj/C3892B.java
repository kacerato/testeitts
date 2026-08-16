package bj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.S;
import Xi.F0;
import java.math.BigInteger;
import org.bouncycastle.crypto.CryptoException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C3892B implements S {

    public static final int f33261m = 188;

    public static final int f33262n = 12748;

    public static final int f33263o = 13004;

    public static final int f33264p = 13260;

    public static final int f33265q = 13516;

    public static final int f33266r = 13772;

    public static final int f33267s = 14028;

    public static final int f33268t = 14284;

    public static final int f33269u = 14540;

    public InterfaceC2392y f33270g;

    public InterfaceC2370b f33271h;

    public F0 f33272i;

    public int f33273j;

    public int f33274k;

    public byte[] f33275l;

    public C3892B(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y) {
        this(interfaceC2370b, interfaceC2392y, false);
    }

    private void g(byte[] bArr) {
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr[i10] = 0;
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        F0 f02 = (F0) interfaceC2379k;
        this.f33272i = f02;
        this.f33271h.a(z10, f02);
        int bitLength = this.f33272i.f().bitLength();
        this.f33274k = bitLength;
        this.f33275l = new byte[(bitLength + 7) / 8];
        reset();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002d, code lost:
    
        if ((r4.intValue() & 15) == 12) goto L9;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b(byte[] bArr) {
        boolean z10 = false;
        try {
            this.f33275l = this.f33271h.b(bArr, 0, bArr.length);
            BigInteger bigInteger = new BigInteger(1, this.f33275l);
            if ((bigInteger.intValue() & 15) != 12) {
                bigInteger = this.f33272i.f().subtract(bigInteger);
            }
            h(this.f33273j);
            byte[] b10 = org.bouncycastle.util.b.b(this.f33275l.length, bigInteger);
            z10 = org.bouncycastle.util.a.I(this.f33275l, b10);
            if (this.f33273j == 15052 && !z10) {
                byte[] bArr2 = this.f33275l;
                bArr2[bArr2.length - 2] = 64;
                z10 = org.bouncycastle.util.a.I(bArr2, b10);
            }
            g(this.f33275l);
            g(b10);
        } catch (Exception unused) {
        }
        return z10;
    }

    @Override
    public byte[] c() throws CryptoException {
        h(this.f33273j);
        InterfaceC2370b interfaceC2370b = this.f33271h;
        byte[] bArr = this.f33275l;
        BigInteger bigInteger = new BigInteger(1, interfaceC2370b.b(bArr, 0, bArr.length));
        g(this.f33275l);
        return org.bouncycastle.util.b.b(org.bouncycastle.util.b.k(this.f33272i.f()), bigInteger.min(this.f33272i.f().subtract(bigInteger)));
    }

    public final void h(int i10) {
        int i11;
        int f10 = this.f33270g.f();
        if (i10 == 188) {
            byte[] bArr = this.f33275l;
            i11 = (bArr.length - f10) - 1;
            this.f33270g.c(bArr, i11);
            this.f33275l[r5.length - 1] = -68;
        } else {
            byte[] bArr2 = this.f33275l;
            int length = (bArr2.length - f10) - 2;
            this.f33270g.c(bArr2, length);
            byte[] bArr3 = this.f33275l;
            bArr3[bArr3.length - 2] = (byte) (i10 >>> 8);
            bArr3[bArr3.length - 1] = (byte) i10;
            i11 = length;
        }
        this.f33275l[0] = 107;
        for (int i12 = i11 - 2; i12 != 0; i12--) {
            this.f33275l[i12] = Opcodes.OPC_new;
        }
        this.f33275l[i11 - 1] = Opcodes.OPC_invokedynamic;
    }

    @Override
    public void reset() {
        this.f33270g.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33270g.update(b10);
    }

    public C3892B(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, boolean z10) {
        int intValue;
        this.f33271h = interfaceC2370b;
        this.f33270g = interfaceC2392y;
        if (z10) {
            intValue = 188;
        } else {
            Integer a10 = t.a(interfaceC2392y);
            if (a10 == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + interfaceC2392y.b());
            }
            intValue = a10.intValue();
        }
        this.f33273j = intValue;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33270g.update(bArr, i10, i11);
    }
}
