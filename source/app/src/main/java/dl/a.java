package Dl;

import Wl.x;
import Wl.y;
import Xh.v;
import Xi.C3335c;
import hi.C13486b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import pl.C15014b;

public class a implements PrivateKey {

    public static final long f5279c = 1;

    public transient Rl.g f5280b;

    public a(Rl.g gVar) {
        this.f5280b = gVar;
    }

    public Wl.h a() {
        return this.f5280b.e();
    }

    public y b() {
        return this.f5280b.f();
    }

    public Wl.e c() {
        return this.f5280b.g();
    }

    public int d() {
        return this.f5280b.h();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h() == aVar.h() && d() == aVar.d() && a().equals(aVar.a()) && b().equals(aVar.b()) && i().equals(aVar.i()) && c().equals(aVar.c());
    }

    public C3335c g() {
        return this.f5280b;
    }

    @Override
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new v(new C13486b(Xk.m.f29576n), new Xk.i(h(), d(), a(), b(), i(), dk.h.a(this.f5280b.d()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int h() {
        return this.f5280b.i();
    }

    public int hashCode() {
        return (((((((((this.f5280b.h() * 37) + this.f5280b.i()) * 37) + this.f5280b.e().hashCode()) * 37) + this.f5280b.f().hashCode()) * 37) + this.f5280b.j().hashCode()) * 37) + this.f5280b.g().hashCode();
    }

    public x i() {
        return this.f5280b.j();
    }

    public y[] j() {
        return this.f5280b.k();
    }

    public int k() {
        return this.f5280b.f().n();
    }

    public final void l(v vVar) throws IOException {
        this.f5280b = (Rl.g) C15014b.b(vVar);
    }

    public final void m(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        l(v.v((byte[]) objectInputStream.readObject()));
    }

    public final void n(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }
}
