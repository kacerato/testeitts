package org.bouncycastle.operator.jcajce;

import Qk.C3017j;
import Qk.InterfaceC3013f;
import Xh.B;
import Xh.t;
import Xh.v;
import ck.C4209b;
import dk.C12948d;
import fm.C13262f;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import oh.A0;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.RuntimeOperatorException;
import org.bouncycastle.util.w;

public class b {

    public static final Set f101921f;

    public final String f101922a;

    public OperatorHelper f101923b = new OperatorHelper(new C12948d());

    public SecureRandom f101924c;

    public C13486b f101925d;

    public AlgorithmParameterSpec f101926e;

    public class a implements InterfaceC3013f {

        public OutputStream f101927a;

        public final Signature f101928b;

        public final C13486b f101929c;

        public a(Signature signature, C13486b c13486b) {
            this.f101928b = signature;
            this.f101929c = c13486b;
            this.f101927a = Jj.f.b(signature);
        }

        @Override
        public C13486b a() {
            return this.f101929c;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f101927a;
        }

        @Override
        public byte[] getSignature() {
            try {
                return this.f101928b.sign();
            } catch (SignatureException e10) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e10.getMessage(), e10);
            }
        }
    }

    public class C1925b implements InterfaceC3013f {

        public OutputStream f101931a;

        public final OutputStream f101932b;

        public final Signature[] f101933c;

        public C1925b(OutputStream outputStream, Signature[] signatureArr) {
            this.f101932b = outputStream;
            this.f101933c = signatureArr;
            this.f101931a = outputStream;
        }

        @Override
        public C13486b a() {
            return b.this.f101925d;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f101931a;
        }

        @Override
        public byte[] getSignature() {
            try {
                C14518h c14518h = new C14518h();
                for (int i10 = 0; i10 != this.f101933c.length; i10++) {
                    c14518h.a(new C14538r0(this.f101933c[i10].sign()));
                }
                return new G0(c14518h).s(InterfaceC14520i.f98892a);
            } catch (IOException e10) {
                throw new RuntimeOperatorException("exception encoding signature: " + e10.getMessage(), e10);
            } catch (SignatureException e11) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e11.getMessage(), e11);
            }
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f101921f = hashSet;
        hashSet.add("DILITHIUM");
        hashSet.add("SPHINCS+");
        hashSet.add("SPHINCSPlus");
    }

    public b(String str) {
        this.f101922a = str;
    }

    public static E d(C4209b c4209b) {
        Qk.m mVar = new Qk.m();
        C14518h c14518h = new C14518h();
        List<String> a10 = c4209b.a();
        List<AlgorithmParameterSpec> b10 = c4209b.b();
        for (int i10 = 0; i10 != a10.size(); i10++) {
            AlgorithmParameterSpec algorithmParameterSpec = b10.get(i10);
            if (algorithmParameterSpec == null) {
                c14518h.a(mVar.a(a10.get(i10)));
            } else {
                if (!(algorithmParameterSpec instanceof PSSParameterSpec)) {
                    throw new IllegalArgumentException("unrecognized parameterSpec");
                }
                c14518h.a(new C13486b(t.f29045Q0, e((PSSParameterSpec) algorithmParameterSpec)));
            }
        }
        return new G0(c14518h);
    }

    public static B e(PSSParameterSpec pSSParameterSpec) {
        C3017j c3017j = new C3017j();
        C13486b a10 = c3017j.a(pSSParameterSpec.getDigestAlgorithm());
        if (a10.x() == null) {
            a10 = new C13486b(a10.u(), A0.f98776c);
        }
        C13486b a11 = c3017j.a(((MGF1ParameterSpec) pSSParameterSpec.getMGFParameters()).getDigestAlgorithm());
        if (a11.x() == null) {
            a11 = new C13486b(a11.u(), A0.f98776c);
        }
        return new B(a10, new C13486b(t.f29037O0, a11), new C14539s(pSSParameterSpec.getSaltLength()), new C14539s(pSSParameterSpec.getTrailerField()));
    }

    public InterfaceC3013f b(PrivateKey privateKey) throws OperatorCreationException {
        if (privateKey instanceof Hj.d) {
            Hj.d dVar = (Hj.d) privateKey;
            if (dVar.a().A(Qh.c.f22357Q)) {
                return c(dVar);
            }
        }
        try {
            if (this.f101926e == null) {
                if (f101921f.contains(w.p(this.f101922a))) {
                    this.f101925d = v.v(privateKey.getEncoded()).y();
                } else {
                    this.f101925d = new Qk.m().a(this.f101922a);
                }
                this.f101926e = null;
            }
            C13486b c13486b = this.f101925d;
            Signature j10 = this.f101923b.j(c13486b);
            SecureRandom secureRandom = this.f101924c;
            if (secureRandom != null) {
                j10.initSign(privateKey, secureRandom);
            } else {
                j10.initSign(privateKey);
            }
            return new a(j10, c13486b);
        } catch (GeneralSecurityException e10) {
            throw new OperatorCreationException("cannot create signer: " + e10.getMessage(), e10);
        }
    }

    public final InterfaceC3013f c(Hj.d dVar) throws OperatorCreationException {
        try {
            List<PrivateKey> b10 = dVar.b();
            E G10 = E.G(this.f101925d.x());
            int size = G10.size();
            Signature[] signatureArr = new Signature[size];
            for (int i10 = 0; i10 != G10.size(); i10++) {
                Signature j10 = this.f101923b.j(C13486b.v(G10.I(i10)));
                signatureArr[i10] = j10;
                if (this.f101924c != null) {
                    j10.initSign(b10.get(i10), this.f101924c);
                } else {
                    j10.initSign(b10.get(i10));
                }
            }
            OutputStream b11 = Jj.f.b(signatureArr[0]);
            int i11 = 1;
            while (i11 != size) {
                C13262f c13262f = new C13262f(b11, Jj.f.b(signatureArr[i11]));
                i11++;
                b11 = c13262f;
            }
            return new C1925b(b11, signatureArr);
        } catch (GeneralSecurityException e10) {
            throw new OperatorCreationException("cannot create signer: " + e10.getMessage(), e10);
        }
    }

    public b f(String str) {
        this.f101923b = new OperatorHelper(new dk.i(str));
        return this;
    }

    public b g(Provider provider) {
        this.f101923b = new OperatorHelper(new dk.k(provider));
        return this;
    }

    public b h(SecureRandom secureRandom) {
        this.f101924c = secureRandom;
        return this;
    }

    public b(String str, AlgorithmParameterSpec algorithmParameterSpec) {
        C13486b c13486b;
        this.f101922a = str;
        if (algorithmParameterSpec instanceof PSSParameterSpec) {
            PSSParameterSpec pSSParameterSpec = (PSSParameterSpec) algorithmParameterSpec;
            this.f101926e = pSSParameterSpec;
            c13486b = new C13486b(t.f29045Q0, e(pSSParameterSpec));
        } else {
            if (!(algorithmParameterSpec instanceof C4209b)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unknown sigParamSpec: ");
                sb2.append(algorithmParameterSpec == null ? "null" : algorithmParameterSpec.getClass().getName());
                throw new IllegalArgumentException(sb2.toString());
            }
            C4209b c4209b = (C4209b) algorithmParameterSpec;
            this.f101926e = c4209b;
            c13486b = new C13486b(Qh.c.f22356P, d(c4209b));
        }
        this.f101925d = c13486b;
    }
}
