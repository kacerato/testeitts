package Kj;

import Lj.a;
import bk.AbstractC3896b;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;

public class b {

    public static final String f11429a = "org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.";

    public static final Map<String, String> f11430b;

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            for (C14549x c14549x : Lj.a.f14362a) {
                a.EnumC0400a enumC0400a = Lj.a.f14365d.get(c14549x);
                aVar.d("KeyFactory." + enumC0400a.b(), "org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.KeyFactorySpi");
                aVar.g("Alg.Alias.KeyFactory", c14549x, enumC0400a.b());
                aVar.d("KeyPairGenerator." + enumC0400a.b(), "org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.KeyPairGeneratorSpi$" + ((Object) enumC0400a));
                aVar.g("Alg.Alias.KeyPairGenerator", c14549x, enumC0400a.b());
                aVar.d("Signature." + enumC0400a.b(), "org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.SignatureSpi$" + ((Object) enumC0400a));
                aVar.g("Alg.Alias.Signature", c14549x, enumC0400a.b());
                aVar.c(c14549x, new Lj.b());
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f11430b = hashMap;
        hashMap.put("SupportedKeyClasses", "org.bouncycastle.jcajce.CompositePublicKey|org.bouncycastle.jcajce.CompositePrivateKey");
        hashMap.put("SupportedKeyFormats", "PKCS#8|X.509");
    }
}
