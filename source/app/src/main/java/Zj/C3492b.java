package Zj;

import Bi.C2378j;
import Li.X;
import ak.C3664d;
import bk.AbstractC3895a;
import oh.C14549x;

public final class C3492b {

    public static class a extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public a() {
            super(new X(), 0);
        }
    }

    public static class C0828b extends C3664d {
        public C0828b() {
            super("RC4", 128, new C2378j());
        }
    }

    public static class c extends AbstractC3895a {

        public static final String f31409a = C3492b.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31409a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.ARC4", sb2.toString());
            aVar.g("Alg.Alias.Cipher", Xh.t.f29129p1, "ARC4");
            aVar.d("Alg.Alias.Cipher.ARCFOUR", "ARC4");
            aVar.d("Alg.Alias.Cipher.RC4", "ARC4");
            aVar.d("KeyGenerator.ARC4", str + "$KeyGen");
            aVar.d("Alg.Alias.KeyGenerator.RC4", "ARC4");
            aVar.d("Alg.Alias.KeyGenerator.1.2.840.113549.3.4", "ARC4");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND128BITRC4", str + "$PBEWithSHAAnd128BitKeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND40BITRC4", str + "$PBEWithSHAAnd40BitKeyFactory");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x = Xh.t.f29098e4;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), "PKCS12PBE");
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x2 = Xh.t.f29102f4;
            sb4.append((Object) c14549x2);
            aVar.d(sb4.toString(), "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC4", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC4", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC4", "PKCS12PBE");
            aVar.d("Cipher.PBEWITHSHAAND128BITRC4", str + "$PBEWithSHAAnd128Bit");
            aVar.d("Cipher.PBEWITHSHAAND40BITRC4", str + "$PBEWithSHAAnd40Bit");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x, "PBEWITHSHAAND128BITRC4");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x2, "PBEWITHSHAAND40BITRC4");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC4", "PBEWITHSHAAND128BITRC4");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC4", "PBEWITHSHAAND40BITRC4");
            aVar.g("Alg.Alias.Cipher", c14549x, "PBEWITHSHAAND128BITRC4");
            aVar.g("Alg.Alias.Cipher", c14549x2, "PBEWITHSHAAND40BITRC4");
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public d() {
            super(new X(), 0, 128, 1);
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public e() {
            super("PBEWithSHAAnd128BitRC4", Xh.t.f29098e4, true, 2, 1, 128, 0);
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public f() {
            super(new X(), 0, 40, 1);
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public g() {
            super("PBEWithSHAAnd128BitRC4", Xh.t.f29098e4, true, 2, 1, 40, 0);
        }
    }
}
