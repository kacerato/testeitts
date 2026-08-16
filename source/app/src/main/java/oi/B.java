package Oi;

import Bi.InterfaceC2391x;
import Xi.C3354l0;
import Xi.C3360o0;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;

public class B implements Bi.J {

    public static final BigInteger f20106j = BigInteger.valueOf(2147483647L);

    public static final BigInteger f20107k = BigInteger.valueOf(2);

    public final Bi.I f20108a;

    public final int f20109b;

    public byte[] f20110c;

    public int f20111d;

    public byte[] f20112e;

    public boolean f20113f;

    public int f20114g;

    public byte[] f20115h;

    public byte[] f20116i;

    public B(Bi.I i10) {
        this.f20108a = i10;
        int d10 = i10.d();
        this.f20109b = d10;
        this.f20115h = new byte[d10];
        this.f20116i = new byte[d10];
    }

    private void d() {
        if (this.f20114g == 0) {
            Bi.I i10 = this.f20108a;
            byte[] bArr = this.f20110c;
            i10.update(bArr, 0, bArr.length);
            this.f20108a.c(this.f20115h, 0);
        } else {
            Bi.I i11 = this.f20108a;
            byte[] bArr2 = this.f20115h;
            i11.update(bArr2, 0, bArr2.length);
            this.f20108a.c(this.f20115h, 0);
        }
        Bi.I i12 = this.f20108a;
        byte[] bArr3 = this.f20115h;
        i12.update(bArr3, 0, bArr3.length);
        if (this.f20113f) {
            int i13 = (this.f20114g / this.f20109b) + 1;
            byte[] bArr4 = this.f20112e;
            int length = bArr4.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            throw new IllegalStateException("Unsupported size of counter i");
                        }
                        bArr4[0] = (byte) (i13 >>> 24);
                    }
                    bArr4[bArr4.length - 3] = (byte) (i13 >>> 16);
                }
                bArr4[bArr4.length - 2] = (byte) (i13 >>> 8);
            }
            bArr4[bArr4.length - 1] = (byte) i13;
            this.f20108a.update(bArr4, 0, bArr4.length);
        }
        Bi.I i14 = this.f20108a;
        byte[] bArr5 = this.f20110c;
        i14.update(bArr5, 0, bArr5.length);
        this.f20108a.c(this.f20116i, 0);
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        int i12 = this.f20114g;
        int i13 = i12 + i11;
        if (i13 < 0 || i13 >= this.f20111d) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.f20111d + " bytes");
        }
        if (i12 % this.f20109b == 0) {
            d();
        }
        int i14 = this.f20114g;
        int i15 = this.f20109b;
        int i16 = i14 % i15;
        int min = Math.min(i15 - (i14 % i15), i11);
        System.arraycopy(this.f20116i, i16, bArr, i10, min);
        this.f20114g += min;
        int i17 = i11 - min;
        while (true) {
            i10 += min;
            if (i17 <= 0) {
                return i11;
            }
            d();
            min = Math.min(this.f20109b, i17);
            System.arraycopy(this.f20116i, 0, bArr, i10, min);
            this.f20114g += min;
            i17 -= min;
        }
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        if (!(interfaceC2391x instanceof C3354l0)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        C3354l0 c3354l0 = (C3354l0) interfaceC2391x;
        this.f20108a.a(new C3360o0(c3354l0.d()));
        this.f20110c = c3354l0.c();
        int e10 = c3354l0.e();
        this.f20112e = new byte[e10 / 8];
        int i10 = Integer.MAX_VALUE;
        if (c3354l0.f()) {
            BigInteger multiply = f20107k.pow(e10).multiply(BigInteger.valueOf(this.f20109b));
            if (multiply.compareTo(f20106j) != 1) {
                i10 = multiply.intValue();
            }
        }
        this.f20111d = i10;
        this.f20113f = c3354l0.f();
        this.f20114g = 0;
    }

    @Override
    public Bi.I e() {
        return this.f20108a;
    }
}
