package Mj;

import Bi.InterfaceC2373e;
import Bi.InterfaceC2390w;
import Xi.C3359o;
import Xi.C3361p;
import Xi.C3363q;
import Xi.C3366s;
import Xi.C3368t;
import Xi.C3370u;
import ck.C4206D;
import ck.C4210c;
import ck.C4213f;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class g extends org.bouncycastle.jcajce.provider.asymmetric.util.a {

    public static final BigInteger f15346s = BigInteger.valueOf(1);

    public static final BigInteger f15347t = BigInteger.valueOf(2);

    public final Ci.d f15348k;

    public final InterfaceC2373e f15349l;

    public C4213f f15350m;

    public ck.s f15351n;

    public BigInteger f15352o;

    public BigInteger f15353p;

    public BigInteger f15354q;

    public byte[] f15355r;

    public static class A extends g {
        public A() {
            super("MQVwithSHA256KDF", new Ci.k(), new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class B extends g {
        public B() {
            super("MQVwithSHA384CKDF", new Ci.k(), new Ei.a(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class C extends g {
        public C() {
            super("MQVwithSHA384KDF", new Ci.k(), new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class D extends g {
        public D() {
            super("MQVwithSHA512CKDF", new Ci.k(), new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class E extends g {
        public E() {
            super("MQVwithSHA512KDF", new Ci.k(), new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class C2840a extends g {
        public C2840a() {
            super("DHUwithSHA1CKDF", new Ci.d(), new Ei.a(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class C2841b extends g {
        public C2841b() {
            super("DHUwithSHA1KDF", new Ci.d(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class C2842c extends g {
        public C2842c() {
            super("DHUwithSHA224CKDF", new Ci.d(), new Ei.a(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class C2843d extends g {
        public C2843d() {
            super("DHUwithSHA224KDF", new Ci.d(), new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class C2844e extends g {
        public C2844e() {
            super("DHUwithSHA256CKDF", new Ci.d(), new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class f extends g {
        public f() {
            super("DHUwithSHA256KDF", new Ci.d(), new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class C0433g extends g {
        public C0433g() {
            super("DHUwithSHA384CKDF", new Ci.d(), new Ei.a(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class h extends g {
        public h() {
            super("DHUwithSHA384KDF", new Ci.d(), new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class i extends g {
        public i() {
            super("DHUwithSHA512CKDF", new Ci.d(), new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class j extends g {
        public j() {
            super("DHUwithSHA512KDF", new Ci.d(), new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class k extends g {
        public k() {
            super("DHwithRFC2631KDF", new Ei.c(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class l extends g {
        public l() {
            super("DHwithSHA1CKDF", new Ei.a(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class m extends g {
        public m() {
            super("DHwithSHA1CKDF", new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class n extends g {
        public n() {
            super("DHwithSHA224CKDF", new Ei.a(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class o extends g {
        public o() {
            super("DHwithSHA224CKDF", new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class p extends g {
        public p() {
            super("DHwithSHA256CKDF", new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class q extends g {
        public q() {
            super("DHwithSHA256CKDF", new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class r extends g {
        public r() {
            super("DHwithSHA384CKDF", new Ei.a(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class s extends g {
        public s() {
            super("DHwithSHA384KDF", new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class t extends g {
        public t() {
            super("DHwithSHA512CKDF", new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class u extends g {
        public u() {
            super("DHwithSHA512KDF", new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class v extends g {
        public v() {
            super("MQVwithSHA1CKDF", new Ci.k(), new Ei.a(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class w extends g {
        public w() {
            super("MQVwithSHA1KDF", new Ci.k(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class x extends g {
        public x() {
            super("MQVwithSHA224CKDF", new Ci.k(), new Ei.a(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class y extends g {
        public y() {
            super("MQVwithSHA224KDF", new Ci.k(), new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class z extends g {
        public z() {
            super("MQVwithSHA256CKDF", new Ci.k(), new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public g() {
        this("Diffie-Hellman", null);
    }

    @Override
    public byte[] b() {
        return this.f15355r;
    }

    @Override
    public void c(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        InterfaceC2373e interfaceC2373e;
        C3359o c3359o;
        Ci.d dVar;
        C3368t c3368t;
        if (!(key instanceof DHPrivateKey)) {
            throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey for initialisation");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
        if (algorithmParameterSpec == null) {
            this.f15353p = dHPrivateKey.getParams().getP();
            this.f15354q = dHPrivateKey.getParams().getG();
        } else if (algorithmParameterSpec instanceof DHParameterSpec) {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
            this.f15353p = dHParameterSpec.getP();
            this.f15354q = dHParameterSpec.getG();
            this.f15350m = null;
            this.f101324c = null;
        } else if (algorithmParameterSpec instanceof C4213f) {
            if (this.f15348k == null) {
                throw new InvalidAlgorithmParameterException("agreement algorithm not DHU based");
            }
            this.f15353p = dHPrivateKey.getParams().getP();
            this.f15354q = dHPrivateKey.getParams().getG();
            C4213f c4213f = (C4213f) algorithmParameterSpec;
            this.f15350m = c4213f;
            this.f101324c = c4213f.d();
            if (this.f15350m.b() != null) {
                dVar = this.f15348k;
                c3368t = new C3368t(i(dHPrivateKey), i(this.f15350m.a()), j(this.f15350m.b()));
            } else {
                dVar = this.f15348k;
                c3368t = new C3368t(i(dHPrivateKey), i(this.f15350m.a()));
            }
            dVar.c(c3368t);
        } else if (algorithmParameterSpec instanceof ck.s) {
            if (this.f15349l == null) {
                throw new InvalidAlgorithmParameterException("agreement algorithm not MQV based");
            }
            this.f15353p = dHPrivateKey.getParams().getP();
            this.f15354q = dHPrivateKey.getParams().getG();
            ck.s sVar = (ck.s) algorithmParameterSpec;
            this.f15351n = sVar;
            this.f101324c = sVar.d();
            if (this.f15351n.b() != null) {
                interfaceC2373e = this.f15349l;
                c3359o = new C3359o(i(dHPrivateKey), i(this.f15351n.a()), j(this.f15351n.b()));
            } else {
                interfaceC2373e = this.f15349l;
                c3359o = new C3359o(i(dHPrivateKey), i(this.f15351n.a()));
            }
            interfaceC2373e.a(c3359o);
        } else {
            if (!(algorithmParameterSpec instanceof C4206D)) {
                throw new InvalidAlgorithmParameterException("DHKeyAgreement only accepts DHParameterSpec");
            }
            if (this.f101323b == null) {
                throw new InvalidAlgorithmParameterException("no KDF specified for UserKeyingMaterialSpec");
            }
            this.f15353p = dHPrivateKey.getParams().getP();
            this.f15354q = dHPrivateKey.getParams().getG();
            this.f15350m = null;
            this.f101324c = ((C4206D) algorithmParameterSpec).b();
        }
        BigInteger x10 = dHPrivateKey.getX();
        this.f15352o = x10;
        this.f15355r = h(x10);
    }

    @Override
    public Key engineDoPhase(Key key, boolean z10) throws InvalidKeyException, IllegalStateException {
        if (this.f15352o == null) {
            throw new IllegalStateException("Diffie-Hellman not initialised.");
        }
        if (!(key instanceof DHPublicKey)) {
            throw new InvalidKeyException("DHKeyAgreement doPhase requires DHPublicKey");
        }
        DHPublicKey dHPublicKey = (DHPublicKey) key;
        if (!dHPublicKey.getParams().getG().equals(this.f15354q) || !dHPublicKey.getParams().getP().equals(this.f15353p)) {
            throw new InvalidKeyException("DHPublicKey not for this KeyAgreement!");
        }
        BigInteger y10 = dHPublicKey.getY();
        if (y10 != null && y10.compareTo(f15347t) >= 0) {
            BigInteger bigInteger = this.f15353p;
            BigInteger bigInteger2 = f15346s;
            if (y10.compareTo(bigInteger.subtract(bigInteger2)) < 0) {
                if (this.f15348k != null) {
                    if (!z10) {
                        throw new IllegalStateException("unified Diffie-Hellman can use only two key pairs");
                    }
                    this.f15355r = this.f15348k.a(new C3370u(j((PublicKey) key), j(this.f15350m.c())));
                    return null;
                }
                if (this.f15349l != null) {
                    if (!z10) {
                        throw new IllegalStateException("MQV Diffie-Hellman can use only two key pairs");
                    }
                    this.f15355r = h(this.f15349l.b(new C3361p(j((PublicKey) key), j(this.f15351n.c()))));
                    return null;
                }
                BigInteger modPow = y10.modPow(this.f15352o, this.f15353p);
                if (modPow.compareTo(bigInteger2) == 0) {
                    throw new InvalidKeyException("Shared key can't be 1");
                }
                this.f15355r = h(modPow);
                if (z10) {
                    return null;
                }
                return new d(modPow, dHPublicKey.getParams());
            }
        }
        throw new InvalidKeyException("Invalid DH PublicKey");
    }

    @Override
    public int engineGenerateSecret(byte[] bArr, int i10) throws IllegalStateException, ShortBufferException {
        if (this.f15352o != null) {
            return super.engineGenerateSecret(bArr, i10);
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        if (!(key instanceof DHPrivateKey)) {
            throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
        this.f15353p = dHPrivateKey.getParams().getP();
        this.f15354q = dHPrivateKey.getParams().getG();
        BigInteger x10 = dHPrivateKey.getX();
        this.f15352o = x10;
        this.f15355r = h(x10);
    }

    public byte[] h(BigInteger bigInteger) {
        return org.bouncycastle.util.b.b((this.f15353p.bitLength() + 7) / 8, bigInteger);
    }

    public final Xi.r i(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof DHPrivateKey)) {
            throw new InvalidKeyException("private key not a DHPrivateKey");
        }
        if (privateKey instanceof c) {
            return ((c) privateKey).b();
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) privateKey;
        DHParameterSpec params = dHPrivateKey.getParams();
        return new Xi.r(dHPrivateKey.getX(), new C3363q(params.getP(), params.getG(), null, params.getL()));
    }

    public final C3366s j(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof DHPublicKey)) {
            throw new InvalidKeyException("public key not a DHPublicKey");
        }
        if (publicKey instanceof d) {
            return ((d) publicKey).a();
        }
        DHPublicKey dHPublicKey = (DHPublicKey) publicKey;
        DHParameterSpec params = dHPublicKey.getParams();
        return params instanceof C4210c ? new C3366s(dHPublicKey.getY(), ((C4210c) params).a()) : new C3366s(dHPublicKey.getY(), new C3363q(params.getP(), params.getG(), null, params.getL()));
    }

    public g(String str, InterfaceC2373e interfaceC2373e, InterfaceC2390w interfaceC2390w) {
        super(str, interfaceC2390w);
        this.f15348k = null;
        this.f15349l = interfaceC2373e;
    }

    @Override
    public SecretKey engineGenerateSecret(String str) throws NoSuchAlgorithmException {
        if (this.f15352o != null) {
            return str.equals("TlsPremasterSecret") ? new SecretKeySpec(org.bouncycastle.jcajce.provider.asymmetric.util.a.g(this.f15355r), str) : super.engineGenerateSecret(str);
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    public g(String str, InterfaceC2390w interfaceC2390w) {
        super(str, interfaceC2390w);
        this.f15348k = null;
        this.f15349l = null;
    }

    @Override
    public byte[] engineGenerateSecret() throws IllegalStateException {
        if (this.f15352o != null) {
            return super.engineGenerateSecret();
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    public g(String str, Ci.d dVar, InterfaceC2390w interfaceC2390w) {
        super(str, interfaceC2390w);
        this.f15348k = dVar;
        this.f15349l = null;
    }
}
