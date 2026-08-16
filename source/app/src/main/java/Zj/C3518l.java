package Zj;

import Bi.C2376h;
import Bi.C2378j;
import Li.C2793s;
import Ti.C3092c;
import ak.AbstractC3662b;
import ak.AbstractC3663c;
import ak.C3664d;
import bk.AbstractC3895a;
import ck.C4217j;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.spec.IvParameterSpec;
import oh.AbstractC14551y;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import yh.InterfaceC16192a;

public final class C3518l {

    public static Map<C14549x, String> f31432a = new HashMap();

    public static Map<String, C14549x> f31433b = new HashMap();

    public static class a extends AbstractC3662b {

        public byte[] f31434d = new byte[8];

        public byte[] f31435e = Li.C.m("E-A");

        @Override
        public AlgorithmParameters engineGenerateParameters() {
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(this.f31434d);
            try {
                AlgorithmParameters a10 = a("GOST28147");
                a10.init(new C4217j(this.f31435e, this.f31434d));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            if (!(algorithmParameterSpec instanceof C4217j)) {
                throw new InvalidAlgorithmParameterException("parameter spec not supported");
            }
            this.f31435e = ((C4217j) algorithmParameterSpec).c();
        }
    }

    public static class b extends c {

        public C14549x f31436c = InterfaceC16192a.f130276h;

        public byte[] f31437d;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31437d);
            }
            if (cls == C4217j.class || cls == AlgorithmParameterSpec.class) {
                return new C4217j(this.f31436c, this.f31437d);
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }

