package mg;

import mg.P;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Lf.h
public final class Q<S extends P<S>> {

    @Nullable
    public final Object f97035a;

    public Q(Object obj) {
        this.f97035a = obj;
    }

    public static final Q a(Object obj) {
        return new Q(obj);
    }

    @NotNull
    public static <S extends P<S>> Object b(@Nullable Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof Q) && kotlin.jvm.internal.M.g(obj, ((Q) obj2).j());
    }

    public static final boolean d(Object obj, Object obj2) {
        return kotlin.jvm.internal.M.g(obj, obj2);
    }

    public static void e() {
    }

    @NotNull
    public static final S f(Object obj) {
        if (obj == C14245f.f97062b) {
            throw new IllegalStateException("Does not contain segment");
        }
        kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (S) obj;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj == C14245f.f97062b;
    }

    public static String i(Object obj) {
        return "SegmentOrClosed(value=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f97035a, obj);
    }

    public int hashCode() {
        return g(this.f97035a);
    }

    public final Object j() {
        return this.f97035a;
    }

    public String toString() {
        return i(this.f97035a);
    }
}
