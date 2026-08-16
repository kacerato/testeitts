package Rk;

import Xi.C3360o0;
import hi.C13486b;
import oh.C14549x;

public class a {
    public static C13486b a(C3360o0 c3360o0) {
        C14549x c14549x;
        int length = c3360o0.b().length * 8;
        if (length == 128) {
            c14549x = Sh.d.f23308B;
        } else if (length == 192) {
            c14549x = Sh.d.f23317K;
        } else {
            if (length != 256) {
                throw new IllegalArgumentException("illegal keysize in AES");
            }
            c14549x = Sh.d.f23326T;
        }
        return new C13486b(c14549x);
    }
}
