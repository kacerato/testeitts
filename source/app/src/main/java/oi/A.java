package Oi;

import Bi.InterfaceC2391x;
import Xi.C3352k0;
import Xi.C3360o0;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;

public class A implements Bi.J {

    public static final BigInteger f20096i = BigInteger.valueOf(2147483647L);

    public static final BigInteger f20097j = BigInteger.valueOf(2);

    public final Bi.I f20098a;

    public final int f20099b;

    public byte[] f20100c;

    public byte[] f20101d;

    public int f20102e;

    public byte[] f20103f;

    public int f20104g;

    public byte[] f20105h;

    public A(Bi.I i10) {
        this.f20098a = i10;
        int d10 = i10.d();
        this.f20099b = d10;
        this.f20105h = new byte[d10];
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        int i12 = this.f20104g;
        int i13 = i12 + i11;
        if (i13 < 0 || i13 >= this.f20102e) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.f20102e + " bytes");
        }
        if (i12 % this.f20099b == 0) {
            d();
        }
        int i14 = this.f20104g;
        int i15 = this.f20099b;
        int i16 = i14 % i15;
        int min = Math.min(i15 - (i14 % i15), i11);
        System.arraycopy(this.f20105h, i16, bArr, i10, min);
        this.f20104g += min;
        int i17 = i11 - min;
        while (true) {
            i10 += min;
            if (i17 <= 0) {
                return i11;
            }
            d();
            min = Math.min(this.f20099b, i17);
            System.arraycopy(this.f20105h, 0, bArr, i10, min);
            this.f20104g += min;
            i17 -= min;
        }
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        if (!(interfaceC2391x instanceof C3352k0)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        C3352k0 c3352k0 = (C3352k0) interfaceC2391x;
        this.f20098a.a(new C3360o0(c3352k0.d()));
        this.f20100c = c3352k0.b();
        this.f20101d = c3352k0.c();
        int e10 = c3352k0.e();
        this.f20103f = new byte[e10 / 8];
        BigInteger multiply = f20097j.pow(e10).multiply(BigInteger.valueOf(this.f20099b));
        this.f20102e = multiply.compareTo(f20096i) == 1 ? Integer.MAX_VALUE : multiply.intValue();
        this.f20104g = 0;
    }

    public final void d() {
        int i10 = (this.f20104g / this.f20099b) + 1;
        byte[] bArr = this.f20103f;
        int length = bArr.length;
        if (length != 1) {
            if (length != 2) {
                if (length != 3) {
                    if (length != 4) {
                        throw new IllegalStateException("Unsupported size of counter i");
                    }
                    bArr[0] = (byte) (i10 >>> 24);
                }
                bArr[bArr.length - 3] = (byte) (i10 >>> 16);
            }
            bArr[bArr.length - 2] = (byte) (i10 >>> 8);
        }
        bArr[bArr.length - 1] = (byte) i10;
        Bi.I i11 = this.f20098a;
        byte[] bArr2 = this.f20100c;
        i11.update(bArr2, 0, bArr2.length);
        Bi.I i12 = this.f20098a;
        byte[] bArr3 = this.f20103f;
        i12.update(bArr3, 0, bArr3.length);
        Bi.I i13 = this.f20098a;
        byte[] bArr4 = this.f20101d;
        i13.update(bArr4, 0, bArr4.length);
        this.f20098a.c(this.f20105h, 0);
    }

    @Override
    public Bi.I e() {
        return this.f20098a;
    }
}
