package Dl;

import Bi.InterfaceC2379k;
import Xi.C3335c;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import pl.C15016d;

public class b implements InterfaceC2379k, PublicKey {

    public static final long f5281c = 1;

    public transient Rl.h f5282b;

    public b(Rl.h hVar) {
        this.f5282b = hVar;
    }

    private void g(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        f(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void h(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public Wl.e a() {
        return this.f5282b.e();
    }

    public int b() {
        return this.f5282b.f();
    }

    public C3335c c() {
        return this.f5282b;
    }

    public int d() {
        return this.f5282b.g();
    }

    public int e() {
        return this.f5282b.h();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f5282b.g() == bVar.d() && this.f5282b.h() == bVar.e() && this.f5282b.e().equals(bVar.a());
    }

    public final void f(h0 h0Var) throws IOException {
        this.f5282b = (Rl.h) C15016d.a(h0Var);
    }

    @Override
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new h0(new C13486b(Xk.m.f29576n), new Xk.j(this.f5282b.g(), this.f5282b.h(), this.f5282b.e(), dk.h.a(this.f5282b.d()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return ((this.f5282b.g() + (this.f5282b.h() * 37)) * 37) + this.f5282b.e().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.f5282b.g() + "\n") + " error correction capability: " + this.f5282b.h() + "\n") + " generator matrix           : " + this.f5282b.e().toString();
    }
}
