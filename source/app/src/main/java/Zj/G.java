package Zj;

import Bi.C2376h;
import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.o0;
import Li.v0;
import Ti.C3092c;
import Ti.C3096g;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;
import rj.InterfaceC15189a;

public final class G {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Serpent IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public b() {
            super(new C3092c(new o0()), 128);
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new C2376h(new C3096g(new o0(), 128)), 128);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new o0();
            }
        }

        public d() {
            super(new a());
        }
    }

    public static class e extends C3664d {
        public e() {
            super("Serpent", 192, new C2378j());
        }
    }

    public static class f extends L {

        public static final String f31385a = G.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31385a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.Serpent", sb2.toString());
            aVar.d("KeyGenerator.Serpent", str + "$KeyGen");
            aVar.d("AlgorithmParameters.Serpent", str + "$AlgParams");
            aVar.d("Cipher.Tnepres", str + "$TECB");
            aVar.d("KeyGenerator.Tnepres", str + "$TKeyGen");
            aVar.d("AlgorithmParameters.Tnepres", str + "$TAlgParams");
            aVar.g("Cipher", InterfaceC15189a.f109061j, str + "$ECB");
            aVar.g("Cipher", InterfaceC15189a.f109065n, str + "$ECB");
            aVar.g("Cipher", InterfaceC15189a.f109069r, str + "$ECB");
            aVar.g("Cipher", InterfaceC15189a.f109062k, str + "$CBC");
            aVar.g("Cipher", InterfaceC15189a.f109066o, str + "$CBC");
            aVar.g("Cipher", InterfaceC15189a.f109070s, str + "$CBC");
            aVar.g("Cipher", InterfaceC15189a.f109064m, str + "$CFB");
            aVar.g("Cipher", InterfaceC15189a.f109068q, str + "$CFB");
            aVar.g("Cipher", InterfaceC15189a.f109072u, str + "$CFB");
            aVar.g("Cipher", InterfaceC15189a.f109063l, str + "$OFB");
            aVar.g("Cipher", InterfaceC15189a.f109067p, str + "$OFB");
            aVar.g("Cipher", InterfaceC15189a.f109071t, str + "$OFB");
            c(aVar, "SERPENT", str + "$SerpentGMAC", str + "$KeyGen");
            c(aVar, "TNEPRES", str + "$TSerpentGMAC", str + "$TKeyGen");
            d(aVar, "SERPENT", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public g() {
            super(new C2376h(new Ti.C(new o0(), 128)), 128);
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public h() {
            super(new Si.q(new o0()));
        }
    }

    public static class i extends C3664d {
        public i() {
            super("Poly1305-Serpent", 256, new Oi.K());
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public j() {
            super(new Si.i(new Ti.r(new o0())));
        }
    }

    public static class k extends C3669i {
        @Override
        public String engineToString() {
            return "Tnepres IV";
        }
    }

    public static class l extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new v0();
            }
        }

        public l() {
            super(new a());
        }
    }

    public static class m extends C3664d {
        public m() {
            super("Tnepres", 192, new C2378j());
        }
    }

    public static class n extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public n() {
            super(new Si.i(new Ti.r(new v0())));
        }
    }
}
