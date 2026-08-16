package Tk;

import Bi.D;
import Bi.L;
import Ii.J;
import Qk.r;
import Qk.t;
import Qk.u;
import Xh.s;
import hi.C13486b;
import java.io.InputStream;

public class e {

    public D f25416a;

    public class a implements u {

        public final char[] f25417a;

        public class C0709a implements t {

            public final C13486b f25419a;

            public final Wi.e f25420b;

            public C0709a(C13486b c13486b, Wi.e eVar) {
                this.f25419a = c13486b;
                this.f25420b = eVar;
            }

            @Override
            public C13486b a() {
                return this.f25419a;
            }

            public r b() {
                return new r(this.f25419a, L.a(a.this.f25417a));
            }

            @Override
            public InputStream d(InputStream inputStream) {
                return new Qi.a(inputStream, this.f25420b);
            }
        }

        public a(char[] cArr) {
            this.f25417a = cArr;
        }

        @Override
        public t a(C13486b c13486b) {
            Wi.e c10 = g.c(c13486b.u());
            c10.f(false, g.a(c13486b.u(), e.this.f25416a, c10.b(), s.v(c13486b.x()), this.f25417a));
            return new C0709a(c13486b, c10);
        }
    }

    public e() {
        this(new J());
    }

    public u b(char[] cArr) {
        return new a(cArr);
    }

    public e(D d10) {
        this.f25416a = d10;
    }
}
