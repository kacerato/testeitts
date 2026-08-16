package jg;

import android.net.wifi.WifiManager;
import eg.K0;
import eg.N0;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kg.AbstractC13979a;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,428:1\n18#2:429\n18#2:443\n28#3,4:430\n28#3,4:437\n20#4:434\n20#4:441\n13579#5,2:435\n329#6:442\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n315#1:429\n396#1:443\n324#1:430,4\n352#1:437,4\n324#1:434\n352#1:441\n348#1:435,2\n385#1:442\n*E\n"})
public final class V<T> extends AbstractC13979a<X> implements E<T>, InterfaceC13836c<T>, kg.p<T> {

    @NotNull
    public static final AtomicReferenceFieldUpdater f93264g = AtomicReferenceFieldUpdater.newUpdater(V.class, Object.class, "_state");

    @Lf.x
    @Nullable
    private volatile Object _state;

    public int f93265f;

    @Bf.f(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {384, 396, 401}, m = "collect", n = {"this", "collector", "slot", "this", "collector", "slot", "collectorJob", WifiManager.EXTRA_NEW_STATE, "this", "collector", "slot", "collectorJob", "oldState"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4"})
    public static final class a extends Bf.d {

        public Object f93266b;

        public Object f93267c;

        public Object f93268d;

        public Object f93269e;

        public Object f93270f;

        public Object f93271g;

        public final V<T> f93272h;

        public int f93273i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(V<T> v10, yf.f<? super a> fVar) {
            super(fVar);
            this.f93272h = v10;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93271g = obj;
            this.f93273i |= Integer.MIN_VALUE;
            return this.f93272h.a(null, this);
        }
    }

    public V(@NotNull Object obj) {
        this._state = obj;
    }

    public static void p() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00bc, code lost:
    
        if (kotlin.jvm.internal.M.g(r11, r12) == false) goto L42;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b3 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:13:0x003e, B:14:0x00ab, B:16:0x00b3, B:18:0x00b8, B:20:0x00d9, B:22:0x00df, B:26:0x00be, B:29:0x00c5, B:38:0x0060, B:40:0x0073, B:41:0x009c), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b8 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:13:0x003e, B:14:0x00ab, B:16:0x00b3, B:18:0x00b8, B:20:0x00d9, B:22:0x00df, B:26:0x00be, B:29:0x00c5, B:38:0x0060, B:40:0x0073, B:41:0x009c), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00df A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #0 {all -> 0x0043, blocks: (B:13:0x003e, B:14:0x00ab, B:16:0x00b3, B:18:0x00b8, B:20:0x00d9, B:22:0x00df, B:26:0x00be, B:29:0x00c5, B:38:0x0060, B:40:0x0073, B:41:0x009c), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v2, types: [kg.c] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00dd -> B:14:0x00ab). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00ef -> B:14:0x00ab). Please report as a decompilation issue!!! */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<?> fVar) {
        a aVar;
        Object l10;
        int i10;
        V<T> v10;
        X x10;
        InterfaceC13843j interfaceC13843j2;
        K0 k02;
        Object obj;
        X x11;
        boolean i11;
        T t10;
        try {
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i12 = aVar.f93273i;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    aVar.f93273i = i12 - Integer.MIN_VALUE;
                    Object obj2 = aVar.f93271g;
                    l10 = Af.d.l();
                    i10 = aVar.f93273i;
                    ?? r62 = 1;
                    if (i10 != 0) {
                        C14418j0.n(obj2);
                        X f10 = f();
                        try {
                            if (interfaceC13843j instanceof Y) {
                                aVar.f93266b = this;
                                aVar.f93267c = interfaceC13843j;
                                aVar.f93268d = f10;
                                aVar.f93273i = 1;
                                if (((Y) interfaceC13843j).a(aVar) == l10) {
                                    return l10;
                                }
                            }
                            v10 = this;
                            x10 = f10;
                        } catch (Throwable th2) {
                            th = th2;
                            v10 = this;
                            r62 = f10;
                            v10.k(r62);
                            throw th;
                        }
                    } else if (i10 == 1) {
                        X x12 = (X) aVar.f93268d;
                        interfaceC13843j = (InterfaceC13843j) aVar.f93267c;
                        v10 = (V) aVar.f93266b;
                        C14418j0.n(obj2);
                        x10 = x12;
                    } else if (i10 == 2) {
                        obj = aVar.f93270f;
                        k02 = (K0) aVar.f93269e;
                        X x13 = (X) aVar.f93268d;
                        interfaceC13843j2 = (InterfaceC13843j) aVar.f93267c;
                        v10 = (V) aVar.f93266b;
                        C14418j0.n(obj2);
                        x11 = x13;
                        i11 = x11.i();
                        r62 = x11;
                        if (!i11) {
                        }
                        ?? r12 = f93264g.get(v10);
                        if (k02 != null) {
                        }
                        if (obj != null) {
                        }
                        if (r12 == kg.s.f95204a) {
                        }
                        aVar.f93266b = v10;
                        aVar.f93267c = interfaceC13843j2;
                        aVar.f93268d = r62;
                        aVar.f93269e = k02;
                        aVar.f93270f = r12;
                        aVar.f93273i = 2;
                        if (interfaceC13843j2.emit(t10, aVar) == l10) {
                        }
                    } else {
                        if (i10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        obj = aVar.f93270f;
                        k02 = (K0) aVar.f93269e;
                        X x14 = (X) aVar.f93268d;
                        interfaceC13843j2 = (InterfaceC13843j) aVar.f93267c;
                        v10 = (V) aVar.f93266b;
                        C14418j0.n(obj2);
                        r62 = x14;
                        ?? r122 = f93264g.get(v10);
                        if (k02 != null) {
                            N0.z(k02);
                        }
                        if (obj != null) {
                            x11 = r62;
                        }
                        t10 = r122 == kg.s.f95204a ? null : r122;
                        aVar.f93266b = v10;
                        aVar.f93267c = interfaceC13843j2;
                        aVar.f93268d = r62;
                        aVar.f93269e = k02;
                        aVar.f93270f = r122;
                        aVar.f93273i = 2;
                        if (interfaceC13843j2.emit(t10, aVar) == l10) {
                            return l10;
                        }
                        obj = r122;
                        x11 = r62;
                        i11 = x11.i();
                        r62 = x11;
                        if (!i11) {
                            aVar.f93266b = v10;
                            aVar.f93267c = interfaceC13843j2;
                            aVar.f93268d = x11;
                            aVar.f93269e = k02;
                            aVar.f93270f = obj;
                            aVar.f93273i = 3;
                            Object e10 = x11.e(aVar);
                            r62 = x11;
                            if (e10 == l10) {
                                return l10;
                            }
                        }
                        ?? r1222 = f93264g.get(v10);
                        if (k02 != null) {
                        }
                        if (obj != null) {
                        }
                        if (r1222 == kg.s.f95204a) {
                        }
                        aVar.f93266b = v10;
                        aVar.f93267c = interfaceC13843j2;
                        aVar.f93268d = r62;
                        aVar.f93269e = k02;
                        aVar.f93270f = r1222;
                        aVar.f93273i = 2;
                        if (interfaceC13843j2.emit(t10, aVar) == l10) {
                        }
                    }
                    interfaceC13843j2 = interfaceC13843j;
                    k02 = (K0) aVar.getContext().get(K0.f85619y4);
                    obj = null;
                    r62 = x10;
                    ?? r12222 = f93264g.get(v10);
                    if (k02 != null) {
                    }
                    if (obj != null) {
                    }
                    if (r12222 == kg.s.f95204a) {
                    }
                    aVar.f93266b = v10;
                    aVar.f93267c = interfaceC13843j2;
                    aVar.f93268d = r62;
                    aVar.f93269e = k02;
                    aVar.f93270f = r12222;
                    aVar.f93273i = 2;
                    if (interfaceC13843j2.emit(t10, aVar) == l10) {
                    }
                }
            }
            if (i10 != 0) {
            }
            interfaceC13843j2 = interfaceC13843j;
            k02 = (K0) aVar.getContext().get(K0.f85619y4);
            obj = null;
            r62 = x10;
            ?? r122222 = f93264g.get(v10);
            if (k02 != null) {
            }
            if (obj != null) {
            }
            if (r122222 == kg.s.f95204a) {
            }
            aVar.f93266b = v10;
            aVar.f93267c = interfaceC13843j2;
            aVar.f93268d = r62;
            aVar.f93269e = k02;
            aVar.f93270f = r122222;
            aVar.f93273i = 2;
            if (interfaceC13843j2.emit(t10, aVar) == l10) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
        aVar = new a(this, fVar);
        Object obj22 = aVar.f93271g;
        l10 = Af.d.l();
        i10 = aVar.f93273i;
        ?? r622 = 1;
    }

    @Override
    @NotNull
    public List<T> b() {
        return pf.G.l(getValue());
    }

    @Override
    @NotNull
    public InterfaceC13842i<T> c(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return W.d(this, jVar, i10, iVar);
    }

    @Override
    public boolean compareAndSet(T t10, T t11) {
        if (t10 == null) {
            t10 = (T) kg.s.f95204a;
        }
        if (t11 == null) {
            t11 = (T) kg.s.f95204a;
        }
        return q(t10, t11);
    }

    @Override
    @Nullable
    public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
        setValue(t10);
        return P0.f98194a;
    }

    @Override
    public T getValue() {
        mg.T t10 = kg.s.f95204a;
        T t11 = (T) f93264g.get(this);
        if (t11 == t10) {
            return null;
        }
        return t11;
    }

    @Override
    public void h() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override
    @NotNull
    public X g() {
        return new X();
    }

    @Override
    @NotNull
    public X[] i(int i10) {
        return new X[i10];
    }

    public final boolean q(Object obj, Object obj2) {
        int i10;
        X[] m10;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93264g;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !kotlin.jvm.internal.M.g(obj3, obj)) {
                return false;
            }
            if (kotlin.jvm.internal.M.g(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i11 = this.f93265f;
            if ((i11 & 1) != 0) {
                this.f93265f = i11 + 2;
                return true;
            }
            int i12 = i11 + 1;
            this.f93265f = i12;
            X[] m11 = m();
            P0 p02 = P0.f98194a;
            while (true) {
                X[] xArr = m11;
                if (xArr != null) {
                    for (X x10 : xArr) {
                        if (x10 != null) {
                            x10.h();
                        }
                    }
                }
                synchronized (this) {
                    i10 = this.f93265f;
                    if (i10 == i12) {
                        this.f93265f = i12 + 1;
                        return true;
                    }
                    m10 = m();
                    P0 p03 = P0.f98194a;
                }
                m11 = m10;
                i12 = i10;
            }
        }
    }

    @Override
    public void setValue(T t10) {
        if (t10 == null) {
            t10 = (T) kg.s.f95204a;
        }
        q(null, t10);
    }

    @Override
    public boolean w(T t10) {
        setValue(t10);
        return true;
    }
}
