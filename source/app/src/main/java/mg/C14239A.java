package mg;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 2 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n299#2,3:309\n299#2,3:312\n299#2,3:315\n299#2,3:318\n299#2,3:321\n299#2,3:325\n299#2,3:328\n1#3:324\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n*L\n91#1:309,3\n92#1:312,3\n107#1:315,3\n167#1:318,3\n200#1:321,3\n231#1:325,3\n247#1:328,3\n*E\n"})
public final class C14239A<E> {

    public static final int f96994h = 8;

    public static final int f96995i = 30;

    public static final int f96996j = 1073741823;

    public static final int f96997k = 0;

    public static final long f96998l = 1073741823;

    public static final int f96999m = 30;

    public static final long f97000n = 1152921503533105152L;

    public static final int f97001o = 60;

    public static final long f97002p = 1152921504606846976L;

    public static final int f97003q = 61;

    public static final long f97004r = 2305843009213693952L;

    public static final int f97005s = 1024;

    public static final int f97007u = 0;

    public static final int f97008v = 1;

    public static final int f97009w = 2;

    @Lf.x
    @Nullable
    private volatile Object _next;

    @Lf.x
    private volatile long _state;

    public final int f97010a;

    public final boolean f97011b;

    public final int f97012c;

    @NotNull
    public final AtomicReferenceArray f97013d;

    @NotNull
    public static final a f96991e = new a(null);

    @NotNull
    public static final AtomicReferenceFieldUpdater f96992f = AtomicReferenceFieldUpdater.newUpdater(C14239A.class, Object.class, "_next");

    @NotNull
    public static final AtomicLongFieldUpdater f96993g = AtomicLongFieldUpdater.newUpdater(C14239A.class, "_state");

    @Lf.g
    @NotNull
    public static final T f97006t = new T("REMOVE_FROZEN");

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final int a(long j10) {
            return (j10 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j10, int i10) {
            return e(j10, C14239A.f96998l) | i10;
        }

        public final long c(long j10, int i10) {
            return e(j10, C14239A.f97000n) | (i10 << 30);
        }

        public final <T> T d(long j10, @NotNull Mf.p<? super Integer, ? super Integer, ? extends T> pVar) {
            return pVar.invoke(Integer.valueOf((int) (C14239A.f96998l & j10)), Integer.valueOf((int) ((j10 & C14239A.f97000n) >> 30)));
        }

        public final long e(long j10, long j11) {
            return j10 & (~j11);
        }

        public a() {
        }
    }

    public static final class b {

        @Lf.g
        public final int f97014a;

        public b(int i10) {
            this.f97014a = i10;
        }
    }

