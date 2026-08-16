package Dl;

import Rl.r;
import Xi.C3335c;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.PublicKey;

public class d implements PublicKey {

    public static final long f5285c = 1;

    public r f5286b;

    public d(r rVar) {
        this.f5286b = rVar;
    }

    public Wl.e a() {
        return this.f5286b.e();
    }

    public int b() {
        return this.f5286b.f();
    }

    public C3335c c() {
        return this.f5286b;
    }

    public int d() {
        return this.f5286b.g();
    }

    public int e() {
        return this.f5286b.h();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f5286b.g() == dVar.d() && this.f5286b.h() == dVar.e() && this.f5286b.e().equals(dVar.a());
    }

    @Override
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new h0(new C13486b(Xk.m.f29575m), new Xk.l(this.f5286b.g(), this.f5286b.h(), this.f5286b.e())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return ((this.f5286b.g() + (this.f5286b.h() * 37)) * 37) + this.f5286b.e().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.f5286b.g() + "\n") + " error correction capability: " + this.f5286b.h() + "\n") + " generator matrix           : " + ((Object) this.f5286b.e());
    }
}
