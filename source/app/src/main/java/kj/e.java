package Kj;

import bk.AbstractC3896b;
import di.InterfaceC12928g;
import oh.C14549x;

public class e {

    public static final String f11434a = "org.bouncycastle.jcajce.provider.asymmetric.dstu.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.DSTU4145", "org.bouncycastle.jcajce.provider.asymmetric.dstu.KeyFactorySpi");
            aVar.d("Alg.Alias.KeyFactory.DSTU-4145-2002", "DSTU4145");
            aVar.d("Alg.Alias.KeyFactory.DSTU4145-3410", "DSTU4145");
            C14549x c14549x = InterfaceC12928g.f84698b;
            l(aVar, c14549x, "DSTU4145", new Nj.c());
            n(aVar, c14549x, "DSTU4145");
            C14549x c14549x2 = InterfaceC12928g.f84699c;
            l(aVar, c14549x2, "DSTU4145", new Nj.c());
            n(aVar, c14549x2, "DSTU4145");
            aVar.d("KeyPairGenerator.DSTU4145", "org.bouncycastle.jcajce.provider.asymmetric.dstu.KeyPairGeneratorSpi");
            aVar.d("Alg.Alias.KeyPairGenerator.DSTU-4145", "DSTU4145");
            aVar.d("Alg.Alias.KeyPairGenerator.DSTU-4145-2002", "DSTU4145");
            aVar.d("Signature.DSTU4145", "org.bouncycastle.jcajce.provider.asymmetric.dstu.SignatureSpi");
            aVar.d("Alg.Alias.Signature.DSTU-4145", "DSTU4145");
            aVar.d("Alg.Alias.Signature.DSTU-4145-2002", "DSTU4145");
            g(aVar, "GOST3411", "DSTU4145LE", "org.bouncycastle.jcajce.provider.asymmetric.dstu.SignatureSpiLe", c14549x);
            g(aVar, "GOST3411", "DSTU4145", "org.bouncycastle.jcajce.provider.asymmetric.dstu.SignatureSpi", c14549x2);
        }
    }
}
