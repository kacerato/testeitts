package Zj;

import Bi.C2378j;
import Li.n0;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class F {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Salsa20 IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public b() {
            super(new n0(), 8);
        }
    }

    public static class c extends C3664d {
        public c() {
            super("Salsa20", 128, new C2378j());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31384a = F.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31384a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.SALSA20", sb2.toString());
            aVar.d("KeyGenerator.SALSA20", str + "$KeyGen");
            aVar.d("AlgorithmParameters.SALSA20", str + "$AlgParams");
        }
    }
}
