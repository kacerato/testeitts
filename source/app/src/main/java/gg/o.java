package gg;

import gg.p;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class o {
    @NotNull
    public static final <E> l<E> b(int i10, @NotNull i iVar, @Nullable Mf.l<? super E, P0> lVar) {
        l<E> jVar;
        if (i10 == -2) {
            jVar = iVar == i.SUSPEND ? new j<>(l.f89682z4.a(), lVar) : new w<>(1, iVar, lVar);
        } else {
            if (i10 == -1) {
                if (iVar == i.SUSPEND) {
                    return new w(1, i.DROP_OLDEST, lVar);
                }
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            }
            if (i10 != 0) {
                return i10 != Integer.MAX_VALUE ? iVar == i.SUSPEND ? new j(i10, lVar) : new w(i10, iVar, lVar) : new j(Integer.MAX_VALUE, lVar);
            }
            jVar = iVar == i.SUSPEND ? new j<>(0, lVar) : new w<>(1, iVar, lVar);
        }
        return jVar;
    }

    public static l c(int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return d(i10, null, null, 6, null);
    }

    public static l d(int i10, i iVar, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            iVar = i.SUSPEND;
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        return b(i10, iVar, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T e(@NotNull Object obj, @NotNull Mf.l<? super Throwable, ? extends T> lVar) {
        return obj instanceof p.c ? lVar.invoke(p.f(obj)) : obj;
    }

    @NotNull
    public static final <T> Object f(@NotNull Object obj, @NotNull Mf.l<? super Throwable, P0> lVar) {
        if (obj instanceof p.a) {
            lVar.invoke(p.f(obj));
        }
        return obj;
    }

    @NotNull
    public static final <T> Object g(@NotNull Object obj, @NotNull Mf.l<? super Throwable, P0> lVar) {
        if (obj instanceof p.c) {
            lVar.invoke(p.f(obj));
        }
        return obj;
    }

    @NotNull
    public static final <T> Object h(@NotNull Object obj, @NotNull Mf.l<? super T, P0> lVar) {
        if (!(obj instanceof p.c)) {
            lVar.invoke(obj);
        }
        return obj;
    }
}
