package Sk;

import Qk.InterfaceC3015h;
import Xh.C3326a;
import Xh.C3330e;
import java.util.Enumeration;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.I0;
import oh.InterfaceC14516g;
import oh.K0;
import org.bouncycastle.pkcs.PKCSException;

public class a {
    public static boolean a(e eVar, InterfaceC3015h interfaceC3015h) throws PKCSException {
        b bVar = new b(eVar.b(new C14549x("2.16.840.1.114027.80.6.2"))[0]);
        C3326a[] b10 = eVar.b(new C14549x("2.16.840.1.114027.80.6.3"));
        Xh.f u10 = eVar.n().u();
        C14518h c14518h = new C14518h();
        c14518h.a(u10.z());
        c14518h.a(u10.x());
        c14518h.a(u10.y());
        C14518h c14518h2 = new C14518h();
        Enumeration I10 = u10.u().I();
        while (I10.hasMoreElements()) {
            C3326a y10 = C3326a.y(I10.nextElement());
            if (!y10.u().A(new C14549x("2.16.840.1.114027.80.6.3"))) {
                c14518h2.a(y10);
            }
        }
        c14518h.a(new K0(false, 0, (InterfaceC14516g) new I0(c14518h2)));
        C14518h c14518h3 = new C14518h();
        c14518h3.a(new G0(c14518h));
        c14518h3.a(bVar.e());
        c14518h3.a(b10[0].x()[0]);
        return new e(C3330e.v(new G0(c14518h3))).l(interfaceC3015h);
    }
}
