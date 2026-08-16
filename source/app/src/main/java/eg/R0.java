package eg;

import Xf.AbstractC3314o;
import Xf.C3316q;
import Xf.InterfaceC3312m;
import androidx.exifinterface.media.ExifInterface;
import eg.K0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.m0;
import kotlinx.coroutines.CompletionHandlerException;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import mg.C14261w;
import mg.C14262x;
import mg.C14263y;
import nf.C14418j0;
import nf.C14436t;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.C14999f;
import pg.InterfaceC14998e;
import yf.j;

@kotlin.jvm.internal.t0({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 9 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 10 CompletionHandler.common.kt\nkotlinx/coroutines/CompletionHandler_commonKt\n+ 11 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 12 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 13 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1454:1\n706#1,2:1461\n367#1,2:1471\n369#1,4:1476\n373#1,4:1482\n377#1,2:1489\n367#1,2:1491\n369#1,4:1496\n373#1,4:1502\n377#1,2:1509\n178#1,2:1518\n707#1:1520\n178#1,2:1521\n178#1,2:1540\n178#1,2:1555\n706#1,2:1557\n706#1,2:1559\n178#1,2:1561\n706#1,2:1563\n178#1,2:1565\n178#1,2:1572\n178#1,2:1574\n1#2:1455\n1#2:1480\n1#2:1500\n28#3,4:1456\n28#3,4:1523\n28#3,4:1567\n28#3,4:1576\n20#4:1460\n20#4:1527\n20#4:1571\n20#4:1580\n288#5,2:1463\n288#5,2:1465\n19#6:1467\n163#7:1468\n163#7:1469\n153#7,4:1583\n75#8:1470\n75#8:1481\n75#8:1501\n75#8:1514\n341#9,3:1473\n344#9,3:1486\n341#9,3:1493\n344#9,3:1506\n341#9,3:1511\n344#9,3:1515\n47#10:1528\n22#11:1529\n22#11:1530\n13#11:1551\n13#11:1554\n13#11:1581\n13#11:1582\n13#11:1587\n13#11:1588\n134#12:1531\n73#12,3:1532\n135#12,5:1535\n314#13,9:1542\n323#13,2:1552\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n250#1:1461,2\n332#1:1471,2\n332#1:1476,4\n332#1:1482,4\n332#1:1489,2\n364#1:1491,2\n364#1:1496,4\n364#1:1502,4\n364#1:1509,2\n381#1:1518,2\n426#1:1520\n461#1:1521,2\n553#1:1540,2\n594#1:1555,2\n621#1:1557,2\n630#1:1559,2\n694#1:1561,2\n723#1:1563,2\n736#1:1565,2\n809#1:1572,2\n831#1:1574,2\n332#1:1480\n364#1:1500\n213#1:1456,4\n478#1:1523,4\n739#1:1567,4\n884#1:1576,4\n213#1:1460\n478#1:1527\n739#1:1571\n884#1:1580\n261#1:1463,2\n265#1:1465,2\n273#1:1467\n279#1:1468\n281#1:1469\n1218#1:1583,4\n284#1:1470\n332#1:1481\n364#1:1501\n372#1:1514\n332#1:1473,3\n332#1:1486,3\n364#1:1493,3\n364#1:1506,3\n368#1:1511,3\n368#1:1515,3\n483#1:1528\n495#1:1529\n505#1:1530\n561#1:1551\n577#1:1554\n924#1:1581\n974#1:1582\n1237#1:1587\n1259#1:1588\n526#1:1531\n526#1:1532,3\n526#1:1535,5\n559#1:1542,9\n559#1:1552,2\n*E\n"})
@InterfaceC14427o(level = EnumC14431q.ERROR, message = "This is internal API and may be removed in the future releases")
public class R0 implements K0, InterfaceC13148x, b1 {

    @NotNull
    public static final AtomicReferenceFieldUpdater f85636b = AtomicReferenceFieldUpdater.newUpdater(R0.class, Object.class, "_state");

    @NotNull
    public static final AtomicReferenceFieldUpdater f85637c = AtomicReferenceFieldUpdater.newUpdater(R0.class, Object.class, "_parentHandle");

    @Lf.x
    @Nullable
    private volatile Object _parentHandle;

    @Lf.x
    @Nullable
    private volatile Object _state;

    @kotlin.jvm.internal.t0({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"})
    public static final class a<T> extends C13135q<T> {

        @NotNull
        public final R0 f85638j;

        public a(@NotNull yf.f<? super T> fVar, @NotNull R0 r02) {
            super(fVar, 1);
            this.f85638j = r02;
        }

        @Override
        @NotNull
        public String Q() {
            return "AwaitContinuation";
        }

        @Override
        @NotNull
        public Throwable z(@NotNull K0 k02) {
            Throwable e10;
            Object J02 = this.f85638j.J0();
            return (!(J02 instanceof c) || (e10 = ((c) J02).e()) == null) ? J02 instanceof C13091D ? ((C13091D) J02).f85604a : k02.Q() : e10;
        }
    }

    public static final class b extends Q0 {

        @NotNull
        public final R0 f85639f;

        @NotNull
        public final c f85640g;

        @NotNull
        public final C13146w f85641h;

        @Nullable
        public final Object f85642i;

        public b(@NotNull R0 r02, @NotNull c cVar, @NotNull C13146w c13146w, @Nullable Object obj) {
            this.f85639f = r02;
            this.f85640g = cVar;
            this.f85641h = c13146w;
            this.f85642i = obj;
        }

        @Override
        public void Y(@Nullable Throwable th2) {
            this.f85639f.r0(this.f85640g, this.f85641h, this.f85642i);
        }

        @Override
        public nf.P0 invoke(Throwable th2) {
            Y(th2);
            return nf.P0.f98194a;
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$Finishing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"})
    public static final class c implements D0 {

        @NotNull
        public static final AtomicIntegerFieldUpdater f85643c = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isCompleting");

        @NotNull
        public static final AtomicReferenceFieldUpdater f85644d = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_rootCause");

        @NotNull
        public static final AtomicReferenceFieldUpdater f85645e = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_exceptionsHolder");

        @Lf.x
        @Nullable
        private volatile Object _exceptionsHolder;

        @Lf.x
        private volatile int _isCompleting;

        @Lf.x
        @Nullable
        private volatile Object _rootCause;

        @NotNull
        public final W0 f85646b;

        public c(@NotNull W0 w02, boolean z10, @Nullable Throwable th2) {
            this.f85646b = w02;
            this._isCompleting = z10 ? 1 : 0;
            this._rootCause = th2;
        }

        public final void a(@NotNull Throwable th2) {
            Throwable e10 = e();
            if (e10 == null) {
                l(th2);
                return;
            }
            if (th2 == e10) {
                return;
            }
            Object c10 = c();
            if (c10 == null) {
                k(th2);
                return;
            }
            if (c10 instanceof Throwable) {
                if (th2 == c10) {
                    return;
                }
                ArrayList<Throwable> b10 = b();
                b10.add(c10);
                b10.add(th2);
                k(b10);
                return;
            }
            if (c10 instanceof ArrayList) {
                ((ArrayList) c10).add(th2);
                return;
            }
            throw new IllegalStateException(("State is " + c10).toString());
        }

        public final ArrayList<Throwable> b() {
            return new ArrayList<>(4);
        }

        public final Object c() {
            return f85645e.get(this);
        }

        @Override
        @NotNull
        public W0 d() {
            return this.f85646b;
        }

        @Nullable
        public final Throwable e() {
            return (Throwable) f85644d.get(this);
        }

        public final boolean f() {
            return e() != null;
        }

        public final boolean g() {
            return f85643c.get(this) != 0;
        }

        public final boolean h() {
            return c() == S0.e();
        }

        @NotNull
        public final List<Throwable> i(@Nullable Throwable th2) {
            ArrayList<Throwable> arrayList;
            Object c10 = c();
            if (c10 == null) {
                arrayList = b();
            } else if (c10 instanceof Throwable) {
                ArrayList<Throwable> b10 = b();
                b10.add(c10);
                arrayList = b10;
            } else {
                if (!(c10 instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + c10).toString());
                }
                arrayList = (ArrayList) c10;
            }
            Throwable e10 = e();
            if (e10 != null) {
                arrayList.add(0, e10);
            }
            if (th2 != null && !kotlin.jvm.internal.M.g(th2, e10)) {
                arrayList.add(th2);
            }
            k(S0.e());
            return arrayList;
        }

        @Override
        public boolean isActive() {
            return e() == null;
        }

        public final void j(boolean z10) {
            f85643c.set(this, z10 ? 1 : 0);
        }

        public final void k(Object obj) {
            f85645e.set(this, obj);
        }

        public final void l(@Nullable Throwable th2) {
            f85644d.set(this, th2);
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + f() + ", completing=" + g() + ", rootCause=" + ((Object) e()) + ", exceptions=" + c() + ", list=" + ((Object) d()) + JavaElement.JEM_TYPE_PARAMETER;
        }
    }

    public final class d extends Q0 {

        @NotNull
        public final pg.m<?> f85647f;

        public d(@NotNull pg.m<?> mVar) {
            this.f85647f = mVar;
        }

        @Override
        public void Y(@Nullable Throwable th2) {
            Object J02 = R0.this.J0();
            if (!(J02 instanceof C13091D)) {
                J02 = S0.h(J02);
            }
            this.f85647f.x(R0.this, J02);
        }

        @Override
        public nf.P0 invoke(Throwable th2) {
            Y(th2);
            return nf.P0.f98194a;
        }
    }

    public final class e extends Q0 {

        @NotNull
        public final pg.m<?> f85649f;

        public e(@NotNull pg.m<?> mVar) {
            this.f85649f = mVar;
        }

        @Override
        public void Y(@Nullable Throwable th2) {
            this.f85649f.x(R0.this, nf.P0.f98194a);
        }

        @Override
        public nf.P0 invoke(Throwable th2) {
            Y(th2);
            return nf.P0.f98194a;
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,367:1\n526#2:368\n*E\n"})
    public static final class f extends C14263y.a {

        public final R0 f85651d;

        public final Object f85652e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(C14263y c14263y, R0 r02, Object obj) {
            super(c14263y);
            this.f85651d = r02;
            this.f85652e = obj;
        }

        @Override
        @Nullable
        public Object e(@NotNull C14263y c14263y) {
            if (this.f85651d.J0() == this.f85652e) {
                return null;
            }
            return C14262x.a();
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1454:1\n341#2,6:1455\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n958#1:1455,6\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", i = {1, 1, 1}, l = {956, 958}, m = "invokeSuspend", n = {"$this$sequence", "this_$iv", "cur$iv"}, s = {"L$0", "L$1", "L$2"})
    public static final class g extends Bf.l implements Mf.p<AbstractC3314o<? super K0>, yf.f<? super nf.P0>, Object> {

        public Object f85653b;

        public Object f85654c;

        public int f85655d;

        public Object f85656e;

        public g(yf.f<? super g> fVar) {
            super(2, fVar);
        }

        @Override
        @NotNull
        public final yf.f<nf.P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            g gVar = new g(fVar);
            gVar.f85656e = obj;
            return gVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull AbstractC3314o<? super K0> abstractC3314o, @Nullable yf.f<? super nf.P0> fVar) {
            return ((g) create(abstractC3314o, fVar)).invokeSuspend(nf.P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0069  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x006b -> B:6:0x0081). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x007e -> B:6:0x0081). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            W0 d10;
            AbstractC3314o abstractC3314o;
            C14261w c14261w;
            C14263y c14263y;
            Object l10 = Af.d.l();
            int i10 = this.f85655d;
            if (i10 == 0) {
                C14418j0.n(obj);
                AbstractC3314o abstractC3314o2 = (AbstractC3314o) this.f85656e;
                Object J02 = R0.this.J0();
                if (J02 instanceof C13146w) {
                    InterfaceC13148x interfaceC13148x = ((C13146w) J02).f85798f;
                    this.f85655d = 1;
                    if (abstractC3314o2.a(interfaceC13148x, this) == l10) {
                        return l10;
                    }
                } else if ((J02 instanceof D0) && (d10 = ((D0) J02).d()) != null) {
                    Object A10 = d10.A();
                    kotlin.jvm.internal.M.n(A10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                    C14263y c14263y2 = (C14263y) A10;
                    abstractC3314o = abstractC3314o2;
                    c14261w = d10;
                    c14263y = c14263y2;
                    if (!kotlin.jvm.internal.M.g(c14263y, c14261w)) {
                    }
                }
            } else if (i10 == 1) {
                C14418j0.n(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c14263y = (C14263y) this.f85654c;
                c14261w = (C14261w) this.f85653b;
                abstractC3314o = (AbstractC3314o) this.f85656e;
                C14418j0.n(obj);
                c14263y = c14263y.B();
                if (!kotlin.jvm.internal.M.g(c14263y, c14261w)) {
                    if (c14263y instanceof C13146w) {
                        InterfaceC13148x interfaceC13148x2 = ((C13146w) c14263y).f85798f;
                        this.f85656e = abstractC3314o;
                        this.f85653b = c14261w;
                        this.f85654c = c14263y;
                        this.f85655d = 2;
                        if (abstractC3314o.a(interfaceC13148x2, this) == l10) {
                            return l10;
                        }
                    }
                    c14263y = c14263y.B();
                    if (!kotlin.jvm.internal.M.g(c14263y, c14261w)) {
                    }
                }
            }
            return nf.P0.f98194a;
        }
    }

    public class h extends kotlin.jvm.internal.I implements Mf.q<R0, pg.m<?>, Object, nf.P0> {

        public static final h f85658b = new h();

        public h() {
            super(3, R0.class, "onAwaitInternalRegFunc", "onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull R0 r02, @NotNull pg.m<?> mVar, @Nullable Object obj) {
            r02.e1(mVar, obj);
        }

        @Override
        public nf.P0 n(R0 r02, pg.m<?> mVar, Object obj) {
            b(r02, mVar, obj);
            return nf.P0.f98194a;
        }
    }

    public class i extends kotlin.jvm.internal.I implements Mf.q<R0, Object, Object, Object> {

        public static final i f85659b = new i();

        public i() {
            super(3, R0.class, "onAwaitInternalProcessResFunc", "onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override
        @Nullable
        public final Object n(@NotNull R0 r02, @Nullable Object obj, @Nullable Object obj2) {
            return r02.d1(obj, obj2);
        }
    }

    public class j extends kotlin.jvm.internal.I implements Mf.q<R0, pg.m<?>, Object, nf.P0> {

        public static final j f85660b = new j();

        public j() {
            super(3, R0.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull R0 r02, @NotNull pg.m<?> mVar, @Nullable Object obj) {
            r02.k1(mVar, obj);
        }

        @Override
        public nf.P0 n(R0 r02, pg.m<?> mVar, Object obj) {
            b(r02, mVar, obj);
            return nf.P0.f98194a;
        }
    }

    public R0(boolean z10) {
        this._state = z10 ? S0.c() : S0.d();
    }

    public static void E0() {
    }

    public static void G0() {
    }

    private final void S0(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, nf.P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    public static CancellationException q1(R0 r02, Throwable th2, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        return r02.p1(th2, str);
    }

    public static JobCancellationException u0(R0 r02, String str, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        if (str == null) {
            str = r02.o0();
        }
        return new JobCancellationException(str, th2, r02);
    }

    public final Throwable A0(Object obj) {
        C13091D c13091d = obj instanceof C13091D ? (C13091D) obj : null;
        if (c13091d != null) {
            return c13091d.f85604a;
        }
        return null;
    }

    public final Throwable B0(c cVar, List<? extends Throwable> list) {
        Throwable th2;
        Throwable th3 = null;
        if (list.isEmpty()) {
            if (cVar.f()) {
                return new JobCancellationException(o0(), null, this);
            }
            return null;
        }
        List<? extends Throwable> list2 = list;
        Iterator<? extends Throwable> it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                th2 = null;
                break;
            }
            th2 = it.next();
            if (!(th2 instanceof CancellationException)) {
                break;
            }
        }
        Throwable th4 = th2;
        if (th4 != null) {
            return th4;
        }
        Throwable th5 = list.get(0);
        if (th5 instanceof TimeoutCancellationException) {
            Iterator<? extends Throwable> it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Throwable next = it2.next();
                Throwable th6 = next;
                if (th6 != th5 && (th6 instanceof TimeoutCancellationException)) {
                    th3 = next;
                    break;
                }
            }
            Throwable th7 = th3;
            if (th7 != null) {
                return th7;
            }
        }
        return th5;
    }

    public boolean C0() {
        return true;
    }

    @NotNull
    public final pg.g<?> D0() {
        h hVar = h.f85658b;
        kotlin.jvm.internal.M.n(hVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Mf.q qVar = (Mf.q) kotlin.jvm.internal.w0.q(hVar, 3);
        i iVar = i.f85659b;
        kotlin.jvm.internal.M.n(iVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new pg.h(this, qVar, (Mf.q) kotlin.jvm.internal.w0.q(iVar, 3), null, 8, null);
    }

    public boolean F0() {
        return false;
    }

    @Nullable
    public final Throwable G() {
        Object J02 = J0();
        if (J02 instanceof D0) {
            throw new IllegalStateException("This job has not completed yet");
        }
        return A0(J02);
    }

    public final W0 H0(D0 d02) {
        W0 d10 = d02.d();
        if (d10 != null) {
            return d10;
        }
        if (d02 instanceof C13134p0) {
            return new W0();
        }
        if (d02 instanceof Q0) {
            j1((Q0) d02);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + ((Object) d02)).toString());
    }

    @Nullable
    public final InterfaceC13144v I0() {
        return (InterfaceC13144v) f85637c.get(this);
    }

    @Nullable
    public final Object J0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85636b;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof mg.K)) {
                return obj;
            }
            ((mg.K) obj).b(this);
        }
    }

    public boolean K0(@NotNull Throwable th2) {
        return false;
    }

    public void L0(@NotNull Throwable th2) {
        throw th2;
    }

    public final void M0(@Nullable K0 k02) {
        if (k02 == null) {
            m1(Y0.f85696b);
            return;
        }
        k02.start();
        InterfaceC13144v f10 = k02.f(this);
        m1(f10);
        if (d()) {
            f10.dispose();
            m1(Y0.f85696b);
        }
    }

    @Override
    public final void N(@NotNull b1 b1Var) {
        k0(b1Var);
    }

    public final boolean N0(D0 d02) {
        return (d02 instanceof c) && ((c) d02).f();
    }

    public final boolean O0() {
        return J0() instanceof C13091D;
    }

    public boolean P0() {
        return false;
    }

    @Override
    @NotNull
    public final CancellationException Q() {
        Object J02 = J0();
        if (!(J02 instanceof c)) {
            if (J02 instanceof D0) {
                throw new IllegalStateException(("Job is still new or active: " + ((Object) this)).toString());
            }
            if (J02 instanceof C13091D) {
                return q1(this, ((C13091D) J02).f85604a, null, 1, null);
            }
            return new JobCancellationException(W.a(this) + " has completed normally", null, this);
        }
        Throwable e10 = ((c) J02).e();
        if (e10 != null) {
            CancellationException p12 = p1(e10, W.a(this) + " is cancelling");
            if (p12 != null) {
                return p12;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + ((Object) this)).toString());
    }

    public final boolean Q0() {
        Object J02;
        do {
            J02 = J0();
            if (!(J02 instanceof D0)) {
                return false;
            }
        } while (n1(J02) < 0);
        return true;
    }

    public final Object R0(yf.f<? super nf.P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        C13138s.a(c13135q, w(new d1(c13135q)));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : nf.P0.f98194a;
    }

    @Override
    @NotNull
    public final InterfaceC13128m0 S(boolean z10, boolean z11, @NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        Q0 X02 = X0(lVar, z10);
        while (true) {
            Object J02 = J0();
            if (J02 instanceof C13134p0) {
                C13134p0 c13134p0 = (C13134p0) J02;
                if (!c13134p0.isActive()) {
                    i1(c13134p0);
                } else if (androidx.concurrent.futures.a.a(f85636b, this, J02, X02)) {
                    return X02;
                }
            } else {
                if (!(J02 instanceof D0)) {
                    if (z11) {
                        C13091D c13091d = J02 instanceof C13091D ? (C13091D) J02 : null;
                        lVar.invoke(c13091d != null ? c13091d.f85604a : null);
                    }
                    return Y0.f85696b;
                }
                W0 d10 = ((D0) J02).d();
                if (d10 == null) {
                    kotlin.jvm.internal.M.n(J02, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    j1((Q0) J02);
                } else {
                    InterfaceC13128m0 interfaceC13128m0 = Y0.f85696b;
                    if (z10 && (J02 instanceof c)) {
                        synchronized (J02) {
                            try {
                                r3 = ((c) J02).e();
                                if (r3 != null) {
                                    if ((lVar instanceof C13146w) && !((c) J02).g()) {
                                    }
                                    nf.P0 p02 = nf.P0.f98194a;
                                }
                                if (e0(J02, d10, X02)) {
                                    if (r3 == null) {
                                        return X02;
                                    }
                                    interfaceC13128m0 = X02;
                                    nf.P0 p022 = nf.P0.f98194a;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                    if (r3 != null) {
                        if (z11) {
                            lVar.invoke(r3);
                        }
                        return interfaceC13128m0;
                    }
                    if (e0(J02, d10, X02)) {
                        return X02;
                    }
                }
            }
        }
    }

    public final Void T0(Mf.l<Object, nf.P0> lVar) {
        while (true) {
            lVar.invoke(J0());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object U0(Object obj) {
        Object[] objArr = 0;
        Throwable th2 = null;
        while (true) {
            Object J02 = J0();
            if (J02 instanceof c) {
                synchronized (J02) {
                    if (((c) J02).h()) {
                        return S0.f();
                    }
                    boolean f10 = ((c) J02).f();
                    if (obj != null || !f10) {
                        if (th2 == null) {
                            th2 = s0(obj);
                        }
                        ((c) J02).a(th2);
                    }
                    Throwable e10 = f10 ? null : ((c) J02).e();
                    if (e10 != null) {
                        a1(((c) J02).d(), e10);
                    }
                    return S0.a();
                }
            }
            if (!(J02 instanceof D0)) {
                return S0.f();
            }
            if (th2 == null) {
                th2 = s0(obj);
            }
            D0 d02 = (D0) J02;
            if (!d02.isActive()) {
                Object u12 = u1(J02, new C13091D(th2, false, 2, objArr == true ? 1 : 0));
                if (u12 == S0.a()) {
                    throw new IllegalStateException(("Cannot happen in " + J02).toString());
                }
                if (u12 != S0.b()) {
                    return u12;
                }
            } else if (t1(d02, th2)) {
                return S0.a();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override
    @NotNull
    public CancellationException V() {
        CancellationException cancellationException;
        Object J02 = J0();
        if (J02 instanceof c) {
            cancellationException = ((c) J02).e();
        } else if (J02 instanceof C13091D) {
            cancellationException = ((C13091D) J02).f85604a;
        } else {
            if (J02 instanceof D0) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + J02).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        if (cancellationException2 != null) {
            return cancellationException2;
        }
        return new JobCancellationException("Parent job is " + o1(J02), cancellationException, this);
    }

    public final boolean V0(@Nullable Object obj) {
        Object u12;
        do {
            u12 = u1(J0(), obj);
            if (u12 == S0.a()) {
                return false;
            }
            if (u12 == S0.f85662b) {
                return true;
            }
        } while (u12 == S0.b());
        g0(u12);
        return true;
    }

    @Nullable
    public final Object W0(@Nullable Object obj) {
        Object u12;
        do {
            u12 = u1(J0(), obj);
            if (u12 == S0.a()) {
                throw new IllegalStateException("Job " + ((Object) this) + " is already complete or completing, but is being completed with " + obj, A0(obj));
            }
        } while (u12 == S0.b());
        return u12;
    }

    public final Q0 X0(Mf.l<? super Throwable, nf.P0> lVar, boolean z10) {
        Q0 q02;
        if (z10) {
            q02 = lVar instanceof L0 ? (L0) lVar : null;
            if (q02 == null) {
                q02 = new I0(lVar);
            }
        } else {
            q02 = lVar instanceof Q0 ? (Q0) lVar : null;
            if (q02 == null) {
                q02 = new J0(lVar);
            }
        }
        q02.a0(this);
        return q02;
    }

    @NotNull
    public String Y0() {
        return W.a(this);
    }

    public final C13146w Z0(C14263y c14263y) {
        while (c14263y.E()) {
            c14263y = c14263y.C();
        }
        while (true) {
            c14263y = c14263y.B();
            if (!c14263y.E()) {
                if (c14263y instanceof C13146w) {
                    return (C13146w) c14263y;
                }
                if (c14263y instanceof W0) {
                    return null;
                }
            }
        }
    }

    @Override
    public void a(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(o0(), null, this);
        }
        l0(cancellationException);
    }

    public final void a1(W0 w02, Throwable th2) {
        f1(th2);
        Object A10 = w02.A();
        kotlin.jvm.internal.M.n(A10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (C14263y c14263y = (C14263y) A10; !kotlin.jvm.internal.M.g(c14263y, w02); c14263y = c14263y.B()) {
            if (c14263y instanceof L0) {
                Q0 q02 = (Q0) c14263y;
                try {
                    q02.Y(th2);
                } catch (Throwable th3) {
                    if (completionHandlerException != null) {
                        C14436t.a(completionHandlerException, th3);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + ((Object) q02) + " for " + ((Object) this), th3);
                        nf.P0 p02 = nf.P0.f98194a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            L0(completionHandlerException);
        }
        n0(th2);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x")
    public boolean b(Throwable th2) {
        Throwable jobCancellationException;
        if (th2 == null || (jobCancellationException = q1(this, th2, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(o0(), null, this);
        }
        l0(jobCancellationException);
        return true;
    }

    public final void b1(W0 w02, Throwable th2) {
        Object A10 = w02.A();
        kotlin.jvm.internal.M.n(A10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (C14263y c14263y = (C14263y) A10; !kotlin.jvm.internal.M.g(c14263y, w02); c14263y = c14263y.B()) {
            if (c14263y instanceof Q0) {
                Q0 q02 = (Q0) c14263y;
                try {
                    q02.Y(th2);
                } catch (Throwable th3) {
                    if (completionHandlerException != null) {
                        C14436t.a(completionHandlerException, th3);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + ((Object) q02) + " for " + ((Object) this), th3);
                        nf.P0 p02 = nf.P0.f98194a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            L0(completionHandlerException);
        }
    }

    @Override
    @Nullable
    public final Object c0(@NotNull yf.f<? super nf.P0> fVar) {
        if (Q0()) {
            Object R02 = R0(fVar);
            return R02 == Af.d.l() ? R02 : nf.P0.f98194a;
        }
        N0.A(fVar.getContext());
        return nf.P0.f98194a;
    }

    public final <T extends Q0> void c1(W0 w02, Throwable th2) {
        Object A10 = w02.A();
        kotlin.jvm.internal.M.n(A10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (C14263y c14263y = (C14263y) A10; !kotlin.jvm.internal.M.g(c14263y, w02); c14263y = c14263y.B()) {
            kotlin.jvm.internal.M.y(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (c14263y != null) {
                Q0 q02 = (Q0) c14263y;
                try {
                    q02.Y(th2);
                } catch (Throwable th3) {
                    if (completionHandlerException != null) {
                        C14436t.a(completionHandlerException, th3);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + ((Object) q02) + " for " + ((Object) this), th3);
                        nf.P0 p02 = nf.P0.f98194a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            L0(completionHandlerException);
        }
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public void cancel() {
        K0.a.a(this);
    }

    @Override
    public final boolean d() {
        return !(J0() instanceof D0);
    }

    public final Object d1(Object obj, Object obj2) {
        if (obj2 instanceof C13091D) {
            throw ((C13091D) obj2).f85604a;
        }
        return obj2;
    }

    public final boolean e0(Object obj, W0 w02, Q0 q02) {
        int W10;
        f fVar = new f(q02, this, obj);
        do {
            W10 = w02.C().W(q02, w02, fVar);
            if (W10 == 1) {
                return true;
            }
        } while (W10 != 2);
        return false;
    }

    public final void e1(pg.m<?> mVar, Object obj) {
        Object J02;
        do {
            J02 = J0();
            if (!(J02 instanceof D0)) {
                if (!(J02 instanceof C13091D)) {
                    J02 = S0.h(J02);
                }
                mVar.w(J02);
                return;
            }
        } while (n1(J02) < 0);
        mVar.o(w(new d(mVar)));
    }

    @Override
    @NotNull
    public final InterfaceC13144v f(@NotNull InterfaceC13148x interfaceC13148x) {
        InterfaceC13128m0 g10 = K0.a.g(this, true, false, new C13146w(interfaceC13148x), 2, null);
        kotlin.jvm.internal.M.n(g10, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (InterfaceC13144v) g10;
    }

    public final void f0(Throwable th2, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        for (Throwable th3 : list) {
            if (th3 != th2 && th3 != th2 && !(th3 instanceof CancellationException) && newSetFromMap.add(th3)) {
                C14436t.a(th2, th3);
            }
        }
    }

    public void f1(@Nullable Throwable th2) {
    }

    @Override
    public <R> R fold(R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
        return (R) K0.a.d(this, r10, pVar);
    }

    public void g0(@Nullable Object obj) {
    }

    public void g1(@Nullable Object obj) {
    }

    @Override
    @Nullable
    public <E extends j.b> E get(@NotNull j.c<E> cVar) {
        return (E) K0.a.e(this, cVar);
    }

    @Override
    @NotNull
    public final InterfaceC3312m<K0> getChildren() {
        return C3316q.b(new g(null));
    }

    @Override
    @NotNull
    public final j.c<?> getKey() {
        return K0.f85619y4;
    }

    @Override
    @Nullable
    public K0 getParent() {
        InterfaceC13144v I02 = I0();
        if (I02 != null) {
            return I02.getParent();
        }
        return null;
    }

    @Nullable
    public final Object h0(@NotNull yf.f<Object> fVar) {
        Object J02;
        do {
            J02 = J0();
            if (!(J02 instanceof D0)) {
                if (J02 instanceof C13091D) {
                    throw ((C13091D) J02).f85604a;
                }
                return S0.h(J02);
            }
        } while (n1(J02) < 0);
        return i0(fVar);
    }

    public void h1() {
    }

    public final Object i0(yf.f<Object> fVar) {
        a aVar = new a(Af.c.e(fVar), this);
        aVar.O();
        C13138s.a(aVar, w(new c1(aVar)));
        Object D10 = aVar.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [eg.C0] */
    public final void i1(C13134p0 c13134p0) {
        W0 w02 = new W0();
        if (!c13134p0.isActive()) {
            w02 = new C0(w02);
        }
        androidx.concurrent.futures.a.a(f85636b, this, c13134p0, w02);
    }

    @Override
    public boolean isActive() {
        Object J02 = J0();
        return (J02 instanceof D0) && ((D0) J02).isActive();
    }

    @Override
    public final boolean isCancelled() {
        Object J02 = J0();
        return (J02 instanceof C13091D) || ((J02 instanceof c) && ((c) J02).f());
    }

    public final boolean j0(@Nullable Throwable th2) {
        return k0(th2);
    }

    public final void j1(Q0 q02) {
        q02.w(new W0());
        androidx.concurrent.futures.a.a(f85636b, this, q02, q02.B());
    }

    public final boolean k0(@Nullable Object obj) {
        Object a10 = S0.a();
        if (F0() && (a10 = m0(obj)) == S0.f85662b) {
            return true;
        }
        if (a10 == S0.a()) {
            a10 = U0(obj);
        }
        if (a10 == S0.a() || a10 == S0.f85662b) {
            return true;
        }
        if (a10 == S0.f()) {
            return false;
        }
        g0(a10);
        return true;
    }

    public final void k1(pg.m<?> mVar, Object obj) {
        if (Q0()) {
            mVar.o(w(new e(mVar)));
        } else {
            mVar.w(nf.P0.f98194a);
        }
    }

    public void l0(@NotNull Throwable th2) {
        k0(th2);
    }

    public final void l1(@NotNull Q0 q02) {
        Object J02;
        do {
            J02 = J0();
            if (!(J02 instanceof Q0)) {
                if (!(J02 instanceof D0) || ((D0) J02).d() == null) {
                    return;
                }
                q02.R();
                return;
            }
            if (J02 != q02) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f85636b, this, J02, S0.c()));
    }

    public final Object m0(Object obj) {
        Object u12;
        do {
            Object J02 = J0();
            if (!(J02 instanceof D0) || ((J02 instanceof c) && ((c) J02).g())) {
                return S0.a();
            }
            u12 = u1(J02, new C13091D(s0(obj), false, 2, null));
        } while (u12 == S0.b());
        return u12;
    }

    public final void m1(@Nullable InterfaceC13144v interfaceC13144v) {
        f85637c.set(this, interfaceC13144v);
    }

    @Override
    @NotNull
    public yf.j minusKey(@NotNull j.c<?> cVar) {
        return K0.a.h(this, cVar);
    }

    public final boolean n0(Throwable th2) {
        if (P0()) {
            return true;
        }
        boolean z10 = th2 instanceof CancellationException;
        InterfaceC13144v I02 = I0();
        return (I02 == null || I02 == Y0.f85696b) ? z10 : I02.b(th2) || z10;
    }

    public final int n1(Object obj) {
        if (obj instanceof C13134p0) {
            if (((C13134p0) obj).isActive()) {
                return 0;
            }
            if (!androidx.concurrent.futures.a.a(f85636b, this, obj, S0.c())) {
                return -1;
            }
            h1();
            return 1;
        }
        if (!(obj instanceof C0)) {
            return 0;
        }
        if (!androidx.concurrent.futures.a.a(f85636b, this, obj, ((C0) obj).d())) {
            return -1;
        }
        h1();
        return 1;
    }

    @NotNull
    public String o0() {
        return "Job was cancelled";
    }

    public final String o1(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof D0 ? ((D0) obj).isActive() ? "Active" : "New" : obj instanceof C13091D ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        return cVar.f() ? "Cancelling" : cVar.g() ? "Completing" : "Active";
    }

    public boolean p0(@NotNull Throwable th2) {
        if (th2 instanceof CancellationException) {
            return true;
        }
        return k0(th2) && C0();
    }

    @NotNull
    public final CancellationException p1(@NotNull Throwable th2, @Nullable String str) {
        CancellationException cancellationException = th2 instanceof CancellationException ? (CancellationException) th2 : null;
        if (cancellationException == null) {
            if (str == null) {
                str = o0();
            }
            cancellationException = new JobCancellationException(str, th2, this);
        }
        return cancellationException;
    }

    @Override
    @NotNull
    public yf.j plus(@NotNull yf.j jVar) {
        return K0.a.j(this, jVar);
    }

    public final void q0(D0 d02, Object obj) {
        InterfaceC13144v I02 = I0();
        if (I02 != null) {
            I02.dispose();
            m1(Y0.f85696b);
        }
        C13091D c13091d = obj instanceof C13091D ? (C13091D) obj : null;
        Throwable th2 = c13091d != null ? c13091d.f85604a : null;
        if (!(d02 instanceof Q0)) {
            W0 d10 = d02.d();
            if (d10 != null) {
                b1(d10, th2);
                return;
            }
            return;
        }
        try {
            ((Q0) d02).Y(th2);
        } catch (Throwable th3) {
            L0(new CompletionHandlerException("Exception in completion handler " + ((Object) d02) + " for " + ((Object) this), th3));
        }
    }

    public final void r0(c cVar, C13146w c13146w, Object obj) {
        C13146w Z02 = Z0(c13146w);
        if (Z02 == null || !w1(cVar, Z02, obj)) {
            g0(v0(cVar, obj));
        }
    }

    @F0
    @NotNull
    public final String r1() {
        return Y0() + JavaElement.JEM_COMPILATIONUNIT + o1(J0()) + JavaElement.JEM_ANNOTATION;
    }

    public final Throwable s0(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th2 = (Throwable) obj;
            return th2 == null ? new JobCancellationException(o0(), null, this) : th2;
        }
        kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((b1) obj).V();
    }

    public final boolean s1(D0 d02, Object obj) {
        if (!androidx.concurrent.futures.a.a(f85636b, this, d02, S0.g(obj))) {
            return false;
        }
        f1(null);
        g1(obj);
        q0(d02, obj);
        return true;
    }

    @Override
    public final boolean start() {
        int n12;
        do {
            n12 = n1(J0());
            if (n12 == 0) {
                return false;
            }
        } while (n12 != 1);
        return true;
    }

    @NotNull
    public final JobCancellationException t0(@Nullable String str, @Nullable Throwable th2) {
        if (str == null) {
            str = o0();
        }
        return new JobCancellationException(str, th2, this);
    }

    public final boolean t1(D0 d02, Throwable th2) {
        W0 H02 = H0(d02);
        if (H02 == null) {
            return false;
        }
        if (!androidx.concurrent.futures.a.a(f85636b, this, d02, new c(H02, false, th2))) {
            return false;
        }
        a1(H02, th2);
        return true;
    }

    @NotNull
    public String toString() {
        return r1() + '@' + W.b(this);
    }

    public final Object u1(Object obj, Object obj2) {
        return !(obj instanceof D0) ? S0.a() : ((!(obj instanceof C13134p0) && !(obj instanceof Q0)) || (obj instanceof C13146w) || (obj2 instanceof C13091D)) ? v1((D0) obj, obj2) : s1((D0) obj, obj2) ? obj2 : S0.b();
    }

    public final Object v0(c cVar, Object obj) {
        boolean f10;
        Throwable B02;
        C14026x c14026x = null;
        C13091D c13091d = obj instanceof C13091D ? (C13091D) obj : null;
        Throwable th2 = c13091d != null ? c13091d.f85604a : null;
        synchronized (cVar) {
            f10 = cVar.f();
            List<Throwable> i10 = cVar.i(th2);
            B02 = B0(cVar, i10);
            if (B02 != null) {
                f0(B02, i10);
            }
        }
        if (B02 != null && B02 != th2) {
            obj = new C13091D(B02, false, 2, c14026x);
        }
        if (B02 != null && (n0(B02) || K0(B02))) {
            kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((C13091D) obj).b();
        }
        if (!f10) {
            f1(B02);
        }
        g1(obj);
        androidx.concurrent.futures.a.a(f85636b, this, cVar, S0.g(obj));
        q0(cVar, obj);
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Throwable, T] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public final Object v1(D0 d02, Object obj) {
        W0 H02 = H0(d02);
        if (H02 == null) {
            return S0.b();
        }
        c cVar = d02 instanceof c ? (c) d02 : null;
        if (cVar == null) {
            cVar = new c(H02, false, null);
        }
        m0.h hVar = new m0.h();
        synchronized (cVar) {
            if (cVar.g()) {
                return S0.a();
            }
            cVar.j(true);
            if (cVar != d02 && !androidx.concurrent.futures.a.a(f85636b, this, d02, cVar)) {
                return S0.b();
            }
            boolean f10 = cVar.f();
            C13091D c13091d = obj instanceof C13091D ? (C13091D) obj : null;
            if (c13091d != null) {
                cVar.a(c13091d.f85604a);
            }
            ?? e10 = f10 ? 0 : cVar.e();
            hVar.f95754b = e10;
            nf.P0 p02 = nf.P0.f98194a;
            if (e10 != 0) {
                a1(H02, e10);
            }
            C13146w w02 = w0(d02);
            return (w02 == null || !w1(cVar, w02, obj)) ? v0(cVar, obj) : S0.f85662b;
        }
    }

    @Override
    @NotNull
    public final InterfaceC13128m0 w(@NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        return S(false, true, lVar);
    }

    public final C13146w w0(D0 d02) {
        C13146w c13146w = d02 instanceof C13146w ? (C13146w) d02 : null;
        if (c13146w != null) {
            return c13146w;
        }
        W0 d10 = d02.d();
        if (d10 != null) {
            return Z0(d10);
        }
        return null;
    }

    public final boolean w1(c cVar, C13146w c13146w, Object obj) {
        while (K0.a.g(c13146w.f85798f, false, false, new b(this, cVar, c13146w, obj), 1, null) == Y0.f85696b) {
            c13146w = Z0(c13146w);
            if (c13146w == null) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public final Object x0() {
        Object J02 = J0();
        if (J02 instanceof D0) {
            throw new IllegalStateException("This job has not completed yet");
        }
        if (J02 instanceof C13091D) {
            throw ((C13091D) J02).f85604a;
        }
        return S0.h(J02);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public K0 y(@NotNull K0 k02) {
        return K0.a.i(this, k02);
    }

    @Nullable
    public final Throwable y0() {
        Object J02 = J0();
        if (J02 instanceof c) {
            Throwable e10 = ((c) J02).e();
            if (e10 != null) {
                return e10;
            }
            throw new IllegalStateException(("Job is still new or active: " + ((Object) this)).toString());
        }
        if (!(J02 instanceof D0)) {
            if (J02 instanceof C13091D) {
                return ((C13091D) J02).f85604a;
            }
            return null;
        }
        throw new IllegalStateException(("Job is still new or active: " + ((Object) this)).toString());
    }

    @Override
    @NotNull
    public final InterfaceC14998e z() {
        j jVar = j.f85660b;
        kotlin.jvm.internal.M.n(jVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new C14999f(this, (Mf.q) kotlin.jvm.internal.w0.q(jVar, 3), null, 4, null);
    }

    public final boolean z0() {
        Object J02 = J0();
        return (J02 instanceof C13091D) && ((C13091D) J02).a();
    }
}
