package Zj;

import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.i0;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;
import bk.AbstractC3895a;

public final class B {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Rijndael IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new i0();
            }
        }

        public b() {
            super(new a());
        }
    }

    public static class c extends C3664d {
        public c() {
            super("Rijndael", 192, new C2378j());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31379a = B.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31379a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.RIJNDAEL", sb2.toString());
            aVar.d("KeyGenerator.RIJNDAEL", str + "$KeyGen");
            aVar.d("AlgorithmParameters.RIJNDAEL", str + "$AlgParams");
        }
    }
}
