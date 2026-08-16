package mg;

import com.google.common.util.concurrent.C0;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,269:1\n46#1,8:284\n107#2,7:270\n107#2,7:277\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n74#1:284,8\n27#1:270,7\n85#1:277,7\n*E\n"})
public final class C14245f {

    public static final int f97061a = 16;

    @NotNull
    public static final T f97062b = new T("CLOSED");

    public static final T a() {
        return f97062b;
    }

    public static final boolean b(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, int i10, Mf.l<? super Integer, Boolean> lVar) {
        int i11;
        do {
            i11 = atomicIntegerFieldUpdater.get(obj);
            if (!lVar.invoke(Integer.valueOf(i11)).booleanValue()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i11, i11 + i10));
        return true;
    }

    public static final boolean c(Object obj, AtomicIntegerArray atomicIntegerArray, int i10, int i11, Mf.l<? super Integer, Boolean> lVar) {
        int i12;
        do {
            i12 = atomicIntegerArray.get(i10);
            if (!lVar.invoke(Integer.valueOf(i12)).booleanValue()) {
                return false;
            }
        } while (!atomicIntegerArray.compareAndSet(i10, i12, i12 + i11));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [mg.g] */
    @NotNull
    public static final <N extends AbstractC14246g<N>> N d(@NotNull N n10) {
        while (true) {
            Object f10 = n10.f();
            if (f10 == f97062b) {
                return n10;
            }
            ?? r02 = (AbstractC14246g) f10;
            if (r02 != 0) {
                n10 = r02;
            } else if (n10.j()) {
                return n10;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final Object e(@Nullable Object obj, @NotNull AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, long j10, @NotNull Object obj2, @NotNull Mf.p<? super Long, Object, Object> pVar) {
        Object g10;
        loop0: while (true) {
            g10 = g(obj2, j10, pVar);
            if (!Q.h(g10)) {
                P f10 = Q.f(g10);
                while (true) {
                    P p10 = (P) atomicReferenceFieldUpdater.get(obj);
                    if (p10.f97034d >= f10.f97034d) {
                        break loop0;
                    }
                    if (!f10.s()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, p10, f10)) {
                        if (p10.o()) {
                            p10.l();
                        }
                    } else if (f10.o()) {
                        f10.l();
                    }
                }
            } else {
                break;
            }
        }
        return g10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final Object f(@Nullable Object obj, @NotNull AtomicReferenceArray atomicReferenceArray, int i10, long j10, @NotNull Object obj2, @NotNull Mf.p<? super Long, Object, Object> pVar) {
        Object g10;
        loop0: while (true) {
            g10 = g(obj2, j10, pVar);
            if (!Q.h(g10)) {
                P f10 = Q.f(g10);
                while (true) {
                    P p10 = (P) atomicReferenceArray.get(i10);
                    if (p10.f97034d >= f10.f97034d) {
                        break loop0;
                    }
                    if (!f10.s()) {
                        break;
                    }
                    if (C0.a(atomicReferenceArray, i10, p10, f10)) {
                        if (p10.o()) {
                            p10.l();
                        }
                    } else if (f10.o()) {
                        f10.l();
                    }
                }
            } else {
                break;
            }
        }
        return g10;
    }

    @NotNull
    public static final <S extends P<S>> Object g(@NotNull S s10, long j10, @NotNull Mf.p<? super Long, ? super S, ? extends S> pVar) {
        while (true) {
            if (s10.f97034d >= j10 && !s10.h()) {
                return Q.b(s10);
            }
            Object f10 = s10.f();
            if (f10 == f97062b) {
                return Q.b(f97062b);
            }
            S s11 = (S) ((AbstractC14246g) f10);
            if (s11 == null) {
                s11 = pVar.invoke(Long.valueOf(s10.f97034d + 1), s10);
                if (s10.m(s11)) {
                    if (s10.h()) {
                        s10.l();
                    }
                }
            }
            s10 = s11;
        }
    }

    public static final void h(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    public static final void i(AtomicReferenceArray atomicReferenceArray, int i10, Mf.l<Object, P0> lVar) {
        while (true) {
            lVar.invoke(atomicReferenceArray.get(i10));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean j(@Nullable Object obj, @NotNull AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, @NotNull Object obj2) {
        while (true) {
            P p10 = (P) atomicReferenceFieldUpdater.get(obj);
            if (p10.f97034d >= obj2.f97034d) {
                return true;
            }
            if (!obj2.s()) {
                return false;
            }
            if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, p10, obj2)) {
                if (p10.o()) {
                    p10.l();
                }
                return true;
            }
            if (obj2.o()) {
                obj2.l();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean k(@Nullable Object obj, @NotNull AtomicReferenceArray atomicReferenceArray, int i10, @NotNull Object obj2) {
        while (true) {
            P p10 = (P) atomicReferenceArray.get(i10);
            if (p10.f97034d >= obj2.f97034d) {
                return true;
            }
            if (!obj2.s()) {
                return false;
            }
            if (C0.a(atomicReferenceArray, i10, p10, obj2)) {
                if (p10.o()) {
                    p10.l();
                }
                return true;
            }
            if (obj2.o()) {
                obj2.l();
            }
        }
    }
}
