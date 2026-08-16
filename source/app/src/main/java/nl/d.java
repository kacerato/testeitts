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
import ql.J;
import sl.InterfaceC15336G;

public class d implements PublicKey, InterfaceC15336G {

    public static final long f16425d = -5617456225328969766L;

    public transient J f16426b;

    public transient C14549x f16427c;

    public d(h0 h0Var) throws IOException {
        c(h0Var);
    }

    private void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        c(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void e(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public String a() {
        return e.d(this.f16427c);
    }

    public InterfaceC2379k b() {
        return this.f16426b;
    }

    public final void c(h0 h0Var) throws IOException {
        J j10 = (J) C15016d.a(h0Var);
        this.f16426b = j10;
        this.f16427c = e.b(j10.d());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            try {
                if (this.f16427c.A(dVar.f16427c)) {
                    if (org.bouncycastle.util.a.g(this.f16426b.getEncoded(), dVar.f16426b.getEncoded())) {
                        return true;
                    }
                }
                return false;
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "XMSS";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f16426b).getEncoded();
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
        return this.f16426b.e().b();
    }

    public int hashCode() {
        try {
            return this.f16427c.hashCode() + (org.bouncycastle.util.a.t0(this.f16426b.getEncoded()) * 37);
        } catch (IOException unused) {
            return this.f16427c.hashCode();
        }
    }

    public d(C14549x c14549x, J j10) {
        this.f16427c = c14549x;
        this.f16426b = j10;
    }
}
