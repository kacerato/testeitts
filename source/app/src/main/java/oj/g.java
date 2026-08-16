package Oj;

import Bi.InterfaceC2390w;
import Bi.N;
import Oi.x;
import Oi.z;
import Xi.C3335c;
import Xi.N0;
import Xi.Q0;
import Xi.S0;
import Xi.T0;
import ck.C4206D;
import ck.C4207E;
import ck.C4213f;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

public class g extends org.bouncycastle.jcajce.provider.asymmetric.util.a {

    public N f20287k;

    public C4213f f20288l;

    public byte[] f20289m;

    public static final class a extends g {
        public a() {
            super(C4207E.f34888c);
        }
    }

    public static class b extends g {
        public b() {
            super("X25519UwithSHA256CKDF", new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class c extends g {
        public c() {
            super("X25519UwithSHA256KDF", new z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static final class d extends g {
        public d() {
            super("X25519withSHA256CKDF", new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static final class e extends g {
        public e() {
            super("X25519withSHA256HKDF", new x(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static final class f extends g {
        public f() {
            super("X25519withSHA256KDF", new z(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class C0494g extends g {
        public C0494g() {
            super("X25519withSHA384CKDF", new Ei.a(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static class h extends g {
        public h() {
            super("X25519withSHA512CKDF", new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static final class i extends g {
        public i() {
            super(C4207E.f34889d);
        }
    }

    public static class j extends g {
        public j() {
            super("X448UwithSHA512CKDF", new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static class k extends g {
        public k() {
            super("X448UwithSHA512KDF", new z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static final class l extends g {
        public l() {
            super("X448withSHA256CKDF", new Ei.a(org.bouncycastle.crypto.util.g.h()));
        }
    }

    public static class m extends g {
        public m() {
            super("X448withSHA384CKDF", new Ei.a(org.bouncycastle.crypto.util.g.j()));
        }
    }

    public static final class n extends g {
        public n() {
            super("X448withSHA512CKDF", new Ei.a(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static final class o extends g {
        public o() {
            super("X448withSHA512HKDF", new x(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static final class p extends g {
        public p() {
            super("X448withSHA512KDF", new z(org.bouncycastle.crypto.util.g.t()));
        }
    }

    public static final class q extends g {
        public q() {
            super("XDH");
        }
    }

    public g(String str) {
        super(org.bouncycastle.util.q.f(org.bouncycastle.util.q.f102334a) ? "XDH" : str, null);
    }

    @Override
    public byte[] b() {
        return this.f20289m;
    }

    @Override
    public void c(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        String str;
        if (!(key instanceof PrivateKey)) {
            throw new InvalidKeyException("private XDH key required");
        }
        C3335c a10 = Oj.e.a((PrivateKey) key);
        if (a10 instanceof N0) {
            str = C4207E.f34888c;
        } else {
            if (!(a10 instanceof Q0)) {
                throw new InvalidKeyException("unsupported private key type");
            }
            str = C4207E.f34889d;
        }
        this.f20287k = h(str);
        this.f101324c = null;
        this.f101325d = null;
        if (algorithmParameterSpec instanceof C4213f) {
            if (this.f101322a.indexOf(85) < 0) {
                throw new InvalidAlgorithmParameterException("agreement algorithm not DHU based");
            }
            C4213f c4213f = (C4213f) algorithmParameterSpec;
            this.f20288l = c4213f;
            this.f101324c = c4213f.d();
            this.f20287k.a(new S0(a10, ((Oj.c) this.f20288l.a()).b(), ((Oj.d) this.f20288l.b()).a()));
        } else if (algorithmParameterSpec != null) {
            this.f20287k.a(a10);
            if (!(algorithmParameterSpec instanceof C4206D)) {
                throw new InvalidAlgorithmParameterException("unknown ParameterSpec");
            }
            if (this.f101323b == null) {
                throw new InvalidAlgorithmParameterException("no KDF specified for UserKeyingMaterialSpec");
            }
            C4206D c4206d = (C4206D) algorithmParameterSpec;
            this.f101324c = c4206d.b();
            this.f101325d = c4206d.a();
        } else {
            this.f20287k.a(a10);
        }
        if (this.f101323b == null || this.f101324c != null) {
            return;
        }
        this.f101324c = new byte[0];
    }

    @Override
    public Key engineDoPhase(Key key, boolean z10) throws InvalidKeyException, IllegalStateException {
        if (!(key instanceof PublicKey)) {
            throw new InvalidKeyException("public XDH key required");
        }
        if (this.f20287k == null) {
            throw new IllegalStateException(this.f101322a + " not initialised.");
        }
        if (!z10) {
            throw new IllegalStateException(this.f101322a + " can only be between two parties.");
        }
        C3335c b10 = Oj.e.b((PublicKey) key);
        byte[] bArr = new byte[this.f20287k.c()];
        this.f20289m = bArr;
        C4213f c4213f = this.f20288l;
        if (c4213f != null) {
            this.f20287k.b(new T0(b10, ((Oj.d) c4213f.c()).a()), this.f20289m, 0);
            return null;
        }
        this.f20287k.b(b10, bArr, 0);
        return null;
    }

    public final N h(String str) throws InvalidKeyException {
        if (this.f101322a.equals("XDH") || this.f101322a.startsWith(str)) {
            int indexOf = this.f101322a.indexOf(85);
            boolean startsWith = str.startsWith(C4207E.f34889d);
            return indexOf > 0 ? startsWith ? new Ci.q(new Ci.o()) : new Ci.q(new Ci.n()) : startsWith ? new Ci.o() : new Ci.n();
        }
        throw new InvalidKeyException("inappropriate key for " + this.f101322a);
    }

    public g(String str, InterfaceC2390w interfaceC2390w) {
        super(org.bouncycastle.util.q.f(org.bouncycastle.util.q.f102334a) ? "XDH" : str, interfaceC2390w);
    }
}
