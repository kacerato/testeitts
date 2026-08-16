package Nl;

import Bi.InterfaceC2379k;
import Xh.v;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.C14549x;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import ql.I;
import sl.InterfaceC15339J;

public class c implements PrivateKey, InterfaceC15339J {

    public static final long f16421e = 8568701712864512338L;

    public transient I f16422b;

    public transient C14549x f16423c;

    public transient G f16424d;

    public c(v vVar) throws IOException {
        d(vVar);
    }

    @Override
    public long S0() {
        return this.f16422b.S0();
    }

    @Override
    public InterfaceC15339J T0(int i10) {
        return new c(this.f16423c, this.f16422b.e(i10));
    }

    @Override
    public String a() {
        return e.d(this.f16423c);
    }

    public InterfaceC2379k b() {
        return this.f16422b;
    }

    public C14549x c() {
        return this.f16423c;
    }

    public final void d(v vVar) throws IOException {
        this.f16424d = vVar.u();
        this.f16423c = Xk.v.v(vVar.y().x()).x().u();
        this.f16422b = (I) C15014b.b(vVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f16423c.A(cVar.f16423c) && org.bouncycastle.util.a.g(this.f16422b.toByteArray(), cVar.f16422b.toByteArray());
    }

    public final void g(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        d(v.v((byte[]) objectInputStream.readObject()));
    }

    @Override
    public String getAlgorithm() {
        return "XMSS";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f16422b, this.f16424d).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public int getHeight() {
        return this.f16422b.i().b();
    }

    @Override
    public long getIndex() {
        if (S0() != 0) {
            return this.f16422b.g();
        }
        throw new IllegalStateException("key exhausted");
    }

    public final void h(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public int hashCode() {
        return this.f16423c.hashCode() + (org.bouncycastle.util.a.t0(this.f16422b.toByteArray()) * 37);
    }

    public c(C14549x c14549x, I i10) {
        this.f16423c = c14549x;
        this.f16422b = i10;
    }
}
