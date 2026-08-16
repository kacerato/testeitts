package Lj;

import Hj.e;
import Lj.a;
import Xh.t;
import Xh.v;
import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import ck.C4215h;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import ki.j;
import ki.r;
import oh.AbstractC14508c;
import oh.C0;
import oh.C14538r0;
import oh.C14549x;
import oh.E;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.util.h;
import qh.InterfaceC15100a;
import qj.InterfaceC15115a;

public class b extends org.bouncycastle.jcajce.provider.asymmetric.util.c {

    public static final C13486b f14367a = new C13486b(InterfaceC15100a.f108115u1);

    public static final C13486b f14368b = new C13486b(InterfaceC15100a.f108119v1);

    public static final C13486b f14369c = new C13486b(InterfaceC15100a.f108123w1);

    public static final C13486b f14370d = new C13486b(InterfaceC15100a.f108102r1);

    public static final C13486b f14371e = new C13486b(InterfaceC15115a.f108209d);

    public static final C13486b f14372f;

    public static final C13486b f14373g;

    public static final C13486b f14374h;

    public static final C13486b f14375i;

    public static final C13486b f14376j;

    public static final C13486b f14377k;

    public static class a {

        public static final int[] f14378a;

        static {
            int[] iArr = new int[a.EnumC0400a.values().length];
            f14378a = iArr;
            try {
                iArr[a.EnumC0400a.MLDSA44_Ed25519_SHA512.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA65_Ed25519_SHA512.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA87_Ed448_SHA512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA44_RSA2048_PSS_SHA256.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA44_RSA2048_PKCS15_SHA256.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA65_RSA3072_PSS_SHA512.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA65_RSA3072_PKCS15_SHA512.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA44_ECDSA_P256_SHA256.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA44_ECDSA_brainpoolP256r1_SHA256.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA65_ECDSA_P256_SHA512.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA65_ECDSA_brainpoolP256r1_SHA512.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA87_ECDSA_P384_SHA512.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14378a[a.EnumC0400a.MLDSA87_ECDSA_brainpoolP384r1_SHA512.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14378a[a.EnumC0400a.Falcon512_Ed25519_SHA512.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14378a[a.EnumC0400a.Falcon512_ECDSA_P256_SHA256.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14378a[a.EnumC0400a.Falcon512_ECDSA_brainpoolP256r1_SHA256.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    static {
        C14549x c14549x = r.f95305I5;
        f14372f = new C13486b(c14549x, new j(Zh.d.f31273H));
        f14373g = new C13486b(c14549x, new j(InterfaceC3890b.f33255u));
        f14374h = new C13486b(t.f29017H0);
        f14375i = new C13486b(InterfaceC15115a.f108210e);
        f14376j = new C13486b(c14549x, new j(Zh.d.f31266A));
        f14377k = new C13486b(c14549x, new j(InterfaceC3890b.f33259y));
    }

    @Override
    public PublicKey a(h0 h0Var) throws IOException {
        E G10 = E.G(h0Var.z().F());
        C14549x u10 = h0Var.u().u();
        try {
            List<KeyFactory> c10 = c(u10);
            AbstractC14508c[] abstractC14508cArr = new AbstractC14508c[G10.size()];
            for (int i10 = 0; i10 < G10.size(); i10++) {
                if (G10.I(i10) instanceof C0) {
                    abstractC14508cArr[i10] = new C14538r0(((C0) G10.I(i10)).H());
                } else {
                    abstractC14508cArr[i10] = (C14538r0) G10.I(i10);
                }
            }
            X509EncodedKeySpec[] d10 = d(u10, abstractC14508cArr);
            PublicKey[] publicKeyArr = new PublicKey[G10.size()];
            for (int i11 = 0; i11 < G10.size(); i11++) {
                publicKeyArr[i11] = c10.get(i11).generatePublic(d10[i11]);
            }
            return new e(u10, publicKeyArr);
        } catch (GeneralSecurityException e10) {
            throw h.c(e10.getMessage(), e10);
        }
    }

    @Override
    public PrivateKey b(v vVar) throws IOException {
        E G10 = E.G(vVar.E());
        C14549x u10 = vVar.y().u();
        try {
            List<KeyFactory> c10 = c(u10);
            PrivateKey[] privateKeyArr = new PrivateKey[G10.size()];
            for (int i10 = 0; i10 < G10.size(); i10++) {
                privateKeyArr[i10] = c10.get(i10).generatePrivate(new PKCS8EncodedKeySpec(v.v(G10.I(i10)).getEncoded()));
            }
            return new Hj.d(u10, privateKeyArr);
        } catch (GeneralSecurityException e10) {
            throw h.c(e10.getMessage(), e10);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0022. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<KeyFactory> c(C14549x c14549x) throws NoSuchAlgorithmException, NoSuchProviderException {
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        switch (a.f14378a[Lj.a.f14364c.get(c14549x).ordinal()]) {
            case 1:
            case 2:
                arrayList2.add("Dilithium");
                arrayList2.add(C4215h.f34909c);
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), C14720a.f101701e));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), C14720a.f101701e));
                return Collections.unmodifiableList(arrayList);
            case 3:
                arrayList2.add("Dilithium");
                str = C4215h.f34910d;
                arrayList2.add(str);
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), C14720a.f101701e));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), C14720a.f101701e));
                return Collections.unmodifiableList(arrayList);
            case 4:
            case 5:
            case 6:
            case 7:
                arrayList2.add("Dilithium");
                str = KeyProperties.KEY_ALGORITHM_RSA;
                arrayList2.add(str);
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), C14720a.f101701e));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), C14720a.f101701e));
                return Collections.unmodifiableList(arrayList);
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                arrayList2.add("Dilithium");
                arrayList2.add("ECDSA");
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), C14720a.f101701e));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), C14720a.f101701e));
                return Collections.unmodifiableList(arrayList);
            case 14:
                arrayList2.add("Falcon");
                arrayList2.add(C4215h.f34909c);
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), C14720a.f101701e));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), C14720a.f101701e));
                return Collections.unmodifiableList(arrayList);
            case 15:
            case 16:
                arrayList2.add("Falcon");
                arrayList2.add("ECDSA");
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), C14720a.f101701e));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), C14720a.f101701e));
                return Collections.unmodifiableList(arrayList);
            default:
                throw new IllegalArgumentException("Cannot create KeyFactories. Unsupported algorithm identifier.");
        }
    }

    public final X509EncodedKeySpec[] d(C14549x c14549x, AbstractC14508c[] abstractC14508cArr) throws IOException {
        X509EncodedKeySpec[] x509EncodedKeySpecArr = new X509EncodedKeySpec[abstractC14508cArr.length];
        h0[] h0VarArr = new h0[abstractC14508cArr.length];
        switch (a.f14378a[Lj.a.f14364c.get(c14549x).ordinal()]) {
            case 1:
                h0VarArr[0] = new h0(f14367a, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14371e, abstractC14508cArr[1]);
                break;
            case 2:
                h0VarArr[0] = new h0(f14368b, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14371e, abstractC14508cArr[1]);
                break;
            case 3:
                h0VarArr[0] = new h0(f14369c, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14375i, abstractC14508cArr[1]);
                break;
            case 4:
            case 5:
                h0VarArr[0] = new h0(f14367a, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14374h, abstractC14508cArr[1]);
                break;
            case 6:
            case 7:
                h0VarArr[0] = new h0(f14368b, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14374h, abstractC14508cArr[1]);
                break;
            case 8:
                h0VarArr[0] = new h0(f14367a, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14372f, abstractC14508cArr[1]);
                break;
            case 9:
                h0VarArr[0] = new h0(f14367a, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14373g, abstractC14508cArr[1]);
                break;
            case 10:
                h0VarArr[0] = new h0(f14368b, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14372f, abstractC14508cArr[1]);
                break;
            case 11:
                h0VarArr[0] = new h0(f14368b, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14373g, abstractC14508cArr[1]);
                break;
            case 12:
                h0VarArr[0] = new h0(f14369c, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14376j, abstractC14508cArr[1]);
                break;
            case 13:
                h0VarArr[0] = new h0(f14369c, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14377k, abstractC14508cArr[1]);
                break;
            case 14:
                h0VarArr[0] = new h0(f14370d, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14371e, abstractC14508cArr[1]);
                break;
            case 15:
                h0VarArr[0] = new h0(f14370d, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14372f, abstractC14508cArr[1]);
                break;
            case 16:
                h0VarArr[0] = new h0(f14370d, abstractC14508cArr[0]);
                h0VarArr[1] = new h0(f14373g, abstractC14508cArr[1]);
                break;
            default:
                throw new IllegalArgumentException("Cannot create key specs. Unsupported algorithm identifier.");
        }
        x509EncodedKeySpecArr[0] = new X509EncodedKeySpec(h0VarArr[0].getEncoded());
        x509EncodedKeySpecArr[1] = new X509EncodedKeySpec(h0VarArr[1].getEncoded());
        return x509EncodedKeySpecArr;
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        try {
            if (key instanceof PrivateKey) {
                return b(v.v(key.getEncoded()));
            }
            if (key instanceof PublicKey) {
                return a(h0.w(key.getEncoded()));
            }
            throw new InvalidKeyException("Key not recognized");
        } catch (IOException e10) {
            throw new InvalidKeyException("Key could not be parsed: " + e10.getMessage());
        }
    }
}
