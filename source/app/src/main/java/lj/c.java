package Lj;

import Lj.a;
import android.security.keystore.KeyProperties;
import ck.C4215h;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyPairGeneratorSpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import oh.C14549x;
import org.bouncycastle.jce.provider.C14720a;

public class c extends KeyPairGeneratorSpi {

    public final a.EnumC0400a f14379a;

    public final C14549x f14380b;

    public List<KeyPairGenerator> f14381c;

    public SecureRandom f14382d;

    public boolean f14383e = false;

    public static class a {

        public static final int[] f14384a;

        static {
            int[] iArr = new int[a.EnumC0400a.values().length];
            f14384a = iArr;
            try {
                iArr[a.EnumC0400a.MLDSA44_Ed25519_SHA512.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA65_Ed25519_SHA512.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA87_Ed448_SHA512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA44_RSA2048_PSS_SHA256.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA44_RSA2048_PKCS15_SHA256.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA65_RSA3072_PSS_SHA512.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA65_RSA3072_PKCS15_SHA512.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA44_ECDSA_P256_SHA256.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA44_ECDSA_brainpoolP256r1_SHA256.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA65_ECDSA_P256_SHA512.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA65_ECDSA_brainpoolP256r1_SHA512.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA87_ECDSA_P384_SHA512.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14384a[a.EnumC0400a.MLDSA87_ECDSA_brainpoolP384r1_SHA512.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14384a[a.EnumC0400a.Falcon512_ECDSA_P256_SHA256.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14384a[a.EnumC0400a.Falcon512_ECDSA_brainpoolP256r1_SHA256.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14384a[a.EnumC0400a.Falcon512_Ed25519_SHA512.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public static final class b extends c {
        public b() {
            super(a.EnumC0400a.Falcon512_ECDSA_P256_SHA256);
        }
    }

    public static final class C0401c extends c {
        public C0401c() {
            super(a.EnumC0400a.Falcon512_ECDSA_brainpoolP256r1_SHA256);
        }
    }

    public static final class d extends c {
        public d() {
            super(a.EnumC0400a.Falcon512_Ed25519_SHA512);
        }
    }

    public static final class e extends c {
        public e() {
            super(a.EnumC0400a.MLDSA44_ECDSA_P256_SHA256);
        }
    }

    public static final class f extends c {
        public f() {
            super(a.EnumC0400a.MLDSA44_ECDSA_brainpoolP256r1_SHA256);
        }
    }

    public static final class g extends c {
        public g() {
            super(a.EnumC0400a.MLDSA44_Ed25519_SHA512);
        }
    }

    public static final class h extends c {
        public h() {
            super(a.EnumC0400a.MLDSA44_RSA2048_PKCS15_SHA256);
        }
    }

    public static final class i extends c {
        public i() {
            super(a.EnumC0400a.MLDSA44_RSA2048_PSS_SHA256);
        }
    }

    public static final class j extends c {
        public j() {
            super(a.EnumC0400a.MLDSA65_ECDSA_P256_SHA512);
        }
    }

    public static final class k extends c {
        public k() {
            super(a.EnumC0400a.MLDSA65_ECDSA_brainpoolP256r1_SHA512);
        }
    }

    public static final class l extends c {
        public l() {
            super(a.EnumC0400a.MLDSA65_Ed25519_SHA512);
        }
    }

    public static final class m extends c {
        public m() {
            super(a.EnumC0400a.MLDSA65_RSA3072_PKCS15_SHA512);
        }
    }

    public static final class n extends c {
        public n() {
            super(a.EnumC0400a.MLDSA65_RSA3072_PSS_SHA512);
        }
    }

    public static final class o extends c {
        public o() {
            super(a.EnumC0400a.MLDSA87_ECDSA_P384_SHA512);
        }
    }

    public static final class p extends c {
        public p() {
            super(a.EnumC0400a.MLDSA87_ECDSA_brainpoolP384r1_SHA512);
        }
    }

    public static final class q extends c {
        public q() {
            super(a.EnumC0400a.MLDSA87_Ed448_SHA512);
        }
    }

    public c(a.EnumC0400a enumC0400a) {
        this.f14379a = enumC0400a;
        this.f14380b = Lj.a.f14363b.get(enumC0400a);
    }

    public final KeyPair a() {
        PublicKey[] publicKeyArr = new PublicKey[this.f14381c.size()];
        PrivateKey[] privateKeyArr = new PrivateKey[this.f14381c.size()];
        for (int i10 = 0; i10 < this.f14381c.size(); i10++) {
            KeyPair generateKeyPair = this.f14381c.get(i10).generateKeyPair();
            publicKeyArr[i10] = generateKeyPair.getPublic();
            privateKeyArr[i10] = generateKeyPair.getPrivate();
        }
        return new KeyPair(new Hj.e(this.f14380b, publicKeyArr), new Hj.d(this.f14380b, privateKeyArr));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x002e. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    public final void b() {
        KeyPairGenerator keyPairGenerator;
        SecureRandom secureRandom;
        KeyPairGenerator keyPairGenerator2;
        ECGenParameterSpec eCGenParameterSpec;
        SecureRandom secureRandom2;
        if (this.f14382d == null) {
            this.f14382d = new SecureRandom();
        }
        ArrayList arrayList = new ArrayList();
        try {
            switch (a.f14384a[this.f14379a.ordinal()]) {
                case 1:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance(C4215h.f34909c, C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20337c, this.f14382d);
                    keyPairGenerator = (KeyPairGenerator) arrayList.get(1);
                    secureRandom = this.f14382d;
                    keyPairGenerator.initialize(256, secureRandom);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 2:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance(C4215h.f34909c, C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20338d, this.f14382d);
                    keyPairGenerator = (KeyPairGenerator) arrayList.get(1);
                    secureRandom = this.f14382d;
                    keyPairGenerator.initialize(256, secureRandom);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 3:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance(C4215h.f34910d, C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20339e, this.f14382d);
                    ((KeyPairGenerator) arrayList.get(1)).initialize(448, this.f14382d);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 4:
                case 5:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance(KeyProperties.KEY_ALGORITHM_RSA, C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20337c, this.f14382d);
                    ((KeyPairGenerator) arrayList.get(1)).initialize(2048, this.f14382d);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 6:
                case 7:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance(KeyProperties.KEY_ALGORITHM_RSA, C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20338d, this.f14382d);
                    ((KeyPairGenerator) arrayList.get(1)).initialize(3072, this.f14382d);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 8:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance("ECDSA", C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20337c, this.f14382d);
                    keyPairGenerator2 = (KeyPairGenerator) arrayList.get(1);
                    eCGenParameterSpec = new ECGenParameterSpec("P-256");
                    secureRandom2 = this.f14382d;
                    keyPairGenerator2.initialize(eCGenParameterSpec, secureRandom2);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 9:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance("ECDSA", C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20337c, this.f14382d);
                    keyPairGenerator2 = (KeyPairGenerator) arrayList.get(1);
                    eCGenParameterSpec = new ECGenParameterSpec("brainpoolP256r1");
                    secureRandom2 = this.f14382d;
                    keyPairGenerator2.initialize(eCGenParameterSpec, secureRandom2);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 10:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance("ECDSA", C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20338d, this.f14382d);
                    keyPairGenerator2 = (KeyPairGenerator) arrayList.get(1);
                    eCGenParameterSpec = new ECGenParameterSpec("P-256");
                    secureRandom2 = this.f14382d;
                    keyPairGenerator2.initialize(eCGenParameterSpec, secureRandom2);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 11:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance("ECDSA", C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20338d, this.f14382d);
                    keyPairGenerator2 = (KeyPairGenerator) arrayList.get(1);
                    eCGenParameterSpec = new ECGenParameterSpec("brainpoolP256r1");
                    secureRandom2 = this.f14382d;
                    keyPairGenerator2.initialize(eCGenParameterSpec, secureRandom2);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 12:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance("ECDSA", C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20339e, this.f14382d);
                    keyPairGenerator2 = (KeyPairGenerator) arrayList.get(1);
                    eCGenParameterSpec = new ECGenParameterSpec("P-384");
                    secureRandom2 = this.f14382d;
                    keyPairGenerator2.initialize(eCGenParameterSpec, secureRandom2);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 13:
                    arrayList.add(KeyPairGenerator.getInstance("Dilithium", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance("ECDSA", C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.c.f20339e, this.f14382d);
                    keyPairGenerator2 = (KeyPairGenerator) arrayList.get(1);
                    eCGenParameterSpec = new ECGenParameterSpec("brainpoolP384r1");
                    secureRandom2 = this.f14382d;
                    keyPairGenerator2.initialize(eCGenParameterSpec, secureRandom2);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 14:
                    arrayList.add(KeyPairGenerator.getInstance("Falcon", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance("ECDSA", C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.d.f20342c, this.f14382d);
                    keyPairGenerator2 = (KeyPairGenerator) arrayList.get(1);
                    eCGenParameterSpec = new ECGenParameterSpec("P-256");
                    secureRandom2 = this.f14382d;
                    keyPairGenerator2.initialize(eCGenParameterSpec, secureRandom2);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 15:
                    arrayList.add(KeyPairGenerator.getInstance("Falcon", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance("ECDSA", C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.d.f20342c, this.f14382d);
                    keyPairGenerator2 = (KeyPairGenerator) arrayList.get(1);
                    eCGenParameterSpec = new ECGenParameterSpec("brainpoolP256r1");
                    secureRandom2 = this.f14382d;
                    keyPairGenerator2.initialize(eCGenParameterSpec, secureRandom2);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                case 16:
                    arrayList.add(KeyPairGenerator.getInstance("Falcon", C14720a.f101701e));
                    arrayList.add(KeyPairGenerator.getInstance(C4215h.f34909c, C14720a.f101701e));
                    ((KeyPairGenerator) arrayList.get(0)).initialize(Ol.d.f20342c, this.f14382d);
                    keyPairGenerator = (KeyPairGenerator) arrayList.get(1);
                    secureRandom = this.f14382d;
                    keyPairGenerator.initialize(256, secureRandom);
                    this.f14381c = Collections.unmodifiableList(arrayList);
                    this.f14383e = true;
                    return;
                default:
                    throw new IllegalStateException("Generators not correctly initialized. Unsupported composite algorithm.");
            }
        } catch (GeneralSecurityException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f14383e) {
            b();
        }
        return a();
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (algorithmParameterSpec != null) {
            throw new IllegalArgumentException("Use initialize only for custom SecureRandom. AlgorithmParameterSpec must be null because it is determined by algorithm name.");
        }
        this.f14382d = secureRandom;
        b();
    }
}
