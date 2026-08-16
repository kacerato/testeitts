package Zj;

import Bi.C2376h;
import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.C2772b0;
import Li.C2779f;
import Li.C2781g;
import Li.C2783h;
import Ti.C3092c;
import Ti.C3094e;
import Ti.C3096g;
import Ti.InterfaceC3090a;
import ak.AbstractC3662b;
import ak.AbstractC3663c;
import ak.C3664d;
import ak.C3665e;
import ak.C3668h;
import ak.C3669i;
import ak.InterfaceC3666f;
import ck.C4208a;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import nj.C14452a;
import nj.C14454c;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import zj.InterfaceC16316a;

public final class C3493c {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("ARIA");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for ARIA parameter generation.");
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "ARIA IV";
        }
    }

    public static class C0829c extends AbstractC3663c {

        public C14452a f31410a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || C3668h.j(cls)) {
                return C3668h.i() ? C3668h.f(this.f31410a.r()) : new C4208a(this.f31410a.x(), this.f31410a.u() * 8);
            }
            if (cls == C4208a.class) {
                return new C4208a(this.f31410a.x(), this.f31410a.u() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31410a.x());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }

        @Override
        public byte[] engineGetEncoded() throws IOException {
            return this.f31410a.getEncoded();
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (C3668h.k(algorithmParameterSpec)) {
                this.f31410a = C14452a.v(C3668h.e(algorithmParameterSpec));
                return;
            }
            if (algorithmParameterSpec instanceof C4208a) {
                C4208a c4208a = (C4208a) algorithmParameterSpec;
                this.f31410a = new C14452a(c4208a.c(), c4208a.b() / 8);
            } else {
                throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
            }
        }

        @Override
        public String engineToString() {
            return "CCM";
        }

        @Override
        public byte[] engineGetEncoded(String str) throws IOException {
            if (a(str)) {
                return this.f31410a.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            this.f31410a = C14452a.v(bArr);
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!a(str)) {
                throw new IOException("unknown format specified");
            }
            this.f31410a = C14452a.v(bArr);
        }
    }

    public static class d extends AbstractC3663c {

        public C14454c f31411a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || C3668h.j(cls)) {
                return C3668h.i() ? C3668h.f(this.f31411a.r()) : new C4208a(this.f31411a.x(), this.f31411a.u() * 8);
            }
            if (cls == C4208a.class) {
                return new C4208a(this.f31411a.x(), this.f31411a.u() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31411a.x());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }

        @Override
        public byte[] engineGetEncoded() throws IOException {
            return this.f31411a.getEncoded();
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (C3668h.k(algorithmParameterSpec)) {
                this.f31411a = C3668h.e(algorithmParameterSpec);
                return;
            }
            if (algorithmParameterSpec instanceof C4208a) {
                C4208a c4208a = (C4208a) algorithmParameterSpec;
                this.f31411a = new C14454c(c4208a.c(), c4208a.b() / 8);
            } else {
                throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
            }
        }

        @Override
        public String engineToString() {
            return "GCM";
        }

        @Override
        public byte[] engineGetEncoded(String str) throws IOException {
            if (a(str)) {
                return this.f31411a.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            this.f31411a = C14454c.v(bArr);
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!a(str)) {
                throw new IOException("unknown format specified");
            }
            this.f31411a = C14454c.v(bArr);
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public e() {
            super(new C3092c(new C2779f()), 128);
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public f() {
            super((InterfaceC3090a) new C3094e(new C2779f()), false, 12);
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public g() {
            super(new C2376h(new C3096g(new C2779f(), 128)), 128);
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new C2779f();
            }
        }

        public h() {
            super(new a());
        }
    }

    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public i() {
            super(new Ti.r(new C2779f()));
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public j() {
            super(new Si.i(new Ti.r(new C2779f())));
        }
    }

    public static class k extends C3665e {
        public k() {
            super("ARIA", null);
        }
    }

    public static class l extends o {
        public l() {
            super(128);
        }
    }

    public static class m extends o {
        public m() {
            super(192);
        }
    }

    public static class n extends o {
        public n() {
            super(256);
        }
    }

    public static class o extends C3664d {
        public o() {
            this(256);
        }

        public o(int i10) {
            super("ARIA", i10, new C2378j());
        }
    }

    public static class p extends L {

        public static final String f31412a = C3493c.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31412a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.ARIA", sb2.toString());
            C14549x c14549x = InterfaceC16316a.f131473h;
            aVar.g("Alg.Alias.AlgorithmParameters", c14549x, "ARIA");
            C14549x c14549x2 = InterfaceC16316a.f131478m;
            aVar.g("Alg.Alias.AlgorithmParameters", c14549x2, "ARIA");
            C14549x c14549x3 = InterfaceC16316a.f131483r;
            aVar.g("Alg.Alias.AlgorithmParameters", c14549x3, "ARIA");
            aVar.d("AlgorithmParameterGenerator.ARIA", str + "$AlgParamGen");
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x, "ARIA");
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x2, "ARIA");
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x3, "ARIA");
            C14549x c14549x4 = InterfaceC16316a.f131475j;
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x4, "ARIA");
            C14549x c14549x5 = InterfaceC16316a.f131480o;
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x5, "ARIA");
            C14549x c14549x6 = InterfaceC16316a.f131485t;
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x6, "ARIA");
            C14549x c14549x7 = InterfaceC16316a.f131474i;
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x7, "ARIA");
            C14549x c14549x8 = InterfaceC16316a.f131479n;
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x8, "ARIA");
            C14549x c14549x9 = InterfaceC16316a.f131484s;
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x9, "ARIA");
            aVar.d("Cipher.ARIA", str + "$ECB");
            C14549x c14549x10 = InterfaceC16316a.f131472g;
            aVar.g("Cipher", c14549x10, str + "$ECB");
            C14549x c14549x11 = InterfaceC16316a.f131477l;
            aVar.g("Cipher", c14549x11, str + "$ECB");
            C14549x c14549x12 = InterfaceC16316a.f131482q;
            aVar.g("Cipher", c14549x12, str + "$ECB");
            aVar.g("Cipher", c14549x, str + "$CBC");
            aVar.g("Cipher", c14549x2, str + "$CBC");
            aVar.g("Cipher", c14549x3, str + "$CBC");
            aVar.g("Cipher", c14549x7, str + "$CFB");
            aVar.g("Cipher", c14549x8, str + "$CFB");
            aVar.g("Cipher", c14549x9, str + "$CFB");
            aVar.g("Cipher", c14549x4, str + "$OFB");
            aVar.g("Cipher", c14549x5, str + "$OFB");
            aVar.g("Cipher", c14549x6, str + "$OFB");
            aVar.d("Cipher.ARIARFC3211WRAP", str + "$RFC3211Wrap");
            aVar.d("Cipher.ARIAWRAP", str + "$Wrap");
            C14549x c14549x13 = InterfaceC16316a.f131460H;
            aVar.g("Alg.Alias.Cipher", c14549x13, "ARIAWRAP");
            C14549x c14549x14 = InterfaceC16316a.f131461I;
            aVar.g("Alg.Alias.Cipher", c14549x14, "ARIAWRAP");
            C14549x c14549x15 = InterfaceC16316a.f131462J;
            aVar.g("Alg.Alias.Cipher", c14549x15, "ARIAWRAP");
            aVar.d("Alg.Alias.Cipher.ARIAKW", "ARIAWRAP");
            aVar.d("Cipher.ARIAWRAPPAD", str + "$WrapPad");
            C14549x c14549x16 = InterfaceC16316a.f131463K;
            aVar.g("Alg.Alias.Cipher", c14549x16, "ARIAWRAPPAD");
            C14549x c14549x17 = InterfaceC16316a.f131464L;
            aVar.g("Alg.Alias.Cipher", c14549x17, "ARIAWRAPPAD");
            C14549x c14549x18 = InterfaceC16316a.f131465M;
            aVar.g("Alg.Alias.Cipher", c14549x18, "ARIAWRAPPAD");
            aVar.d("Alg.Alias.Cipher.ARIAKWP", "ARIAWRAPPAD");
            aVar.d("KeyGenerator.ARIA", str + "$KeyGen");
            aVar.g("KeyGenerator", c14549x13, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x14, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x15, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x16, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x17, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x18, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x10, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x11, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x12, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x2, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x3, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x7, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x8, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x9, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x4, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x5, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x6, str + "$KeyGen256");
            C14549x c14549x19 = InterfaceC16316a.f131457E;
            aVar.g("KeyGenerator", c14549x19, str + "$KeyGen128");
            C14549x c14549x20 = InterfaceC16316a.f131458F;
            aVar.g("KeyGenerator", c14549x20, str + "$KeyGen192");
            C14549x c14549x21 = InterfaceC16316a.f131459G;
            aVar.g("KeyGenerator", c14549x21, str + "$KeyGen256");
            C14549x c14549x22 = InterfaceC16316a.f131454B;
            aVar.g("KeyGenerator", c14549x22, str + "$KeyGen128");
            C14549x c14549x23 = InterfaceC16316a.f131455C;
            aVar.g("KeyGenerator", c14549x23, str + "$KeyGen192");
            C14549x c14549x24 = InterfaceC16316a.f131456D;
            aVar.g("KeyGenerator", c14549x24, str + "$KeyGen256");
            aVar.d("SecretKeyFactory.ARIA", str + "$KeyFactory");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x, "ARIA");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x2, "ARIA");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x3, "ARIA");
            aVar.d("AlgorithmParameterGenerator.ARIACCM", str + "$AlgParamGen");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x19), "ARIACCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x20), "ARIACCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x21), "ARIACCM");
            aVar.d("Cipher.ARIACCM", str + "$CCM");
            aVar.g("Alg.Alias.Cipher", c14549x19, "CCM");
            aVar.g("Alg.Alias.Cipher", c14549x20, "CCM");
            aVar.g("Alg.Alias.Cipher", c14549x21, "CCM");
            aVar.d("AlgorithmParameterGenerator.ARIAGCM", str + "$AlgParamGen");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x22), "ARIAGCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x23), "ARIAGCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x24), "ARIAGCM");
            aVar.d("Cipher.ARIAGCM", str + "$GCM");
            aVar.g("Alg.Alias.Cipher", c14549x22, "ARIAGCM");
            aVar.g("Alg.Alias.Cipher", c14549x23, "ARIAGCM");
            aVar.g("Alg.Alias.Cipher", c14549x24, "ARIAGCM");
            c(aVar, "ARIA", str + "$GMAC", str + "$KeyGen");
            d(aVar, "ARIA", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class q extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public q() {
            super(new C2376h(new Ti.C(new C2779f(), 128)), 128);
        }
    }

    public static class r extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public r() {
            super(new Si.q(new C2779f()));
        }
    }

    public static class s extends C3664d {
        public s() {
            super("Poly1305-ARIA", 256, new Oi.K());
        }
    }

    public static class t extends BaseWrapCipher {
        public t() {
            super(new C2772b0(new C2779f()), 16);
        }
    }

    public static class u extends BaseWrapCipher {
        public u() {
            super(new C2781g());
        }
    }

    public static class v extends BaseWrapCipher {
        public v() {
            super(new C2783h());
        }
    }
}
