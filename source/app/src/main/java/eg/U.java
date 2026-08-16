package eg;

import kotlin.NoWhenBranchMatchedException;
import ng.C14445a;
import ng.C14446b;
import org.jetbrains.annotations.NotNull;

public enum U {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    public class a {

        public static final int[] f85672a;

        static {
            int[] iArr = new int[U.values().length];
            try {
                iArr[U.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[U.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[U.UNDISPATCHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[U.LAZY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f85672a = iArr;
        }
    }

    @F0
    public static void e() {
    }

    @F0
    public final <T> void b(@NotNull Mf.l<? super yf.f<? super T>, ? extends Object> lVar, @NotNull yf.f<? super T> fVar) {
        int i10 = a.f85672a[ordinal()];
        if (i10 == 1) {
            C14445a.c(lVar, fVar);
            return;
        }
        if (i10 == 2) {
            yf.h.h(lVar, fVar);
        } else if (i10 == 3) {
            C14446b.a(lVar, fVar);
        } else if (i10 != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    @F0
    public final <R, T> void c(@NotNull Mf.p<? super R, ? super yf.f<? super T>, ? extends Object> pVar, R r10, @NotNull yf.f<? super T> fVar) {
        int i10 = a.f85672a[ordinal()];
        if (i10 == 1) {
            C14445a.f(pVar, r10, fVar, null, 4, null);
            return;
        }
        if (i10 == 2) {
            yf.h.i(pVar, r10, fVar);
        } else if (i10 == 3) {
            C14446b.b(pVar, r10, fVar);
        } else if (i10 != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean d() {
        return this == LAZY;
    }
}
