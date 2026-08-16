package Nl;

import Bi.InterfaceC2379k;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import oh.C14549x;
import pl.C15016d;
import pl.C15018f;
import ql.C15120B;
import sl.InterfaceC15337H;

public class b implements PublicKey, InterfaceC15337H {

    public static final long f16418d = 3230324130542413475L;

    public transient C14549x f16419b;

    public transient C15120B f16420c;

    public b(h0 h0Var) throws IOException {
        d(h0Var);
    }

    private void e(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        d(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void f(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public String a() {
        return e.d(this.f16419b);
    }

    @Override
    public int b() {
        return this.f16420c.e().b();
    }

    public InterfaceC2379k c() {
        return this.f16420c;
    }

    public final void d(h0 h0Var) throws IOException {
        C15120B c15120b = (C15120B) C15016d.a(h0Var);
        this.f16420c = c15120b;
        this.f16419b = e.b(c15120b.d());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f16419b.A(bVar.f16419b) && org.bouncycastle.util.a.g(this.f16420c.toByteArray(), bVar.f16420c.toByteArray());
    }

    @Override
    public final String getAlgorithm() {
        return "XMSSMT";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f16420c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public int getHeight() {
        return this.f16420c.e().a();
    }

    public int hashCode() {
        return this.f16419b.hashCode() + (org.bouncycastle.util.a.t0(this.f16420c.toByteArray()) * 37);
    }

    public b(C14549x c14549x, C15120B c15120b) {
        this.f16419b = c14549x;
        this.f16420c = c15120b;
    }
}
