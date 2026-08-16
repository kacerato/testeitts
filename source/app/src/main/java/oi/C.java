package Oi;

import Bi.InterfaceC2391x;
import Xi.C3356m0;
import Xi.C3360o0;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;

public class C implements Bi.J {

    public static final BigInteger f20117j = BigInteger.valueOf(2147483647L);

    public static final BigInteger f20118k = BigInteger.valueOf(2);

    public final Bi.I f20119a;

    public final int f20120b;

    public byte[] f20121c;

    public int f20122d;

    public byte[] f20123e;

    public byte[] f20124f;

    public boolean f20125g;

    public int f20126h;

    public byte[] f20127i;

    public C(Bi.I i10) {
        this.f20119a = i10;
        int d10 = i10.d();
        this.f20120b = d10;
        this.f20127i = new byte[d10];
    }

    private void d() {
        if (this.f20126h == 0) {
            Bi.I i10 = this.f20119a;
            byte[] bArr = this.f20124f;
            i10.update(bArr, 0, bArr.length);
        } else {
            Bi.I i11 = this.f20119a;
            byte[] bArr2 = this.f20127i;
            i11.update(bArr2, 0, bArr2.length);
        }
        if (this.f20125g) {
            int i12 = (this.f20126h / this.f20120b) + 1;
            byte[] bArr3 = this.f20123e;
            int length = bArr3.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            throw new IllegalStateException("Unsupported size of counter i");
                        }
                        bArr3[0] = (byte) (i12 >>> 24);
                    }
                    bArr3[bArr3.length - 3] = (byte) (i12 >>> 16);
                }
                bArr3[bArr3.length - 2] = (byte) (i12 >>> 8);
            }
            bArr3[bArr3.length - 1] = (byte) i12;
            this.f20119a.update(bArr3, 0, bArr3.length);
        }
        Bi.I i13 = this.f20119a;
        byte[] bArr4 = this.f20121c;
        i13.update(bArr4, 0, bArr4.length);
        this.f20119a.c(this.f20127i, 0);
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        int i12 = this.f20126h;
        int i13 = i12 + i11;
        if (i13 < 0 || i13 >= this.f20122d) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.f20122d + " bytes");
        }
        if (i12 % this.f20120b == 0) {
            d();
        }
        int i14 = this.f20126h;
        int i15 = this.f20120b;
        int i16 = i14 % i15;
        int min = Math.min(i15 - (i14 % i15), i11);
        System.arraycopy(this.f20127i, i16, bArr, i10, min);
        this.f20126h += min;
        int i17 = i11 - min;
        while (true) {
            i10 += min;
            if (i17 <= 0) {
                return i11;
            }
            d();
            min = Math.min(this.f20120b, i17);
            System.arraycopy(this.f20127i, 0, bArr, i10, min);
            this.f20126h += min;
            i17 -= min;
        }
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        if (!(interfaceC2391x instanceof C3356m0)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        C3356m0 c3356m0 = (C3356m0) interfaceC2391x;
        this.f20119a.a(new C3360o0(c3356m0.e()));
        this.f20121c = c3356m0.c();
        int f10 = c3356m0.f();
        this.f20123e = new byte[f10 / 8];
        int i10 = Integer.MAX_VALUE;
        if (c3356m0.g()) {
            BigInteger multiply = f20118k.pow(f10).multiply(BigInteger.valueOf(this.f20120b));
            if (multiply.compareTo(f20117j) != 1) {
                i10 = multiply.intValue();
            }
        }
        this.f20122d = i10;
        this.f20124f = c3356m0.d();
        this.f20125g = c3356m0.g();
        this.f20126h = 0;
    }

    @Override
    public Bi.I e() {
        return this.f20119a;
    }
}
