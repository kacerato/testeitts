package e3;

import K2.g;
import j3.b;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class C13003a {
    @NotNull
    public static final com.google.firebase.installations.a a(@NotNull b bVar) {
        M.p(bVar, "<this>");
        com.google.firebase.installations.a t10 = com.google.firebase.installations.a.t();
        M.o(t10, "getInstance()");
        return t10;
    }

    @NotNull
    public static final com.google.firebase.installations.a b(@NotNull b bVar, @NotNull g app) {
        M.p(bVar, "<this>");
        M.p(app, "app");
        com.google.firebase.installations.a u10 = com.google.firebase.installations.a.u(app);
        M.o(u10, "getInstance(app)");
        return u10;
    }
}
