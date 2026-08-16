package Oj;

import Xh.v;
import Xi.C3335c;
import Xi.O;
import Xi.O0;
import Xi.P;
import Xi.R0;
import Xi.T;
import bk.InterfaceC3897c;
import ck.C4207E;
import ck.C4215h;
import ck.t;
import ck.u;
import ck.w;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.X509EncodedKeySpec;
import oh.AbstractC14551y;
import oh.B;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14520i;
import qj.InterfaceC15115a;

public class h extends org.bouncycastle.jcajce.provider.asymmetric.util.c implements InterfaceC3897c {

    public static final byte[] f20290d = em.h.b("3042300506032b656f033900");

    public static final byte[] f20291e = em.h.b("302a300506032b656e032100");

    public static final byte[] f20292f = em.h.b("3043300506032b6571033a00");

    public static final byte[] f20293g = em.h.b("302a300506032b6570032100");

    public static final byte f20294h = 111;

    public static final byte f20295i = 110;

    public static final byte f20296j = 113;

    public static final byte f20297k = 112;

    public String f20298a;

    public final boolean f20299b;

    public final int f20300c;

    public static class a extends h {
        public a() {
            super(C4215h.f34909c, false, 112);
        }
    }

    public static class b extends h {
        public b() {
            super(C4215h.f34910d, false, 113);
        }
    }

    public static class c extends h {
        public c() {
            super("EdDSA", false, 0);
        }
    }

    public static class d extends h {
        public d() {
            super(C4207E.f34888c, true, 110);
        }
    }

    public static class e extends h {
        public e() {
            super(C4207E.f34889d, true, 111);
        }
    }

    public static class f extends h {
        public f() {
            super("XDH", true, 0);
        }
    }

    public h(String str, boolean z10, int i10) {
        this.f20298a = str;
        this.f20299b = z10;
        this.f20300c = i10;
    }

    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        C14549x u10 = h0Var.u().u();
        if (this.f20299b) {
            int i10 = this.f20300c;
            if ((i10 == 0 || i10 == 111) && u10.A(InterfaceC15115a.f108208c)) {
                return new Oj.d(h0Var);
            }
            int i11 = this.f20300c;
            if ((i11 == 0 || i11 == 110) && u10.A(InterfaceC15115a.f108207b)) {
                return new Oj.d(h0Var);
            }
        } else {
            C14549x c14549x = InterfaceC15115a.f108210e;
            if (u10.A(c14549x) || u10.A(InterfaceC15115a.f108209d)) {
                int i12 = this.f20300c;
                if ((i12 == 0 || i12 == 113) && u10.A(c14549x)) {
                    return new Oj.b(h0Var);
                }
                int i13 = this.f20300c;
                if ((i13 == 0 || i13 == 112) && u10.A(InterfaceC15115a.f108209d)) {
                    return new Oj.b(h0Var);
                }
            }
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognized");
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        C14549x u10 = vVar.y().u();
        if (this.f20299b) {
            int i10 = this.f20300c;
            if ((i10 == 0 || i10 == 111) && u10.A(InterfaceC15115a.f108208c)) {
                return new Oj.c(vVar);
            }
            int i11 = this.f20300c;
            if ((i11 == 0 || i11 == 110) && u10.A(InterfaceC15115a.f108207b)) {
                return new Oj.c(vVar);
            }
        } else {
            C14549x c14549x = InterfaceC15115a.f108210e;
            if (u10.A(c14549x) || u10.A(InterfaceC15115a.f108209d)) {
                int i12 = this.f20300c;
                if ((i12 == 0 || i12 == 113) && u10.A(c14549x)) {
                    return new Oj.a(vVar);
                }
                int i13 = this.f20300c;
                if ((i13 == 0 || i13 == 112) && u10.A(InterfaceC15115a.f108209d)) {
                    return new Oj.a(vVar);
                }
            }
        }
        throw new IOException("algorithm identifier " + ((Object) u10) + " in key not recognized");
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof t)) {
            return super.engineGeneratePrivate(keySpec);
        }
        C3335c c10 = org.bouncycastle.crypto.util.j.c(((t) keySpec).getEncoded());
        if (c10 instanceof O) {
            return new Oj.a((O) c10);
        }
        throw new IllegalStateException("openssh private key not Ed25519 private key");
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof X509EncodedKeySpec) {
            byte[] encoded = ((X509EncodedKeySpec) keySpec).getEncoded();
            int i10 = this.f20300c;
            if (i10 == 0 || i10 == encoded[8]) {
                if (encoded[9] == 5 && encoded[10] == 0) {
                    h0 w10 = h0.w(encoded);
                    try {
                        encoded = new h0(new C13486b(w10.u().u()), w10.z().F()).s(InterfaceC14520i.f98892a);
                    } catch (IOException e10) {
                        throw new InvalidKeySpecException("attempt to reconstruct key failed: " + e10.getMessage());
                    }
                }
                switch (encoded[8]) {
                    case 110:
                        return new Oj.d(f20291e, encoded);
                    case 111:
                        return new Oj.d(f20290d, encoded);
                    case 112:
                        return new Oj.b(f20293g, encoded);
                    case 113:
                        return new Oj.b(f20292f, encoded);
                    default:
                        return super.engineGeneratePublic(keySpec);
                }
            }
        } else {
            if (keySpec instanceof w) {
                byte[] encoded2 = ((w) keySpec).getEncoded();
                switch (this.f20300c) {
                    case 110:
                        return new Oj.d(new O0(encoded2));
                    case 111:
                        return new Oj.d(new R0(encoded2));
                    case 112:
                        return new Oj.b(new P(encoded2));
                    case 113:
                        return new Oj.b(new T(encoded2));
                    default:
                        throw new InvalidKeySpecException("factory not a specific type, cannot recognise raw encoding");
                }
            }
            if (keySpec instanceof u) {
                C3335c c10 = org.bouncycastle.crypto.util.k.c(((u) keySpec).getEncoded());
                if (c10 instanceof P) {
                    return new Oj.b(new byte[0], ((P) c10).getEncoded());
                }
                throw new IllegalStateException("openssh public key not Ed25519 public key");
            }
        }
        return super.engineGeneratePublic(keySpec);
    }

    @Override
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(t.class) && (key instanceof Oj.a)) {
            try {
                return new t(org.bouncycastle.crypto.util.j.b(new O(AbstractC14551y.F(B.B(AbstractC14551y.F(E.G(key.getEncoded()).I(2)).H())).H())));
            } catch (IOException e10) {
                throw new InvalidKeySpecException(e10.getMessage(), e10.getCause());
            }
        }
        if (!cls.isAssignableFrom(u.class) || !(key instanceof Oj.b)) {
            if (cls.isAssignableFrom(w.class)) {
                if (key instanceof Ij.g) {
                    return new w(((Ij.g) key).ne());
                }
                if (key instanceof Ij.d) {
                    return new w(((Ij.d) key).v3());
                }
            }
            return super.engineGetKeySpec(key, cls);
        }
        try {
            byte[] encoded = key.getEncoded();
            byte[] bArr = f20293g;
            if (org.bouncycastle.util.a.f(bArr, 0, bArr.length, encoded, 0, encoded.length - 32)) {
                return new u(org.bouncycastle.crypto.util.k.a(new P(encoded, bArr.length)));
            }
            throw new InvalidKeySpecException("Invalid Ed25519 public key encoding");
        } catch (IOException e11) {
            throw new InvalidKeySpecException(e11.getMessage(), e11.getCause());
        }
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        throw new InvalidKeyException("key type unknown");
    }
}
