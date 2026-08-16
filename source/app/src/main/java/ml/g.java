package Ml;

import Bi.InterfaceC2390w;
import Bi.InterfaceC2392y;
import Bi.Z;
import Ii.L;
import Ii.O;
import Ii.Q;
import Li.C2769a;
import Li.C2774c0;
import Li.C2776d0;
import Li.C2779f;
import Li.C2788m;
import Li.j0;
import Oi.z;
import Xi.C3358n0;
import Xi.C3360o0;
import android.security.keystore.KeyProperties;
import ck.r;
import hi.C13486b;
import java.security.InvalidKeyException;
import oh.C14549x;

public class g {
    public static InterfaceC2392y a(C14549x c14549x) {
        if (c14549x.A(Sh.d.f23337c)) {
            return new L();
        }
        if (c14549x.A(Sh.d.f23341e)) {
            return new O();
        }
        if (c14549x.A(Sh.d.f23357m)) {
            return new Q(128);
        }
        if (c14549x.A(Sh.d.f23359n)) {
            return new Q(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + ((Object) c14549x));
    }

    public static Z b(r rVar, byte[] bArr) throws InvalidKeyException {
        Z d10 = d(rVar.b());
        d10.a(false, rVar.a() == null ? new C3360o0(bArr, 0, (rVar.c() + 7) / 8) : new C3360o0(e(rVar, bArr)));
        return d10;
    }

    public static Z c(r rVar, byte[] bArr) throws InvalidKeyException {
        Z d10 = d(rVar.b());
        d10.a(true, rVar.a() == null ? new C3360o0(org.bouncycastle.util.a.X(bArr, 0, (rVar.c() + 7) / 8)) : new C3360o0(e(rVar, bArr)));
        return d10;
    }

    public static Z d(String str) {
        if (str.equalsIgnoreCase("AESWRAP") || str.equalsIgnoreCase(KeyProperties.KEY_ALGORITHM_AES)) {
            return new C2774c0(new C2769a());
        }
        if (str.equalsIgnoreCase("ARIA")) {
            return new C2774c0(new C2779f());
        }
        if (str.equalsIgnoreCase("Camellia")) {
            return new C2774c0(new C2788m());
        }
        if (str.equalsIgnoreCase("SEED")) {
            return new C2774c0(new j0());
        }
        if (str.equalsIgnoreCase("AES-KWP")) {
            return new C2776d0(new C2769a());
        }
        if (str.equalsIgnoreCase("Camellia-KWP")) {
            return new C2776d0(new C2788m());
        }
        if (str.equalsIgnoreCase("ARIA-KWP")) {
            return new C2776d0(new C2779f());
        }
        throw new UnsupportedOperationException("unknown key algorithm: " + str);
    }

    public static byte[] e(r rVar, byte[] bArr) throws InvalidKeyException {
        InterfaceC2390w aVar;
        C3358n0 c3358n0;
        C13486b a10 = rVar.a();
        byte[] d10 = rVar.d();
        int c10 = (rVar.c() + 7) / 8;
        byte[] bArr2 = new byte[c10];
        if (ki.r.f95318O6.A(a10.u())) {
            aVar = new z(a(C13486b.v(a10.x()).u()));
            c3358n0 = new C3358n0(bArr, d10);
        } else {
            if (!ki.r.f95320P6.A(a10.u())) {
                if (!Sh.d.f23359n.A(a10.u())) {
                    throw new InvalidKeyException("Unrecognized KDF: " + ((Object) a10.u()));
                }
                Q q10 = new Q(256);
                q10.update(bArr, 0, bArr.length);
                q10.update(d10, 0, d10.length);
                q10.e(bArr2, 0, c10);
                return bArr2;
            }
            aVar = new Ei.a(a(C13486b.v(a10.x()).u()));
            c3358n0 = new C3358n0(bArr, d10);
        }
        aVar.c(c3358n0);
        aVar.a(bArr2, 0, c10);
        return bArr2;
    }
}
