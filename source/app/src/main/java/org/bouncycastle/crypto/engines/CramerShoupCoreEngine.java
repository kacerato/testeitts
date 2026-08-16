package org.bouncycastle.crypto.engines;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Hi.c;
import Li.r;
import Xi.C3343g;
import Xi.C3347i;
import Xi.C3349j;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.b;
import org.bouncycastle.util.w;

public class CramerShoupCoreEngine {

    public static final BigInteger f101038e = BigInteger.valueOf(1);

    public C3343g f101039a;

    public SecureRandom f101040b;

    public boolean f101041c;

    public byte[] f101042d = null;

    public static class CramerShoupCiphertextException extends Exception {
        private static final long serialVersionUID = -6360977166495345076L;

        public CramerShoupCiphertextException(String str) {
            super(str);
        }
    }

    public BigInteger a(byte[] bArr, int i10, int i11) {
        if (i11 > f() + 1) {
            throw new DataLengthException("input too large for Cramer Shoup cipher.");
        }
        if (i11 == f() + 1 && this.f101041c) {
            throw new DataLengthException("input too large for Cramer Shoup cipher.");
        }
        if (i10 != 0 || i11 != bArr.length) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(this.f101039a.d().d()) < 0) {
            return bigInteger;
        }
        throw new DataLengthException("input too large for Cramer Shoup cipher.");
    }

    public byte[] b(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (this.f101041c) {
            if (byteArray[0] == 0) {
                int length = byteArray.length - 1;
                byte[] bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
                return bArr;
            }
        } else {
            if (byteArray[0] == 0 && byteArray.length > g()) {
                int length2 = byteArray.length - 1;
                byte[] bArr2 = new byte[length2];
                System.arraycopy(byteArray, 1, bArr2, 0, length2);
                return bArr2;
            }
            if (byteArray.length < g()) {
                int g10 = g();
                byte[] bArr3 = new byte[g10];
                System.arraycopy(byteArray, 0, bArr3, g10 - byteArray.length, byteArray.length);
                return bArr3;
            }
        }
        return byteArray;
    }

    public BigInteger c(r rVar) throws CramerShoupCiphertextException {
        if (this.f101039a.c() && !this.f101041c) {
            C3343g c3343g = this.f101039a;
            if (c3343g instanceof C3347i) {
                C3347i c3347i = (C3347i) c3343g;
                BigInteger d10 = c3347i.d().d();
                InterfaceC2392y c10 = c3347i.d().c();
                byte[] byteArray = rVar.b().toByteArray();
                c10.update(byteArray, 0, byteArray.length);
                byte[] byteArray2 = rVar.c().toByteArray();
                c10.update(byteArray2, 0, byteArray2.length);
                byte[] byteArray3 = rVar.a().toByteArray();
                c10.update(byteArray3, 0, byteArray3.length);
                byte[] bArr = this.f101042d;
                if (bArr != null) {
                    c10.update(bArr, 0, bArr.length);
                }
                byte[] bArr2 = new byte[c10.f()];
                c10.c(bArr2, 0);
                BigInteger bigInteger = new BigInteger(1, bArr2);
                if (rVar.f14053d.equals(rVar.f14050a.modPow(c3347i.f().add(c3347i.h().multiply(bigInteger)), d10).multiply(rVar.f14051b.modPow(c3347i.g().add(c3347i.i().multiply(bigInteger)), d10)).mod(d10))) {
                    return rVar.f14052c.multiply(rVar.f14050a.modPow(c3347i.j(), d10).modInverse(d10)).mod(d10);
                }
                throw new CramerShoupCiphertextException("Sorry, that ciphertext is not correct");
            }
        }
        return null;
    }

    public r d(BigInteger bigInteger) {
        if (this.f101039a.c() || !this.f101041c) {
            return null;
        }
        C3343g c3343g = this.f101039a;
        if (!(c3343g instanceof C3349j)) {
            return null;
        }
        C3349j c3349j = (C3349j) c3343g;
        BigInteger d10 = c3349j.d().d();
        BigInteger a10 = c3349j.d().a();
        BigInteger b10 = c3349j.d().b();
        BigInteger g10 = c3349j.g();
        if (!k(bigInteger, d10)) {
            return null;
        }
        BigInteger e10 = e(d10, this.f101040b);
        BigInteger modPow = a10.modPow(e10, d10);
        BigInteger modPow2 = b10.modPow(e10, d10);
        BigInteger mod = g10.modPow(e10, d10).multiply(bigInteger).mod(d10);
        InterfaceC2392y c10 = c3349j.d().c();
        byte[] byteArray = modPow.toByteArray();
        c10.update(byteArray, 0, byteArray.length);
        byte[] byteArray2 = modPow2.toByteArray();
        c10.update(byteArray2, 0, byteArray2.length);
        byte[] byteArray3 = mod.toByteArray();
        c10.update(byteArray3, 0, byteArray3.length);
        byte[] bArr = this.f101042d;
        if (bArr != null) {
            c10.update(bArr, 0, bArr.length);
        }
        byte[] bArr2 = new byte[c10.f()];
        c10.c(bArr2, 0);
        return new r(modPow, modPow2, mod, c3349j.e().modPow(e10, d10).multiply(c3349j.f().modPow(e10.multiply(new BigInteger(1, bArr2)), d10)).mod(d10));
    }

    public final BigInteger e(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger bigInteger2 = f101038e;
        return b.g(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
    }

    public int f() {
        int bitLength = (this.f101039a.d().d().bitLength() + 7) / 8;
        return this.f101041c ? bitLength - 1 : bitLength;
    }

    public int g() {
        int bitLength = (this.f101039a.d().d().bitLength() + 7) / 8;
        return this.f101041c ? bitLength : bitLength - 1;
    }

    public void h(boolean z10, InterfaceC2379k interfaceC2379k) {
        SecureRandom secureRandom;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f101039a = (C3343g) x0Var.a();
            secureRandom = x0Var.b();
        } else {
            this.f101039a = (C3343g) interfaceC2379k;
            secureRandom = null;
        }
        this.f101040b = j(z10, secureRandom);
        this.f101041c = z10;
        Bi.r.a(new c("CramerShoup", Hi.b.a(this.f101039a.d().d()), this.f101039a, Li.x0.a(z10)));
    }

    public void i(boolean z10, InterfaceC2379k interfaceC2379k, String str) {
        h(z10, interfaceC2379k);
        this.f101042d = w.n(str);
    }

    public SecureRandom j(boolean z10, SecureRandom secureRandom) {
        if (z10) {
            return Bi.r.i(secureRandom);
        }
        return null;
    }

    public final boolean k(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(bigInteger2) < 0;
    }
}
