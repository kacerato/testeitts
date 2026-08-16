package jg;

import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,731:1\n1#2:732\n*E\n"})
public final class K {

    @Lf.g
    @NotNull
    public static final mg.T f93237a = new mg.T("NO_VALUE");

    @NotNull
    public static final <T> D<T> a(int i10, int i11, @NotNull gg.i iVar) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("replay cannot be negative, but was " + i10).toString());
        }
        if (i11 < 0) {
            throw new IllegalArgumentException(("extraBufferCapacity cannot be negative, but was " + i11).toString());
        }
        if (i10 > 0 || i11 > 0 || iVar == gg.i.SUSPEND) {
            int i12 = i11 + i10;
            if (i12 < 0) {
                i12 = Integer.MAX_VALUE;
            }
            return new J(i10, i12, iVar);
        }
        throw new IllegalArgumentException(("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy " + ((Object) iVar)).toString());
    }

    public static D b(int i10, int i11, gg.i iVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            iVar = gg.i.SUSPEND;
        }
        return a(i10, i11, iVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull I<? extends T> i10, @NotNull yf.j jVar, int i11, @NotNull gg.i iVar) {
        return ((i11 == 0 || i11 == -3) && iVar == gg.i.SUSPEND) ? i10 : new kg.h(i10, jVar, i11, iVar);
    }

    public static final Object f(Object[] objArr, long j10) {
        return objArr[((int) j10) & (objArr.length - 1)];
    }

    public static final void g(Object[] objArr, long j10, Object obj) {
        objArr[((int) j10) & (objArr.length - 1)] = obj;
    }
}
