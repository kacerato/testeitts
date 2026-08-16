package okhttp3;

import Tg.C3089c;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

public final class s extends D {

    public static final x f99434c = x.c("application/x-www-form-urlencoded");

    public final List<String> f99435a;

    public final List<String> f99436b;

    public static final class a {

        public final List<String> f99437a;

        public final List<String> f99438b;

        public final Charset f99439c;

        public a() {
            this(null);
        }

        public a a(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            this.f99437a.add(v.c(str, v.f99455s, false, false, true, true, this.f99439c));
            this.f99438b.add(v.c(str2, v.f99455s, false, false, true, true, this.f99439c));
            return this;
        }

        public a b(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            this.f99437a.add(v.c(str, v.f99455s, true, false, true, true, this.f99439c));
            this.f99438b.add(v.c(str2, v.f99455s, true, false, true, true, this.f99439c));
            return this;
        }

        public s c() {
            return new s(this.f99437a, this.f99438b);
        }

        public a(Charset charset) {
            this.f99437a = new ArrayList();
            this.f99438b = new ArrayList();
            this.f99439c = charset;
        }
    }

    public s(List<String> list, List<String> list2) {
        this.f99435a = Gg.c.u(list);
        this.f99436b = Gg.c.u(list2);
    }

    @Override
    public long a() {
        return n(null, true);
    }

    @Override
    public x b() {
        return f99434c;
    }

    @Override
    public void h(Tg.d dVar) throws IOException {
        n(dVar, false);
    }

    public String i(int i10) {
        return this.f99435a.get(i10);
    }

    public String j(int i10) {
        return this.f99436b.get(i10);
    }

    public String k(int i10) {
        return v.A(i(i10), true);
    }

    public int l() {
        return this.f99435a.size();
    }

    public String m(int i10) {
        return v.A(j(i10), true);
    }

    public final long n(@Nullable Tg.d dVar, boolean z10) {
        C3089c c3089c = z10 ? new C3089c() : dVar.C();
        int size = this.f99435a.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                c3089c.writeByte(38);
            }
            c3089c.X(this.f99435a.get(i10));
            c3089c.writeByte(61);
            c3089c.X(this.f99436b.get(i10));
        }
        if (!z10) {
            return 0L;
        }
        long Q10 = c3089c.Q();
        c3089c.c();
        return Q10;
    }
}
