package Sj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2392y;
import Li.C2778e0;
import Xi.F0;
import Xi.x0;
import android.security.keystore.KeyProperties;
import bk.C3898d;
import dk.C12947c;
import dk.InterfaceC12950f;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import org.bouncycastle.crypto.CryptoException;

public class k extends SignatureSpi {

    public final InterfaceC12950f f23582a;

    public AlgorithmParameters f23583b;

    public PSSParameterSpec f23584c;

    public PSSParameterSpec f23585d;

    public InterfaceC2370b f23586e;

    public InterfaceC2392y f23587f;

    public InterfaceC2392y f23588g;

    public int f23589h;

    public byte f23590i;

    public boolean f23591j;

    public F0 f23592k;

    public SecureRandom f23593l;

    public bj.u f23594m;

    public boolean f23595n;

    public static class A extends k {
        public A() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512(224)", "MGF1", new MGF1ParameterSpec("SHA-512(224)"), 28, 1));
        }
    }

    public static class B extends k {
        public B() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512(224)", "SHAKE128", null, 28, 1));
        }
    }

    public static class C extends k {
        public C() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512(224)", "SHAKE256", null, 28, 1));
        }
    }

    public static class D extends k {
        public D() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512(256)", "MGF1", new MGF1ParameterSpec("SHA-512(256)"), 32, 1));
        }
    }

    public static class E extends k {
        public E() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512(256)", "SHAKE128", null, 32, 1));
        }
    }

    public static class F extends k {
        public F() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512(256)", "SHAKE256", null, 32, 1));
        }
    }

    public static class G extends k {
        public G() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512", "MGF1", new MGF1ParameterSpec("SHA-512"), 64, 1));
        }
    }

    public static class H extends k {
        public H() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512", "SHAKE128", null, 64, 1));
        }
    }

    public static class I extends k {
        public I() {
            super(new C2778e0(), new PSSParameterSpec("SHA-512", "SHAKE256", null, 64, 1));
        }
    }

    public static class J extends k {
        public J() {
            super(new C2778e0(), new PSSParameterSpec("SHAKE128", "SHAKE128", null, 32, 1));
        }
    }

    public static class K extends k {
        public K() {
            super(new C2778e0(), new PSSParameterSpec("SHAKE256", "SHAKE256", null, 64, 1));
        }
    }

    public static class L extends k {
        public L() {
            super(new C2778e0(), null, true);
        }
    }

    public static class C3020a implements InterfaceC2392y {

        public InterfaceC2392y f23597b;

        public ByteArrayOutputStream f23596a = new ByteArrayOutputStream();

        public boolean f23598c = true;

        public C3020a(InterfaceC2392y interfaceC2392y) {
            this.f23597b = interfaceC2392y;
        }

        @Override
        public String b() {
            return "NULL";
        }

        @Override
        public int c(byte[] bArr, int i10) {
            byte[] byteArray = this.f23596a.toByteArray();
            if (this.f23598c) {
                System.arraycopy(byteArray, 0, bArr, i10, byteArray.length);
            } else {
                this.f23597b.update(byteArray, 0, byteArray.length);
                this.f23597b.c(bArr, i10);
            }
            reset();
            this.f23598c = !this.f23598c;
            return byteArray.length;
        }

        @Override
        public int f() {
            return this.f23597b.f();
        }

        public int i() {
            return 0;
        }

        @Override
        public void reset() {
            this.f23596a.reset();
            this.f23597b.reset();
        }

        @Override
        public void update(byte b10) {
            this.f23596a.write(b10);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            this.f23596a.write(bArr, i10, i11);
        }
    }

    public static class C3021b extends k {
        public C3021b() {
            super(new C2778e0(), null);
        }
    }

    public static class C3022c extends k {
        public C3022c() {
            super(new C2778e0(), PSSParameterSpec.DEFAULT);
        }
    }

    public static class C3023d extends k {
        public C3023d() {
            super(new C2778e0(), new PSSParameterSpec("SHA1", "SHAKE128", null, 20, 1));
        }
    }

    public static class C3024e extends k {
        public C3024e() {
            super(new C2778e0(), new PSSParameterSpec("SHA1", "SHAKE256", null, 20, 1));
        }
    }

    public static class C3025f extends k {
        public C3025f() {
            super(new C2778e0(), new PSSParameterSpec("SHA-224", "MGF1", new MGF1ParameterSpec("SHA-224"), 28, 1));
        }
    }

    public static class C3026g extends k {
        public C3026g() {
            super(new C2778e0(), new PSSParameterSpec("SHA-224", "SHAKE128", null, 28, 1));
        }
    }

    public static class C3027h extends k {
        public C3027h() {
            super(new C2778e0(), new PSSParameterSpec("SHA-224", "SHAKE256", null, 28, 1));
        }
    }

    public static class C3028i extends k {
        public C3028i() {
            super(new C2778e0(), new PSSParameterSpec("SHA-256", "MGF1", new MGF1ParameterSpec("SHA-256"), 32, 1));
        }
    }

    public static class C3029j extends k {
        public C3029j() {
            super(new C2778e0(), new PSSParameterSpec("SHA-256", "SHAKE128", null, 32, 1));
        }
    }

    public static class C0565k extends k {
        public C0565k() {
            super(new C2778e0(), new PSSParameterSpec("SHA-256", "SHAKE256", null, 32, 1));
        }
    }

    public static class C3030l extends k {
        public C3030l() {
            super(new C2778e0(), new PSSParameterSpec("SHA-384", "MGF1", new MGF1ParameterSpec("SHA-384"), 48, 1));
        }
    }

    public static class m extends k {
        public m() {
            super(new C2778e0(), new PSSParameterSpec("SHA-384", "SHAKE128", null, 48, 1));
        }
    }

    public static class n extends k {
        public n() {
            super(new C2778e0(), new PSSParameterSpec("SHA-384", "SHAKE256", null, 48, 1));
        }
    }

    public static class o extends k {
        public o() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-224", "MGF1", new MGF1ParameterSpec("SHA3-224"), 28, 1));
        }
    }

    public static class p extends k {
        public p() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-224", "SHAKE128", null, 28, 1));
        }
    }

    public static class q extends k {
        public q() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-224", "SHAKE256", null, 28, 1));
        }
    }

    public static class r extends k {
        public r() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-256", "MGF1", new MGF1ParameterSpec("SHA3-256"), 32, 1));
        }
    }

    public static class s extends k {
        public s() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-256", "SHAKE128", null, 32, 1));
        }
    }

    public static class t extends k {
        public t() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-256", "SHAKE256", null, 32, 1));
        }
    }

    public static class u extends k {
        public u() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-384", "MGF1", new MGF1ParameterSpec("SHA3-384"), 48, 1));
        }
    }

    public static class v extends k {
        public v() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-384", "SHAKE128", null, 48, 1));
        }
    }

    public static class w extends k {
        public w() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-384", "SHAKE256", null, 48, 1));
        }
    }

    public static class x extends k {
        public x() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-512", "MGF1", new MGF1ParameterSpec("SHA3-512"), 64, 1));
        }
    }

    public static class y extends k {
        public y() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-512", "SHAKE128", null, 64, 1));
        }
    }

    public static class z extends k {
        public z() {
            super(new C2778e0(), new PSSParameterSpec("SHA3-512", "SHAKE256", null, 64, 1));
        }
    }

    public k(InterfaceC2370b interfaceC2370b, PSSParameterSpec pSSParameterSpec) {
        this(interfaceC2370b, pSSParameterSpec, false);
    }

    public final byte a(int i10) {
        if (i10 == 1) {
            return (byte) -68;
        }
        throw new IllegalArgumentException("unknown trailer field");
    }

    public final void b() {
        InterfaceC2392y a10 = C3898d.a(this.f23584c.getDigestAlgorithm());
        this.f23587f = a10;
        if (this.f23591j) {
            this.f23587f = new C3020a(a10);
        }
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f23583b == null && this.f23584c != null) {
            try {
                AlgorithmParameters l10 = this.f23582a.l(KeyProperties.SIGNATURE_PADDING_RSA_PSS);
                this.f23583b = l10;
                l10.init(this.f23584c);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f23583b;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof RSAPrivateKey)) {
            throw new InvalidKeyException("Supplied key is not a RSAPrivateKey instance");
        }
        this.f23592k = l.c((RSAPrivateKey) privateKey);
        bj.u uVar = new bj.u(this.f23586e, this.f23587f, this.f23588g, this.f23589h, this.f23590i);
        this.f23594m = uVar;
        SecureRandom secureRandom = this.f23593l;
        if (secureRandom != null) {
            uVar.a(true, new x0(this.f23592k, secureRandom));
        } else {
            uVar.a(true, this.f23592k);
        }
        this.f23595n = true;
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof RSAPublicKey)) {
            throw new InvalidKeyException("Supplied key is not a RSAPublicKey instance");
        }
        this.f23592k = l.d((RSAPublicKey) publicKey);
        bj.u uVar = new bj.u(this.f23586e, this.f23587f, this.f23588g, this.f23589h, this.f23590i);
        this.f23594m = uVar;
        uVar.a(false, this.f23592k);
        this.f23595n = true;
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        this.f23595n = true;
        try {
            return this.f23594m.c();
        } catch (CryptoException e10) {
            throw new SignatureException(e10.getMessage());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f23594m.update(b10);
        this.f23595n = false;
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        this.f23595n = true;
        return this.f23594m.b(bArr);
    }

    public k(InterfaceC2370b interfaceC2370b, PSSParameterSpec pSSParameterSpec, boolean z10) {
        this.f23582a = new C12947c();
        this.f23595n = true;
        this.f23586e = interfaceC2370b;
        this.f23585d = pSSParameterSpec;
        if (pSSParameterSpec == null) {
            this.f23584c = PSSParameterSpec.DEFAULT;
        } else {
            this.f23584c = pSSParameterSpec;
        }
        this.f23588g = C3898d.a("MGF1".equals(this.f23584c.getMGFAlgorithm()) ? this.f23584c.getDigestAlgorithm() : this.f23584c.getMGFAlgorithm());
        this.f23589h = this.f23584c.getSaltLength();
        this.f23590i = a(this.f23584c.getTrailerField());
        this.f23591j = z10;
        b();
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f23593l = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        String digestAlgorithm;
        bj.u uVar;
        boolean z10;
        if (algorithmParameterSpec == null && (algorithmParameterSpec = this.f23585d) == null) {
            return;
        }
        if (!this.f23595n) {
            throw new ProviderException("cannot call setParameter in the middle of update");
        }
        if (!(algorithmParameterSpec instanceof PSSParameterSpec)) {
            throw new InvalidAlgorithmParameterException("Only PSSParameterSpec supported");
        }
        PSSParameterSpec pSSParameterSpec = (PSSParameterSpec) algorithmParameterSpec;
        PSSParameterSpec pSSParameterSpec2 = this.f23585d;
        if (pSSParameterSpec2 != null && !C3898d.c(pSSParameterSpec2.getDigestAlgorithm(), pSSParameterSpec.getDigestAlgorithm())) {
            throw new InvalidAlgorithmParameterException("parameter must be using " + this.f23585d.getDigestAlgorithm());
        }
        if (pSSParameterSpec.getMGFAlgorithm().equalsIgnoreCase("MGF1") || pSSParameterSpec.getMGFAlgorithm().equals(Xh.t.f29037O0.J())) {
            if (!(pSSParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec)) {
                throw new InvalidAlgorithmParameterException("unknown MGF parameters");
            }
            MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) pSSParameterSpec.getMGFParameters();
            if (!C3898d.c(mGF1ParameterSpec.getDigestAlgorithm(), pSSParameterSpec.getDigestAlgorithm())) {
                throw new InvalidAlgorithmParameterException("digest algorithm for MGF should be the same as for PSS parameters.");
            }
            digestAlgorithm = mGF1ParameterSpec.getDigestAlgorithm();
        } else {
            if (!pSSParameterSpec.getMGFAlgorithm().equals("SHAKE128") && !pSSParameterSpec.getMGFAlgorithm().equals("SHAKE256")) {
                throw new InvalidAlgorithmParameterException("unknown mask generation function specified");
            }
            digestAlgorithm = pSSParameterSpec.getMGFAlgorithm();
        }
        InterfaceC2392y a10 = C3898d.a(digestAlgorithm);
        if (a10 == null) {
            throw new InvalidAlgorithmParameterException("no match on MGF algorithm: " + pSSParameterSpec.getMGFAlgorithm());
        }
        this.f23583b = null;
        this.f23584c = pSSParameterSpec;
        this.f23588g = a10;
        this.f23589h = pSSParameterSpec.getSaltLength();
        this.f23590i = a(this.f23584c.getTrailerField());
        b();
        if (this.f23592k != null) {
            this.f23594m = new bj.u(this.f23586e, this.f23587f, a10, this.f23589h, this.f23590i);
            if (this.f23592k.c()) {
                uVar = this.f23594m;
                z10 = true;
            } else {
                uVar = this.f23594m;
                z10 = false;
            }
            uVar.a(z10, this.f23592k);
        }
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f23594m.update(bArr, i10, i11);
        this.f23595n = false;
    }
}
