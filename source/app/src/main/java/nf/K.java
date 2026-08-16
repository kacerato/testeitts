package nf;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class K {

    public static final class a {

        public static final int[] f98184a;

        static {
            int[] iArr = new int[M.values().length];
            try {
                iArr[M.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[M.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[M.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f98184a = iArr;
        }
    }

    @NotNull
    public static <T> I<T> a(@NotNull Mf.a<? extends T> initializer) {
        kotlin.jvm.internal.M.p(initializer, "initializer");
        C14026x c14026x = null;
        return new C14435s0(initializer, c14026x, 2, c14026x);
    }

    @NotNull
    public static final <T> I<T> b(@Nullable Object obj, @NotNull Mf.a<? extends T> initializer) {
        kotlin.jvm.internal.M.p(initializer, "initializer");
        return new C14435s0(initializer, obj);
    }

    @NotNull
    public static final <T> I<T> c(@NotNull M mode, @NotNull Mf.a<? extends T> initializer) {
        kotlin.jvm.internal.M.p(mode, "mode");
        kotlin.jvm.internal.M.p(initializer, "initializer");
        int i10 = a.f98184a[mode.ordinal()];
        int i11 = 2;
        if (i10 == 1) {
            C14026x c14026x = null;
            return new C14435s0(initializer, c14026x, i11, c14026x);
        }
        if (i10 == 2) {
            return new C14420k0(initializer);
        }
        if (i10 == 3) {
            return new Q0(initializer);
        }
        throw new NoWhenBranchMatchedException();
    }
}
