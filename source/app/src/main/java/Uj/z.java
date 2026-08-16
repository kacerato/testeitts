package Uj;

import Bi.C2378j;
import Ii.a0;
import ak.C3664d;
import vj.InterfaceC15855a;

public class z {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new a0());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new a0((a0) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new a0()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACWHIRLPOOL", 512, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26227a = z.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26227a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.WHIRLPOOL", sb2.toString());
            aVar.g("MessageDigest", InterfaceC15855a.f121636e, str + "$Digest");
            b(aVar, "WHIRLPOOL", str + "$HashMac", str + "$KeyGenerator");
        }
    }
}
