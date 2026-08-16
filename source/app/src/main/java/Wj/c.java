package Wj;

import bk.AbstractC3896b;
import org.bouncycastle.util.q;

public class c {

    public static final String f27794a = "org.bouncycastle.jcajce.provider.keystore.pkcs12.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            String d10 = q.d("org.bouncycastle.pkcs12.default");
            if (d10 != null) {
                aVar.d("Alg.Alias.KeyStore.PKCS12", d10);
                aVar.d("Alg.Alias.KeyStore.BCPKCS12", d10);
                aVar.d("Alg.Alias.KeyStore.PKCS12-DEF", d10.substring(0, 5) + "-DEF" + d10.substring(6));
            } else {
                aVar.d("KeyStore.PKCS12", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$BCPKCS12KeyStore");
                aVar.d("KeyStore.BCPKCS12", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$BCPKCS12KeyStore");
                aVar.d("KeyStore.PKCS12-DEF", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$DefPKCS12KeyStore");
            }
            aVar.d("KeyStore.PKCS12-3DES-40RC2", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$BCPKCS12KeyStore");
            aVar.d("KeyStore.PKCS12-3DES-3DES", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$BCPKCS12KeyStore3DES");
            aVar.d("KeyStore.PKCS12-AES256-AES128", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$DefPKCS12KeyStoreAES256");
            aVar.d("KeyStore.PKCS12-AES256-AES128-GCM", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$DefPKCS12KeyStoreAES256GCM");
            aVar.d("KeyStore.PKCS12-DEF-3DES-40RC2", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$DefPKCS12KeyStore");
            aVar.d("KeyStore.PKCS12-DEF-3DES-3DES", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$DefPKCS12KeyStore3DES");
            aVar.d("KeyStore.PKCS12-DEF-AES256-AES128", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$DefPKCS12KeyStoreAES256");
            aVar.d("KeyStore.PKCS12-DEF-AES256-AES128-GCM", "org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$DefPKCS12KeyStoreAES256GCM");
        }
    }
}
