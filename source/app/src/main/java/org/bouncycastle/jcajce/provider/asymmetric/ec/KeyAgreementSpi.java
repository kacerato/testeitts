package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2390w;
import Xi.C3364q0;
import Xi.C3365r0;
import ck.C4206D;
import ck.C4213f;
import ck.s;
import fk.InterfaceC13238d;
import fk.InterfaceC13239e;
import fk.InterfaceC13248n;
import fk.InterfaceC13249o;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import ki.q;

public class KeyAgreementSpi extends org.bouncycastle.jcajce.provider.asymmetric.util.a {

    public static final q f101160q = new q();

    public String f101161k;

    public Xi.G f101162l;

    public Object f101163m;

    public s f101164n;

    public C4213f f101165o;

    public byte[] f101166p;

    public static class A extends KeyAgreementSpi {
        public A() {
            super("ECDHwithSHA512CKDF", new Ci.f(), new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class B extends KeyAgreementSpi {
        public B() {
            super("ECDHwithSHA512KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class C extends KeyAgreementSpi {
        public C() {
            super("ECKAEGwithRIPEMD160KDF", new Ci.e(), new Oi.z(new Ii.G()));
        }
    }

    public static class D extends KeyAgreementSpi {
        public D() {
            super("ECKAEGwithSHA1KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class E extends KeyAgreementSpi {
        public E() {
            super("ECKAEGwithSHA224KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class F extends KeyAgreementSpi {
        public F() {
            super("ECKAEGwithSHA256KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class G extends KeyAgreementSpi {
        public G() {
            super("ECKAEGwithSHA384KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class H extends KeyAgreementSpi {
        public H() {
            super("ECKAEGwithSHA512KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class I extends KeyAgreementSpi {
        public I() {
            super("ECMQV", new Ci.i(), (InterfaceC2390w) null);
        }
    }

    public static class J extends KeyAgreementSpi {
        public J() {
            super("ECMQVwithSHA1CKDF", new Ci.i(), new Ei.a(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class K extends KeyAgreementSpi {
        public K() {
            super("ECMQVwithSHA1KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class L extends KeyAgreementSpi {
        public L() {
            super("ECMQVwithSHA1KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class M extends KeyAgreementSpi {
        public M() {
            super("ECMQVwithSHA224CKDF", new Ci.i(), new Ei.a(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class N extends KeyAgreementSpi {
        public N() {
            super("ECMQVwithSHA224KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class O extends KeyAgreementSpi {
        public O() {
            super("ECMQVwithSHA224KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class P extends KeyAgreementSpi {
        public P() {
            super("ECMQVwithSHA256CKDF", new Ci.i(), new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class Q extends KeyAgreementSpi {
        public Q() {
            super("ECMQVwithSHA256KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class R extends KeyAgreementSpi {
        public R() {
            super("ECMQVwithSHA256KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class S extends KeyAgreementSpi {
        public S() {
            super("ECMQVwithSHA384CKDF", new Ci.i(), new Ei.a(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class T extends KeyAgreementSpi {
        public T() {
            super("ECMQVwithSHA384KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class U extends KeyAgreementSpi {
        public U() {
            super("ECMQVwithSHA384KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class V extends KeyAgreementSpi {
        public V() {
            super("ECMQVwithSHA512CKDF", new Ci.i(), new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class W extends KeyAgreementSpi {
        public W() {
            super("ECMQVwithSHA512KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class X extends KeyAgreementSpi {
        public X() {
            super("ECMQVwithSHA512KDF", new Ci.i(), new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class C14685a extends KeyAgreementSpi {
        public C14685a() {
            super("ECCDHwithSHA1KDF", new Ci.f(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class C14686b extends KeyAgreementSpi {
        public C14686b() {
            super("ECCDHwithSHA224KDF", new Ci.f(), new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class C14687c extends KeyAgreementSpi {
        public C14687c() {
            super("ECCDHwithSHA256KDF", new Ci.f(), new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class C14688d extends KeyAgreementSpi {
        public C14688d() {
            super("ECCDHwithSHA384KDF", new Ci.f(), new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class C14689e extends KeyAgreementSpi {
        public C14689e() {
            super("ECCDHwithSHA512KDF", new Ci.f(), new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class C14690f extends KeyAgreementSpi {
        public C14690f() {
            super("ECDH", new Ci.e(), (InterfaceC2390w) null);
        }
    }

    public static class C14691g extends KeyAgreementSpi {
        public C14691g() {
            super("ECDHC", new Ci.f(), (InterfaceC2390w) null);
        }
    }

    public static class C14692h extends KeyAgreementSpi {
        public C14692h() {
            super("ECCDHU", new Ci.h(), (InterfaceC2390w) null);
        }
    }

    public static class C14693i extends KeyAgreementSpi {
        public C14693i() {
            super("ECCDHUwithSHA1CKDF", new Ci.h(), new Ei.a(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class C14694j extends KeyAgreementSpi {
        public C14694j() {
            super("ECCDHUwithSHA1KDF", new Ci.h(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class C14695k extends KeyAgreementSpi {
        public C14695k() {
            super("ECCDHUwithSHA224CKDF", new Ci.h(), new Ei.a(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class C14696l extends KeyAgreementSpi {
        public C14696l() {
            super("ECCDHUwithSHA224KDF", new Ci.h(), new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class C14697m extends KeyAgreementSpi {
        public C14697m() {
            super("ECCDHUwithSHA256CKDF", new Ci.h(), new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class C14698n extends KeyAgreementSpi {
        public C14698n() {
            super("ECCDHUwithSHA256KDF", new Ci.h(), new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class C14699o extends KeyAgreementSpi {
        public C14699o() {
            super("ECCDHUwithSHA384CKDF", new Ci.h(), new Ei.a(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class C14700p extends KeyAgreementSpi {
        public C14700p() {
            super("ECCDHUwithSHA384KDF", new Ci.h(), new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class C14701q extends KeyAgreementSpi {
        public C14701q() {
            super("ECCDHUwithSHA512CKDF", new Ci.h(), new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class C14702r extends KeyAgreementSpi {
        public C14702r() {
            super("ECCDHUwithSHA512KDF", new Ci.h(), new Oi.z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class C14703s extends KeyAgreementSpi {
        public C14703s() {
            super("ECDHwithSHA1CKDF", new Ci.f(), new Ei.a(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class C14704t extends KeyAgreementSpi {
        public C14704t() {
            super("ECDHwithSHA1KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class C14705u extends KeyAgreementSpi {
        public C14705u() {
            super("ECDHwithSHA1KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.d()));
        }
    }

    public static class C14706v extends KeyAgreementSpi {
        public C14706v() {
            super("ECDHwithSHA224KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.f()));
        }
    }

    public static class C14707w extends KeyAgreementSpi {
        public C14707w() {
            super("ECDHwithSHA256CKDF", new Ci.f(), new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class C14708x extends KeyAgreementSpi {
        public C14708x() {
            super("ECDHwithSHA256KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class y extends KeyAgreementSpi {
        public y() {
            super("ECDHwithSHA384CKDF", new Ci.f(), new Ei.a(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class z extends KeyAgreementSpi {
        public z() {
            super("ECDHwithSHA384KDF", new Ci.e(), new Oi.z(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public KeyAgreementSpi(String str, InterfaceC2373e interfaceC2373e, InterfaceC2390w interfaceC2390w) {
        super(str, interfaceC2390w);
        this.f101161k = str;
        this.f101163m = interfaceC2373e;
    }

    public static String i(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    @Override
    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f101166p);
    }

    @Override
    public void c(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        Xi.L l10;
        Xi.L l11;
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof s) && !(algorithmParameterSpec instanceof C4206D) && !(algorithmParameterSpec instanceof C4213f)) {
            throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
        }
        Object obj = this.f101163m;
        Xi.M m10 = null;
        if (obj instanceof Ci.i) {
            this.f101164n = null;
            boolean z10 = key instanceof InterfaceC13248n;
            if (!z10 && !(algorithmParameterSpec instanceof s)) {
                throw new InvalidAlgorithmParameterException(this.f101161k + " key agreement requires " + i(s.class) + " for initialisation");
            }
            if (z10) {
                InterfaceC13248n interfaceC13248n = (InterfaceC13248n) key;
                l11 = (Xi.L) d.a(interfaceC13248n.W9());
                l10 = (Xi.L) d.a(interfaceC13248n.Na());
                if (interfaceC13248n.x8() != null) {
                    m10 = (Xi.M) d.b(interfaceC13248n.x8());
                }
            } else {
                s sVar = (s) algorithmParameterSpec;
                Xi.L l12 = (Xi.L) d.a((PrivateKey) key);
                l10 = (Xi.L) d.a(sVar.a());
                m10 = sVar.b() != null ? (Xi.M) d.b(sVar.b()) : null;
                this.f101164n = sVar;
                this.f101324c = sVar.d();
                l11 = l12;
            }
            C3364q0 c3364q0 = new C3364q0(l11, l10, m10);
            this.f101162l = l11.d();
            ((Ci.i) this.f101163m).a(c3364q0);
            return;
        }
        if (!(algorithmParameterSpec instanceof C4213f)) {
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException(this.f101161k + " key agreement requires " + i(InterfaceC13238d.class) + " for initialisation");
            }
            if (this.f101323b == null && (algorithmParameterSpec instanceof C4206D)) {
                throw new InvalidAlgorithmParameterException("no KDF specified for UserKeyingMaterialSpec");
            }
            Xi.L l13 = (Xi.L) d.a((PrivateKey) key);
            this.f101162l = l13.d();
            this.f101324c = algorithmParameterSpec instanceof C4206D ? ((C4206D) algorithmParameterSpec).b() : null;
            ((InterfaceC2373e) this.f101163m).a(l13);
            return;
        }
        if (!(obj instanceof Ci.h)) {
            throw new InvalidAlgorithmParameterException(this.f101161k + " key agreement cannot be used with " + i(C4213f.class));
        }
        C4213f c4213f = (C4213f) algorithmParameterSpec;
        Xi.L l14 = (Xi.L) d.a((PrivateKey) key);
        Xi.L l15 = (Xi.L) d.a(c4213f.a());
        Xi.M m11 = c4213f.b() != null ? (Xi.M) d.b(c4213f.b()) : null;
        this.f101165o = c4213f;
        this.f101324c = c4213f.d();
        Xi.E e10 = new Xi.E(l14, l15, m11);
        this.f101162l = l14.d();
        ((Ci.h) this.f101163m).c(e10);
    }

    @Override
    public Key engineDoPhase(Key key, boolean z10) throws InvalidKeyException, IllegalStateException {
        InterfaceC2379k b10;
        if (this.f101162l == null) {
            throw new IllegalStateException(this.f101161k + " not initialised.");
        }
        if (!z10) {
            throw new IllegalStateException(this.f101161k + " can only be between two parties.");
        }
        Object obj = this.f101163m;
        if (obj instanceof Ci.i) {
            if (key instanceof InterfaceC13249o) {
                InterfaceC13249o interfaceC13249o = (InterfaceC13249o) key;
                b10 = new C3365r0((Xi.M) d.b(interfaceC13249o.R7()), (Xi.M) d.b(interfaceC13249o.P8()));
            } else {
                b10 = new C3365r0((Xi.M) d.b((PublicKey) key), (Xi.M) d.b(this.f101164n.c()));
            }
        } else if (obj instanceof Ci.h) {
            b10 = new Xi.F((Xi.M) d.b((PublicKey) key), (Xi.M) d.b(this.f101165o.c()));
        } else {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException(this.f101161k + " key agreement requires " + i(InterfaceC13239e.class) + " for doPhase");
            }
            b10 = d.b((PublicKey) key);
        }
        try {
            Object obj2 = this.f101163m;
            if (obj2 instanceof InterfaceC2373e) {
                this.f101166p = h(((InterfaceC2373e) obj2).b(b10));
                return null;
            }
            this.f101166p = ((Ci.h) obj2).a(b10);
            return null;
        } catch (Exception e10) {
            throw new InvalidKeyException("calculation failed: " + e10.getMessage()) {
                @Override
                public Throwable getCause() {
                    return e10;
                }
            };
        }
    }

    public byte[] h(BigInteger bigInteger) {
        q qVar = f101160q;
        return qVar.c(bigInteger, qVar.a(this.f101162l.a()));
    }

    public KeyAgreementSpi(String str, Ci.h hVar, InterfaceC2390w interfaceC2390w) {
        super(str, interfaceC2390w);
        this.f101161k = str;
        this.f101163m = hVar;
    }
}
