package Zj;

import Bi.C2378j;
import Li.r0;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class K {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Skipjack IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public b() {
            super(new r0());
        }
    }

    public static class c extends C3664d {
        public c() {
            super("Skipjack", 80, new C2378j());
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.c(new r0()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.d(new r0()));
        }
    }

    public static class f extends AbstractC3895a {

        public static final String f31389a = K.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31389a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.SKIPJACK", sb2.toString());
            aVar.d("KeyGenerator.SKIPJACK", str + "$KeyGen");
            aVar.d("AlgorithmParameters.SKIPJACK", str + "$AlgParams");
            aVar.d("Mac.SKIPJACKMAC", str + "$Mac");
            aVar.d("Alg.Alias.Mac.SKIPJACK", "SKIPJACKMAC");
            aVar.d("Mac.SKIPJACKMAC/CFB8", str + "$MacCFB8");
            aVar.d("Alg.Alias.Mac.SKIPJACK/CFB8", "SKIPJACKMAC/CFB8");
        }
    }
}
