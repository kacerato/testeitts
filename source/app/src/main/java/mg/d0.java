package mg;

import eg.F0;
import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.t0;
import mg.e0;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14985q;

@F0
@t0({"SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n28#2,4:169\n28#2,4:174\n28#2,4:179\n28#2,4:184\n28#2,4:189\n28#2,4:194\n28#2,4:199\n28#2,4:204\n20#3:173\n20#3:178\n20#3:183\n20#3:188\n20#3:193\n20#3:198\n20#3:203\n20#3:208\n1#4:209\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n35#1:169,4\n42#1:174,4\n50#1:179,4\n52#1:184,4\n60#1:189,4\n69#1:194,4\n72#1:199,4\n81#1:204,4\n35#1:173\n42#1:178\n50#1:183\n52#1:188\n60#1:193\n69#1:198\n72#1:203\n81#1:208\n*E\n"})
public class d0<T extends e0 & Comparable<? super T>> {

    @NotNull
    public static final AtomicIntegerFieldUpdater f97058b = AtomicIntegerFieldUpdater.newUpdater(d0.class, "_size");

    @Lf.x
    private volatile int _size;

    @Nullable
    public T[] f97059a;

    @InterfaceC14410f0
    public final void a(@NotNull T t10) {
        t10.d(this);
        T[] j10 = j();
        int g10 = g();
        o(g10 + 1);
        j10[g10] = t10;
        t10.a(g10);
        q(g10);
    }

    public final void b(@NotNull T t10) {
        synchronized (this) {
            a(t10);
            P0 p02 = P0.f98194a;
        }
    }

    public final boolean c(@NotNull T t10, @NotNull Mf.l<? super T, Boolean> lVar) {
        boolean z10;
        synchronized (this) {
            try {
                if (lVar.invoke(f()).booleanValue()) {
                    a(t10);
                    z10 = true;
                } else {
                    z10 = false;
                }
                kotlin.jvm.internal.J.d(1);
            } catch (Throwable th2) {
                kotlin.jvm.internal.J.d(1);
                kotlin.jvm.internal.J.c(1);
                throw th2;
            }
        }
        kotlin.jvm.internal.J.c(1);
        return z10;
    }

    public final void d() {
        synchronized (this) {
            try {
                T[] tArr = this.f97059a;
                if (tArr != null) {
                    C14985q.V1(tArr, null, 0, 0, 6, null);
                }
                f97058b.set(this, 0);
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final T e(@NotNull Mf.l<? super T, Boolean> lVar) {
        T t10;
        synchronized (this) {
            try {
                int g10 = g();
                int i10 = 0;
                while (true) {
                    t10 = null;
                    if (i10 >= g10) {
                        break;
                    }
                    T[] tArr = this.f97059a;
                    if (tArr != null) {
                        t10 = (Object) tArr[i10];
                    }
                    kotlin.jvm.internal.M.m(t10);
                    if (lVar.invoke(t10).booleanValue()) {
                        break;
                    }
                    i10++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return t10;
    }

    @InterfaceC14410f0
    @Nullable
    public final T f() {
        T[] tArr = this.f97059a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int g() {
        return f97058b.get(this);
    }

    public final boolean h() {
        return g() == 0;
    }

    @Nullable
    public final T i() {
        T f10;
        synchronized (this) {
            f10 = f();
        }
        return f10;
    }

    public final T[] j() {
        T[] tArr = this.f97059a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new e0[4];
            this.f97059a = tArr2;
            return tArr2;
        }
        if (g() < tArr.length) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, g() * 2);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(this, newSize)");
        T[] tArr3 = (T[]) ((e0[]) copyOf);
        this.f97059a = tArr3;
        return tArr3;
    }

    public final boolean k(@NotNull T t10) {
        boolean z10;
        synchronized (this) {
            if (t10.c() == null) {
                z10 = false;
            } else {
                l(t10.getIndex());
                z10 = true;
            }
        }
        return z10;
    }

    @InterfaceC14410f0
    @NotNull
    public final T l(int i10) {
        T[] tArr = this.f97059a;
        kotlin.jvm.internal.M.m(tArr);
        o(g() - 1);
        if (i10 < g()) {
            r(i10, g());
            int i11 = (i10 - 1) / 2;
            if (i10 > 0) {
                T t10 = tArr[i10];
                kotlin.jvm.internal.M.m(t10);
                T t11 = tArr[i11];
                kotlin.jvm.internal.M.m(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    r(i10, i11);
                    q(i11);
                }
            }
            p(i10);
        }
        T t12 = tArr[g()];
        kotlin.jvm.internal.M.m(t12);
        t12.d(null);
        t12.a(-1);
        tArr[g()] = null;
        return t12;
    }

    @Nullable
    public final T m(@NotNull Mf.l<? super T, Boolean> lVar) {
        synchronized (this) {
            try {
                T f10 = f();
                if (f10 == null) {
                    kotlin.jvm.internal.J.d(2);
                    kotlin.jvm.internal.J.c(2);
                    return null;
                }
                T l10 = lVar.invoke(f10).booleanValue() ? l(0) : null;
                kotlin.jvm.internal.J.d(1);
                kotlin.jvm.internal.J.c(1);
                return l10;
            } catch (Throwable th2) {
                kotlin.jvm.internal.J.d(1);
                kotlin.jvm.internal.J.c(1);
                throw th2;
            }
        }
    }

    @Nullable
    public final T n() {
        T l10;
        synchronized (this) {
            l10 = g() > 0 ? l(0) : null;
        }
        return l10;
    }

    public final void o(int i10) {
        f97058b.set(this, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0028, code lost:
    
        if (((java.lang.Comparable) r3).compareTo(r4) < 0) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(int i10) {
        while (true) {
            int i11 = i10 * 2;
            int i12 = i11 + 1;
            if (i12 >= g()) {
                return;
            }
            T[] tArr = this.f97059a;
            kotlin.jvm.internal.M.m(tArr);
            int i13 = i11 + 2;
            if (i13 < g()) {
                T t10 = tArr[i13];
                kotlin.jvm.internal.M.m(t10);
                T t11 = tArr[i12];
                kotlin.jvm.internal.M.m(t11);
            }
            i13 = i12;
            T t12 = tArr[i10];
            kotlin.jvm.internal.M.m(t12);
            T t13 = tArr[i13];
            kotlin.jvm.internal.M.m(t13);
            if (((Comparable) t12).compareTo(t13) <= 0) {
                return;
            }
            r(i10, i13);
            i10 = i13;
        }
    }

    public final void q(int i10) {
        while (i10 > 0) {
            T[] tArr = this.f97059a;
            kotlin.jvm.internal.M.m(tArr);
            int i11 = (i10 - 1) / 2;
            T t10 = tArr[i11];
            kotlin.jvm.internal.M.m(t10);
            T t11 = tArr[i10];
            kotlin.jvm.internal.M.m(t11);
            if (((Comparable) t10).compareTo(t11) <= 0) {
                return;
            }
            r(i10, i11);
            i10 = i11;
        }
    }

    public final void r(int i10, int i11) {
        T[] tArr = this.f97059a;
        kotlin.jvm.internal.M.m(tArr);
        T t10 = tArr[i11];
        kotlin.jvm.internal.M.m(t10);
        T t11 = tArr[i10];
        kotlin.jvm.internal.M.m(t11);
        tArr[i10] = t10;
        tArr[i11] = t11;
        t10.a(i10);
        t11.a(i11);
    }
}
