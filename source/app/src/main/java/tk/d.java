package Tk;

import Qk.A;
import Rk.l;
import Sk.h;
import Xh.s;
import hi.C13486b;
import oh.A0;
import org.bouncycastle.operator.OperatorCreationException;

public class d implements h {

    public l f25413a;

    public class a implements Sk.g {

        public final C13486b f25414a;

        public a(C13486b c13486b) {
            this.f25414a = c13486b;
        }

        @Override
        public A a(char[] cArr) throws OperatorCreationException {
            return g.b(this.f25414a.u(), d.this.f25413a.a(this.f25414a), s.v(this.f25414a.x()), cArr);
        }

        @Override
        public C13486b b() {
            return new C13486b(this.f25414a.u(), A0.f98776c);
        }
    }

    public d(l lVar) {
        this.f25413a = lVar;
    }

    @Override
    public Sk.g a(C13486b c13486b) {
        return new a(c13486b);
    }
}
