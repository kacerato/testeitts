package org.bouncycastle.jce.provider;

import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import hi.C13486b;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;
import oh.A0;
import oh.AbstractC14541t;
import oh.C14549x;
import oh.InterfaceC14516g;
import yh.InterfaceC16192a;

public class a0 {

    public static final AbstractC14541t f101726a = A0.f98776c;

    public static String a(C14549x c14549x) {
        return Xh.t.f29141u1.A(c14549x) ? KeyProperties.DIGEST_MD5 : Bj.b.f1911i.A(c14549x) ? "SHA1" : Sh.d.f23343f.A(c14549x) ? "SHA224" : Sh.d.f23337c.A(c14549x) ? "SHA256" : Sh.d.f23339d.A(c14549x) ? "SHA384" : Sh.d.f23341e.A(c14549x) ? "SHA512" : InterfaceC3890b.f33237c.A(c14549x) ? "RIPEMD128" : InterfaceC3890b.f33236b.A(c14549x) ? "RIPEMD160" : InterfaceC3890b.f33238d.A(c14549x) ? "RIPEMD256" : InterfaceC16192a.f130270b.A(c14549x) ? "GOST3411" : c14549x.J();
    }

    public static String b(C13486b c13486b) {
        InterfaceC14516g x10 = c13486b.x();
        if (x10 != null && !f101726a.z(x10)) {
            if (c13486b.u().A(Xh.t.f29045Q0)) {
                return a(Xh.B.v(x10).u().u()) + "withRSAandMGF1";
            }
            if (c13486b.u().A(ki.r.f95307J5)) {
                return a(C14549x.K(oh.E.G(x10).I(0))) + "withECDSA";
            }
        }
        return c13486b.u().J();
    }

    public static void c(Signature signature, InterfaceC14516g interfaceC14516g) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (interfaceC14516g == null || f101726a.z(interfaceC14516g)) {
            return;
        }
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(signature.getAlgorithm(), signature.getProvider());
        try {
            algorithmParameters.init(interfaceC14516g.r().getEncoded());
            if (signature.getAlgorithm().endsWith("MGF1")) {
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
