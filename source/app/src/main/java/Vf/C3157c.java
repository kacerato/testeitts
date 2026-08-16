package Vf;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14441w;
import nf.T0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C3157c extends C3155a implements g<Character>, r<Character> {

    @NotNull
    public static final a f26876f = new a(null);

    @NotNull
    public static final C3157c f26877g = new C3157c(1, 0);

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final C3157c a() {
            return C3157c.f26877g;
        }

        public a() {
        }
    }

    public C3157c(char c10, char c11) {
        super(c10, c11, 1);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14427o(message = "Can throw an exception when it's impossible to represent the value with Char type, for example, when the range includes MAX_VALUE. It's recommended to use 'endInclusive' property that doesn't throw.")
    @InterfaceC14422l0(version = "1.9")
    public static void l() {
    }

    @Override
    public boolean contains(Comparable comparable) {
        return j(((Character) comparable).charValue());
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof C3157c) {
            if (!isEmpty() || !((C3157c) obj).isEmpty()) {
                C3157c c3157c = (C3157c) obj;
                if (c() != c3157c.c() || d() != c3157c.d()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (c() * H2.c.f7959b) + d();
    }

    @Override
    public boolean isEmpty() {
        return M.t(c(), d()) > 0;
    }

    public boolean j(char c10) {
        return M.t(c(), c10) <= 0 && M.t(c10, d()) <= 0;
    }

    @Override
    @NotNull
    public Character b() {
        if (d() != '\uffff') {
            return Character.valueOf((char) (d() + 1));
        }
        throw new IllegalStateException("Cannot return the exclusive upper bound of a range that includes MAX_VALUE.");
    }

    @Override
    @NotNull
    public Character getEndInclusive() {
        return Character.valueOf(d());
    }

    @Override
    @NotNull
    public Character getStart() {
        return Character.valueOf(c());
    }

    @Override
    @NotNull
    public String toString() {
        return c() + ClasspathEntry.DOT_DOT + d();
    }
}
