package org.bouncycastle.tsp;

import Qk.p;
import Qk.q;
import Xh.t;
import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import hi.C13477A;
import hi.C13478B;
import hi.C13479C;
import hi.C13480D;
import hi.M;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import li.C14146h;
import oh.C14518h;
import oh.C14549x;
import oh.G;
import oh.InterfaceC14516g;
import org.bouncycastle.cms.N0;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.k;
import uh.C15610a;
import uh.C15611b;
import uh.C15624o;
import yh.InterfaceC16192a;

public class c {

    public static List f102262a = Collections.unmodifiableList(new ArrayList());

    public static final Map f102263b;

    public static final Map f102264c;

    static {
        HashMap hashMap = new HashMap();
        f102263b = hashMap;
        HashMap hashMap2 = new HashMap();
        f102264c = hashMap2;
        C14549x c14549x = t.f29141u1;
        hashMap.put(c14549x.J(), k.j(16));
        C14549x c14549x2 = Wh.b.f27785i;
        hashMap.put(c14549x2.J(), k.j(20));
        C14549x c14549x3 = Sh.d.f23343f;
        hashMap.put(c14549x3.J(), k.j(28));
        C14549x c14549x4 = Sh.d.f23337c;
        hashMap.put(c14549x4.J(), k.j(32));
        C14549x c14549x5 = Sh.d.f23339d;
        hashMap.put(c14549x5.J(), k.j(48));
        C14549x c14549x6 = Sh.d.f23341e;
        hashMap.put(c14549x6.J(), k.j(64));
        C14549x c14549x7 = Sh.d.f23349i;
        hashMap.put(c14549x7.J(), k.j(28));
        C14549x c14549x8 = Sh.d.f23351j;
        hashMap.put(c14549x8.J(), k.j(32));
        C14549x c14549x9 = Sh.d.f23353k;
        hashMap.put(c14549x9.J(), k.j(48));
        C14549x c14549x10 = Sh.d.f23355l;
        hashMap.put(c14549x10.J(), k.j(64));
        C14549x c14549x11 = InterfaceC3890b.f33237c;
        hashMap.put(c14549x11.J(), k.j(16));
        C14549x c14549x12 = InterfaceC3890b.f33236b;
        hashMap.put(c14549x12.J(), k.j(20));
        C14549x c14549x13 = InterfaceC3890b.f33238d;
        hashMap.put(c14549x13.J(), k.j(32));
        C14549x c14549x14 = InterfaceC16192a.f130270b;
        hashMap.put(c14549x14.J(), k.j(32));
        C14549x c14549x15 = Yh.a.f30580c;
        hashMap.put(c14549x15.J(), k.j(32));
        C14549x c14549x16 = Yh.a.f30581d;
        hashMap.put(c14549x16.J(), k.j(64));
        C14549x c14549x17 = Fh.b.f6869d0;
        hashMap.put(c14549x17.J(), k.j(32));
        hashMap2.put(c14549x.J(), KeyProperties.DIGEST_MD5);
        hashMap2.put(c14549x2.J(), "SHA1");
        hashMap2.put(c14549x3.J(), "SHA224");
        hashMap2.put(c14549x4.J(), "SHA256");
        hashMap2.put(c14549x5.J(), "SHA384");
        hashMap2.put(c14549x6.J(), "SHA512");
        hashMap2.put(c14549x7.J(), "SHA3-224");
        hashMap2.put(c14549x8.J(), "SHA3-256");
        hashMap2.put(c14549x9.J(), "SHA3-384");
        hashMap2.put(c14549x10.J(), "SHA3-512");
        hashMap2.put(t.f29030L0.J(), "SHA1");
        hashMap2.put(t.f29059U0.J(), "SHA224");
        hashMap2.put(t.f29049R0.J(), "SHA256");
        hashMap2.put(t.f29051S0.J(), "SHA384");
        hashMap2.put(t.f29055T0.J(), "SHA512");
        hashMap2.put(c14549x11.J(), "RIPEMD128");
        hashMap2.put(c14549x12.J(), "RIPEMD160");
        hashMap2.put(c14549x13.J(), "RIPEMD256");
        hashMap2.put(c14549x14.J(), "GOST3411");
        hashMap2.put(c14549x15.J(), "GOST3411-2012-256");
        hashMap2.put(c14549x16.J(), "GOST3411-2012-512");
        hashMap2.put(c14549x17.J(), "SM3");
    }

    public static void a(C13480D c13480d, C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws TSPIOException {
        try {
            c13480d.c(c14549x, z10, interfaceC14516g);
        } catch (IOException e10) {
            throw new TSPIOException("cannot encode extension: " + e10.getMessage(), e10);
        }
    }

    public static int b(String str) throws TSPException {
        Integer num = (Integer) f102263b.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new TSPException("digest algorithm cannot be found.");
    }

    public static List c(C13479C c13479c) {
        return c13479c == null ? f102262a : Collections.unmodifiableList(Arrays.asList(c13479c.y()));
    }

    public static Collection d(N0 n02, q qVar) throws TSPValidationException {
        ArrayList arrayList = new ArrayList();
        C15611b q10 = n02.q();
        if (q10 != null) {
            C14518h e10 = q10.e(t.f29131p3);
            for (int i10 = 0; i10 < e10.i(); i10++) {
                G v10 = ((C15610a) e10.g(i10)).v();
                for (int i11 = 0; i11 < v10.size(); i11++) {
                    try {
                        h hVar = new h(C15624o.w(v10.H(i11)));
                        j i12 = hVar.i();
                        p a10 = qVar.a(i12.f());
                        OutputStream outputStream = a10.getOutputStream();
                        outputStream.write(n02.m());
                        outputStream.close();
                        if (!org.bouncycastle.util.a.I(a10.b(), i12.h())) {
                            throw new TSPValidationException("Incorrect digest in message imprint");
                        }
                        arrayList.add(hVar);
                    } catch (OperatorCreationException unused) {
                        throw new TSPValidationException("Unknown hash algorithm specified in timestamp");
                    } catch (Exception unused2) {
                        throw new TSPValidationException("Timestamp could not be parsed");
                    }
                }
            }
        }
        return arrayList;
    }

    public static void e(C14146h c14146h) throws TSPValidationException {
        if (c14146h.x().G() != 3) {
            throw new IllegalArgumentException("Certificate must have an ExtendedKeyUsage extension.");
        }
        C13478B b10 = c14146h.b(C13478B.f90549y);
        if (b10 == null) {
            throw new TSPValidationException("Certificate must have an ExtendedKeyUsage extension.");
        }
        if (!b10.B()) {
            throw new TSPValidationException("Certificate must have an ExtendedKeyUsage extension marked as critical.");
        }
        C13477A v10 = C13477A.v(b10.A());
        if (!v10.y(M.f90692l) || v10.size() != 1) {
            throw new TSPValidationException("ExtendedKeyUsage not solely time stamping.");
        }
    }
}
