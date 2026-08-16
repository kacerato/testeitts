package Zj;

import Bi.C2376h;
import Bi.C2378j;
import Bi.InterfaceC2374f;
import ak.C3664d;
import bk.AbstractC3895a;

public class C3519m {

    public static class a extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public a() {
            super((InterfaceC2374f) new Ti.m(new Li.E()), false, 128);
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public b() {
            super(new C2376h(new Ti.o(new Li.E())), true, 64);
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new Li.E());
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public d() {
            super(new C2376h(new Ti.n(new Li.E(), 8)), false, 128);
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public e() {
            super(new C2376h(new Ti.n(new Li.E())), false, 128);
        }
    }

    public static class f extends C3664d {
        public f() {
            this(256);
        }

        public f(int i10) {
            super("GOST3412-2015", i10, new C2378j());
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.e(new Li.E()));
        }
    }

    public static class h extends AbstractC3895a {

        public static final String f31441a = C3519m.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31441a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.GOST3412-2015", sb2.toString());
            aVar.d("Cipher.GOST3412-2015/CFB", str + "$GCFB");
            aVar.d("Cipher.GOST3412-2015/CFB8", str + "$GCFB8");
            aVar.d("Cipher.GOST3412-2015/OFB", str + "$OFB");
            aVar.d("Cipher.GOST3412-2015/CBC", str + "$CBC");
            aVar.d("Cipher.GOST3412-2015/CTR", str + "$CTR");
            aVar.d("KeyGenerator.GOST3412-2015", str + "$KeyGen");
            aVar.d("Mac.GOST3412MAC", str + "$Mac");
            aVar.d("Alg.Alias.Mac.GOST3412-2015", "GOST3412MAC");
        }
    }

    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public i() {
            super(new C2376h(new Ti.p(new Li.E())), false, 128);
        }
    }
}
