package Oj;

import Xi.C3335c;
import Xi.P;
import Xi.T;
import ck.C4215h;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import org.bouncycastle.util.q;
import qj.InterfaceC15115a;

public class b implements Ij.d {

    public static final long f20264c = 1;

    public transient C3335c f20265b;

    public b(C3335c c3335c) {
        this.f20265b = c3335c;
    }

    private void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public C3335c a() {
        return this.f20265b;
    }

    public final void b(h0 h0Var) {
        byte[] J10 = h0Var.z().J();
        this.f20265b = InterfaceC15115a.f108210e.A(h0Var.u().u()) ? new T(J10) : new P(J10);
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
        return q.f(q.f102334a) ? "EdDSA" : this.f20265b instanceof T ? C4215h.f34910d : C4215h.f34909c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f20265b instanceof T) {
            byte[] bArr = h.f20292f;
            byte[] bArr2 = new byte[bArr.length + 57];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            ((T) this.f20265b).d(bArr2, bArr.length);
            return bArr2;
        }
        byte[] bArr3 = h.f20293g;
        byte[] bArr4 = new byte[bArr3.length + 32];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        ((P) this.f20265b).d(bArr4, bArr3.length);
        return bArr4;
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    public String toString() {
        return k.c("Public Key", getAlgorithm(), this.f20265b);
    }

    @Override
    public byte[] v3() {
        C3335c c3335c = this.f20265b;
        return c3335c instanceof T ? ((T) c3335c).getEncoded() : ((P) c3335c).getEncoded();
    }

    public b(h0 h0Var) {
        b(h0Var);
    }

    public b(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException {
        C3335c p10;
        int length = bArr.length;
        if (!k.b(bArr, bArr2)) {
            throw new InvalidKeySpecException("raw key data not recognised");
        }
        if (bArr2.length - length == 57) {
            p10 = new T(bArr2, length);
        } else {
            if (bArr2.length - length != 32) {
                throw new InvalidKeySpecException("raw key data not recognised");
            }
            p10 = new P(bArr2, length);
        }
        this.f20265b = p10;
    }
}
