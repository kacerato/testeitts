package mg;

import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;

public final class C14262x {

    public static final int f97101a = 0;

    public static final int f97102b = 1;

    public static final int f97103c = 2;

    @NotNull
    public static final Object f97104d = new T("CONDITION_FALSE");

    @NotNull
    public static final Object a() {
        return f97104d;
    }

    @InterfaceC14410f0
    public static void b() {
    }

    @InterfaceC14410f0
    public static void c() {
    }

    @InterfaceC14410f0
    public static void d() {
    }

    @InterfaceC14410f0
    public static void e() {
    }

    @InterfaceC14410f0
    @NotNull
    public static final C14263y f(@NotNull Object obj) {
        C14263y c14263y;
        M m10 = obj instanceof M ? (M) obj : null;
        if (m10 != null && (c14263y = m10.f97031a) != null) {
            return c14263y;
        }
        kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (C14263y) obj;
    }
}
