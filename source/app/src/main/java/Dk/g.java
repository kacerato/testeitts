package dk;

import Xh.t;
import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import java.io.IOException;
import java.security.AlgorithmParameters;
import oh.B;
import oh.C14549x;
import oh.InterfaceC14516g;
import yh.InterfaceC16192a;

public class g {
    public static InterfaceC14516g a(AlgorithmParameters algorithmParameters) throws IOException {
        try {
            return B.B(algorithmParameters.getEncoded("ASN.1"));
        } catch (Exception unused) {
            return B.B(algorithmParameters.getEncoded());
        }
    }

    public static String b(C14549x c14549x) {
        return t.f29141u1.A(c14549x) ? KeyProperties.DIGEST_MD5 : Bj.b.f1911i.A(c14549x) ? "SHA1" : Sh.d.f23343f.A(c14549x) ? "SHA224" : Sh.d.f23337c.A(c14549x) ? "SHA256" : Sh.d.f23339d.A(c14549x) ? "SHA384" : Sh.d.f23341e.A(c14549x) ? "SHA512" : InterfaceC3890b.f33237c.A(c14549x) ? "RIPEMD128" : InterfaceC3890b.f33236b.A(c14549x) ? "RIPEMD160" : InterfaceC3890b.f33238d.A(c14549x) ? "RIPEMD256" : InterfaceC16192a.f130270b.A(c14549x) ? "GOST3411" : c14549x.J();
    }

    public static void c(AlgorithmParameters algorithmParameters, InterfaceC14516g interfaceC14516g) throws IOException {
        try {
            algorithmParameters.init(interfaceC14516g.r().getEncoded(), "ASN.1");
        } catch (Exception unused) {
            algorithmParameters.init(interfaceC14516g.r().getEncoded());
        }
    }
}
