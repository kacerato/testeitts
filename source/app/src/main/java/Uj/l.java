package Uj;

import Bi.C2378j;
import Ii.C2667z;
import ak.C3664d;
import android.security.keystore.KeyProperties;
import sj.InterfaceC15314a;

public class l {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new C2667z());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C2667z((C2667z) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new C2667z()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACMD5", 128, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26213a = l.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26213a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.MD5", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Xh.t.f29141u1), KeyProperties.DIGEST_MD5);
            b(aVar, KeyProperties.DIGEST_MD5, str + "$HashMac", str + "$KeyGenerator");
            c(aVar, KeyProperties.DIGEST_MD5, InterfaceC15314a.f109656n);
        }
    }
}
