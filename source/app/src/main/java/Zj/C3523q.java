package Zj;

import Bi.C2378j;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class C3523q {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "HC256 IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public b() {
            super(new Li.J(), 32);
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HC256", 256, new C2378j());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31445a = C3523q.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31445a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.HC256", sb2.toString());
            aVar.d("KeyGenerator.HC256", str + "$KeyGen");
            aVar.d("AlgorithmParameters.HC256", str + "$AlgParams");
        }
    }
}