        @Override
        public byte[] e() throws IOException {
            return new yh.d(this.f31437d, this.f31436c).getEncoded();
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.f31437d = ((IvParameterSpec) algorithmParameterSpec).getIV();
            } else {
                if (!(algorithmParameterSpec instanceof C4217j)) {
                    throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
                }
                this.f31437d = ((C4217j) algorithmParameterSpec).a();
                try {
                    this.f31436c = c.d(((C4217j) algorithmParameterSpec).c());
                } catch (IllegalArgumentException e10) {
                    throw new InvalidParameterSpecException(e10.getMessage());
                }
            }
        }

        @Override
        public String engineToString() {
            return "GOST 28147 IV Parameters";
        }

        @Override
        public void f(byte[] bArr) throws IOException {
            oh.B B10 = oh.B.B(bArr);
            if (B10 instanceof AbstractC14551y) {
                this.f31437d = AbstractC14551y.F(B10).H();
            } else {
                if (!(B10 instanceof oh.E)) {
                    throw new IOException("Unable to recognize parameters");
                }
                yh.d w10 = yh.d.w(B10);
                this.f31436c = w10.u();
                this.f31437d = w10.v();
            }
        }
    }

    public static abstract class c extends AbstractC3663c {

        public C14549x f31438a = InterfaceC16192a.f130276h;

        public byte[] f31439b;

        public static C14549x c(String str) {
            C14549x c14549x = str != null ? (C14549x) C3518l.f31433b.get(org.bouncycastle.util.w.p(str)) : null;
            if (c14549x != null) {
                return c14549x;
            }
            throw new IllegalArgumentException("Unknown SBOX name: " + str);
        }

        public static C14549x d(byte[] bArr) {
            return c(Li.C.n(bArr));
        }

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31439b);
            }
            if (cls == C4217j.class || cls == AlgorithmParameterSpec.class) {
                return new C4217j(this.f31438a, this.f31439b);
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }

        public byte[] e() throws IOException {
            return new yh.d(this.f31439b, this.f31438a).getEncoded();
        }

        @Override
        public final byte[] engineGetEncoded() throws IOException {
            return engineGetEncoded("ASN.1");
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.f31439b = ((IvParameterSpec) algorithmParameterSpec).getIV();
            } else {
                if (!(algorithmParameterSpec instanceof C4217j)) {
                    throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
                }
                this.f31439b = ((C4217j) algorithmParameterSpec).a();
                try {
                    this.f31438a = d(((C4217j) algorithmParameterSpec).c());
                } catch (IllegalArgumentException e10) {
                    throw new InvalidParameterSpecException(e10.getMessage());
                }
            }
        }

        public abstract void f(byte[] bArr) throws IOException;

        @Override
        public final byte[] engineGetEncoded(String str) throws IOException {
            if (a(str)) {
                return e();
            }
            throw new IOException("Unknown parameter format: " + str);
        }

        @Override
        public final void engineInit(byte[] bArr) throws IOException {
            engineInit(bArr, "ASN.1");
        }

        @Override
        public final void engineInit(byte[] bArr, String str) throws IOException {
            if (bArr == null) {
                throw new NullPointerException("Encoded parameters cannot be null");
            }
            if (!a(str)) {
                throw new IOException("Unknown parameter format: " + str);
            }
            try {
                f(bArr);
            } catch (IOException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new IOException("Parameter parsing failed: " + e11.getMessage());
            }
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public d() {
            super(new C3092c(new Li.C()), 64);
        }
    }

    public static class e extends BaseWrapCipher {
        public e() {
            super(new C2793s());
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public f() {
            super(new Li.C());
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public g() {
            super(new C2376h(new Ti.q(new Li.C())), 64);
        }
    }

    public static class h extends BaseWrapCipher {
        public h() {
            super(new Li.D());
        }
    }

    public static class i extends C3664d {
        public i() {
            this(256);
        }

        public i(int i10) {
            super("GOST28147", i10, new C2378j());
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public j() {
            super(new Si.j());
        }
    }

    public static class k extends AbstractC3895a {

        public static final String f31440a = C3518l.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31440a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.GOST28147", sb2.toString());
            aVar.d("Alg.Alias.Cipher.GOST", "GOST28147");
            aVar.d("Alg.Alias.Cipher.GOST-28147", "GOST28147");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Cipher.");
            C14549x c14549x = InterfaceC16192a.f130274f;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), str + "$GCFB");
            aVar.d("KeyGenerator.GOST28147", str + "$KeyGen");
            aVar.d("Alg.Alias.KeyGenerator.GOST", "GOST28147");
            aVar.d("Alg.Alias.KeyGenerator.GOST-28147", "GOST28147");
            aVar.d("Alg.Alias.KeyGenerator." + ((Object) c14549x), "GOST28147");
            aVar.d("AlgorithmParameters.GOST28147", str + "$AlgParams");
            aVar.d("AlgorithmParameterGenerator.GOST28147", str + "$AlgParamGen");
            aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) c14549x), "GOST28147");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x), "GOST28147");
            aVar.d("Cipher." + ((Object) InterfaceC16192a.f130273e), str + "$CryptoProWrap");
            aVar.d("Cipher." + ((Object) InterfaceC16192a.f130272d), str + "$GostWrap");
            aVar.d("Mac.GOST28147MAC", str + "$Mac");
            aVar.d("Alg.Alias.Mac.GOST28147", "GOST28147MAC");
        }
    }

    static {
        f31432a.put(InterfaceC16192a.f130275g, "E-TEST");
        Map<C14549x, String> map = f31432a;
        C14549x c14549x = InterfaceC16192a.f130276h;
        map.put(c14549x, "E-A");
        Map<C14549x, String> map2 = f31432a;
        C14549x c14549x2 = InterfaceC16192a.f130277i;
        map2.put(c14549x2, "E-B");
        Map<C14549x, String> map3 = f31432a;
        C14549x c14549x3 = InterfaceC16192a.f130278j;
        map3.put(c14549x3, "E-C");
        Map<C14549x, String> map4 = f31432a;
        C14549x c14549x4 = InterfaceC16192a.f130279k;
        map4.put(c14549x4, "E-D");
        Map<C14549x, String> map5 = f31432a;
        C14549x c14549x5 = Cj.a.f4478w;
        map5.put(c14549x5, "PARAM-Z");
        f31433b.put("E-A", c14549x);
        f31433b.put("E-B", c14549x2);
        f31433b.put("E-C", c14549x3);
        f31433b.put("E-D", c14549x4);
        f31433b.put("PARAM-Z", c14549x5);
    }
}
