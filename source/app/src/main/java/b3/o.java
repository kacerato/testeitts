package b3;

import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class o {
    @NotNull
    public static final com.google.firebase.installations.a a(@NotNull K2.d dVar) {
        M.p(dVar, "<this>");
        com.google.firebase.installations.a t10 = com.google.firebase.installations.a.t();
        M.o(t10, "getInstance()");
        return t10;
    }

    @NotNull
    public static final com.google.firebase.installations.a b(@NotNull K2.d dVar, @NotNull K2.g app) {
        M.p(dVar, "<this>");
        M.p(app, "app");
        com.google.firebase.installations.a u10 = com.google.firebase.installations.a.u(app);
        M.o(u10, "getInstance(app)");
        return u10;
    }
}
