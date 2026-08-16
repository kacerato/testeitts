package eg;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.AbstractC16183a;
import yf.j;

public final class Q extends AbstractC16183a {

    @NotNull
    public static final a f85633c = new a(null);

    @NotNull
    public final String f85634b;

    public static final class a implements j.c<Q> {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public Q(@NotNull String str) {
        super(f85633c);
        this.f85634b = str;
    }

    public static Q u(Q q10, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = q10.f85634b;
        }
        return q10.t(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Q) && kotlin.jvm.internal.M.g(this.f85634b, ((Q) obj).f85634b);
    }

    public int hashCode() {
        return this.f85634b.hashCode();
    }

    @NotNull
    public final String s() {
        return this.f85634b;
    }

    @NotNull
    public final Q t(@NotNull String str) {
        return new Q(str);
    }

    @NotNull
    public String toString() {
        return "CoroutineName(" + this.f85634b + ')';
    }

    @NotNull
    public final String v() {
        return this.f85634b;
    }
}
