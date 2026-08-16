package Uj;

import Bi.C2378j;
import Ii.S;
import ak.C3664d;

public class w {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new S());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new S((S) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new S()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACSM3", 256, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26224a = w.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26224a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.SM3", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest.SM3", "SM3");
            aVar.d("Alg.Alias.MessageDigest.1.2.156.197.1.401", "SM3");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Fh.b.f6869d0), "SM3");
            b(aVar, "SM3", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "SM3", Fh.b.f6871e0);
        }
    }
}
