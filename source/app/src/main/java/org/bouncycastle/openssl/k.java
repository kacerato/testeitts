package org.bouncycastle.openssl;

import Qk.F;
import Xh.t;
import Xh.v;
import gm.C13401b;
import gm.InterfaceC13402c;
import hi.C13486b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import oh.A0;
import oh.C14549x;
import org.bouncycastle.util.io.pem.PemGenerationException;
import yh.InterfaceC16192a;

public class k implements InterfaceC13402c {

    public static final C14549x f101890c = Sh.d.f23373y;

    public static final C14549x f101891d = Sh.d.f23314H;

    public static final C14549x f101892e = Sh.d.f23323Q;

    public static final C14549x f101893f = t.f29123n1;

    public static final C14549x f101894g = t.f29098e4;

    public static final C14549x f101895h = t.f29102f4;

    public static final C14549x f101896i = t.f29106g4;

    public static final C14549x f101897j = t.f29110h4;

    public static final C14549x f101898k = t.f29111i4;

    public static final C14549x f101899l = t.f29115j4;

    public static final C13486b f101900m;

    public static final C13486b f101901n;

    public static final C13486b f101902o;

    public static final C13486b f101903p;

    public static final C13486b f101904q;

    public static final C13486b f101905r;

    public static final C13486b f101906s;

    public static final C13486b f101907t;

    public static final C13486b f101908u;

    public static final C13486b f101909v;

    public v f101910a;

    public F f101911b;

    static {
        C14549x c14549x = t.f29144w1;
        A0 a02 = A0.f98776c;
        f101900m = new C13486b(c14549x, a02);
        f101901n = new C13486b(t.f29147x1, a02);
        f101902o = new C13486b(t.f29152z1, a02);
        f101903p = new C13486b(t.f29000A1, a02);
        f101904q = new C13486b(t.f29003B1, a02);
        f101905r = new C13486b(InterfaceC16192a.f130271c, a02);
        f101906s = new C13486b(Sh.d.f23361o, a02);
        f101907t = new C13486b(Sh.d.f23363p, a02);
        f101908u = new C13486b(Sh.d.f23365q, a02);
        f101909v = new C13486b(Sh.d.f23366r, a02);
    }

    public k(v vVar, F f10) {
        this.f101910a = vVar;
        this.f101911b = f10;
    }

    @Override
    public C13401b a() throws PemGenerationException {
        F f10 = this.f101911b;
        return f10 != null ? b(this.f101910a, f10) : b(this.f101910a, null);
    }

    public final C13401b b(v vVar, F f10) throws PemGenerationException {
        try {
            byte[] encoded = vVar.getEncoded();
            if (f10 == null) {
                return new C13401b(i.f101887u, encoded);
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStream d10 = f10.d(byteArrayOutputStream);
            d10.write(vVar.getEncoded());
            d10.close();
            return new C13401b(i.f101886t, new Xh.j(f10.a(), byteArrayOutputStream.toByteArray()).getEncoded());
        } catch (IOException e10) {
            throw new PemGenerationException("unable to process encoded key data: " + e10.getMessage(), e10);
        }
    }
}
