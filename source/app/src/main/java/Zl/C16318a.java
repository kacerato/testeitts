package zl;

import Bi.InterfaceC2379k;
import Ml.e;
import Pl.f;
import Pl.h;
import Xk.m;
import Xk.n;
import hi.C13486b;
import java.security.PublicKey;

public class C16318a implements InterfaceC2379k, PublicKey {

    public static final long f131494e = 1;

    public byte[] f131495b;

    public f f131496c;

    public f f131497d;

    public C16318a(h hVar) {
        this(hVar.e(), hVar.d());
    }

    public f a() {
        return this.f131496c;
    }

    public byte[] b() {
        return this.f131495b;
    }

    @Override
    public String getAlgorithm() {
        return "GMSS";
    }

    @Override
    public byte[] getEncoded() {
        return e.e(new C13486b(m.f29566g, new n(this.f131496c.c(), this.f131496c.a(), this.f131496c.d(), this.f131496c.b()).r()), new Xk.f(this.f131495b));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public String toString() {
        String str = "GMSS public key : " + new String(em.h.h(this.f131495b)) + "\nHeight of Trees: \n";
        for (int i10 = 0; i10 < this.f131496c.a().length; i10++) {
            str = str + "Layer " + i10 + " : " + this.f131496c.a()[i10] + " WinternitzParameter: " + this.f131496c.d()[i10] + " K: " + this.f131496c.b()[i10] + "\n";
        }
        return str;
    }

    public C16318a(byte[] bArr, f fVar) {
        this.f131496c = fVar;
        this.f131495b = bArr;
    }
}
