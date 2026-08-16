package Zj;

import Bi.C2378j;
import Li.u0;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;

public final class O {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Threefish-1024 IV";
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "Threefish-256 IV";
        }
    }

    public static class c extends C3669i {
        @Override
        public String engineToString() {
            return "Threefish-512 IV";
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.e(new u0(1024)));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.e(new u0(256)));
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.e(new u0(512)));
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public g() {
            super(new u0(1024));
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public h() {
            super(new u0(256));
        }
    }

    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public i() {
            super(new u0(512));
        }
    }

    public static class j extends C3664d {
        public j() {
            super("Threefish-1024", 1024, new C2378j());
        }
    }

    public static class k extends C3664d {
        public k() {
            super("Threefish-256", 256, new C2378j());
        }
    }

    public static class l extends C3664d {
        public l() {
            super("Threefish-512", 512, new C2378j());
        }
    }

    public static class m extends AbstractC3895a {

        public static final String f31393a = O.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31393a;
            sb2.append(str);
            sb2.append("$CMAC_256");
            aVar.d("Mac.Threefish-256CMAC", sb2.toString());
            aVar.d("Mac.Threefish-512CMAC", str + "$CMAC_512");
            aVar.d("Mac.Threefish-1024CMAC", str + "$CMAC_1024");
            aVar.d("Cipher.Threefish-256", str + "$ECB_256");
            aVar.d("Cipher.Threefish-512", str + "$ECB_512");
            aVar.d("Cipher.Threefish-1024", str + "$ECB_1024");
            aVar.d("KeyGenerator.Threefish-256", str + "$KeyGen_256");
            aVar.d("KeyGenerator.Threefish-512", str + "$KeyGen_512");
            aVar.d("KeyGenerator.Threefish-1024", str + "$KeyGen_1024");
            aVar.d("AlgorithmParameters.Threefish-256", str + "$AlgParams_256");
            aVar.d("AlgorithmParameters.Threefish-512", str + "$AlgParams_512");
            aVar.d("AlgorithmParameters.Threefish-1024", str + "$AlgParams_1024");
        }
    }
}
