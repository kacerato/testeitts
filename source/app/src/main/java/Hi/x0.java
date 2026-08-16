package hi;

import java.io.IOException;
import oh.C14548w0;
import oh.C14549x;
import oh.C14554z0;
import oh.F0;
import oh.M0;

public class x0 extends C0 {
    @Override
    public oh.B c(C14549x c14549x, String str) {
        if (str.length() == 0 || str.charAt(0) != '#') {
            if (str.length() != 0 && str.charAt(0) == '\\') {
                str = str.substring(1);
            }
            return (c14549x.A(gi.c.f89937I) || c14549x.A(gi.c.f89941M)) ? new C14554z0(str) : c14549x.A(gi.c.f89970x) ? new C14548w0(str) : (c14549x.A(gi.c.f89949c) || c14549x.A(gi.c.f89956j) || c14549x.A(gi.c.f89967u) || c14549x.A(gi.c.f89934F)) ? new F0(str) : new M0(str);
        }
        try {
            return b(str, 1);
        } catch (IOException unused) {
            throw new RuntimeException("can't recode value for oid " + c14549x.J());
        }
    }
}
