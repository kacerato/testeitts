package ag;

import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface r {

    public static final class a {
        @NotNull
        public static b a(@NotNull r rVar) {
            return new b(rVar);
        }
    }

    public static final class b {

        @NotNull
        public final r f32161a;

        public b(@NotNull r match) {
            kotlin.jvm.internal.M.p(match, "match");
            this.f32161a = match;
        }

        @Ef.f
        public final String a() {
            return k().c().get(1);
        }

        @Ef.f
        public final String b() {
            return k().c().get(10);
        }

        @Ef.f
        public final String c() {
            return k().c().get(2);
        }

        @Ef.f
        public final String d() {
            return k().c().get(3);
        }

        @Ef.f
        public final String e() {
            return k().c().get(4);
        }

        @Ef.f
        public final String f() {
            return k().c().get(5);
        }

        @Ef.f
        public final String g() {
            return k().c().get(6);
        }

        @Ef.f
        public final String h() {
            return k().c().get(7);
        }

        @Ef.f
        public final String i() {
            return k().c().get(8);
        }

        @Ef.f
        public final String j() {
            return k().c().get(9);
        }

        @NotNull
        public final r k() {
            return this.f32161a;
        }

        @NotNull
        public final List<String> l() {
            return this.f32161a.c().subList(1, this.f32161a.c().size());
        }
    }

    @NotNull
    b a();

    @NotNull
    InterfaceC3634p b();

    @NotNull
    List<String> c();

    @NotNull
    Vf.l getRange();

    @NotNull
    String getValue();

    @Nullable
    r next();
}
