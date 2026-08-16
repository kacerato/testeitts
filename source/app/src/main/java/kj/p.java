package Kj;

import bk.AbstractC3896b;
import oh.C14549x;

public class p {

    public static final String f11453a = "org.bouncycastle.pqc.jcajce.provider.lms.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.LMS", "org.bouncycastle.pqc.jcajce.provider.lms.LMSKeyFactorySpi");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.KeyFactory.");
            C14549x c14549x = Xh.t.f29047Q2;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "LMS");
            aVar.d("KeyPairGenerator.LMS", "org.bouncycastle.pqc.jcajce.provider.lms.LMSKeyPairGeneratorSpi");
            aVar.d("Alg.Alias.KeyPairGenerator." + ((Object) c14549x), "LMS");
            aVar.d("Signature.LMS", "org.bouncycastle.pqc.jcajce.provider.lms.LMSSignatureSpi$generic");
            aVar.d("Alg.Alias.Signature." + ((Object) c14549x), "LMS");
        }
    }
}
