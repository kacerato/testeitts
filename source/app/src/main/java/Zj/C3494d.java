package Zj;

import Bi.C2378j;
import Li.C2785j;
import Ti.C3092c;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;
import oh.C14549x;
import yj.InterfaceC16198c;

public final class C3494d {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Blowfish IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public b() {
            super(new C3092c(new C2785j()), 64);
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public c() {
            super(new Si.e(new C2785j()));
        }
    }

    public static class C0830d extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C0830d() {
            super(new C2785j());
        }
    }

    public static class e extends C3664d {
        public e() {
            super("Blowfish", 128, new C2378j());
        }
    }

    public static class f extends AbstractC3895a {

        public static final String f31413a = C3494d.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31413a;
            sb2.append(str);
            sb2.append("$CMAC");
            aVar.d("Mac.BLOWFISHCMAC", sb2.toString());
            aVar.d("Cipher.BLOWFISH", str + "$ECB");
            C14549x c14549x = InterfaceC16198c.f130339A;
            aVar.g("Cipher", c14549x, str + "$CBC");
            aVar.d("KeyGenerator.BLOWFISH", str + "$KeyGen");
            aVar.g("Alg.Alias.KeyGenerator", c14549x, "BLOWFISH");
            aVar.d("AlgorithmParameters.BLOWFISH", str + "$AlgParams");
            aVar.g("Alg.Alias.AlgorithmParameters", c14549x, "BLOWFISH");
        }
    }
}
