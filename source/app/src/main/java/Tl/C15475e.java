package tl;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;
import xl.c;

public class C15475e {

    public static final String f117737a = "org.bouncycastle.pqc.jcajce.provider.falcon.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.FALCON", "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi");
            C14549x c14549x = InterfaceC15100a.f108102r1;
            c(aVar, "FALCON-512", "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi$Falcon512", c14549x, new c.b());
            C14549x c14549x2 = InterfaceC15100a.f108107s1;
            c(aVar, "FALCON-1024", "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi$Falcon1024", c14549x2, new c.a());
            aVar.d("KeyPairGenerator.FALCON", "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi");
            e(aVar, "FALCON-512", "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi$Falcon512", c14549x);
            e(aVar, "FALCON-1024", "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi$Falcon1024", c14549x2);
            i(aVar, "FALCON", "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Base", InterfaceC15100a.f108097q1);
            i(aVar, "FALCON-512", "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Falcon512", c14549x);
            i(aVar, "FALCON-1024", "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Falcon1024", c14549x2);
        }
    }
}
