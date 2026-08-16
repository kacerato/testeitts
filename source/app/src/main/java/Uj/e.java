package Uj;

import Bi.C2378j;
import Ii.C2652j;
import ak.C3664d;
import di.InterfaceC12928g;

public class e {

    public static class a extends d {
        public a() {
            super(256);
        }
    }

    public static class b extends d {
        public b() {
            super(384);
        }
    }

    public static class c extends d {
        public c() {
            super(512);
        }
    }

    public static class d extends Uj.a implements Cloneable {
        public d(int i10) {
            super(new C2652j(i10));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            Uj.a aVar = (Uj.a) super.clone();
            aVar.f26202b = new C2652j((C2652j) this.f26202b);
            return aVar;
        }
    }

    public static class C0721e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public C0721e() {
            super(new Si.g(256));
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.g(384));
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.g(512));
        }
    }

    public static class h extends C3664d {
        public h() {
            super("HMACDSTU7564-256", 256, new C2378j());
        }
    }

    public static class i extends C3664d {
        public i() {
            super("HMACDSTU7564-384", 384, new C2378j());
        }
    }

    public static class j extends C3664d {
        public j() {
            super("HMACDSTU7564-512", 512, new C2378j());
        }
    }

    public static class k extends Uj.f {

        public static final String f26207a = e.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26207a;
            sb2.append(str);
            sb2.append("$Digest256");
            aVar.d("MessageDigest.DSTU7564-256", sb2.toString());
            aVar.d("MessageDigest.DSTU7564-384", str + "$Digest384");
            aVar.d("MessageDigest.DSTU7564-512", str + "$Digest512");
            aVar.g("MessageDigest", InterfaceC12928g.f84700d, str + "$Digest256");
            aVar.g("MessageDigest", InterfaceC12928g.f84701e, str + "$Digest384");
            aVar.g("MessageDigest", InterfaceC12928g.f84702f, str + "$Digest512");
            b(aVar, "DSTU7564-256", str + "$HashMac256", str + "$KeyGenerator256");
            b(aVar, "DSTU7564-384", str + "$HashMac384", str + "$KeyGenerator384");
            b(aVar, "DSTU7564-512", str + "$HashMac512", str + "$KeyGenerator512");
            c(aVar, "DSTU7564-256", InterfaceC12928g.f84703g);
            c(aVar, "DSTU7564-384", InterfaceC12928g.f84704h);
            c(aVar, "DSTU7564-512", InterfaceC12928g.f84705i);
        }
    }
}
