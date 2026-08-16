package Uj;

import Bi.C2378j;
import Ii.G;
import ak.C3664d;
import bi.InterfaceC3890b;
import sj.InterfaceC15314a;

public class n {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new G());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new G((G) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new G()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACRIPEMD160", 160, new C2378j());
        }
    }

    public static class d extends Uj.f {

        public static final String f26215a = n.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26215a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.RIPEMD160", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC3890b.f33236b), "RIPEMD160");
            b(aVar, "RIPEMD160", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "RIPEMD160", InterfaceC15314a.f109659q);
            aVar.d("SecretKeyFactory.PBEWITHHMACRIPEMD160", str + "$PBEWithHmacKeyFactory");
            aVar.d("Mac.PBEWITHHMACRIPEMD160", str + "$PBEWithHmac");
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.k(new G()), 2, 2, 160);
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public f() {
            super("PBEwithHmacRIPEMD160", null, false, 2, 2, 160, 0);
        }
    }
}
