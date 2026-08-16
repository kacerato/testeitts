package Cl;

import Bi.InterfaceC2379k;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.crypto.lms.g;
import org.bouncycastle.pqc.crypto.lms.t;
import org.bouncycastle.pqc.crypto.lms.w;
import pl.C15016d;
import pl.C15018f;
import sl.InterfaceC15353n;

public class b implements PublicKey, InterfaceC15353n {

    public static final long f4482c = -5617456225328969766L;

    public transient t f4483b;

    public b(h0 h0Var) throws IOException {
        b(h0Var);
    }

    private void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public InterfaceC2379k a() {
        return this.f4483b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f4483b = (t) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            try {
                return org.bouncycastle.util.a.g(this.f4483b.getEncoded(), ((b) obj).f4483b.getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "LMS";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f4483b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public int getLevels() {
        t tVar = this.f4483b;
        if (tVar instanceof w) {
            return 1;
        }
        return ((g) tVar).e();
    }

    public int hashCode() {
        try {
            return org.bouncycastle.util.a.t0(this.f4483b.getEncoded());
        } catch (IOException unused) {
            return -1;
        }
    }

    public b(t tVar) {
        this.f4483b = tVar;
    }
}
