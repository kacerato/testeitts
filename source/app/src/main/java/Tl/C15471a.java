package tl;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;
import ul.C15645d;

public class C15471a {

    public static final String f117726a = "org.bouncycastle.pqc.jcajce.provider.bike.";

    public static class C2019a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.BIKE", "org.bouncycastle.pqc.jcajce.provider.bike.BIKEKeyFactorySpi");
            aVar.d("KeyPairGenerator.BIKE", "org.bouncycastle.pqc.jcajce.provider.bike.BIKEKeyPairGeneratorSpi");
            aVar.d("KeyGenerator.BIKE", "org.bouncycastle.pqc.jcajce.provider.bike.BIKEKeyGeneratorSpi");
            C15645d c15645d = new C15645d();
            aVar.d("Cipher.BIKE", "org.bouncycastle.pqc.jcajce.provider.bike.BIKECipherSpi$Base");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Cipher.");
            C14549x c14549x = InterfaceC15100a.f108069k3;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "BIKE");
            b(aVar, "BIKE128", "org.bouncycastle.pqc.jcajce.provider.bike.BIKECipherSpi$BIKE128", InterfaceC15100a.f108074l3);
            b(aVar, "BIKE192", "org.bouncycastle.pqc.jcajce.provider.bike.BIKECipherSpi$BIKE192", InterfaceC15100a.f108079m3);
            b(aVar, "BIKE256", "org.bouncycastle.pqc.jcajce.provider.bike.BIKECipherSpi$BIKE256", InterfaceC15100a.f108084n3);
            l(aVar, c14549x, "BIKE", c15645d);
        }
    }
}
