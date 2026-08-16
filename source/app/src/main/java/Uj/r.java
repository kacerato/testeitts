package Uj;

import Bi.C2378j;
import Ii.K;
import ak.C3664d;

public class r {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new K());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new K((K) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new K()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACSHA224", 224, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26219a = r.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26219a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.SHA-224", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest.SHA224", "SHA-224");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Sh.d.f23343f), "SHA-224");
            aVar.d("Mac.PBEWITHHMACSHA224", str + "$HashMac");
            b(aVar, "SHA224", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "SHA224", Xh.t.f29147x1);
        }
    }
}
