package mg;

import eg.l1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class f0 {

    @Lf.g
    @NotNull
    public final yf.j f97063a;

    @NotNull
    public final Object[] f97064b;

    @NotNull
    public final l1<Object>[] f97065c;

    public int f97066d;

    public f0(@NotNull yf.j jVar, int i10) {
        this.f97063a = jVar;
        this.f97064b = new Object[i10];
        this.f97065c = new l1[i10];
    }

    public final void a(@NotNull l1<?> l1Var, @Nullable Object obj) {
        Object[] objArr = this.f97064b;
        int i10 = this.f97066d;
        objArr[i10] = obj;
        l1<Object>[] l1VarArr = this.f97065c;
        this.f97066d = i10 + 1;
        kotlin.jvm.internal.M.n(l1Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        l1VarArr[i10] = l1Var;
    }

    public final void b(@NotNull yf.j jVar) {
        int length = this.f97065c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            l1<Object> l1Var = this.f97065c[length];
            kotlin.jvm.internal.M.m(l1Var);
            l1Var.h(jVar, this.f97064b[length]);
            if (i10 < 0) {
                return;
            } else {
                length = i10;
            }
        }
    }
}
