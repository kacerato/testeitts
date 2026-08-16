package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class S0 {

    public static final int f85665e = -1;

    public static final int f85666f = 0;

    public static final int f85667g = 1;

    @NotNull
    public static final mg.T f85661a = new mg.T("COMPLETING_ALREADY");

    @Lf.g
    @NotNull
    public static final mg.T f85662b = new mg.T("COMPLETING_WAITING_CHILDREN");

    @NotNull
    public static final mg.T f85663c = new mg.T("COMPLETING_RETRY");

    @NotNull
    public static final mg.T f85664d = new mg.T("TOO_LATE_TO_CANCEL");

    @NotNull
    public static final mg.T f85668h = new mg.T("SEALED");

    @NotNull
    public static final C13134p0 f85669i = new C13134p0(false);

    @NotNull
    public static final C13134p0 f85670j = new C13134p0(true);

    public static final mg.T a() {
        return f85661a;
    }

    public static final mg.T b() {
        return f85663c;
    }

    public static final C13134p0 c() {
        return f85670j;
    }

    public static final C13134p0 d() {
        return f85669i;
    }

    public static final mg.T e() {
        return f85668h;
    }

    public static final mg.T f() {
        return f85664d;
    }

    @Nullable
    public static final Object g(@Nullable Object obj) {
        return obj instanceof D0 ? new E0((D0) obj) : obj;
    }

    @Nullable
    public static final Object h(@Nullable Object obj) {
        D0 d02;
        E0 e02 = obj instanceof E0 ? (E0) obj : null;
        return (e02 == null || (d02 = e02.f85607a) == null) ? obj : d02;
    }
}
