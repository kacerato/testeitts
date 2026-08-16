package Nl;

import Bi.InterfaceC2379k;
import Xh.v;
import Xk.w;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.C14549x;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import ql.C15119A;
import sl.InterfaceC15338I;

public class a implements PrivateKey, InterfaceC15338I {

    public static final long f16414e = 7682140473044521395L;

    public transient C14549x f16415b;

    public transient C15119A f16416c;

    public transient G f16417d;

    public a(v vVar) throws IOException {
        g(vVar);
    }

    @Override
    public long S0() {
        return this.f16416c.S0();
    }

    @Override
    public InterfaceC15338I T0(int i10) {
        return new a(this.f16415b, this.f16416c.e(i10));
    }

    @Override
    public String a() {
        return e.d(this.f16415b);
    }

    @Override
    public int b() {
        return this.f16416c.i().b();
    }

    public InterfaceC2379k c() {
        return this.f16416c;
    }

    public C14549x d() {
        return this.f16415b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f16415b.A(aVar.f16415b) && org.bouncycastle.util.a.g(this.f16416c.toByteArray(), aVar.f16416c.toByteArray());
    }

    public final void g(v vVar) throws IOException {
        this.f16417d = vVar.u();
        this.f16415b = w.v(vVar.y().x()).y().u();
        this.f16416c = (C15119A) C15014b.b(vVar);
    }

    @Override
    public String getAlgorithm() {
        return "XMSSMT";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f16416c, this.f16417d).getEncoded();
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
        return this.f16416c.i().a();
    }

    @Override
    public long getIndex() {
        if (S0() != 0) {
            return this.f16416c.g();
        }
        throw new IllegalStateException("key exhausted");
    }

    public final void h(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        g(v.v((byte[]) objectInputStream.readObject()));
    }

    public int hashCode() {
        return this.f16415b.hashCode() + (org.bouncycastle.util.a.t0(this.f16416c.toByteArray()) * 37);
    }

    public final void i(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public a(C14549x c14549x, C15119A c15119a) {
        this.f16415b = c14549x;
        this.f16416c = c15119a;
    }
}
