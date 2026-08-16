package Oj;

import Xi.C3335c;
import Xi.O0;
import Xi.R0;
import ck.C4207E;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import org.bouncycastle.util.q;
import qj.InterfaceC15115a;

public class d implements Ij.g {

    public static final long f20272c = 1;

    public transient C3335c f20273b;

    public d(C3335c c3335c) {
        this.f20273b = c3335c;
    }

    private void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public BigInteger Ca() {
        byte[] ne2 = ne();
        org.bouncycastle.util.a.Q0(ne2);
        return new BigInteger(1, ne2);
    }

    public C3335c a() {
        return this.f20273b;
    }

    public final void b(h0 h0Var) {
        byte[] J10 = h0Var.z().J();
        this.f20273b = InterfaceC15115a.f108208c.A(h0Var.u().u()) ? new R0(J10) : new O0(J10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PublicKey) {
            return org.bouncycastle.util.a.g(((PublicKey) obj).getEncoded(), getEncoded());
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        return q.f(q.f102334a) ? "XDH" : this.f20273b instanceof R0 ? C4207E.f34889d : C4207E.f34888c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f20273b instanceof R0) {
            byte[] bArr = h.f20290d;
            byte[] bArr2 = new byte[bArr.length + 56];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            ((R0) this.f20273b).d(bArr2, bArr.length);
            return bArr2;
        }
        byte[] bArr3 = h.f20291e;
        byte[] bArr4 = new byte[bArr3.length + 32];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        ((O0) this.f20273b).d(bArr4, bArr3.length);
        return bArr4;
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public byte[] ne() {
        C3335c c3335c = this.f20273b;
        return c3335c instanceof R0 ? ((R0) c3335c).getEncoded() : ((O0) c3335c).getEncoded();
    }

    public String toString() {
        return k.c("Public Key", getAlgorithm(), this.f20273b);
    }

    public d(h0 h0Var) {
        b(h0Var);
    }

    public d(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException {
        C3335c o02;
        int length = bArr.length;
        if (!k.b(bArr, bArr2)) {
            throw new InvalidKeySpecException("raw key data not recognised");
        }
        if (bArr2.length - length == 56) {
            o02 = new R0(bArr2, length);
        } else {
            if (bArr2.length - length != 32) {
                throw new InvalidKeySpecException("raw key data not recognised");
            }
            o02 = new O0(bArr2, length);
        }
        this.f20273b = o02;
    }
}
