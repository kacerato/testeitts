package Zj;

import Bi.C2378j;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class C3522p {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "HC128 IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public b() {
            super(new Li.I(), 16);
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HC128", 128, new C2378j());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31444a = C3522p.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31444a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.HC128", sb2.toString());
            aVar.d("KeyGenerator.HC128", str + "$KeyGen");
            aVar.d("AlgorithmParameters.HC128", str + "$AlgParams");
        }
    }
}
