package Zj;

import Bi.C2378j;
import Bi.C2388u;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Li.C2769a;
import Li.C2772b0;
import Li.C2775d;
import Li.C2776d0;
import Li.C2777e;
import Ti.C3092c;
import Ti.C3094e;
import Ti.C3096g;
import Ti.InterfaceC3090a;
import Ti.InterfaceC3095f;
import ak.AbstractC3662b;
import ak.AbstractC3663c;
import ak.C3664d;
import ak.C3665e;
import ak.C3668h;
import ak.C3669i;
import ak.InterfaceC3666f;
import android.security.keystore.KeyProperties;
import ck.C4208a;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.spec.IvParameterSpec;
import nj.C14452a;
import nj.C14454c;
import oh.C14549x;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import qh.InterfaceC15100a;

public final class C3474a {

    public static final Map<String, String> f31400a;

    public static class A extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public A() {
            super(C3092c.m(C2769a.r()), 2, 1, 128, 16);
        }
    }

    public static class B extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public B() {
            super(C3092c.m(C2769a.r()), 2, 1, 192, 16);
        }
    }

    public static class C extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C() {
            super(C3092c.m(C2769a.r()), 2, 1, 256, 16);
        }
    }

    public static class D extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public D() {
            super(C3092c.m(C2769a.r()), 2, 4, 128, 16);
        }
    }

    public static class E extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public E() {
            super(C3092c.m(C2769a.r()), 2, 4, 192, 16);
        }
    }

    public static class F extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public F() {
            super(C3092c.m(C2769a.r()), 2, 4, 256, 16);
        }
    }

    public static class G extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public G() {
            super("PBEWithSHA256And128BitAES-CBC-BC", null, true, 2, 4, 128, 128);
        }
    }

    public static class H extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public H() {
            super("PBEWithSHA256And192BitAES-CBC-BC", null, true, 2, 4, 192, 128);
        }
    }

    public static class I extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public I() {
            super("PBEWithSHA256And256BitAES-CBC-BC", null, true, 2, 4, 256, 128);
        }
    }

    public static class J extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public J() {
            super("PBEWithSHA1And128BitAES-CBC-BC", null, true, 2, 1, 128, 128);
        }
    }

    public static class K extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public K() {
            super("PBEWithSHA1And192BitAES-CBC-BC", null, true, 2, 1, 192, 128);
        }
    }

    public static class L extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public L() {
            super("PBEWithSHA1And256BitAES-CBC-BC", null, true, 2, 1, 256, 128);
        }
    }

    public static class M extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public M() {
            super(new Si.q(C2769a.r()));
        }
    }

    public static class N extends C3664d {
        public N() {
            super("Poly1305-AES", 256, new Oi.K());
        }
    }

    public static class O extends BaseWrapCipher {
        public O() {
            super(new C2772b0(C2769a.r()), 16);
        }
    }

    public static class P extends BaseWrapCipher {
        public P() {
            super(new C2776d0(C2769a.r()));
        }
    }

    public static class Q extends BaseWrapCipher {
        public Q() {
            super(new C2775d());
        }
    }

    public static class R extends BaseWrapCipher {
        public R() {
            super(new C2777e());
        }
    }

    public static class C3475b extends org.bouncycastle.jcajce.provider.symmetric.util.b {

        public static class C0826a implements Bi.I {

            public final InterfaceC3095f f31401a;

            public int f31402b;

            public C0826a() {
                this.f31401a = C3094e.p(C2769a.r());
                this.f31402b = 8;
            }

            @Override
            public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
                this.f31401a.a(true, interfaceC2379k);
                this.f31402b = this.f31401a.e().length;
            }

            @Override
            public String b() {
                return this.f31401a.b() + "Mac";
            }

            @Override
            public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
                try {
                    return this.f31401a.c(bArr, 0);
                } catch (InvalidCipherTextException e10) {
                    throw new IllegalStateException("exception on doFinal(): " + e10.toString());
                }
            }

            @Override
            public int d() {
                return this.f31402b;
            }

            @Override
            public void reset() {
                this.f31401a.reset();
            }

            @Override
            public void update(byte b10) throws IllegalStateException {
                this.f31401a.k(b10);
            }

            @Override
            public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
                this.f31401a.j(bArr, i10, i11);
            }
        }

        public C3475b() {
            super(new C0826a());
        }
    }

    public static class C3476c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public C3476c() {
            super(new Si.e(C2769a.r()));
        }
    }

    public static class C3477d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public C3477d() {
            super(new Si.i(Ti.r.u(C2769a.r())));
        }
    }

    public static class C3478e extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a(KeyProperties.KEY_ALGORITHM_AES);
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    public static class C3479f extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[12];
            if (this.f32319b == null) {
                this.f32319b = new SecureRandom();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("CCM");
                a10.init(new C14452a(bArr, 12).getEncoded());
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    public static class C3480g extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[12];
            if (this.f32319b == null) {
                this.f32319b = new SecureRandom();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("GCM");
                a10.init(new C14454c(bArr, 16).getEncoded());
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    public static class C3481h extends C3669i {
        @Override
        public String engineToString() {
            return "AES IV";
        }
    }

    public static class C3482i extends AbstractC3663c {

        public C14452a f31403a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || C3668h.j(cls)) {
                return C3668h.i() ? C3668h.f(this.f31403a.r()) : new C4208a(this.f31403a.x(), this.f31403a.u() * 8);
            }
            if (cls == C4208a.class) {
                return new C4208a(this.f31403a.x(), this.f31403a.u() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31403a.x());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }

        @Override
        public byte[] engineGetEncoded() throws IOException {
            return this.f31403a.getEncoded();
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (C3668h.k(algorithmParameterSpec)) {
                this.f31403a = C14452a.v(C3668h.e(algorithmParameterSpec));
                return;
            }
            if (algorithmParameterSpec instanceof C4208a) {
                C4208a c4208a = (C4208a) algorithmParameterSpec;
                this.f31403a = new C14452a(c4208a.c(), c4208a.b() / 8);
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
                return this.f31403a.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            this.f31403a = C14452a.v(bArr);
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!a(str)) {
                throw new IOException("unknown format specified");
            }
            this.f31403a = C14452a.v(bArr);
        }
    }

    public static class C3483j extends AbstractC3663c {

        public C14454c f31404a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || C3668h.j(cls)) {
                return C3668h.i() ? C3668h.f(this.f31404a.r()) : new C4208a(this.f31404a.x(), this.f31404a.u() * 8);
            }
            if (cls == C4208a.class) {
                return new C4208a(this.f31404a.x(), this.f31404a.u() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31404a.x());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }

        @Override
        public byte[] engineGetEncoded() throws IOException {
            return this.f31404a.getEncoded();
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (C3668h.k(algorithmParameterSpec)) {
                this.f31404a = C3668h.e(algorithmParameterSpec);
                return;
            }
            if (algorithmParameterSpec instanceof C4208a) {
                C4208a c4208a = (C4208a) algorithmParameterSpec;
                this.f31404a = new C14454c(c4208a.c(), c4208a.b() / 8);
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
                return this.f31404a.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            this.f31404a = C14454c.v(bArr);
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!a(str)) {
                throw new IOException("unknown format specified");
            }
            this.f31404a = C14454c.v(bArr);
        }
    }

    public static class C3484k extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3484k() {
            super(C3092c.m(C2769a.r()), 128);
        }
    }

    public static class C3485l extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3485l() {
            super((InterfaceC3090a) C3094e.p(C2769a.r()), false, 12);
        }
    }

    public static class C3486m extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3486m() {
            super(new C2388u(C3096g.q(C2769a.r(), 128)), 128);
        }
    }

    public static class C3487n extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class C0827a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return C2769a.r();
            }
        }

        public C3487n() {
            super(new C0827a());
        }
    }

    public static class C3488o extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public C3488o() {
            super(Ti.r.u(C2769a.r()));
        }
    }

    public static class C3489p extends C3665e {
        public C3489p() {
            super(KeyProperties.KEY_ALGORITHM_AES, null);
        }
    }

    public static class C3490q extends t {
        public C3490q() {
            super(128);
        }
    }

    public static class C3491r extends t {
        public C3491r() {
            super(192);
        }
    }

    public static class s extends t {
        public s() {
            super(256);
        }
    }

    public static class t extends C3664d {
        public t() {
            this(192);
        }

        public t(int i10) {
            super(KeyProperties.KEY_ALGORITHM_AES, i10, new C2378j());
        }
    }

    public static class u extends Zj.L {

        public static final String f31405a = C3474a.class.getName();

        public static final String f31406b = "2.16.840.1.101.3.4.2";

        public static final String f31407c = "2.16.840.1.101.3.4.22";

        public static final String f31408d = "2.16.840.1.101.3.4.42";

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31405a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.AES", sb2.toString());
            aVar.d("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2", KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22", KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42", KeyProperties.KEY_ALGORITHM_AES);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x = Sh.d.f23373y;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), KeyProperties.KEY_ALGORITHM_AES);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x2 = Sh.d.f23314H;
            sb4.append((Object) c14549x2);
            aVar.d(sb4.toString(), KeyProperties.KEY_ALGORITHM_AES);
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x3 = Sh.d.f23323Q;
            sb5.append((Object) c14549x3);
            aVar.d(sb5.toString(), KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("AlgorithmParameters.GCM", str + "$AlgParamsGCM");
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x4 = Sh.d.f23309C;
            sb6.append((Object) c14549x4);
            aVar.d(sb6.toString(), "GCM");
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x5 = Sh.d.f23318L;
            sb7.append((Object) c14549x5);
            aVar.d(sb7.toString(), "GCM");
            StringBuilder sb8 = new StringBuilder();
            sb8.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x6 = Sh.d.f23327U;
            sb8.append((Object) c14549x6);
            aVar.d(sb8.toString(), "GCM");
            aVar.d("AlgorithmParameters.CCM", str + "$AlgParamsCCM");
            StringBuilder sb9 = new StringBuilder();
            sb9.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x7 = Sh.d.f23310D;
            sb9.append((Object) c14549x7);
            aVar.d(sb9.toString(), "CCM");
            StringBuilder sb10 = new StringBuilder();
            sb10.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x8 = Sh.d.f23319M;
            sb10.append((Object) c14549x8);
            aVar.d(sb10.toString(), "CCM");
            StringBuilder sb11 = new StringBuilder();
            sb11.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x9 = Sh.d.f23328V;
            sb11.append((Object) c14549x9);
            aVar.d(sb11.toString(), "CCM");
            aVar.d("AlgorithmParameterGenerator.AES", str + "$AlgParamGen");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2", KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22", KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42", KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x), KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x2), KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x3), KeyProperties.KEY_ALGORITHM_AES);
            aVar.h("Cipher.AES", C3474a.f31400a);
            aVar.d("Cipher.AES", str + "$ECB");
            aVar.d("Alg.Alias.Cipher.2.16.840.1.101.3.4.2", KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.Cipher.2.16.840.1.101.3.4.22", KeyProperties.KEY_ALGORITHM_AES);
            aVar.d("Alg.Alias.Cipher.2.16.840.1.101.3.4.42", KeyProperties.KEY_ALGORITHM_AES);
            C14549x c14549x10 = Sh.d.f23372x;
            aVar.g("Cipher", c14549x10, str + "$ECB");
            C14549x c14549x11 = Sh.d.f23313G;
            aVar.g("Cipher", c14549x11, str + "$ECB");
            C14549x c14549x12 = Sh.d.f23322P;
            aVar.g("Cipher", c14549x12, str + "$ECB");
            aVar.g("Cipher", c14549x, str + "$CBC");
            aVar.g("Cipher", c14549x2, str + "$CBC");
            aVar.g("Cipher", c14549x3, str + "$CBC");
            C14549x c14549x13 = Sh.d.f23374z;
            aVar.g("Cipher", c14549x13, str + "$OFB");
            C14549x c14549x14 = Sh.d.f23315I;
            aVar.g("Cipher", c14549x14, str + "$OFB");
            C14549x c14549x15 = Sh.d.f23324R;
            aVar.g("Cipher", c14549x15, str + "$OFB");
            C14549x c14549x16 = Sh.d.f23307A;
            aVar.g("Cipher", c14549x16, str + "$CFB");
            C14549x c14549x17 = Sh.d.f23316J;
            aVar.g("Cipher", c14549x17, str + "$CFB");
            C14549x c14549x18 = Sh.d.f23325S;
            aVar.g("Cipher", c14549x18, str + "$CFB");
            aVar.h("Cipher.AESWRAP", C3474a.f31400a);
            aVar.d("Cipher.AESWRAP", str + "$Wrap");
            C14549x c14549x19 = Sh.d.f23308B;
            aVar.g("Alg.Alias.Cipher", c14549x19, "AESWRAP");
            C14549x c14549x20 = Sh.d.f23317K;
            aVar.g("Alg.Alias.Cipher", c14549x20, "AESWRAP");
            C14549x c14549x21 = Sh.d.f23326T;
            aVar.g("Alg.Alias.Cipher", c14549x21, "AESWRAP");
            aVar.d("Alg.Alias.Cipher.AESKW", "AESWRAP");
            aVar.h("Cipher.AESWRAPPAD", C3474a.f31400a);
            aVar.d("Cipher.AESWRAPPAD", str + "$WrapPad");
            C14549x c14549x22 = Sh.d.f23311E;
            aVar.g("Alg.Alias.Cipher", c14549x22, "AESWRAPPAD");
            C14549x c14549x23 = Sh.d.f23320N;
            aVar.g("Alg.Alias.Cipher", c14549x23, "AESWRAPPAD");
            C14549x c14549x24 = Sh.d.f23329W;
            aVar.g("Alg.Alias.Cipher", c14549x24, "AESWRAPPAD");
            aVar.d("Alg.Alias.Cipher.AESKWP", "AESWRAPPAD");
            aVar.d("Cipher.AESRFC3211WRAP", str + "$RFC3211Wrap");
            aVar.d("Cipher.AESRFC5649WRAP", str + "$RFC5649Wrap");
            aVar.d("AlgorithmParameterGenerator.CCM", str + "$AlgParamGenCCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x7), "CCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x8), "CCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x9), "CCM");
            aVar.h("Cipher.CCM", C3474a.f31400a);
            aVar.d("Cipher.CCM", str + "$CCM");
            aVar.g("Alg.Alias.Cipher", c14549x7, "CCM");
            aVar.g("Alg.Alias.Cipher", c14549x8, "CCM");
            aVar.g("Alg.Alias.Cipher", c14549x9, "CCM");
            aVar.d("AlgorithmParameterGenerator.GCM", str + "$AlgParamGenGCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x4), "GCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x5), "GCM");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x6), "GCM");
            aVar.h("Cipher.GCM", C3474a.f31400a);
            aVar.d("Cipher.GCM", str + "$GCM");
            aVar.g("Alg.Alias.Cipher", c14549x4, "GCM");
            aVar.g("Alg.Alias.Cipher", c14549x5, "GCM");
            aVar.g("Alg.Alias.Cipher", c14549x6, "GCM");
            aVar.d("KeyGenerator.AES", str + "$KeyGen");
            aVar.d("KeyGenerator.2.16.840.1.101.3.4.2", str + "$KeyGen128");
            aVar.d("KeyGenerator.2.16.840.1.101.3.4.22", str + "$KeyGen192");
            aVar.d("KeyGenerator.2.16.840.1.101.3.4.42", str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x10, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x13, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x16, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x11, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x2, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x14, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x17, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x12, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x3, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x15, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x18, str + "$KeyGen256");
            aVar.d("KeyGenerator.AESWRAP", str + "$KeyGen");
            aVar.g("KeyGenerator", c14549x19, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x20, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x21, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x4, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x5, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x6, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x7, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x8, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x9, str + "$KeyGen256");
            aVar.d("KeyGenerator.AESWRAPPAD", str + "$KeyGen");
            aVar.g("KeyGenerator", c14549x22, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x23, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x24, str + "$KeyGen256");
            aVar.d("Mac.AESCMAC", str + "$AESCMAC");
            aVar.d("Mac.AESCCMMAC", str + "$AESCCMMAC");
            aVar.d("Alg.Alias.Mac." + c14549x7.J(), "AESCCMMAC");
            aVar.d("Alg.Alias.Mac." + c14549x8.J(), "AESCCMMAC");
            aVar.d("Alg.Alias.Mac." + c14549x9.J(), "AESCCMMAC");
            C14549x c14549x25 = InterfaceC15100a.f108070l;
            aVar.g("Alg.Alias.Cipher", c14549x25, "PBEWITHSHAAND128BITAES-CBC-BC");
            C14549x c14549x26 = InterfaceC15100a.f108075m;
            aVar.g("Alg.Alias.Cipher", c14549x26, "PBEWITHSHAAND192BITAES-CBC-BC");
            C14549x c14549x27 = InterfaceC15100a.f108080n;
            aVar.g("Alg.Alias.Cipher", c14549x27, "PBEWITHSHAAND256BITAES-CBC-BC");
            C14549x c14549x28 = InterfaceC15100a.f108085o;
            aVar.g("Alg.Alias.Cipher", c14549x28, "PBEWITHSHA256AND128BITAES-CBC-BC");
            C14549x c14549x29 = InterfaceC15100a.f108090p;
            aVar.g("Alg.Alias.Cipher", c14549x29, "PBEWITHSHA256AND192BITAES-CBC-BC");
            C14549x c14549x30 = InterfaceC15100a.f108095q;
            aVar.g("Alg.Alias.Cipher", c14549x30, "PBEWITHSHA256AND256BITAES-CBC-BC");
            aVar.d("Cipher.PBEWITHSHAAND128BITAES-CBC-BC", str + "$PBEWithSHA1AESCBC128");
            aVar.d("Cipher.PBEWITHSHAAND192BITAES-CBC-BC", str + "$PBEWithSHA1AESCBC192");
            aVar.d("Cipher.PBEWITHSHAAND256BITAES-CBC-BC", str + "$PBEWithSHA1AESCBC256");
            aVar.d("Cipher.PBEWITHSHA256AND128BITAES-CBC-BC", str + "$PBEWithSHA256AESCBC128");
            aVar.d("Cipher.PBEWITHSHA256AND192BITAES-CBC-BC", str + "$PBEWithSHA256AESCBC192");
            aVar.d("Cipher.PBEWITHSHA256AND256BITAES-CBC-BC", str + "$PBEWithSHA256AESCBC256");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHAAND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHAAND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHAAND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            aVar.d("Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL", str + "$PBEWithAESCBC");
            aVar.d("Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL", str + "$PBEWithAESCBC");
            aVar.d("Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL", str + "$PBEWithAESCBC");
            aVar.d("SecretKeyFactory.AES", str + "$KeyFactory");
            aVar.g("SecretKeyFactory", Sh.d.f23371w, str + "$KeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL", str + "$PBEWithMD5And128BitAESCBCOpenSSL");
            aVar.d("SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL", str + "$PBEWithMD5And192BitAESCBCOpenSSL");
            aVar.d("SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL", str + "$PBEWithMD5And256BitAESCBCOpenSSL");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC", str + "$PBEWithSHAAnd128BitAESBC");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC", str + "$PBEWithSHAAnd192BitAESBC");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC", str + "$PBEWithSHAAnd256BitAESBC");
            aVar.d("SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC", str + "$PBEWithSHA256And128BitAESBC");
            aVar.d("SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC", str + "$PBEWithSHA256And192BitAESBC");
            aVar.d("SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC", str + "$PBEWithSHA256And256BitAESBC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x25, "PBEWITHSHAAND128BITAES-CBC-BC");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x26, "PBEWITHSHAAND192BITAES-CBC-BC");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x27, "PBEWITHSHAAND256BITAES-CBC-BC");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x28, "PBEWITHSHA256AND128BITAES-CBC-BC");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x29, "PBEWITHSHA256AND192BITAES-CBC-BC");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x30, "PBEWITHSHA256AND256BITAES-CBC-BC");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters." + c14549x25.J(), "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters." + c14549x26.J(), "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters." + c14549x27.J(), "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters." + c14549x28.J(), "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters." + c14549x29.J(), "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters." + c14549x30.J(), "PKCS12PBE");
            c(aVar, KeyProperties.KEY_ALGORITHM_AES, str + "$AESGMAC", str + "$KeyGen128");
            d(aVar, KeyProperties.KEY_ALGORITHM_AES, str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class v extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public v() {
            super(new C2388u(new Ti.C(C2769a.r(), 128)), 128);
        }
    }

    public static class w extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public w() {
            super(C3092c.m(C2769a.r()));
        }
    }

    public static class x extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public x() {
            super("PBEWithMD5And128BitAES-CBC-OpenSSL", null, true, 3, 0, 128, 128);
        }
    }

    public static class y extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public y() {
            super("PBEWithMD5And192BitAES-CBC-OpenSSL", null, true, 3, 0, 192, 128);
        }
    }

    public static class z extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public z() {
            super("PBEWithMD5And256BitAES-CBC-OpenSSL", null, true, 3, 0, 256, 128);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f31400a = hashMap;
        hashMap.put("SupportedKeyClasses", "javax.crypto.SecretKey");
        hashMap.put("SupportedKeyFormats", "RAW");
    }
}
