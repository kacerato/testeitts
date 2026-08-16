package Li;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Xi.C3369t0;
import java.io.PrintStream;
import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class P implements InterfaceC2370b {

    public static BigInteger f13737e = BigInteger.valueOf(0);

    public static BigInteger f13738f = BigInteger.valueOf(1);

    public boolean f13739a;

    public C3369t0 f13740b;

    public Vector[] f13741c = null;

    public boolean f13742d = false;

    public static BigInteger f(Vector vector, Vector vector2) {
        BigInteger bigInteger = f13737e;
        BigInteger bigInteger2 = f13738f;
        for (int i10 = 0; i10 < vector2.size(); i10++) {
            bigInteger2 = bigInteger2.multiply((BigInteger) vector2.elementAt(i10));
        }
        for (int i11 = 0; i11 < vector2.size(); i11++) {
            BigInteger bigInteger3 = (BigInteger) vector2.elementAt(i11);
            BigInteger divide = bigInteger2.divide(bigInteger3);
            bigInteger = bigInteger.add(divide.multiply(divide.modInverse(bigInteger3)).multiply((BigInteger) vector.elementAt(i11)));
        }
        return bigInteger.mod(bigInteger2);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f13739a = z10;
        if (interfaceC2379k instanceof Xi.x0) {
            interfaceC2379k = ((Xi.x0) interfaceC2379k).a();
        }
        this.f13740b = (C3369t0) interfaceC2379k;
        if (!this.f13739a) {
            if (this.f13742d) {
                System.out.println("Constructing lookup Array");
            }
            Xi.u0 u0Var = (Xi.u0) this.f13740b;
            Vector h10 = u0Var.h();
            this.f13741c = new Vector[h10.size()];
            for (int i10 = 0; i10 < h10.size(); i10++) {
                BigInteger bigInteger = (BigInteger) h10.elementAt(i10);
                int intValue = bigInteger.intValue();
                this.f13741c[i10] = new Vector();
                this.f13741c[i10].addElement(f13738f);
                if (this.f13742d) {
                    System.out.println("Constructing lookup ArrayList for " + intValue);
                }
                BigInteger bigInteger2 = f13737e;
                for (int i11 = 1; i11 < intValue; i11++) {
                    bigInteger2 = bigInteger2.add(u0Var.g());
                    this.f13741c[i10].addElement(u0Var.d().modPow(bigInteger2.divide(bigInteger), u0Var.f()));
                }
            }
        }
        Bi.r.a(new Hi.c("NaccacheStern", Hi.b.a(this.f13740b.f()), interfaceC2379k, x0.a(z10)));
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.f13740b == null) {
            throw new IllegalStateException("NaccacheStern engine not initialised");
        }
        if (i11 > d() + 1) {
            throw new DataLengthException("input too large for Naccache-Stern cipher.\n");
        }
        if (!this.f13739a && i11 < d()) {
            throw new InvalidCipherTextException("BlockLength does not match modulus for Naccache-Stern cipher.\n");
        }
        if (i10 != 0 || i11 != bArr.length) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (this.f13742d) {
            System.out.println("input as BigInteger: " + ((Object) bigInteger));
        }
        if (this.f13739a) {
            return g(bigInteger);
        }
        Vector vector = new Vector();
        Xi.u0 u0Var = (Xi.u0) this.f13740b;
        Vector h10 = u0Var.h();
        for (int i12 = 0; i12 < h10.size(); i12++) {
            BigInteger modPow = bigInteger.modPow(u0Var.g().divide((BigInteger) h10.elementAt(i12)), u0Var.f());
            Vector vector2 = this.f13741c[i12];
            if (vector2.size() != ((BigInteger) h10.elementAt(i12)).intValue()) {
                if (this.f13742d) {
                    System.out.println("Prime is " + h10.elementAt(i12) + ", lookup table has size " + vector2.size());
                }
                throw new InvalidCipherTextException("Error in lookup Array for " + ((BigInteger) h10.elementAt(i12)).intValue() + ": Size mismatch. Expected ArrayList with length " + ((BigInteger) h10.elementAt(i12)).intValue() + " but found ArrayList of length " + this.f13741c[i12].size());
            }
            int indexOf = vector2.indexOf(modPow);
            if (indexOf == -1) {
                if (this.f13742d) {
                    PrintStream printStream = System.out;
                    printStream.println("Actual prime is " + h10.elementAt(i12));
                    printStream.println("Decrypted value is " + ((Object) modPow));
                    printStream.println("LookupList for " + h10.elementAt(i12) + " with size " + this.f13741c[i12].size() + " is: ");
                    for (int i13 = 0; i13 < this.f13741c[i12].size(); i13++) {
                        System.out.println(this.f13741c[i12].elementAt(i13));
                    }
                }
                throw new InvalidCipherTextException("Lookup failed");
            }
            vector.addElement(BigInteger.valueOf(indexOf));
        }
        return f(vector, h10).toByteArray();
    }

    @Override
    public int c() {
        return this.f13739a ? this.f13740b.f().toByteArray().length : ((this.f13740b.e() + 7) / 8) - 1;
    }

    @Override
    public int d() {
        return this.f13739a ? ((this.f13740b.e() + 7) / 8) - 1 : this.f13740b.f().toByteArray().length;
    }

    public byte[] e(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        if (this.f13739a) {
            if (bArr.length > c() || bArr2.length > c()) {
                throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
            }
        } else if (bArr.length > d() || bArr2.length > d()) {
            throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        BigInteger mod = bigInteger.multiply(bigInteger2).mod(this.f13740b.f());
        if (this.f13742d) {
            PrintStream printStream = System.out;
            printStream.println("c(m1) as BigInteger:....... " + ((Object) bigInteger));
            printStream.println("c(m2) as BigInteger:....... " + ((Object) bigInteger2));
            printStream.println("c(m1)*c(m2)%n = c(m1+m2)%n: " + ((Object) mod));
        }
        byte[] byteArray = this.f13740b.f().toByteArray();
        org.bouncycastle.util.a.e0(byteArray, (byte) 0);
        System.arraycopy(mod.toByteArray(), 0, byteArray, byteArray.length - mod.toByteArray().length, mod.toByteArray().length);
        return byteArray;
    }

    public byte[] g(BigInteger bigInteger) {
        byte[] byteArray = this.f13740b.f().toByteArray();
        org.bouncycastle.util.a.e0(byteArray, (byte) 0);
        byte[] byteArray2 = this.f13740b.d().modPow(bigInteger, this.f13740b.f()).toByteArray();
        System.arraycopy(byteArray2, 0, byteArray, byteArray.length - byteArray2.length, byteArray2.length);
        if (this.f13742d) {
            System.out.println("Encrypted value is:  " + ((Object) new BigInteger(byteArray)));
        }
        return byteArray;
    }

    public byte[] h(byte[] bArr) throws InvalidCipherTextException {
        byte[] b10;
        if (this.f13742d) {
            System.out.println();
        }
        if (bArr.length <= d()) {
            if (this.f13742d) {
                System.out.println("data size is less then input block size, processing directly");
            }
            return b(bArr, 0, bArr.length);
        }
        int d10 = d();
        int c10 = c();
        if (this.f13742d) {
            PrintStream printStream = System.out;
            printStream.println("Input blocksize is:  " + d10 + " bytes");
            printStream.println("Output blocksize is: " + c10 + " bytes");
            printStream.println("Data has length:.... " + bArr.length + " bytes");
        }
        byte[] bArr2 = new byte[((bArr.length / d10) + 1) * c10];
        int i10 = 0;
        int i11 = 0;
        while (i10 < bArr.length) {
            int i12 = i10 + d10;
            if (i12 < bArr.length) {
                b10 = b(bArr, i10, d10);
                i10 = i12;
            } else {
                b10 = b(bArr, i10, bArr.length - i10);
                i10 += bArr.length - i10;
            }
            if (this.f13742d) {
                System.out.println("new datapos is " + i10);
            }
            if (b10 == null) {
                if (this.f13742d) {
                    System.out.println("cipher returned null");
                }
                throw new InvalidCipherTextException("cipher returned null");
            }
            System.arraycopy(b10, 0, bArr2, i11, b10.length);
            i11 += b10.length;
        }
        byte[] bArr3 = new byte[i11];
        System.arraycopy(bArr2, 0, bArr3, 0, i11);
        if (this.f13742d) {
            System.out.println("returning " + i11 + " bytes");
        }
        return bArr3;
    }

    public void i(boolean z10) {
        this.f13742d = z10;
    }
}
