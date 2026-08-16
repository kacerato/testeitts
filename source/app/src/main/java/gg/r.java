package gg;

import eg.InterfaceC13104a1;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import nf.EnumC14431q;
import nf.InterfaceC14410f0;
import nf.InterfaceC14427o;
import nf.P0;
import nf.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class r {

    @NotNull
    public static final String f89701a = "Channel was closed";

    @InterfaceC14410f0
    @NotNull
    public static final <E, R> InterfaceC13360D<R> J(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.j jVar, @NotNull Mf.p<? super E, ? super yf.f<? super R>, ? extends Object> pVar) {
        return u.E(interfaceC13360D, jVar, pVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E, R> InterfaceC13360D<R> L(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.j jVar, @NotNull Mf.q<? super Integer, ? super E, ? super yf.f<? super R>, ? extends Object> qVar) {
        return u.G(interfaceC13360D, jVar, qVar);
    }

    @InterfaceC14410f0
    public static final void b(@NotNull InterfaceC13360D<?> interfaceC13360D, @Nullable Throwable th2) {
        t.a(interfaceC13360D, th2);
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @InterfaceC13104a1
    public static final <E, R> R c(@NotNull InterfaceC13364d<E> interfaceC13364d, @NotNull Mf.l<? super InterfaceC13360D<? extends E>, ? extends R> lVar) {
        return (R) t.b(interfaceC13364d, lVar);
    }

    public static final <E, R> R d(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull Mf.l<? super InterfaceC13360D<? extends E>, ? extends R> lVar) {
        return (R) t.c(interfaceC13360D, lVar);
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @Nullable
    public static final <E> Object e(@NotNull InterfaceC13364d<E> interfaceC13364d, @NotNull Mf.l<? super E, P0> lVar, @NotNull yf.f<? super P0> fVar) {
        return t.d(interfaceC13364d, lVar, fVar);
    }

    @InterfaceC14410f0
    @Nullable
    public static final <E, C extends E<? super E>> Object e0(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull C c10, @NotNull yf.f<? super C> fVar) {
        return u.W(interfaceC13360D, c10, fVar);
    }

    @Nullable
    public static final <E> Object f(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull Mf.l<? super E, P0> lVar, @NotNull yf.f<? super P0> fVar) {
        return t.e(interfaceC13360D, lVar, fVar);
    }

    @InterfaceC14410f0
    @Nullable
    public static final <E, C extends Collection<? super E>> Object f0(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull C c10, @NotNull yf.f<? super C> fVar) {
        return u.X(interfaceC13360D, c10, fVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final Mf.l<Throwable, P0> g(@NotNull InterfaceC13360D<?> interfaceC13360D) {
        return u.b(interfaceC13360D);
    }

    @Nullable
    public static final <E> Object g0(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.f<? super List<? extends E>> fVar) {
        return t.j(interfaceC13360D, fVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final Mf.l<Throwable, P0> h(@NotNull InterfaceC13360D<?>... interfaceC13360DArr) {
        return u.c(interfaceC13360DArr);
    }

    @InterfaceC14410f0
    @Nullable
    public static final <K, V, M extends Map<? super K, ? super V>> Object h0(@NotNull InterfaceC13360D<? extends Z<? extends K, ? extends V>> interfaceC13360D, @NotNull M m10, @NotNull yf.f<? super M> fVar) {
        return u.Y(interfaceC13360D, m10, fVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E, K> InterfaceC13360D<E> k(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.j jVar, @NotNull Mf.p<? super E, ? super yf.f<? super K>, ? extends Object> pVar) {
        return u.f(interfaceC13360D, jVar, pVar);
    }

    @InterfaceC14410f0
    @Nullable
    public static final <E> Object k0(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.f<? super Set<E>> fVar) {
        return u.b0(interfaceC13360D, fVar);
    }

    @NotNull
    public static final <E> Object m0(@NotNull E<? super E> e10, E e11) {
        return s.b(e10, e11);
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E, R, V> InterfaceC13360D<V> q0(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull InterfaceC13360D<? extends R> interfaceC13360D2, @NotNull yf.j jVar, @NotNull Mf.p<? super E, ? super R, ? extends V> pVar) {
        return u.g0(interfaceC13360D, interfaceC13360D2, jVar, pVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E> InterfaceC13360D<E> s(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.j jVar, @NotNull Mf.p<? super E, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return u.n(interfaceC13360D, jVar, pVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E> InterfaceC13360D<E> y(@NotNull InterfaceC13360D<? extends E> interfaceC13360D) {
        return u.t(interfaceC13360D);
    }
}
