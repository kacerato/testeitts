package Kj;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;
import wl.C16016c;

public class f {

    public static final String f11435a = "org.bouncycastle.pqc.jcajce.provider.dilithium.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.DILITHIUM", "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi");
            C14549x c14549x = InterfaceC15100a.f108115u1;
            c(aVar, "DILITHIUM2", "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base2", c14549x, new C16016c.a());
            C14549x c14549x2 = InterfaceC15100a.f108119v1;
            c(aVar, "DILITHIUM3", "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base3", c14549x2, new C16016c.C2195c());
            C14549x c14549x3 = InterfaceC15100a.f108123w1;
            c(aVar, "DILITHIUM5", "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base5", c14549x3, new C16016c.e());
            aVar.d("KeyPairGenerator.DILITHIUM", "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi");
            e(aVar, "DILITHIUM2", "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base2", c14549x);
            e(aVar, "DILITHIUM3", "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base3", c14549x2);
            e(aVar, "DILITHIUM5", "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base5", c14549x3);
            i(aVar, "DILITHIUM", "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base", InterfaceC15100a.f108111t1);
            i(aVar, "DILITHIUM2", "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base2", c14549x);
            i(aVar, "DILITHIUM3", "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base3", c14549x2);
            i(aVar, "DILITHIUM5", "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base5", c14549x3);
        }
    }
}
