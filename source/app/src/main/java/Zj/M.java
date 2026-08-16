package Zj;

import Bi.C2378j;
import Li.t0;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class M {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "TEA IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public b() {
            super(new t0());
        }
    }

    public static class c extends C3664d {
        public c() {
            super("TEA", 128, new C2378j());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31390a = M.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31390a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.TEA", sb2.toString());
            aVar.d("KeyGenerator.TEA", str + "$KeyGen");
            aVar.d("AlgorithmParameters.TEA", str + "$AlgParams");
        }
    }
}
