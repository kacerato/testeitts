package Wj;

import bk.AbstractC3896b;
import org.bouncycastle.util.q;

public class a {

    public static final String f27792a = "org.bouncycastle.jcajce.provider.keystore.bc.";

    public static class C0775a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyStore.BKS", "org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Std");
            if (q.f("org.bouncycastle.bks.enable_v1")) {
                aVar.d("KeyStore.BKS-V1", "org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Version1");
            }
            aVar.d("KeyStore.BouncyCastle", "org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$BouncyCastleStore");
            aVar.d("Alg.Alias.KeyStore.UBER", "BouncyCastle");
            aVar.d("Alg.Alias.KeyStore.BOUNCYCASTLE", "BouncyCastle");
            aVar.d("Alg.Alias.KeyStore.bouncycastle", "BouncyCastle");
        }
    }
}
