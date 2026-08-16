package Kj;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;

public class s {

    public static final String f11457a = "org.bouncycastle.pqc.jcajce.provider.sphincsplus.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.SPHINCSPLUS", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyFactorySpi");
            aVar.d("KeyPairGenerator.SPHINCSPLUS", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi");
            aVar.d("Alg.Alias.KeyFactory.SPHINCS+", "SPHINCSPLUS");
            aVar.d("Alg.Alias.KeyPairGenerator.SPHINCS+", "SPHINCSPLUS");
            e(aVar, "SPHINCS+-SHA2-128S", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_128s", InterfaceC15100a.f107964N0);
            e(aVar, "SPHINCS+-SHA2-128F", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_128f", InterfaceC15100a.f107960M0);
            e(aVar, "SPHINCS+-SHA2-192S", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_192s", InterfaceC15100a.f107972P0);
            e(aVar, "SPHINCS+-SHA2-192F", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_192f", InterfaceC15100a.f107968O0);
            e(aVar, "SPHINCS+-SHA2-256S", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_256s", InterfaceC15100a.f107980R0);
            e(aVar, "SPHINCS+-SHA2-256F", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_256f", InterfaceC15100a.f107976Q0);
            e(aVar, "SPHINCS+-SHAKE-128S", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_128s", InterfaceC15100a.f107988T0);
            e(aVar, "SPHINCS+-SHAKE-128F", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_128f", InterfaceC15100a.f107984S0);
            e(aVar, "SPHINCS+-SHAKE-192S", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_192s", InterfaceC15100a.f107996V0);
            e(aVar, "SPHINCS+-SHAKE-192F", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_192f", InterfaceC15100a.f107992U0);
            e(aVar, "SPHINCS+-SHAKE-256S", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_256s", InterfaceC15100a.f108004X0);
            e(aVar, "SPHINCS+-SHAKE-256F", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_256f", InterfaceC15100a.f108000W0);
            i(aVar, "SPHINCSPLUS", "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SignatureSpi$Direct", InterfaceC15100a.f108016a0);
            for (int i10 = 1; i10 <= 36; i10++) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Alg.Alias.Signature.");
                C14549x c14549x = InterfaceC15100a.f108016a0;
                sb2.append((Object) c14549x);
                sb2.append(".");
                sb2.append(i10);
                aVar.d(sb2.toString(), "SPHINCSPLUS");
                aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x) + "." + i10, "SPHINCSPLUS");
            }
            C14549x[] c14549xArr = {InterfaceC15100a.f107964N0, InterfaceC15100a.f107960M0, InterfaceC15100a.f107988T0, InterfaceC15100a.f107984S0, InterfaceC15100a.f107972P0, InterfaceC15100a.f107968O0, InterfaceC15100a.f107996V0, InterfaceC15100a.f107992U0, InterfaceC15100a.f107980R0, InterfaceC15100a.f107976Q0, InterfaceC15100a.f108004X0, InterfaceC15100a.f108000W0};
            for (int i11 = 0; i11 != 12; i11++) {
                aVar.d("Alg.Alias.Signature." + ((Object) c14549xArr[i11]), "SPHINCSPLUS");
                aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549xArr[i11]), "SPHINCSPLUS");
            }
            aVar.d("Alg.Alias.Signature.SPHINCS+", "SPHINCSPLUS");
            Ll.c cVar = new Ll.c();
            k(aVar, InterfaceC15100a.f108021b0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108026c0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108031d0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108036e0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108041f0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108046g0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108051h0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108056i0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108061j0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108066k0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108071l0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108076m0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108081n0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108086o0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108091p0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108096q0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108101r0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108106s0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108110t0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108114u0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108118v0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108122w0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108126x0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108130y0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108134z0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107912A0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107916B0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107920C0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107924D0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107928E0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107932F0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107936G0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107940H0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107944I0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107948J0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107952K0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107964N0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107960M0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107972P0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107968O0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107980R0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107976Q0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107988T0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107984S0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107996V0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f107992U0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108004X0, "SPHINCSPLUS", cVar);
            k(aVar, InterfaceC15100a.f108000W0, "SPHINCSPLUS", cVar);
            n(aVar, InterfaceC15100a.f108016a0, "SPHINCSPLUS");
        }
    }
}
