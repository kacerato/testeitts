package Ng;

import b3.s;
import okhttp3.u;

public final class b {

    public final Tg.f f16175a;

    public final Tg.f f16176b;

    public final int f16177c;

    public static final Tg.f f16164d = Tg.f.m(s.f32937c);

    public static final String f16165e = ":status";

    public static final Tg.f f16170j = Tg.f.m(f16165e);

    public static final String f16166f = ":method";

    public static final Tg.f f16171k = Tg.f.m(f16166f);

    public static final String f16167g = ":path";

    public static final Tg.f f16172l = Tg.f.m(f16167g);

    public static final String f16168h = ":scheme";

    public static final Tg.f f16173m = Tg.f.m(f16168h);

    public static final String f16169i = ":authority";

    public static final Tg.f f16174n = Tg.f.m(f16169i);

    public interface a {
        void a(u uVar);
    }

    public b(String str, String str2) {
        this(Tg.f.m(str), Tg.f.m(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f16175a.equals(bVar.f16175a) && this.f16176b.equals(bVar.f16176b);
    }

    public int hashCode() {
        return ((527 + this.f16175a.hashCode()) * 31) + this.f16176b.hashCode();
    }

    public String toString() {
        return Gg.c.s("%s: %s", this.f16175a.b0(), this.f16176b.b0());
    }

    public b(Tg.f fVar, String str) {
        this(fVar, Tg.f.m(str));
    }

    public b(Tg.f fVar, Tg.f fVar2) {
        this.f16175a = fVar;
        this.f16176b = fVar2;
        this.f16177c = fVar.S() + 32 + fVar2.S();
    }
}
