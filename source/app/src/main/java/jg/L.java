package jg;

import kg.AbstractC13981c;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,731:1\n1#2:732\n*E\n"})
public final class L extends AbstractC13981c<J<?>> {

    @Lf.g
    public long f93238a = -1;

    @Lf.g
    @Nullable
    public yf.f<? super P0> f93239b;

    @Override
    public boolean a(@NotNull J<?> j10) {
        if (this.f93238a >= 0) {
            return false;
        }
        this.f93238a = j10.c0();
        return true;
    }

    @Override
    @NotNull
    public yf.f<P0>[] b(@NotNull J<?> j10) {
        long j11 = this.f93238a;
        this.f93238a = -1L;
        this.f93239b = null;
        return j10.b0(j11);
    }
}
