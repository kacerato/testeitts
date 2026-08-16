package Xf;

import java.util.Collection;
import java.util.Iterator;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@yf.m
@InterfaceC14422l0(version = "1.3")
public abstract class AbstractC3314o<T> {
    @Nullable
    public abstract Object a(T t10, @NotNull yf.f<? super P0> fVar);

    @Nullable
    public final Object c(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull yf.f<? super P0> fVar) {
        Object f10 = f(interfaceC3312m.iterator(), fVar);
        return f10 == Af.d.l() ? f10 : P0.f98194a;
    }

    @Nullable
    public final Object e(@NotNull Iterable<? extends T> iterable, @NotNull yf.f<? super P0> fVar) {
        Object f10;
        return (!((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) && (f10 = f(iterable.iterator(), fVar)) == Af.d.l()) ? f10 : P0.f98194a;
    }

    @Nullable
    public abstract Object f(@NotNull Iterator<? extends T> it, @NotNull yf.f<? super P0> fVar);
}
