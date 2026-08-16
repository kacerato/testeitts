package Uj;

import Bi.C2378j;
import Ii.I;
import ak.C3664d;

public class p {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new I());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new I((I) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new I()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACRIPEMD320", 320, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26217a = p.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26217a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.RIPEMD320", sb2.toString());
            b(aVar, "RIPEMD320", str + "$HashMac", str + "$KeyGenerator");
        }
    }
}
