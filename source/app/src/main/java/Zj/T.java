package Zj;

import Bi.C2378j;
import Li.A0;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class T {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "XSalsa20 IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public b() {
            super(new A0(), 24);
        }
    }

    public static class c extends C3664d {
        public c() {
            super("XSalsa20", 256, new C2378j());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31397a = T.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31397a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.XSALSA20", sb2.toString());
            aVar.d("KeyGenerator.XSALSA20", str + "$KeyGen");
            aVar.d("AlgorithmParameters.XSALSA20", str + "$AlgParams");
        }
    }
}
