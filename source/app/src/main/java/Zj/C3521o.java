package Zj;

import Bi.C2378j;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class C3521o {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Grainv1 IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public b() {
            super(new Li.H(), 8);
        }
    }

    public static class c extends C3664d {
        public c() {
            super("Grainv1", 80, new C2378j());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31443a = C3521o.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31443a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.Grainv1", sb2.toString());
            aVar.d("KeyGenerator.Grainv1", str + "$KeyGen");
            aVar.d("AlgorithmParameters.Grainv1", str + "$AlgParams");
        }
    }
}
