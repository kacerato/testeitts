package tl;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;
import tj.InterfaceC15463a;

public class s {

    public static final String f117751a = "org.bouncycastle.pqc.jcajce.provider.xmss.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.XMSS", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyFactorySpi");
            aVar.d("KeyPairGenerator.XMSS", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyPairGeneratorSpi");
            aVar.d("Signature.XMSS", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$generic");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Signature.");
            C14549x c14549x = InterfaceC15463a.f117695a;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "XMSS");
            aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x), "XMSS");
            i(aVar, "XMSS-SHA256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256", InterfaceC15100a.f107915B);
            i(aVar, "XMSS-SHAKE128", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128", InterfaceC15100a.f107923D);
            i(aVar, "XMSS-SHA512", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512", InterfaceC15100a.f107919C);
            i(aVar, "XMSS-SHAKE256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256", InterfaceC15100a.f107927E);
            g(aVar, "SHA256", "XMSS-SHA256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256andPrehash", InterfaceC15100a.f108125x);
            g(aVar, "SHAKE128", "XMSS-SHAKE128", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128andPrehash", InterfaceC15100a.f107931F);
            g(aVar, "SHAKE128(512)", "XMSS-SHAKE128", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128_512andPrehash", InterfaceC15100a.f108133z);
            g(aVar, "SHA512", "XMSS-SHA512", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512andPrehash", InterfaceC15100a.f108129y);
            g(aVar, "SHAKE256", "XMSS-SHAKE256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256andPrehash", InterfaceC15100a.f107935G);
            g(aVar, "SHAKE256(1024)", "XMSS-SHAKE256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256_1024andPrehash", InterfaceC15100a.f107911A);
            aVar.d("Alg.Alias.Signature.SHA256WITHXMSS", "SHA256WITHXMSS-SHA256");
            aVar.d("Alg.Alias.Signature.SHAKE128WITHXMSS", "SHAKE128WITHXMSS-SHAKE128");
            aVar.d("Alg.Alias.Signature.SHAKE128(512)WITHXMSS", "SHAKE128(512)WITHXMSS-SHAKE128");
            aVar.d("Alg.Alias.Signature.SHA512WITHXMSS", "SHA512WITHXMSS-SHA512");
            aVar.d("Alg.Alias.Signature.SHAKE256WITHXMSS", "SHAKE256WITHXMSS-SHAKE256");
            aVar.d("Alg.Alias.Signature.SHAKE256(1024)WITHXMSS", "SHAKE256(1024)WITHXMSS-SHAKE256");
            aVar.d("KeyFactory.XMSSMT", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyFactorySpi");
            aVar.d("KeyPairGenerator.XMSSMT", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyPairGeneratorSpi");
            aVar.d("Signature.XMSSMT", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$generic");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.Signature.");
            C14549x c14549x2 = InterfaceC15463a.f117696b;
            sb3.append((Object) c14549x2);
            aVar.d(sb3.toString(), "XMSSMT");
            aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x2), "XMSSMT");
            i(aVar, "XMSSMT-SHA256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256", InterfaceC15100a.f107959M);
            i(aVar, "XMSSMT-SHAKE128", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128", InterfaceC15100a.f107967O);
            i(aVar, "XMSSMT-SHA512", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512", InterfaceC15100a.f107963N);
            i(aVar, "XMSSMT-SHAKE256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256", InterfaceC15100a.f107971P);
            g(aVar, "SHA256", "XMSSMT-SHA256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256andPrehash", InterfaceC15100a.f107943I);
            g(aVar, "SHAKE128", "XMSSMT-SHAKE128", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128andPrehash", InterfaceC15100a.f107975Q);
            g(aVar, "SHAKE128(512)", "XMSSMT-SHAKE128", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128_512andPrehash", InterfaceC15100a.f107951K);
            g(aVar, "SHA512", "XMSSMT-SHA512", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512andPrehash", InterfaceC15100a.f107947J);
            g(aVar, "SHAKE256", "XMSSMT-SHAKE256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256andPrehash", InterfaceC15100a.f107979R);
            g(aVar, "SHAKE256(1024)", "XMSSMT-SHAKE256", "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256_1024andPrehash", InterfaceC15100a.f107955L);
            aVar.d("Alg.Alias.Signature.SHA256WITHXMSSMT", "SHA256WITHXMSSMT-SHA256");
            aVar.d("Alg.Alias.Signature.SHAKE128WITHXMSSMT", "SHAKE128WITHXMSSMT-SHAKE128");
            aVar.d("Alg.Alias.Signature.SHAKE128(512)WITHXMSSMT", "SHAKE128(512)WITHXMSSMT-SHAKE128");
            aVar.d("Alg.Alias.Signature.SHA512WITHXMSSMT", "SHA512WITHXMSSMT-SHA512");
            aVar.d("Alg.Alias.Signature.SHAKE256WITHXMSSMT", "SHAKE256WITHXMSSMT-SHAKE256");
            aVar.d("Alg.Alias.Signature.SHAKE256(1024)WITHXMSSMT", "SHAKE256(1024)WITHXMSSMT-SHAKE256");
            l(aVar, Xk.m.f29585w, "XMSS", new Nl.f());
            l(aVar, c14549x, "XMSS", new Nl.f());
            l(aVar, Xk.m.f29533F, "XMSSMT", new Nl.h());
            l(aVar, c14549x2, "XMSSMT", new Nl.h());
        }
    }
}
