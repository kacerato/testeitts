package Lj;

import Bi.InterfaceC2392y;
import Lj.a;
import ck.C4215h;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import oh.AbstractC14508c;
import oh.C14518h;
import oh.C14538r0;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.jce.provider.C14720a;

public class d extends SignatureSpi {

    public final a.EnumC0400a f14385a;

    public final C14549x f14386b;

    public final List<Signature> f14387c;

    public final InterfaceC2392y f14388d;

    public byte[] f14389e;

    public static class a {

        public static final int[] f14390a;

        static {
            int[] iArr = new int[a.EnumC0400a.values().length];
            f14390a = iArr;
            try {
                iArr[a.EnumC0400a.MLDSA44_Ed25519_SHA512.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA65_Ed25519_SHA512.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA87_Ed448_SHA512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA44_RSA2048_PSS_SHA256.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA65_RSA3072_PSS_SHA512.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA44_RSA2048_PKCS15_SHA256.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA65_RSA3072_PKCS15_SHA512.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA44_ECDSA_P256_SHA256.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA44_ECDSA_brainpoolP256r1_SHA256.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA65_ECDSA_P256_SHA512.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA65_ECDSA_brainpoolP256r1_SHA512.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA87_ECDSA_P384_SHA512.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14390a[a.EnumC0400a.MLDSA87_ECDSA_brainpoolP384r1_SHA512.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14390a[a.EnumC0400a.Falcon512_ECDSA_P256_SHA256.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14390a[a.EnumC0400a.Falcon512_ECDSA_brainpoolP256r1_SHA256.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14390a[a.EnumC0400a.Falcon512_Ed25519_SHA512.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public static final class b extends d {
        public b() {
            super(a.EnumC0400a.Falcon512_ECDSA_P256_SHA256);
        }
    }

    public static final class c extends d {
        public c() {
            super(a.EnumC0400a.Falcon512_ECDSA_brainpoolP256r1_SHA256);
        }
    }

    public static final class C0402d extends d {
        public C0402d() {
            super(a.EnumC0400a.Falcon512_Ed25519_SHA512);
        }
    }

    public static final class e extends d {
        public e() {
            super(a.EnumC0400a.MLDSA44_ECDSA_P256_SHA256);
        }
    }

    public static final class f extends d {
        public f() {
            super(a.EnumC0400a.MLDSA44_ECDSA_brainpoolP256r1_SHA256);
        }
    }

    public static final class g extends d {
        public g() {
            super(a.EnumC0400a.MLDSA44_Ed25519_SHA512);
        }
    }

    public static final class h extends d {
        public h() {
            super(a.EnumC0400a.MLDSA44_RSA2048_PKCS15_SHA256);
        }
    }

    public static final class i extends d {
        public i() {
            super(a.EnumC0400a.MLDSA44_RSA2048_PSS_SHA256);
        }
    }

    public static final class j extends d {
        public j() {
            super(a.EnumC0400a.MLDSA65_ECDSA_P256_SHA512);
        }
    }

    public static final class k extends d {
        public k() {
            super(a.EnumC0400a.MLDSA65_ECDSA_brainpoolP256r1_SHA512);
        }
    }

    public static final class l extends d {
        public l() {
            super(a.EnumC0400a.MLDSA65_Ed25519_SHA512);
        }
    }

    public static final class m extends d {
        public m() {
            super(a.EnumC0400a.MLDSA65_RSA3072_PKCS15_SHA512);
        }
    }

    public static final class n extends d {
        public n() {
            super(a.EnumC0400a.MLDSA65_RSA3072_PSS_SHA512);
        }
    }

    public static final class o extends d {
        public o() {
            super(a.EnumC0400a.MLDSA87_ECDSA_P384_SHA512);
        }
    }

    public static final class p extends d {
        public p() {
            super(a.EnumC0400a.MLDSA87_ECDSA_brainpoolP384r1_SHA512);
        }
    }

    public static final class q extends d {
        public q() {
            super(a.EnumC0400a.MLDSA87_Ed448_SHA512);
        }
    }

    public d(a.EnumC0400a enumC0400a) {
        InterfaceC2392y t10;
        this.f14385a = enumC0400a;
        C14549x c14549x = Lj.a.f14363b.get(enumC0400a);
        this.f14386b = c14549x;
        ArrayList arrayList = new ArrayList();
        try {
            switch (a.f14390a[enumC0400a.ordinal()]) {
                case 1:
                case 2:
                    arrayList.add(Signature.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(Signature.getInstance(C4215h.f34909c, C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.t();
                    break;
                case 3:
                    arrayList.add(Signature.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(Signature.getInstance(C4215h.f34910d, C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.t();
                    break;
                case 4:
                    arrayList.add(Signature.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(Signature.getInstance("SHA256withRSA/PSS", C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.h();
                    break;
                case 5:
                    arrayList.add(Signature.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(Signature.getInstance("SHA512withRSA/PSS", C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.t();
                    break;
                case 6:
                    arrayList.add(Signature.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(Signature.getInstance("SHA256withRSA", C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.h();
                    break;
                case 7:
                    arrayList.add(Signature.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(Signature.getInstance("SHA512withRSA", C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.t();
                    break;
                case 8:
                case 9:
                    arrayList.add(Signature.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(Signature.getInstance("SHA256withECDSA", C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.h();
                    break;
                case 10:
                case 11:
                case 12:
                case 13:
                    arrayList.add(Signature.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(Signature.getInstance("SHA512withECDSA", C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.t();
                    break;
                case 14:
                case 15:
                    arrayList.add(Signature.getInstance("Falcon", C14720a.f101701e));
                    arrayList.add(Signature.getInstance("SHA256withECDSA", C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.h();
                    break;
                case 16:
                    arrayList.add(Signature.getInstance("Falcon", C14720a.f101701e));
                    arrayList.add(Signature.getInstance(C4215h.f34909c, C14720a.f101701e));
                    t10 = org.bouncycastle.crypto.util.g.t();
                    break;
                default:
                    throw new IllegalArgumentException("unknown composite algorithm");
            }
            this.f14388d = t10;
            this.f14389e = c14549x.s(InterfaceC14520i.f98892a);
            this.f14387c = Collections.unmodifiableList(arrayList);
        } catch (IOException e10) {
            throw org.bouncycastle.util.h.b(e10.getMessage(), e10);
        } catch (GeneralSecurityException e11) {
            throw org.bouncycastle.util.h.b(e11.getMessage(), e11);
        }
    }

    @Override
    public Object engineGetParameter(String str) throws InvalidParameterException {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof Hj.d)) {
            throw new InvalidKeyException("Private key is not composite.");
        }
        Hj.d dVar = (Hj.d) privateKey;
        if (!dVar.a().A(this.f14386b)) {
            throw new InvalidKeyException("Provided composite private key cannot be used with the composite signature algorithm.");
        }
        for (int i10 = 0; i10 < this.f14387c.size(); i10++) {
            this.f14387c.get(i10).initSign(dVar.b().get(i10));
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof Hj.e)) {
            throw new InvalidKeyException("Public key is not composite.");
        }
        Hj.e eVar = (Hj.e) publicKey;
        if (!eVar.a().A(this.f14386b)) {
            throw new InvalidKeyException("Provided composite public key cannot be used with the composite signature algorithm.");
        }
        for (int i10 = 0; i10 < this.f14387c.size(); i10++) {
            this.f14387c.get(i10).initVerify(eVar.b().get(i10));
        }
    }

    @Override
    public void engineSetParameter(String str, Object obj) throws InvalidParameterException {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        C14518h c14518h = new C14518h();
        try {
            byte[] bArr = new byte[this.f14388d.f()];
            this.f14388d.c(bArr, 0);
            for (int i10 = 0; i10 < this.f14387c.size(); i10++) {
                this.f14387c.get(i10).update(this.f14389e);
                this.f14387c.get(i10).update(bArr);
                c14518h.a(new C14538r0(this.f14387c.get(i10).sign()));
            }
            return new G0(c14518h).s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new SignatureException(e10.getMessage());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f14388d.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        E G10 = E.G(bArr);
        if (G10.size() != this.f14387c.size()) {
            return false;
        }
        byte[] bArr2 = new byte[this.f14388d.f()];
        this.f14388d.c(bArr2, 0);
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f14387c.size(); i10++) {
            this.f14387c.get(i10).update(this.f14389e);
            this.f14387c.get(i10).update(bArr2);
            if (!this.f14387c.get(i10).verify(AbstractC14508c.H(G10.I(i10)).J())) {
                z10 = true;
            }
        }
        return !z10;
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f14388d.update(bArr, i10, i11);
    }
}