    public C14239A(int i10, boolean z10) {
        this.f97010a = i10;
        this.f97011b = z10;
        int i11 = i10 - 1;
        this.f97012c = i11;
        this.f97013d = new AtomicReferenceArray(i10);
        if (i11 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i10 & i11) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004e, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(@NotNull E e10) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f96993g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j10) != 0) {
                return f96991e.a(j10);
            }
            int i10 = (int) (f96998l & j10);
            int i11 = (int) ((f97000n & j10) >> 30);
            int i12 = this.f97012c;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            if (!this.f97011b && this.f97013d.get(i11 & i12) != null) {
                int i13 = this.f97010a;
                if (i13 < 1024 || ((i11 - i10) & 1073741823) > (i13 >> 1)) {
                    break;
                }
            } else if (f96993g.compareAndSet(this, j10, f96991e.c(j10, (i11 + 1) & 1073741823))) {
                this.f97013d.set(i11 & i12, e10);
                C14239A<E> c14239a = this;
                while ((f96993g.get(c14239a) & 1152921504606846976L) != 0 && (c14239a = c14239a.m().e(i11, e10)) != null) {
                }
                return 0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C14239A<E> b(long j10) {
        C14239A<E> c14239a = new C14239A<>(this.f97010a * 2, this.f97011b);
        int i10 = (int) (f96998l & j10);
        int i11 = (int) ((f97000n & j10) >> 30);
        while (true) {
            int i12 = this.f97012c;
            if ((i10 & i12) == (i11 & i12)) {
                f96993g.set(c14239a, f96991e.e(j10, 1152921504606846976L));
                return c14239a;
            }
            Object obj = this.f97013d.get(i12 & i10);
            if (obj == null) {
                obj = new b(i10);
            }
            c14239a.f97013d.set(c14239a.f97012c & i10, obj);
            i10++;
        }
    }

    public final C14239A<E> c(long j10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f96992f;
        while (true) {
            C14239A<E> c14239a = (C14239A) atomicReferenceFieldUpdater.get(this);
            if (c14239a != null) {
                return c14239a;
            }
            androidx.concurrent.futures.a.a(f96992f, this, null, b(j10));
        }
    }

    public final boolean d() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f96993g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j10) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j10 | 2305843009213693952L));
        return true;
    }

    public final C14239A<E> e(int i10, E e10) {
        Object obj = this.f97013d.get(this.f97012c & i10);
        if (!(obj instanceof b) || ((b) obj).f97014a != i10) {
            return null;
        }
        this.f97013d.set(i10 & this.f97012c, e10);
        return this;
    }

    public final int f() {
        long j10 = f96993g.get(this);
        return (((int) ((j10 & f97000n) >> 30)) - ((int) (f96998l & j10))) & 1073741823;
    }

    public final boolean g() {
        return (f96993g.get(this) & 2305843009213693952L) != 0;
    }

    public final boolean h() {
        long j10 = f96993g.get(this);
        return ((int) (f96998l & j10)) == ((int) ((j10 & f97000n) >> 30));
    }

    public final void i(AtomicLongFieldUpdater atomicLongFieldUpdater, Mf.l<? super Long, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    public final void j(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @NotNull
    public final <R> List<R> k(@NotNull Mf.l<? super E, ? extends R> lVar) {
        ArrayList arrayList = new ArrayList(this.f97010a);
        long j10 = f96993g.get(this);
        int i10 = (int) (f96998l & j10);
        int i11 = (int) ((j10 & f97000n) >> 30);
        while (true) {
            int i12 = this.f97012c;
            if ((i10 & i12) == (i11 & i12)) {
                return arrayList;
            }
            A.c cVar = (Object) this.f97013d.get(i12 & i10);
            if (cVar != null && !(cVar instanceof b)) {
                arrayList.add(lVar.invoke(cVar));
            }
            i10++;
        }
    }

    public final long l() {
        long j10;
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f96993g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 1152921504606846976L) != 0) {
                return j10;
            }
            j11 = j10 | 1152921504606846976L;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j11));
        return j11;
    }

    @NotNull
    public final C14239A<E> m() {
        return c(l());
    }

    @Nullable
    public final Object n() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f96993g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j10) != 0) {
                return f97006t;
            }
            int i10 = (int) (f96998l & j10);
            int i11 = (int) ((f97000n & j10) >> 30);
            int i12 = this.f97012c;
            if ((i11 & i12) == (i10 & i12)) {
                return null;
            }
            Object obj = this.f97013d.get(i12 & i10);
            if (obj == null) {
                if (this.f97011b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i13 = (i10 + 1) & 1073741823;
                if (f96993g.compareAndSet(this, j10, f96991e.b(j10, i13))) {
                    this.f97013d.set(this.f97012c & i10, null);
                    return obj;
                }
                if (this.f97011b) {
                    C14239A<E> c14239a = this;
                    do {
                        c14239a = c14239a.o(i10, i13);
                    } while (c14239a != null);
                    return obj;
                }
            }
        }
    }

    public final C14239A<E> o(int i10, int i11) {
        long j10;
        int i12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f96993g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            i12 = (int) (f96998l & j10);
            if ((1152921504606846976L & j10) != 0) {
                return m();
            }
        } while (!f96993g.compareAndSet(this, j10, f96991e.b(j10, i11)));
        this.f97013d.set(this.f97012c & i12, null);
        return null;
    }

    public final void p(AtomicLongFieldUpdater atomicLongFieldUpdater, Mf.l<? super Long, Long> lVar, Object obj) {
        long j10;
        do {
            j10 = atomicLongFieldUpdater.get(obj);
        } while (!atomicLongFieldUpdater.compareAndSet(obj, j10, lVar.invoke(Long.valueOf(j10)).longValue()));
    }

    public final long q(AtomicLongFieldUpdater atomicLongFieldUpdater, Mf.l<? super Long, Long> lVar, Object obj) {
        long j10;
        Long invoke;
        do {
            j10 = atomicLongFieldUpdater.get(obj);
            invoke = lVar.invoke(Long.valueOf(j10));
        } while (!atomicLongFieldUpdater.compareAndSet(obj, j10, invoke.longValue()));
        return invoke.longValue();
    }
}
