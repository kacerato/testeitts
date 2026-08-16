package ig;

import Lf.x;
import Mf.p;
import Nf.g;
import Vf.u;
import com.google.common.util.concurrent.C0;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14977i;
import pf.AbstractC14978j;

@t0({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n1#2:285\n*E\n"})
public final class C13732b<K, V> extends AbstractC14977i<K, V> {

    @NotNull
    public static final AtomicIntegerFieldUpdater f92188c = AtomicIntegerFieldUpdater.newUpdater(C13732b.class, "_size");

    @NotNull
    public static final AtomicReferenceFieldUpdater f92189d = AtomicReferenceFieldUpdater.newUpdater(C13732b.class, Object.class, "core");

    @x
    private volatile int _size;

    @Nullable
    public final ReferenceQueue<K> f92190b;

    @x
    @Nullable
    private volatile Object core;

    public final class a {

        @NotNull
        public static final AtomicIntegerFieldUpdater f92191g = AtomicIntegerFieldUpdater.newUpdater(a.class, "load");

        public final int f92192a;

        public final int f92193b;

        public final int f92194c;

        @NotNull
        public final AtomicReferenceArray f92195d;

        @NotNull
        public final AtomicReferenceArray f92196e;

        @x
        private volatile int load;

        @t0({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n1#2:285\n*E\n"})
        public final class C1777a<E> implements Iterator<E>, Nf.d {

            @NotNull
            public final p<K, V, E> f92198b;

            public int f92199c = -1;

            public K f92200d;

            public V f92201e;

            /* JADX WARN: Multi-variable type inference failed */
            public C1777a(@NotNull p<? super K, ? super V, ? extends E> pVar) {
                this.f92198b = pVar;
                a();
            }

            private final void a() {
                K k10;
                while (true) {
                    int i10 = this.f92199c + 1;
                    this.f92199c = i10;
                    if (i10 >= a.this.f92192a) {
                        return;
                    }
                    k kVar = (k) a.this.f92195d.get(this.f92199c);
                    if (kVar != null && (k10 = (K) kVar.get()) != null) {
                        this.f92200d = k10;
                        Object obj = (V) a.this.f92196e.get(this.f92199c);
                        if (obj instanceof l) {
                            obj = (V) ((l) obj).f92267a;
                        }
                        if (obj != null) {
                            this.f92201e = (V) obj;
                            return;
                        }
                    }
                }
            }

            @Override
            @NotNull
            public Void remove() {
                C13733c.c();
                throw new KotlinNothingValueException();
            }

            @Override
            public boolean hasNext() {
                return this.f92199c < a.this.f92192a;
            }

            @Override
            public E next() {
                if (this.f92199c >= a.this.f92192a) {
                    throw new NoSuchElementException();
                }
                p<K, V, E> pVar = this.f92198b;
                K k10 = this.f92200d;
                if (k10 == false) {
                    M.S("key");
                    k10 = (K) P0.f98194a;
                }
                V v10 = this.f92201e;
                if (v10 == false) {
                    M.S("value");
                    v10 = (V) P0.f98194a;
                }
                E e10 = (E) pVar.invoke(k10, v10);
                a();
                return e10;
            }
        }

        public a(int i10) {
            this.f92192a = i10;
            this.f92193b = Integer.numberOfLeadingZeros(i10) + 1;
            this.f92194c = (i10 * 2) / 3;
            this.f92195d = new AtomicReferenceArray(i10);
            this.f92196e = new AtomicReferenceArray(i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Object i(a aVar, Object obj, Object obj2, k kVar, int i10, Object obj3) {
            if ((i10 & 4) != 0) {
                kVar = null;
            }
            return aVar.h(obj, obj2, kVar);
        }

        public final void d(@NotNull k<?> kVar) {
            int f10 = f(kVar.f92266a);
            while (true) {
                k<?> kVar2 = (k) this.f92195d.get(f10);
                if (kVar2 == null) {
                    return;
                }
                if (kVar2 == kVar) {
                    k(f10);
                    return;
                } else {
                    if (f10 == 0) {
                        f10 = this.f92192a;
                    }
                    f10--;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public final V e(@NotNull K k10) {
            int f10 = f(k10.hashCode());
            while (true) {
                k kVar = (k) this.f92195d.get(f10);
                if (kVar == null) {
                    return null;
                }
                T t10 = kVar.get();
                if (M.g(k10, t10)) {
                    V v10 = (V) this.f92196e.get(f10);
                    return v10 instanceof l ? (V) ((l) v10).f92267a : v10;
                }
                if (t10 == 0) {
                    k(f10);
                }
                if (f10 == 0) {
                    f10 = this.f92192a;
                }
                f10--;
            }
        }

        public final int f(int i10) {
            return (i10 * (-1640531527)) >>> this.f92193b;
        }

        @NotNull
        public final <E> Iterator<E> g(@NotNull p<? super K, ? super V, ? extends E> pVar) {
            return new C1777a(pVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        
            r6 = r5.f92196e.get(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
        
            if ((r6 instanceof ig.l) == false) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
        
            if (com.google.common.util.concurrent.C0.a(r5.f92196e, r0, r6, r7) == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
        
            return r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
        
            return ig.C13733c.a();
         */
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object h(@NotNull K k10, @Nullable V v10, @Nullable k<K> kVar) {
            int i10;
            int f10 = f(k10.hashCode());
            boolean z10 = false;
            while (true) {
                k kVar2 = (k) this.f92195d.get(f10);
                if (kVar2 != null) {
                    T t10 = kVar2.get();
                    if (!M.g(k10, t10)) {
                        if (t10 == 0) {
                            k(f10);
                        }
                        if (f10 == 0) {
                            f10 = this.f92192a;
                        }
                        f10--;
                    } else if (z10) {
                        f92191g.decrementAndGet(this);
                    }
                } else if (v10 != null) {
                    if (!z10) {
                        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f92191g;
                        do {
                            i10 = atomicIntegerFieldUpdater.get(this);
                            if (i10 >= this.f92194c) {
                                return C13733c.a();
                            }
                        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, i10 + 1));
                        z10 = true;
                    }
                    if (kVar == null) {
                        kVar = new k<>(k10, C13732b.this.f92190b);
                    }
                    if (C0.a(this.f92195d, f10, null, kVar)) {
                        break;
                    }
                } else {
                    return null;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final C13732b<K, V>.a j() {
            int i10;
            Object obj;
            while (true) {
                C13732b<K, V>.a aVar = (C13732b<K, V>.a) new a(Integer.highestOneBit(u.w(C13732b.this.size(), 4)) * 4);
                int i11 = this.f92192a;
                while (i10 < i11) {
                    k kVar = (k) this.f92195d.get(i10);
                    Object obj2 = kVar != null ? kVar.get() : null;
                    if (kVar != null && obj2 == null) {
                        k(i10);
                    }
                    while (true) {
                        obj = this.f92196e.get(i10);
                        if (obj instanceof l) {
                            obj = ((l) obj).f92267a;
                            break;
                        }
                        if (C0.a(this.f92196e, i10, obj, C13733c.b(obj))) {
                            break;
                        }
                    }
                    i10 = (obj2 == null || obj == null || aVar.h(obj2, obj, kVar) != C13733c.a()) ? i10 + 1 : 0;
                }
                return aVar;
            }
        }

        public final void k(int i10) {
            Object obj;
            do {
                obj = this.f92196e.get(i10);
                if (obj == null || (obj instanceof l)) {
                    return;
                }
            } while (!C0.a(this.f92196e, i10, obj, null));
            C13732b.this.p();
        }

        public final void l(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Mf.l<? super Integer, Integer> lVar, Object obj) {
            int i10;
            do {
                i10 = atomicIntegerFieldUpdater.get(obj);
            } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i10, lVar.invoke(Integer.valueOf(i10)).intValue()));
        }
    }

    public static final class C1778b<K, V> implements Map.Entry<K, V>, g.a {

        public final K f92203b;

        public final V f92204c;

        public C1778b(K k10, V v10) {
            this.f92203b = k10;
            this.f92204c = v10;
        }

        @Override
        public K getKey() {
            return this.f92203b;
        }

        @Override
        public V getValue() {
            return this.f92204c;
        }

        @Override
        public V setValue(V v10) {
            C13733c.c();
            throw new KotlinNothingValueException();
        }
    }

    public final class c<E> extends AbstractC14978j<E> {

        @NotNull
        public final p<K, V, E> f92205b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(@NotNull p<? super K, ? super V, ? extends E> pVar) {
            this.f92205b = pVar;
        }

        @Override
        public int a() {
            return C13732b.this.size();
        }

        @Override
        public boolean add(E e10) {
            C13733c.c();
            throw new KotlinNothingValueException();
        }

        @Override
        @NotNull
        public Iterator<E> iterator() {
            return ((a) C13732b.f92189d.get(C13732b.this)).g(this.f92205b);
        }
    }

    public static final class d extends O implements p<K, V, Map.Entry<K, V>> {

        public static final d f92207b = new d();

        public d() {
            super(2);
        }

        @Override
        @NotNull
        public final Map.Entry<K, V> invoke(@NotNull K k10, @NotNull V v10) {
            return new C1778b(k10, v10);
        }
    }

    public static final class e extends O implements p<K, V, K> {

        public static final e f92208b = new e();

        public e() {
            super(2);
        }

        @Override
        @NotNull
        public final K invoke(@NotNull K k10, @NotNull V v10) {
            return k10;
        }
    }

    public C13732b() {
        this(false, 1, null);
    }

    @Override
    public void clear() {
        Iterator<K> it = o().iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    @Override
    @NotNull
    public Set<Map.Entry<K, V>> e() {
        return new c(d.f92207b);
    }

    @Override
    @Nullable
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return (V) ((a) f92189d.get(this)).e(obj);
    }

    @Override
    @NotNull
    public Set<K> i() {
        return new c(e.f92208b);
    }

    @Override
    public int j() {
        return f92188c.get(this);
    }

    public final void o(k<?> kVar) {
        ((a) f92189d.get(this)).d(kVar);
    }

    public final void p() {
        f92188c.decrementAndGet(this);
    }

    @Override
    @Nullable
    public V put(@NotNull K k10, @NotNull V v10) {
        V v11 = (V) a.i((a) f92189d.get(this), k10, v10, null, 4, null);
        if (v11 == C13733c.a()) {
            v11 = q(k10, v10);
        }
        if (v11 == null) {
            f92188c.incrementAndGet(this);
        }
        return v11;
    }

    public final synchronized V q(K k10, V v10) {
        V v11;
        a aVar = (a) f92189d.get(this);
        while (true) {
            v11 = (V) a.i(aVar, k10, v10, null, 4, null);
            if (v11 == C13733c.a()) {
                aVar = aVar.j();
                f92189d.set(this, aVar);
            }
        }
        return v11;
    }

    public final void r() {
        if (this.f92190b == null) {
            throw new IllegalStateException("Must be created with weakRefQueue = true");
        }
        while (true) {
            try {
                Reference<? extends K> remove = this.f92190b.remove();
                M.n(remove, "null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
                o((k) remove);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Nullable
    public V remove(@Nullable Object obj) {
        if (obj == 0) {
            return null;
        }
        V v10 = (V) a.i((a) f92189d.get(this), obj, null, null, 4, null);
        if (v10 == C13733c.a()) {
            v10 = q(obj, null);
        }
        if (v10 != null) {
            f92188c.decrementAndGet(this);
        }
        return v10;
    }

    public C13732b(boolean z10, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? false : z10);
    }

    public C13732b(boolean z10) {
        this.core = new a(16);
        this.f92190b = z10 ? new ReferenceQueue<>() : null;
    }
}
