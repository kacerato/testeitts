package tl;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;
import yl.C16210d;

public class C15476f {

    public static final String f117738a = "org.bouncycastle.pqc.jcajce.provider.frodo.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.FRODO", "org.bouncycastle.pqc.jcajce.provider.frodo.FrodoKeyFactorySpi");
            aVar.d("KeyPairGenerator.FRODO", "org.bouncycastle.pqc.jcajce.provider.frodo.FrodoKeyPairGeneratorSpi");
            aVar.d("KeyGenerator.FRODO", "org.bouncycastle.pqc.jcajce.provider.frodo.FrodoKeyGeneratorSpi");
            C16210d c16210d = new C16210d();
            aVar.d("Cipher.FRODO", "org.bouncycastle.pqc.jcajce.provider.frodo.FrodoCipherSpi$Base");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Cipher.");
            C14549x c14549x = InterfaceC15100a.f108009Y1;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "FRODO");
            l(aVar, c14549x, "Frodo", c16210d);
        }
    }
}
