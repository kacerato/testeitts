package Li;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import android.security.keystore.KeyProperties;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.DataLengthException;

public class C2800z implements InterfaceC2370b {

    public static final BigInteger f14355e = BigInteger.valueOf(0);

    public static final BigInteger f14356f = BigInteger.valueOf(1);

    public static final BigInteger f14357g = BigInteger.valueOf(2);

    public Xi.V f14358a;

    public SecureRandom f14359b;

    public boolean f14360c;

    public int f14361d;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        SecureRandom h10;
        if (interfaceC2379k instanceof Xi.x0) {
            Xi.x0 x0Var = (Xi.x0) interfaceC2379k;
            this.f14358a = (Xi.V) x0Var.a();
            h10 = x0Var.b();
        } else {
            this.f14358a = (Xi.V) interfaceC2379k;
            h10 = Bi.r.h();
        }
        this.f14359b = h10;
        this.f14360c = z10;
        this.f14361d = this.f14358a.d().c().bitLength();
        Xi.V v10 = this.f14358a;
        if (z10) {
            if (!(v10 instanceof Xi.Y)) {
                throw new IllegalArgumentException("ElGamalPublicKeyParameters are required for encryption.");
            }
        } else if (!(v10 instanceof Xi.X)) {
            throw new IllegalArgumentException("ElGamalPrivateKeyParameters are required for decryption.");
        }
        Bi.r.a(new Hi.c(KeyProperties.KEY_ALGORITHM_RSA, Hi.b.a(this.f14358a.d().c()), this.f14358a, x0.a(z10)));
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) {
        BigInteger f10;
        if (this.f14358a == null) {
            throw new IllegalStateException("ElGamal engine not initialised");
        }
        if (i11 > (this.f14360c ? (this.f14361d + 6) / 8 : d())) {
            throw new DataLengthException("input too large for ElGamal cipher.\n");
        }
        BigInteger c10 = this.f14358a.d().c();
        if (this.f14358a instanceof Xi.X) {
            int i12 = i11 / 2;
            byte[] bArr2 = new byte[i12];
            byte[] bArr3 = new byte[i12];
            System.arraycopy(bArr, i10, bArr2, 0, i12);
            System.arraycopy(bArr, i10 + i12, bArr3, 0, i12);
            return org.bouncycastle.util.b.c(new BigInteger(1, bArr2).modPow(c10.subtract(f14356f).subtract(((Xi.X) this.f14358a).e()), c10).multiply(new BigInteger(1, bArr3)).mod(c10));
        }
        if (i10 != 0 || i11 != bArr.length) {
            byte[] bArr4 = new byte[i11];
            System.arraycopy(bArr, i10, bArr4, 0, i11);
            bArr = bArr4;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(c10) >= 0) {
            throw new DataLengthException("input too large for ElGamal cipher.\n");
        }
        Xi.Y y10 = (Xi.Y) this.f14358a;
        int bitLength = c10.bitLength();
        while (true) {
            f10 = org.bouncycastle.util.b.f(bitLength, this.f14359b);
            if (!f10.equals(f14355e) && f10.compareTo(c10.subtract(f14357g)) <= 0) {
                break;
            }
        }
        BigInteger modPow = this.f14358a.d().a().modPow(f10, c10);
        BigInteger mod = bigInteger.multiply(y10.e().modPow(f10, c10)).mod(c10);
        byte[] byteArray = modPow.toByteArray();
        byte[] byteArray2 = mod.toByteArray();
        int c11 = c();
        byte[] bArr5 = new byte[c11];
        int i13 = c11 / 2;
        if (byteArray.length > i13) {
            System.arraycopy(byteArray, 1, bArr5, i13 - (byteArray.length - 1), byteArray.length - 1);
        } else {
            System.arraycopy(byteArray, 0, bArr5, i13 - byteArray.length, byteArray.length);
        }
        if (byteArray2.length > i13) {
            System.arraycopy(byteArray2, 1, bArr5, c11 - (byteArray2.length - 1), byteArray2.length - 1);
        } else {
            System.arraycopy(byteArray2, 0, bArr5, c11 - byteArray2.length, byteArray2.length);
        }
        return bArr5;
    }

    @Override
    public int c() {
        return this.f14360c ? ((this.f14361d + 7) / 8) * 2 : (this.f14361d - 1) / 8;
    }

    @Override
    public int d() {
        return this.f14360c ? (this.f14361d - 1) / 8 : ((this.f14361d + 7) / 8) * 2;
    }
}
