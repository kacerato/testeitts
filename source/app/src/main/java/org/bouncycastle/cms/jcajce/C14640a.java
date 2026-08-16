package org.bouncycastle.cms.jcajce;

import dk.C12945a;
import dk.C12946b;
import dk.InterfaceC12950f;
import hi.C13478B;
import hi.C13505q;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import oh.AbstractC14551y;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.cms.C14624c;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15634z;
import yh.InterfaceC16192a;

public class C14640a {

    public static final Set f100862a;

    public static final Set f100863b;

    public static final Set f100864c;

    public static final Map f100865d;

    public static Map<C14549x, String> f100866e;

    static {
        HashSet hashSet = new HashSet();
        f100862a = hashSet;
        HashSet hashSet2 = new HashSet();
        f100863b = hashSet2;
        HashSet hashSet3 = new HashSet();
        f100864c = hashSet3;
        HashMap hashMap = new HashMap();
        f100865d = hashMap;
        HashMap hashMap2 = new HashMap();
        f100866e = hashMap2;
        hashMap2.put(C14624c.f100721u, "AESWRAP");
        f100866e.put(C14624c.f100722v, "AESWRAP");
        f100866e.put(C14624c.f100723w, "AESWRAP");
        hashSet.add(ki.r.f95357x6);
        hashSet.add(Zh.d.f31283R);
        hashSet.add(Zh.d.f31284S);
        hashSet.add(Zh.d.f31285T);
        hashSet.add(Zh.d.f31286U);
        hashSet2.add(ki.r.f95355w6);
        hashSet2.add(ki.r.f95353v6);
        hashSet2.add(Zh.d.f31279N);
        hashSet2.add(Zh.d.f31275J);
        hashSet2.add(Zh.d.f31280O);
        hashSet2.add(Zh.d.f31276K);
        hashSet2.add(Zh.d.f31281P);
        hashSet2.add(Zh.d.f31277L);
        hashSet2.add(Zh.d.f31282Q);
        hashSet2.add(Zh.d.f31278M);
        hashSet3.add(InterfaceC16192a.f130267C);
        C14549x c14549x = InterfaceC16192a.f130281m;
        hashSet3.add(c14549x);
        hashSet3.add(Yh.a.f30589l);
        hashSet3.add(Yh.a.f30590m);
        hashSet3.add(Yh.a.f30584g);
        hashSet3.add(Yh.a.f30585h);
        hashMap.put(Xh.t.f29017H0, "RSA/ECB/PKCS1Padding");
        hashMap.put(Wh.b.f27788l, "Elgamal/ECB/PKCS1Padding");
        hashMap.put(Xh.t.f29033N0, "RSA/ECB/OAEPPadding");
        hashMap.put(c14549x, "ECGOST3410");
        hashMap.put(Nh.a.f16379h, "RSA-KTS-KEM-KWS");
    }

    public static PrivateKey a(PrivateKey privateKey) {
        return privateKey instanceof C12946b ? a(((C12946b) privateKey).d()) : privateKey;
    }

    public static Cipher b(InterfaceC12950f interfaceC12950f, C14549x c14549x, Map map) throws OperatorCreationException {
        try {
            String str = !map.isEmpty() ? (String) map.get(c14549x) : null;
            if (str == null) {
                str = (String) f100865d.get(c14549x);
            }
            if (str != null) {
                try {
                    return interfaceC12950f.e(str);
                } catch (NoSuchAlgorithmException unused) {
                    if (str.equals("RSA/ECB/PKCS1Padding")) {
                        try {
                            return interfaceC12950f.e("RSA/NONE/PKCS1Padding");
                        } catch (NoSuchAlgorithmException unused2) {
                        }
                    }
                }
            }
            return interfaceC12950f.e(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new OperatorCreationException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    public static C14642c c(String str) {
        return str != null ? new C14642c(new S(str)) : new C14642c(new C14641b());
    }

    public static C14642c d(Provider provider) {
        return provider != null ? new C14642c(new T(provider)) : new C14642c(new C14641b());
    }

    public static InterfaceC14516g e(AlgorithmParameters algorithmParameters) throws CMSException {
        try {
            return C12945a.a(algorithmParameters);
        } catch (IOException e10) {
            throw new CMSException("cannot extract parameters: " + e10.getMessage(), e10);
        }
    }

    public static C15634z f(X509Certificate x509Certificate) throws CertificateEncodingException {
        return new C15634z(C13505q.v(x509Certificate.getEncoded()).x(), x509Certificate.getSerialNumber());
    }

    public static Key g(Qk.r rVar) {
        if (rVar.b() instanceof Key) {
            return (Key) rVar.b();
        }
        if (rVar.b() instanceof byte[]) {
            return new SecretKeySpec((byte[]) rVar.b(), "ENC");
        }
        throw new IllegalArgumentException("unknown generic key type");
    }

    public static int h(C14549x c14549x) {
        if (c14549x.A(C14624c.f100723w)) {
            return 32;
        }
        if (c14549x.A(C14624c.f100721u)) {
            return 16;
        }
        if (c14549x.A(C14624c.f100722v)) {
            return 24;
        }
        throw new IllegalArgumentException("unknown wrap algorithm");
    }

    public static byte[] i(X509Certificate x509Certificate) {
        byte[] extensionValue = x509Certificate.getExtensionValue(C13478B.f90530f.J());
        if (extensionValue != null) {
            return AbstractC14551y.F(AbstractC14551y.F(extensionValue).H()).H();
        }
        return null;
    }

    public static String j(C14549x c14549x) {
        return f100866e.get(c14549x);
    }

    public static boolean k(C14549x c14549x) {
        return f100863b.contains(c14549x);
    }

    public static boolean l(C14549x c14549x) {
        return f100864c.contains(c14549x);
    }

    public static boolean m(C14549x c14549x) {
        return f100862a.contains(c14549x);
    }

    public static boolean n(C14549x c14549x) {
        return c14549x.A(Xh.t.f29015G2) || c14549x.A(Xh.t.f29039O2);
    }

    public static void o(AlgorithmParameters algorithmParameters, InterfaceC14516g interfaceC14516g) throws CMSException {
        try {
            C12945a.b(algorithmParameters, interfaceC14516g);
        } catch (IOException e10) {
            throw new CMSException("error encoding algorithm parameters.", e10);
        }
    }
}
