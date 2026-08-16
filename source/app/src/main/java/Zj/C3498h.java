package Zj;

import Bi.C2378j;
import Li.C2791p;
import Li.C2792q;
import Ti.InterfaceC3091b;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;
import oh.C14549x;

public final class C3498h {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "ChaCha7539 IV";
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "ChaCha20-Poly1305 IV";
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public c() {
            super(new C2791p(), 12);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public d() {
            super(new C2792q(), 8);
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public e() {
            super((InterfaceC3091b) new Ti.k(), true, 12);
        }
    }

    public static class f extends C3664d {
        public f() {
            super("ChaCha7539", 256, new C2378j());
        }
    }

    public static class g extends C3664d {
        public g() {
            super("ChaCha", 128, new C2378j());
        }
    }

    public static class C0834h extends AbstractC3895a {

        public static final String f31419a = C3498h.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31419a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.CHACHA", sb2.toString());
            aVar.d("KeyGenerator.CHACHA", str + "$KeyGen");
            aVar.d("Cipher.CHACHA7539", str + "$Base7539");
            aVar.d("KeyGenerator.CHACHA7539", str + "$KeyGen7539");
            aVar.d("AlgorithmParameters.CHACHA7539", str + "$AlgParams");
            aVar.d("Alg.Alias.Cipher.CHACHA20", "CHACHA7539");
            aVar.d("Alg.Alias.KeyGenerator.CHACHA20", "CHACHA7539");
            aVar.d("Alg.Alias.AlgorithmParameters.CHACHA20", "CHACHA7539");
            aVar.d("Alg.Alias.KeyGenerator.CHACHA20-POLY1305", "CHACHA7539");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.KeyGenerator.");
            C14549x c14549x = Xh.t.f29053S2;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), "CHACHA7539");
            aVar.d("Cipher.CHACHA20-POLY1305", str + "$BaseCC20P1305");
            aVar.d("AlgorithmParameters.CHACHA20-POLY1305", str + "$AlgParamsCC1305");
            aVar.d("Alg.Alias.Cipher." + ((Object) c14549x), "CHACHA20-POLY1305");
            aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) c14549x), "CHACHA20-POLY1305");
            aVar.d("Alg.Alias.Cipher.OID." + ((Object) c14549x), "CHACHA20-POLY1305");
            aVar.d("Alg.Alias.AlgorithmParameters.OID." + ((Object) c14549x), "CHACHA20-POLY1305");
        }
    }
}
