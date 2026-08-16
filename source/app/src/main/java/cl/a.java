package Cl;

import Bi.InterfaceC2379k;
import Xh.v;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.G;
import org.bouncycastle.pqc.crypto.lms.t;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15354o;

public class a implements PrivateKey, InterfaceC15354o {

    public static final long f4479d = 8568701712864512338L;

    public transient t f4480b;

    public transient G f4481c;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    @Override
    public long S0() {
        t tVar = this.f4480b;
        return tVar instanceof org.bouncycastle.pqc.crypto.lms.v ? ((org.bouncycastle.pqc.crypto.lms.v) tVar).S0() : ((org.bouncycastle.pqc.crypto.lms.f) tVar).S0();
    }

    @Override
    public InterfaceC15354o T0(int i10) {
        t tVar = this.f4480b;
        return tVar instanceof org.bouncycastle.pqc.crypto.lms.v ? new a(((org.bouncycastle.pqc.crypto.lms.v) tVar).e(i10)) : new a(((org.bouncycastle.pqc.crypto.lms.f) tVar).d(i10));
    }

    public InterfaceC2379k a() {
        return this.f4480b;
    }

    public final void b(v vVar) throws IOException {
        this.f4481c = vVar.u();
        this.f4480b = (t) C15014b.b(vVar);
    }

    public final void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(v.v((byte[]) objectInputStream.readObject()));
    }

    public final void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        try {
            return org.bouncycastle.util.a.g(this.f4480b.getEncoded(), ((a) obj).f4480b.getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("unable to perform equals");
        }
    }

    @Override
    public String getAlgorithm() {
        return "LMS";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f4480b, this.f4481c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public long getIndex() {
        if (S0() == 0) {
            throw new IllegalStateException("key exhausted");
        }
        t tVar = this.f4480b;
        return tVar instanceof org.bouncycastle.pqc.crypto.lms.v ? ((org.bouncycastle.pqc.crypto.lms.v) tVar).j() : ((org.bouncycastle.pqc.crypto.lms.f) tVar).e();
    }

    @Override
    public int getLevels() {
        t tVar = this.f4480b;
        if (tVar instanceof org.bouncycastle.pqc.crypto.lms.v) {
            return 1;
        }
        return ((org.bouncycastle.pqc.crypto.lms.f) tVar).j();
    }

    public int hashCode() {
        try {
            return org.bouncycastle.util.a.t0(this.f4480b.getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("unable to calculate hashCode");
        }
    }

    public a(t tVar) {
        this.f4480b = tVar;
    }
}
