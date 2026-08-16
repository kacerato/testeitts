package Zj;

import Bi.C2376h;
import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.C2798x;
import Li.C2799y;
import Ti.C3092c;
import Ti.C3096g;
import ak.AbstractC3662b;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;
import di.InterfaceC12928g;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;

public class C3501k {

    public static class A extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public A() {
            super(new Ti.y(new C2798x(512)));
        }
    }

    public static class B extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public B() {
            super(new Si.m(new Ti.y(new C2798x(128)), 128));
        }
    }

    public static class C extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public C() {
            super(new Si.m(new Ti.y(new C2798x(256)), 256));
        }
    }

    public static class D extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public D() {
            super(new Si.m(new Ti.y(new C2798x(512)), 512));
        }
    }

    public static class E extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public E() {
            super(new Si.m(new Ti.y(new C2798x(128)), 128));
        }
    }

    public static class F extends I {
        public F() {
            super(128);
        }
    }

    public static class G extends I {
        public G() {
            super(256);
        }
    }

    public static class H extends I {
        public H() {
            super(512);
        }
    }

    public static class I extends C3664d {
        public I() {
            this(256);
        }

        public I(int i10) {
            super("DSTU7624", i10, new C2378j());
        }
    }

    public static class J extends Zj.L {

        public static final String f31430a = C3501k.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31430a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.DSTU7624", sb2.toString());
            C14549x c14549x = InterfaceC12928g.f84718v;
            aVar.g("AlgorithmParameters", c14549x, str + "$AlgParams");
            C14549x c14549x2 = InterfaceC12928g.f84719w;
            aVar.g("AlgorithmParameters", c14549x2, str + "$AlgParams");
            C14549x c14549x3 = InterfaceC12928g.f84720x;
            aVar.g("AlgorithmParameters", c14549x3, str + "$AlgParams");
            aVar.d("AlgorithmParameterGenerator.DSTU7624", str + "$AlgParamGen128");
            aVar.g("AlgorithmParameterGenerator", c14549x, str + "$AlgParamGen128");
            aVar.g("AlgorithmParameterGenerator", c14549x2, str + "$AlgParamGen256");
            aVar.g("AlgorithmParameterGenerator", c14549x3, str + "$AlgParamGen512");
            aVar.d("Cipher.DSTU7624", str + "$ECB_128");
            aVar.d("Cipher.DSTU7624-128", str + "$ECB_128");
            aVar.d("Cipher.DSTU7624-256", str + "$ECB_256");
            aVar.d("Cipher.DSTU7624-512", str + "$ECB_512");
            C14549x c14549x4 = InterfaceC12928g.f84706j;
            aVar.g("Cipher", c14549x4, str + "$ECB128");
            C14549x c14549x5 = InterfaceC12928g.f84707k;
            aVar.g("Cipher", c14549x5, str + "$ECB256");
            C14549x c14549x6 = InterfaceC12928g.f84708l;
            aVar.g("Cipher", c14549x6, str + "$ECB512");
            aVar.g("Cipher", c14549x, str + "$CBC128");
            aVar.g("Cipher", c14549x2, str + "$CBC256");
            aVar.g("Cipher", c14549x3, str + "$CBC512");
            C14549x c14549x7 = InterfaceC12928g.f84721y;
            aVar.g("Cipher", c14549x7, str + "$OFB128");
            C14549x c14549x8 = InterfaceC12928g.f84722z;
            aVar.g("Cipher", c14549x8, str + "$OFB256");
            C14549x c14549x9 = InterfaceC12928g.f84679A;
            aVar.g("Cipher", c14549x9, str + "$OFB512");
            C14549x c14549x10 = InterfaceC12928g.f84712p;
            aVar.g("Cipher", c14549x10, str + "$CFB128");
            C14549x c14549x11 = InterfaceC12928g.f84713q;
            aVar.g("Cipher", c14549x11, str + "$CFB256");
            C14549x c14549x12 = InterfaceC12928g.f84714r;
            aVar.g("Cipher", c14549x12, str + "$CFB512");
            C14549x c14549x13 = InterfaceC12928g.f84709m;
            aVar.g("Cipher", c14549x13, str + "$CTR128");
            C14549x c14549x14 = InterfaceC12928g.f84710n;
            aVar.g("Cipher", c14549x14, str + "$CTR256");
            C14549x c14549x15 = InterfaceC12928g.f84711o;
            aVar.g("Cipher", c14549x15, str + "$CTR512");
            C14549x c14549x16 = InterfaceC12928g.f84683E;
            aVar.g("Cipher", c14549x16, str + "$CCM128");
            C14549x c14549x17 = InterfaceC12928g.f84684F;
            aVar.g("Cipher", c14549x17, str + "$CCM256");
            C14549x c14549x18 = InterfaceC12928g.f84685G;
            aVar.g("Cipher", c14549x18, str + "$CCM512");
            aVar.d("Cipher.DSTU7624KW", str + "$Wrap");
            aVar.d("Alg.Alias.Cipher.DSTU7624WRAP", "DSTU7624KW");
            aVar.d("Cipher.DSTU7624-128KW", str + "$Wrap128");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.Cipher.");
            C14549x c14549x19 = InterfaceC12928g.f84689K;
            sb3.append(c14549x19.J());
            aVar.d(sb3.toString(), "DSTU7624-128KW");
            aVar.d("Alg.Alias.Cipher.DSTU7624-128WRAP", "DSTU7624-128KW");
            aVar.d("Cipher.DSTU7624-256KW", str + "$Wrap256");
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Alg.Alias.Cipher.");
            C14549x c14549x20 = InterfaceC12928g.f84690L;
            sb4.append(c14549x20.J());
            aVar.d(sb4.toString(), "DSTU7624-256KW");
            aVar.d("Alg.Alias.Cipher.DSTU7624-256WRAP", "DSTU7624-256KW");
            aVar.d("Cipher.DSTU7624-512KW", str + "$Wrap512");
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Alg.Alias.Cipher.");
            C14549x c14549x21 = InterfaceC12928g.f84691M;
            sb5.append(c14549x21.J());
            aVar.d(sb5.toString(), "DSTU7624-512KW");
            aVar.d("Alg.Alias.Cipher.DSTU7624-512WRAP", "DSTU7624-512KW");
            aVar.d("Mac.DSTU7624GMAC", str + "$GMAC");
            aVar.d("Mac.DSTU7624-128GMAC", str + "$GMAC128");
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Alg.Alias.Mac.");
            C14549x c14549x22 = InterfaceC12928g.f84680B;
            sb6.append(c14549x22.J());
            aVar.d(sb6.toString(), "DSTU7624-128GMAC");
            aVar.d("Mac.DSTU7624-256GMAC", str + "$GMAC256");
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Alg.Alias.Mac.");
            C14549x c14549x23 = InterfaceC12928g.f84681C;
            sb7.append(c14549x23.J());
            aVar.d(sb7.toString(), "DSTU7624-256GMAC");
            aVar.d("Mac.DSTU7624-512GMAC", str + "$GMAC512");
            StringBuilder sb8 = new StringBuilder();
            sb8.append("Alg.Alias.Mac.");
            C14549x c14549x24 = InterfaceC12928g.f84682D;
            sb8.append(c14549x24.J());
            aVar.d(sb8.toString(), "DSTU7624-512GMAC");
            aVar.d("KeyGenerator.DSTU7624", str + "$KeyGen");
            aVar.g("KeyGenerator", c14549x19, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x20, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x21, str + "$KeyGen512");
            aVar.g("KeyGenerator", c14549x4, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x5, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x6, str + "$KeyGen512");
            aVar.g("KeyGenerator", c14549x, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x2, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x3, str + "$KeyGen512");
            aVar.g("KeyGenerator", c14549x7, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x8, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x9, str + "$KeyGen512");
            aVar.g("KeyGenerator", c14549x10, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x11, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x12, str + "$KeyGen512");
            aVar.g("KeyGenerator", c14549x13, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x14, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x15, str + "$KeyGen512");
            aVar.g("KeyGenerator", c14549x16, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x17, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x18, str + "$KeyGen512");
            aVar.g("KeyGenerator", c14549x22, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x23, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x24, str + "$KeyGen512");
        }
    }

    public static class K extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public K() {
            super(new C2376h(new Ti.C(new C2798x(128), 128)), 128);
        }
    }

    public static class L extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public L() {
            super(new C2376h(new Ti.C(new C2798x(256), 256)), 256);
        }
    }

    public static class M extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public M() {
            super(new C2376h(new Ti.C(new C2798x(512), 512)), 512);
        }
    }

    public static class N extends BaseWrapCipher {
        public N() {
            super(new C2799y(128));
        }
    }

    public static class O extends BaseWrapCipher {
        public O() {
            super(new C2799y(256));
        }
    }

    public static class P extends BaseWrapCipher {
        public P() {
            super(new C2799y(512));
        }
    }

    public static class Q extends BaseWrapCipher {
        public Q() {
            super(new C2799y(128));
        }
    }

    public static class C3502a extends C3505d {
        public C3502a() {
            super(128);
        }
    }

    public static class C3503b extends C3505d {
        public C3503b() {
            super(256);
        }
    }

    public static class C3504c extends C3505d {
        public C3504c() {
            super(512);
        }
    }

    public static class C3505d extends AbstractC3662b {

        public final int f31431d;

        public C3505d(int i10) {
            this.f31431d = i10 / 8;
        }

        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[this.f31431d];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("DSTU7624");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSTU7624 parameter generation.");
        }
    }

    public static class C3506e extends C3669i {
        @Override
        public String engineToString() {
            return "DSTU7624 IV";
        }
    }

    public static class C3507f extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3507f() {
            super(new C3092c(new C2798x(128)), 128);
        }
    }

    public static class C3508g extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3508g() {
            super(new C3092c(new C2798x(256)), 256);
        }
    }

    public static class C3509h extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3509h() {
            super(new C3092c(new C2798x(512)), 512);
        }
    }

    public static class C3510i extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3510i() {
            super(new Ti.w(new C2798x(128)));
        }
    }

    public static class C3511j extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3511j() {
            super(new Ti.w(new C2798x(256)));
        }
    }

    public static class C0837k extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C0837k() {
            super(new Ti.w(new C2798x(512)));
        }
    }

    public static class C3512l extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3512l() {
            super(new C2376h(new C3096g(new C2798x(128), 128)), 128);
        }
    }

    public static class C3513m extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3513m() {
            super(new C2376h(new C3096g(new C2798x(256), 256)), 256);
        }
    }

    public static class C3514n extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3514n() {
            super(new C2376h(new C3096g(new C2798x(512), 512)), 512);
        }
    }

    public static class C3515o extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3515o() {
            super(new C2376h(new Ti.x(new C2798x(128))), 128);
        }
    }

    public static class C3516p extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3516p() {
            super(new C2376h(new Ti.x(new C2798x(256))), 256);
        }
    }

    public static class C3517q extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3517q() {
            super(new C2376h(new Ti.x(new C2798x(512))), 512);
        }
    }

    public static class r extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new C2798x(128);
            }
        }

        public r() {
            super(new a());
        }
    }

    public static class s extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public s() {
            super(new C2798x(128));
        }
    }

    public static class t extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public t() {
            super(new C2798x(256));
        }
    }

    public static class u extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public u() {
            super(new C2798x(512));
        }
    }

    public static class v extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public v() {
            super(new C2798x(128));
        }
    }

    public static class w extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public w() {
            super(new C2798x(256));
        }
    }

    public static class x extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public x() {
            super(new C2798x(512));
        }
    }

    public static class y extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public y() {
            super(new Ti.y(new C2798x(128)));
        }
    }

    public static class z extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public z() {
            super(new Ti.y(new C2798x(256)));
        }
    }
}
