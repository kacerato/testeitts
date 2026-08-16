package Fj;

import Dj.m;
import Ek.K;
import java.security.Provider;
import org.bouncycastle.operator.OperatorCreationException;

public class g {

    public final org.bouncycastle.operator.jcajce.d f6986a = new org.bouncycastle.operator.jcajce.d();

    public m a(Dj.j jVar, K.a aVar) throws OperatorCreationException {
        return new m(jVar, this.f6986a.b(), aVar);
    }

    public g b(String str) {
        this.f6986a.d(str);
        return this;
    }

    public g c(Provider provider) {
        this.f6986a.e(provider);
        return this;
    }
}
