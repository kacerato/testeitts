package Zj;

import Bi.C2378j;
import Li.B0;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class U {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "XTEA IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public b() {
            super(new B0());
        }
    }

    public static class c extends C3664d {
        public c() {
            super("XTEA", 128, new C2378j());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31398a = U.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31398a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.XTEA", sb2.toString());
            aVar.d("KeyGenerator.XTEA", str + "$KeyGen");
            aVar.d("AlgorithmParameters.XTEA", str + "$AlgParams");
        }
    }
}
