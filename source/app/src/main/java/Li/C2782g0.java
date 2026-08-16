package Li;

import Bi.EnumC2383o;
import Bi.InterfaceC2379k;
import android.security.keystore.KeyProperties;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;

public class C2782g0 {

    public Xi.F0 f13892a;

    public boolean f13893b;

    public BigInteger a(byte[] bArr, int i10, int i11) {
        if (i11 > c() + 1) {
            throw new DataLengthException("input too large for RSA cipher.");
        }
        if (i11 == c() + 1 && !this.f13893b) {
            throw new DataLengthException("input too large for RSA cipher.");
        }
        if (i10 != 0 || i11 != bArr.length) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(this.f13892a.f()) < 0) {
            return bigInteger;
        }
        throw new DataLengthException("input too large for RSA cipher.");
    }

    public byte[] b(BigInteger bigInteger) {
        byte[] bArr;
        byte[] byteArray = bigInteger.toByteArray();
        if (!this.f13893b) {
            if (byteArray[0] == 0) {
                int length = byteArray.length - 1;
                bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
            } else {
                int length2 = byteArray.length;
                bArr = new byte[length2];
                System.arraycopy(byteArray, 0, bArr, 0, length2);
            }
            org.bouncycastle.util.a.e0(byteArray, (byte) 0);
            return bArr;
        }
        if (byteArray[0] == 0 && byteArray.length > d()) {
            int length3 = byteArray.length - 1;
            byte[] bArr2 = new byte[length3];
            System.arraycopy(byteArray, 1, bArr2, 0, length3);
            return bArr2;
        }
        if (byteArray.length >= d()) {
            return byteArray;
        }
        int d10 = d();
        byte[] bArr3 = new byte[d10];
        System.arraycopy(byteArray, 0, bArr3, d10 - byteArray.length, byteArray.length);
        return bArr3;
    }

    public int c() {
        int bitLength = (this.f13892a.f().bitLength() + 7) / 8;
        return this.f13893b ? bitLength - 1 : bitLength;
    }

    public int d() {
        int bitLength = (this.f13892a.f().bitLength() + 7) / 8;
        return this.f13893b ? bitLength : bitLength - 1;
    }

    public final EnumC2383o e(boolean z10, boolean z11) {
        boolean z12 = false;
        boolean z13 = z10 && z11;
        boolean z14 = !z10 && z11;
        if (!z10 && !z11) {
            z12 = true;
        }
        return z13 ? EnumC2383o.SIGNING : z14 ? EnumC2383o.ENCRYPTION : z12 ? EnumC2383o.VERIFYING : EnumC2383o.DECRYPTION;
    }

    public void f(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof Xi.x0) {
            interfaceC2379k = ((Xi.x0) interfaceC2379k).a();
        }
        this.f13893b = z10;
        Xi.F0 f02 = (Xi.F0) interfaceC2379k;
        this.f13892a = f02;
        Bi.r.a(new Hi.c(KeyProperties.KEY_ALGORITHM_RSA, Hi.b.a(f02.f()), this.f13892a, e(this.f13892a.c(), z10)));
    }

    public BigInteger g(BigInteger bigInteger) {
        Xi.G0 g02;
        BigInteger l10;
        Xi.F0 f02 = this.f13892a;
        if (!(f02 instanceof Xi.G0) || (l10 = (g02 = (Xi.G0) f02).l()) == null) {
            return bigInteger.modPow(this.f13892a.d(), this.f13892a.f());
        }
        BigInteger k10 = g02.k();
        BigInteger m10 = g02.m();
        BigInteger i10 = g02.i();
        BigInteger j10 = g02.j();
        BigInteger n10 = g02.n();
        BigInteger modPow = bigInteger.remainder(k10).modPow(i10, k10);
        BigInteger modPow2 = bigInteger.remainder(m10).modPow(j10, m10);
        BigInteger add = modPow.subtract(modPow2).multiply(n10).mod(k10).multiply(m10).add(modPow2);
        if (add.modPow(l10, g02.f()).equals(bigInteger)) {
            return add;
        }
        throw new IllegalStateException("RSA engine faulty decryption/signing detected");
    }
}
