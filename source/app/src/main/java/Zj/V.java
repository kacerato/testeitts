package Zj;

import Bi.C2378j;
import Li.E0;
import Li.G0;
import ak.C3664d;
import ak.C3669i;

public class V {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Zuc IV";
        }
    }

    public static class b extends C3664d {
        public b() {
            super("ZUC128", 128, new C2378j());
        }
    }

    public static class c extends C3664d {
        public c() {
            super("ZUC256", 256, new C2378j());
        }
    }

    public static class d extends L {

        public static final String f31399a = V.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31399a;
            sb2.append(str);
            sb2.append("$Zuc128");
            aVar.d("Cipher.ZUC-128", sb2.toString());
            aVar.d("KeyGenerator.ZUC-128", str + "$KeyGen128");
            aVar.d("AlgorithmParameters.ZUC-128", str + "$AlgParams");
            aVar.d("Cipher.ZUC-256", str + "$Zuc256");
            aVar.d("KeyGenerator.ZUC-256", str + "$KeyGen256");
            aVar.d("AlgorithmParameters.ZUC-256", str + "$AlgParams");
            aVar.d("Mac.ZUC-128", str + "$ZucMac128");
            aVar.d("Mac.ZUC-256", str + "$ZucMac256");
            aVar.d("Alg.Alias.Mac.ZUC-256-128", "ZUC-256");
            aVar.d("Mac.ZUC-256-64", str + "$ZucMac256_64");
            aVar.d("Mac.ZUC-256-32", str + "$ZucMac256_32");
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public e() {
            super(new E0(), 16, 128);
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public f() {
            super(new G0(), 25, 256);
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.v());
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public h() {
            super(new Si.w(128));
        }
    }

    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public i() {
            super(new Si.w(32));
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public j() {
            super(new Si.w(64));
        }
    }
}
