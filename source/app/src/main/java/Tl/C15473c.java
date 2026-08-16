package tl;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;

public class C15473c {

    public static final String f117735a = "org.bouncycastle.pqc.jcajce.provider.cmce.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.CMCE", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCEKeyFactorySpi");
            aVar.d("KeyPairGenerator.CMCE", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCEKeyPairGeneratorSpi");
            aVar.d("KeyGenerator.CMCE", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCEKeyGeneratorSpi");
            vl.d dVar = new vl.d();
            aVar.d("Cipher.CMCE", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$Base");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Cipher.");
            C14549x c14549x = InterfaceC15100a.f107965N1;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "CMCE");
            b(aVar, "mceliece348864", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE348864", InterfaceC15100a.f107969O1);
            b(aVar, "mceliece460896", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE460896", InterfaceC15100a.f107977Q1);
            b(aVar, "mceliece6688128", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE6688128", InterfaceC15100a.f107985S1);
            b(aVar, "mceliece6960119", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE6960119", InterfaceC15100a.f107993U1);
            b(aVar, "mceliece8192128", "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE8192128", InterfaceC15100a.f108001W1);
            l(aVar, c14549x, "CMCE", dVar);
            n(aVar, c14549x, "CMCE");
        }
    }
}
