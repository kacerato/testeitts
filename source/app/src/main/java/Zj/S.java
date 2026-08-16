package Zj;

import Bi.C2378j;
import Li.z0;
import ak.C3664d;
import bk.AbstractC3895a;

public final class S {

    public static class a extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public a() {
            super(new z0(), 16);
        }
    }

    public static class b extends C3664d {
        public b() {
            super("VMPC-KSA3", 128, new C2378j());
        }
    }

    public static class c extends AbstractC3895a {

        public static final String f31396a = S.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31396a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.VMPC-KSA3", sb2.toString());
            aVar.d("KeyGenerator.VMPC-KSA3", str + "$KeyGen");
        }
    }
}
