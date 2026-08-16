package org.bouncycastle.jcajce.provider.asymmetric.x509;

import Xh.B;
import Xh.t;
import ck.C4215h;
import hi.C13486b;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;
import java.util.HashMap;
import java.util.Map;
import ki.r;
import oh.A0;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.util.o;
import org.bouncycastle.util.q;
import qj.InterfaceC15115a;
import yj.InterfaceC16198c;

public class j {

    public static final Map<C14549x, String> f101394a;

    static {
        HashMap hashMap = new HashMap();
        f101394a = hashMap;
        hashMap.put(InterfaceC15115a.f108209d, C4215h.f34909c);
        hashMap.put(InterfaceC15115a.f108210e, C4215h.f34910d);
        hashMap.put(Bj.b.f1912j, "SHA1withDSA");
        hashMap.put(r.f95350t6, "SHA1withDSA");
    }

    public static boolean a(C13486b c13486b, C13486b c13486b2) {
        if (!c13486b.u().A(c13486b2.u())) {
            return false;
        }
        if (q.f("org.bouncycastle.x509.allow_absent_equiv_NULL") && e(c13486b.x()) && e(c13486b2.x())) {
            return true;
        }
        return o.a(c13486b.x(), c13486b2.x());
    }

    public static String b(C14549x c14549x) {
        String g10;
        String g11;
        Provider provider = Security.getProvider(C14720a.f101701e);
        if (provider != null && (g11 = g(provider, c14549x)) != null) {
            return g11;
        }
        Provider[] providers = Security.getProviders();
        for (int i10 = 0; i10 != providers.length; i10++) {
            Provider provider2 = providers[i10];
            if (provider != provider2 && (g10 = g(provider2, c14549x)) != null) {
                return g10;
            }
        }
        return c14549x.J();
    }

    public static String c(C14549x c14549x) {
        String b10 = dk.h.b(c14549x);
        int indexOf = b10.indexOf(45);
        if (indexOf <= 0 || b10.startsWith("SHA3")) {
            return b10;
        }
        return b10.substring(0, indexOf) + b10.substring(indexOf + 1);
    }

    public static String d(C13486b c13486b) {
        StringBuilder sb2;
        String str;
        C14549x u10 = c13486b.u();
        InterfaceC14516g x10 = c13486b.x();
        if (!e(x10)) {
            if (t.f29045Q0.A(u10)) {
                B v10 = B.v(x10);
                sb2 = new StringBuilder();
                sb2.append(c(v10.u().u()));
                str = "withRSAandMGF1";
            } else if (r.f95307J5.A(u10)) {
                E G10 = E.G(x10);
                sb2 = new StringBuilder();
                sb2.append(c((C14549x) G10.I(0)));
                str = "withECDSA";
            }
            sb2.append(str);
            return sb2.toString();
        }
        String str2 = f101394a.get(u10);
        return str2 != null ? str2 : b(u10);
    }

    public static boolean e(InterfaceC14516g interfaceC14516g) {
        return interfaceC14516g == null || A0.f98776c.z(interfaceC14516g);
    }

    public static boolean f(C13486b c13486b) {
        return InterfaceC16198c.f130354P.A(c13486b.u());
    }

    public static String g(Provider provider, C14549x c14549x) {
        String property = provider.getProperty("Alg.Alias.Signature." + ((Object) c14549x));
        if (property != null) {
            return property;
        }
        String property2 = provider.getProperty("Alg.Alias.Signature.OID." + ((Object) c14549x));
        if (property2 != null) {
            return property2;
        }
        return null;
    }

    public static void h(byte[] bArr, StringBuffer stringBuffer, String str) {
        int length = bArr.length;
        stringBuffer.append("            Signature: ");
        if (length <= 20) {
            stringBuffer.append(em.h.j(bArr));
            stringBuffer.append(str);
            return;
        }
        stringBuffer.append(em.h.k(bArr, 0, 20));
        stringBuffer.append(str);
        int i10 = 20;
        while (i10 < bArr.length) {
            int length2 = bArr.length - 20;
            stringBuffer.append("                       ");
            stringBuffer.append(i10 < length2 ? em.h.k(bArr, i10, 20) : em.h.k(bArr, i10, bArr.length - i10));
            stringBuffer.append(str);
            i10 += 20;
        }
    }

    public static void i(Signature signature, InterfaceC14516g interfaceC14516g) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (e(interfaceC14516g)) {
            return;
        }
        String algorithm = signature.getAlgorithm();
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(algorithm, signature.getProvider());
        try {
            algorithmParameters.init(interfaceC14516g.r().getEncoded());
            if (algorithm.endsWith("MGF1")) {
                try {
                    signature.setParameter(algorithmParameters.getParameterSpec(PSSParameterSpec.class));
                } catch (GeneralSecurityException e10) {
                    throw new SignatureException("Exception extracting parameters: " + e10.getMessage());
                }
            }
        } catch (IOException e11) {
            throw new SignatureException("IOException decoding parameters: " + e11.getMessage());
        }
    }
}
