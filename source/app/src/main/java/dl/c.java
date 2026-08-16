package Dl;

import Bi.InterfaceC2379k;
import Rl.q;
import Wl.x;
import Wl.y;
import Xh.v;
import Xi.C3335c;
import hi.C13486b;
import java.io.IOException;
import java.security.PrivateKey;

public class c implements InterfaceC2379k, PrivateKey {

    public static final long f5283c = 1;

    public q f5284b;

    public c(q qVar) {
        this.f5284b = qVar;
    }

    public Wl.h a() {
        return this.f5284b.e();
    }

    public y b() {
        return this.f5284b.f();
    }

    public Wl.e c() {
        return this.f5284b.g();
    }

    public int d() {
        return this.f5284b.h();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return h() == cVar.h() && d() == cVar.d() && a().equals(cVar.a()) && b().equals(cVar.b()) && l().equals(cVar.l()) && i().equals(cVar.i()) && j().equals(cVar.j());
    }

    public C3335c g() {
        return this.f5284b;
    }

    @Override
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new v(new C13486b(Xk.m.f29575m), new Xk.k(this.f5284b.i(), this.f5284b.h(), this.f5284b.e(), this.f5284b.f(), this.f5284b.j(), this.f5284b.k(), this.f5284b.m())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int h() {
        return this.f5284b.i();
    }

    public int hashCode() {
        return (((((((((((this.f5284b.h() * 37) + this.f5284b.i()) * 37) + this.f5284b.e().hashCode()) * 37) + this.f5284b.f().hashCode()) * 37) + this.f5284b.j().hashCode()) * 37) + this.f5284b.k().hashCode()) * 37) + this.f5284b.m().hashCode();
    }

    public x i() {
        return this.f5284b.j();
    }

    public x j() {
        return this.f5284b.k();
    }

    public y[] k() {
        return this.f5284b.l();
    }

    public Wl.e l() {
        return this.f5284b.m();
    }
}
