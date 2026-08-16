package kotlin.time;

import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;

public final class C14034f {

    public static final class a implements InterfaceC14033e {

        public final H f95862b;

        public final q f95863c;

        public a(I i10, q qVar) {
            this.f95863c = qVar;
            this.f95862b = i10.a();
        }

        @Override
        public q a() {
            return this.f95863c.i(this.f95862b.a());
        }
    }

    @NotNull
    @Lf.j(name = "fromTimeSource")
    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "2.3")
    public static final InterfaceC14033e a(@NotNull I i10, @NotNull q origin) {
        M.p(i10, "<this>");
        M.p(origin, "origin");
        return new a(i10, origin);
    }
}
