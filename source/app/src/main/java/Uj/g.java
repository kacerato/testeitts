package Uj;

import Bi.C2378j;
import Ii.C2654l;
import Ii.C2656n;
import Ii.C2657o;
import ak.C3664d;
import oh.C14549x;
import yh.InterfaceC16192a;

public class g {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new C2656n());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C2656n((C2656n) this.f26202b);
            return aVar;
        }
    }

    public static class b extends Uj.a implements Cloneable {
        public b() {
            super(new C2657o());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            b bVar = (b) super.clone();
            bVar.f26202b = new C2657o((C2657o) this.f26202b);
            return bVar;
        }
    }

    public static class c extends Uj.a implements Cloneable {
        public c() {
            super(new C2654l());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            c cVar = (c) super.clone();
            cVar.f26202b = new C2654l((C2654l) this.f26202b);
            return cVar;
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.k(new C2656n()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.k(new C2657o()));
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.k(new C2654l()));
        }
    }

    public static class C0722g extends C3664d {
        public C0722g() {
            super("HMACGOST3411", 256, new C2378j());
        }
    }

    public static class h extends C3664d {
        public h() {
            super("HMACGOST3411", 512, new C2378j());
        }
    }

    public static class i extends C3664d {
        public i() {
            super("HMACGOST3411", 256, new C2378j());
        }
    }

    public static class j extends Uj.f {

        public static final String f26208a = g.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26208a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.GOST3411", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest.GOST", "GOST3411");
            aVar.d("Alg.Alias.MessageDigest.GOST-3411", "GOST3411");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.MessageDigest.");
            C14549x c14549x = InterfaceC16192a.f130270b;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), "GOST3411");
            b(aVar, "GOST3411", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "GOST3411", c14549x);
            aVar.d("MessageDigest.GOST3411-2012-256", str + "$Digest2012_256");
            aVar.d("Alg.Alias.MessageDigest.GOST-2012-256", "GOST3411-2012-256");
            aVar.d("Alg.Alias.MessageDigest.GOST-3411-2012-256", "GOST3411-2012-256");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Cj.a.f4458c), "GOST3411-2012-256");
            b(aVar, "GOST3411-2012-256", str + "$HashMac2012_256", str + "$KeyGenerator2012_256");
            c(aVar, "GOST3411-2012-256", Cj.a.f4460e);
            aVar.d("MessageDigest.GOST3411-2012-512", str + "$Digest2012_512");
            aVar.d("Alg.Alias.MessageDigest.GOST-2012-512", "GOST3411-2012-512");
            aVar.d("Alg.Alias.MessageDigest.GOST-3411-2012-512", "GOST3411-2012-512");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Cj.a.f4459d), "GOST3411-2012-512");
            b(aVar, "GOST3411-2012-512", str + "$HashMac2012_512", str + "$KeyGenerator2012_512");
            c(aVar, "GOST3411-2012-512", Cj.a.f4461f);
            aVar.d("SecretKeyFactory.PBEWITHHMACGOST3411", str + "$PBEWithMacKeyFactory");
            aVar.d("Alg.Alias.SecretKeyFactory." + ((Object) c14549x), "PBEWITHHMACGOST3411");
        }
    }

    public static class k extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public k() {
            super("PBEwithHmacGOST3411", null, false, 2, 6, 256, 0);
        }
    }
}
