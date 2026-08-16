package gg;

import ag.X;
import com.bumptech.glide.load.engine.GlideException;
import com.google.firebase.analytics.FirebaseAnalytics;
import eg.C13135q;
import eg.C13138s;
import eg.InterfaceC13133p;
import eg.InterfaceC13153z0;
import eg.W;
import eg.y1;
import gg.l;
import gg.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.w0;
import kotlinx.coroutines.channels.ClosedReceiveChannelException;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.internal.UndeliveredElementException;
import mg.AbstractC14246g;
import mg.C14245f;
import mg.C14256q;
import mg.J;
import mg.P;
import mg.Q;
import mg.S;
import mg.T;
import nf.C14416i0;
import nf.C14418j0;
import nf.C14436t;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3055:1\n273#1,6:3058\n280#1,68:3065\n374#1,18:3156\n244#1:3174\n269#1,10:3175\n280#1,48:3186\n395#1:3234\n334#1,14:3235\n399#1,3:3250\n244#1:3263\n269#1,10:3264\n280#1,68:3275\n244#1:3353\n269#1,10:3354\n280#1,68:3365\n244#1:3437\n269#1,10:3438\n280#1,68:3449\n886#1,52:3519\n964#1,8:3575\n858#1:3583\n882#1,33:3584\n974#1:3617\n916#1,14:3618\n935#1,3:3633\n979#1,6:3636\n886#1,52:3650\n964#1,8:3706\n858#1:3714\n882#1,33:3715\n974#1:3748\n916#1,14:3749\n935#1,3:3764\n979#1,6:3767\n858#1:3782\n882#1,48:3783\n935#1,3:3832\n858#1:3835\n882#1,48:3836\n935#1,3:3885\n244#1:3897\n269#1,10:3898\n280#1,68:3909\n858#1:3978\n882#1,48:3979\n935#1,3:4028\n1#2:3056\n3038#3:3057\n3038#3:3064\n3038#3:3185\n3038#3:3274\n3038#3:3364\n3038#3:3436\n3038#3:3448\n3038#3:3518\n3038#3:3781\n3038#3:3888\n3038#3:3889\n3052#3:3890\n3052#3:3891\n3051#3:3892\n3051#3:3893\n3051#3:3894\n3052#3:3895\n3051#3:3896\n3038#3:3908\n3039#3:4031\n3038#3:4032\n3038#3:4033\n3038#3:4034\n3039#3:4035\n3038#3:4036\n3039#3:4059\n3038#3:4060\n3038#3:4061\n3039#3:4062\n3038#3:4112\n3039#3:4113\n3039#3:4114\n3039#3:4132\n3039#3:4133\n314#4,9:3133\n323#4,2:3150\n332#4,4:3152\n336#4,8:3253\n314#4,9:3344\n323#4,2:3434\n332#4,4:3571\n336#4,8:3642\n332#4,4:3702\n336#4,8:3773\n220#5:3142\n221#5:3145\n220#5:3146\n221#5:3149\n61#6,2:3143\n61#6,2:3147\n61#6,2:3261\n269#7:3249\n269#7:3343\n269#7:3433\n269#7:3517\n269#7:3977\n882#8:3632\n882#8:3763\n882#8:3831\n882#8:3884\n882#8:4027\n37#9,11:4037\n37#9,11:4048\n72#10,3:4063\n46#10,8:4066\n72#10,3:4074\n46#10,8:4077\n46#10,8:4085\n72#10,3:4093\n46#10,8:4096\n46#10,8:4104\n766#11:4115\n857#11,2:4116\n2310#11,14:4118\n766#11:4134\n857#11,2:4135\n2310#11,14:4137\n766#11:4151\n857#11,2:4152\n2310#11,14:4154\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n113#1:3058,6\n113#1:3065,68\n154#1:3156,18\n154#1:3174\n154#1:3175,10\n154#1:3186,48\n154#1:3234\n154#1:3235,14\n154#1:3250,3\n194#1:3263\n194#1:3264,10\n194#1:3275,68\n225#1:3353\n225#1:3354,10\n225#1:3365,68\n391#1:3437\n391#1:3438,10\n391#1:3449,68\n667#1:3519,52\n696#1:3575,8\n696#1:3583\n696#1:3584,33\n696#1:3617\n696#1:3618,14\n696#1:3633,3\n696#1:3636,6\n732#1:3650,52\n748#1:3706,8\n748#1:3714\n748#1:3715,33\n748#1:3748\n748#1:3749,14\n748#1:3764,3\n748#1:3767,6\n781#1:3782\n781#1:3783,48\n781#1:3832,3\n971#1:3835\n971#1:3836,48\n971#1:3885,3\n1464#1:3897\n1464#1:3898,10\n1464#1:3909,68\n1512#1:3978\n1512#1:3979,48\n1512#1:4028,3\n70#1:3057\n113#1:3064\n154#1:3185\n194#1:3274\n225#1:3364\n278#1:3436\n391#1:3448\n606#1:3518\n771#1:3781\n1007#1:3888\n1056#1:3889\n1374#1:3890\n1376#1:3891\n1406#1:3892\n1416#1:3893\n1425#1:3894\n1426#1:3895\n1433#1:3896\n1464#1:3908\n1865#1:4031\n1867#1:4032\n1869#1:4033\n1882#1:4034\n1893#1:4035\n1894#1:4036\n2196#1:4059\n2209#1:4060\n2219#1:4061\n2222#1:4062\n2539#1:4112\n2541#1:4113\n2566#1:4114\n2628#1:4132\n2629#1:4133\n134#1:3133,9\n134#1:3150,2\n153#1:3152,4\n153#1:3253,8\n221#1:3344,9\n221#1:3434,2\n695#1:3571,4\n695#1:3642,8\n746#1:3702,4\n746#1:3773,8\n138#1:3142\n138#1:3145\n141#1:3146\n141#1:3149\n138#1:3143,2\n141#1:3147,2\n183#1:3261,2\n154#1:3249\n194#1:3343\n225#1:3433\n391#1:3517\n1464#1:3977\n696#1:3632\n748#1:3763\n781#1:3831\n971#1:3884\n1512#1:4027\n2098#1:4037,11\n2153#1:4048,11\n2361#1:4063,3\n2361#1:4066,8\n2416#1:4074,3\n2416#1:4077,8\n2435#1:4085,8\n2465#1:4093,3\n2465#1:4096,8\n2526#1:4104,8\n2575#1:4115\n2575#1:4116,2\n2576#1:4118,14\n2640#1:4134\n2640#1:4135,2\n2641#1:4137,14\n2681#1:4151\n2681#1:4152,2\n2682#1:4154,14\n*E\n"})
public class j<E> implements gg.l<E> {

    @NotNull
    public static final AtomicLongFieldUpdater f89599e = AtomicLongFieldUpdater.newUpdater(j.class, "sendersAndCloseStatus");

    @NotNull
    public static final AtomicLongFieldUpdater f89600f = AtomicLongFieldUpdater.newUpdater(j.class, "receivers");

    @NotNull
    public static final AtomicLongFieldUpdater f89601g = AtomicLongFieldUpdater.newUpdater(j.class, "bufferEnd");

    @NotNull
    public static final AtomicLongFieldUpdater f89602h = AtomicLongFieldUpdater.newUpdater(j.class, "completedExpandBuffersAndPauseFlag");

    @NotNull
    public static final AtomicReferenceFieldUpdater f89603i = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "sendSegment");

    @NotNull
    public static final AtomicReferenceFieldUpdater f89604j = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "receiveSegment");

    @NotNull
    public static final AtomicReferenceFieldUpdater f89605k = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "bufferEndSegment");

    @NotNull
    public static final AtomicReferenceFieldUpdater f89606l = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_closeCause");

    @NotNull
    public static final AtomicReferenceFieldUpdater f89607m = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "closeHandler");

    @Lf.x
    @Nullable
    private volatile Object _closeCause;

    public final int f89608b;

    @Lf.x
    private volatile long bufferEnd;

    @Lf.x
    @Nullable
    private volatile Object bufferEndSegment;

    @Lf.g
    @Nullable
    public final Mf.l<E, P0> f89609c;

    @Lf.x
    @Nullable
    private volatile Object closeHandler;

    @Lf.x
    private volatile long completedExpandBuffersAndPauseFlag;

    @Nullable
    public final Mf.q<pg.m<?>, Object, Object, Mf.l<Throwable, P0>> f89610d;

    @Lf.x
    @Nullable
    private volatile Object receiveSegment;

    @Lf.x
    private volatile long receivers;

    @Lf.x
    @Nullable
    private volatile Object sendSegment;

    @Lf.x
    private volatile long sendersAndCloseStatus;

    @t0({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n886#2,52:3056\n964#2,8:3112\n858#2:3120\n882#2,33:3121\n974#2:3154\n916#2,14:3155\n935#2,3:3170\n979#2,6:3173\n332#3,4:3108\n336#3,8:3179\n882#4:3169\n61#5,2:3187\n61#5,2:3190\n1#6:3189\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1590#1:3056,52\n1627#1:3112,8\n1627#1:3120\n1627#1:3121,33\n1627#1:3154\n1627#1:3155,14\n1627#1:3170,3\n1627#1:3173,6\n1625#1:3108,4\n1625#1:3179,8\n1627#1:3169\n1663#1:3187,2\n1708#1:3190,2\n*E\n"})
    public final class a implements gg.n<E>, y1 {

        @Nullable
        public Object f89611b = gg.k.m();

        @Nullable
        public C13135q<? super Boolean> f89612c;

        public a() {
        }

        @Override
        @Nullable
        public Object a(@NotNull yf.f<? super Boolean> fVar) {
            q<E> qVar;
            j<E> jVar = j.this;
            q<E> qVar2 = (q) j.f89604j.get(jVar);
            while (!jVar.D()) {
                long andIncrement = j.f89600f.getAndIncrement(jVar);
                int i10 = gg.k.f89650b;
                long j10 = andIncrement / i10;
                int i11 = (int) (andIncrement % i10);
                if (qVar2.f97034d != j10) {
                    q<E> b02 = jVar.b0(j10, qVar2);
                    if (b02 == null) {
                        continue;
                    } else {
                        qVar = b02;
                    }
                } else {
                    qVar = qVar2;
                }
                Object A12 = jVar.A1(qVar, i11, andIncrement, null);
                if (A12 == gg.k.r()) {
                    throw new IllegalStateException("unreachable");
                }
                if (A12 != gg.k.h()) {
                    if (A12 == gg.k.s()) {
                        return g(qVar, i11, andIncrement, fVar);
                    }
                    qVar.b();
                    this.f89611b = A12;
                    return Bf.b.a(true);
                }
                if (andIncrement < jVar.o0()) {
                    qVar.b();
                }
                qVar2 = qVar;
            }
            return Bf.b.a(h());
        }

        @Override
        @Lf.j(name = "next")
        @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        public Object b(yf.f fVar) {
            return n.a.a(this, fVar);
        }

        public final Object g(q<E> qVar, int i10, long j10, yf.f<? super Boolean> fVar) {
            Boolean a10;
            j<E> jVar = j.this;
            C13135q b10 = C13138s.b(Af.c.e(fVar));
            try {
                this.f89612c = b10;
                Object A12 = jVar.A1(qVar, i10, j10, this);
                if (A12 == gg.k.r()) {
                    jVar.S0(this, qVar, i10);
                } else {
                    Mf.l<Throwable, P0> lVar = null;
                    if (A12 == gg.k.h()) {
                        if (j10 < jVar.o0()) {
                            qVar.b();
                        }
                        q qVar2 = (q) j.f89604j.get(jVar);
                        while (true) {
                            if (jVar.D()) {
                                i();
                                break;
                            }
                            long andIncrement = j.f89600f.getAndIncrement(jVar);
                            int i11 = gg.k.f89650b;
                            long j11 = andIncrement / i11;
                            int i12 = (int) (andIncrement % i11);
                            if (qVar2.f97034d != j11) {
                                q b02 = jVar.b0(j11, qVar2);
                                if (b02 != null) {
                                    qVar2 = b02;
                                }
                            }
                            Object A13 = jVar.A1(qVar2, i12, andIncrement, this);
                            if (A13 == gg.k.r()) {
                                jVar.S0(this, qVar2, i12);
                                break;
                            }
                            if (A13 == gg.k.h()) {
                                if (andIncrement < jVar.o0()) {
                                    qVar2.b();
                                }
                            } else {
                                if (A13 == gg.k.s()) {
                                    throw new IllegalStateException("unexpected");
                                }
                                qVar2.b();
                                this.f89611b = A13;
                                this.f89612c = null;
                                a10 = Bf.b.a(true);
                                Mf.l<E, P0> lVar2 = jVar.f89609c;
                                if (lVar2 != null) {
                                    lVar = J.a(lVar2, A13, b10.getContext());
                                }
                            }
                        }
                    } else {
                        qVar.b();
                        this.f89611b = A12;
                        this.f89612c = null;
                        a10 = Bf.b.a(true);
                        Mf.l<E, P0> lVar3 = jVar.f89609c;
                        if (lVar3 != null) {
                            lVar = J.a(lVar3, A12, b10.getContext());
                        }
                    }
                    b10.o(a10, lVar);
                }
                Object D10 = b10.D();
                if (D10 == Af.d.l()) {
                    Bf.h.c(fVar);
                }
                return D10;
            } catch (Throwable th2) {
                b10.T();
                throw th2;
            }
        }

        public final boolean h() {
            this.f89611b = gg.k.z();
            Throwable f02 = j.this.f0();
            if (f02 == null) {
                return false;
            }
            throw S.o(f02);
        }

        public final void i() {
            C13135q<? super Boolean> c13135q = this.f89612c;
            M.m(c13135q);
            this.f89612c = null;
            this.f89611b = gg.k.z();
            Throwable f02 = j.this.f0();
            if (f02 == null) {
                C14416i0.a aVar = C14416i0.f98201c;
                c13135q.resumeWith(C14416i0.b(Boolean.FALSE));
            } else {
                C14416i0.a aVar2 = C14416i0.f98201c;
                c13135q.resumeWith(C14416i0.b(C14418j0.a(f02)));
            }
        }

        public final boolean j(E e10) {
            C13135q<? super Boolean> c13135q = this.f89612c;
            M.m(c13135q);
            this.f89612c = null;
            this.f89611b = e10;
            Boolean bool = Boolean.TRUE;
            Mf.l<E, P0> lVar = j.this.f89609c;
            return gg.k.u(c13135q, bool, lVar != null ? J.a(lVar, e10, c13135q.getContext()) : null);
        }

        public final void k() {
            C13135q<? super Boolean> c13135q = this.f89612c;
            M.m(c13135q);
            this.f89612c = null;
            this.f89611b = gg.k.z();
            Throwable f02 = j.this.f0();
            if (f02 == null) {
                C14416i0.a aVar = C14416i0.f98201c;
                c13135q.resumeWith(C14416i0.b(Boolean.FALSE));
            } else {
                C14416i0.a aVar2 = C14416i0.f98201c;
                c13135q.resumeWith(C14416i0.b(C14418j0.a(f02)));
            }
        }

        @Override
        public E next() {
            E e10 = (E) this.f89611b;
            if (e10 == gg.k.m()) {
                throw new IllegalStateException("`hasNext()` has not been invoked");
            }
            this.f89611b = gg.k.m();
            if (e10 != gg.k.z()) {
                return e10;
            }
            throw S.o(j.this.l0());
        }

        @Override
        public void t(@NotNull P<?> p10, int i10) {
            C13135q<? super Boolean> c13135q = this.f89612c;
            if (c13135q != null) {
                c13135q.t(p10, i10);
            }
        }
    }

    public static final class b implements y1 {

        @NotNull
        public final InterfaceC13133p<Boolean> f89614b;

        public final C13135q<Boolean> f89615c;

        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull InterfaceC13133p<? super Boolean> interfaceC13133p) {
            this.f89614b = interfaceC13133p;
            M.n(interfaceC13133p, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>");
            this.f89615c = (C13135q) interfaceC13133p;
        }

        @NotNull
        public final InterfaceC13133p<Boolean> a() {
            return this.f89614b;
        }

        @Override
        public void t(@NotNull P<?> p10, int i10) {
            this.f89615c.t(p10, i10);
        }
    }

    public class c extends I implements Mf.q<j<?>, pg.m<?>, Object, P0> {

        public static final c f89616b = new c();

        public c() {
            super(3, j.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull j<?> jVar, @NotNull pg.m<?> mVar, @Nullable Object obj) {
            jVar.f1(mVar, obj);
        }

        @Override
        public P0 n(j<?> jVar, pg.m<?> mVar, Object obj) {
            b(jVar, mVar, obj);
            return P0.f98194a;
        }
    }

    public class d extends I implements Mf.q<j<?>, Object, Object, Object> {

        public static final d f89617b = new d();

        public d() {
            super(3, j.class, "processResultSelectReceive", "processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override
        @Nullable
        public final Object n(@NotNull j<?> jVar, @Nullable Object obj, @Nullable Object obj2) {
            return jVar.U0(obj, obj2);
        }
    }

    public class e extends I implements Mf.q<j<?>, pg.m<?>, Object, P0> {

        public static final e f89618b = new e();

        public e() {
            super(3, j.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull j<?> jVar, @NotNull pg.m<?> mVar, @Nullable Object obj) {
            jVar.f1(mVar, obj);
        }

        @Override
        public P0 n(j<?> jVar, pg.m<?> mVar, Object obj) {
            b(jVar, mVar, obj);
            return P0.f98194a;
        }
    }

    public class f extends I implements Mf.q<j<?>, Object, Object, Object> {

        public static final f f89619b = new f();

        public f() {
            super(3, j.class, "processResultSelectReceiveCatching", "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override
        @Nullable
        public final Object n(@NotNull j<?> jVar, @Nullable Object obj, @Nullable Object obj2) {
            return jVar.V0(obj, obj2);
        }
    }

    public class g extends I implements Mf.q<j<?>, pg.m<?>, Object, P0> {

        public static final g f89620b = new g();

        public g() {
            super(3, j.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull j<?> jVar, @NotNull pg.m<?> mVar, @Nullable Object obj) {
            jVar.f1(mVar, obj);
        }

        @Override
        public P0 n(j<?> jVar, pg.m<?> mVar, Object obj) {
            b(jVar, mVar, obj);
            return P0.f98194a;
        }
    }

    public class h extends I implements Mf.q<j<?>, Object, Object, Object> {

        public static final h f89621b = new h();

        public h() {
            super(3, j.class, "processResultSelectReceiveOrNull", "processResultSelectReceiveOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override
        @Nullable
        public final Object n(@NotNull j<?> jVar, @Nullable Object obj, @Nullable Object obj2) {
            return jVar.W0(obj, obj2);
        }
    }

    public class i extends I implements Mf.q<j<?>, pg.m<?>, Object, P0> {

        public static final i f89622b = new i();

        public i() {
            super(3, j.class, "registerSelectForSend", "registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull j<?> jVar, @NotNull pg.m<?> mVar, @Nullable Object obj) {
            jVar.g1(mVar, obj);
        }

        @Override
        public P0 n(j<?> jVar, pg.m<?> mVar, Object obj) {
            b(jVar, mVar, obj);
            return P0.f98194a;
        }
    }

    public class C1718j extends I implements Mf.q<j<?>, Object, Object, Object> {

        public static final C1718j f89623b = new C1718j();

        public C1718j() {
            super(3, j.class, "processResultSelectSend", "processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override
        @Nullable
        public final Object n(@NotNull j<?> jVar, @Nullable Object obj, @Nullable Object obj2) {
            return jVar.X0(obj, obj2);
        }
    }

    public static final class k extends O implements Mf.q<pg.m<?>, Object, Object, Mf.l<? super Throwable, ? extends P0>> {

        public final j<E> f89624b;

        public static final class a extends O implements Mf.l<Throwable, P0> {

            public final Object f89625b;

            public final j<E> f89626c;

            public final pg.m<?> f89627d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Object obj, j<E> jVar, pg.m<?> mVar) {
                super(1);
                this.f89625b = obj;
                this.f89626c = jVar;
                this.f89627d = mVar;
            }

            @Override
            public P0 invoke(Throwable th2) {
                invoke2(th2);
                return P0.f98194a;
            }

            public final void invoke2(@NotNull Throwable th2) {
                if (this.f89625b != gg.k.z()) {
                    J.b(this.f89626c.f89609c, this.f89625b, this.f89627d.getContext());
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(j<E> jVar) {
            super(3);
            this.f89624b = jVar;
        }

        @Override
        @NotNull
        public final Mf.l<Throwable, P0> n(@NotNull pg.m<?> mVar, @Nullable Object obj, @Nullable Object obj2) {
            return new a(obj2, this.f89624b, mVar);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {}, l = {739}, m = "receiveCatching-JP2dKIU$suspendImpl", n = {}, s = {})
    public static final class l<E> extends Bf.d {

        public Object f89628b;

        public final j<E> f89629c;

        public int f89630d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(j<E> jVar, yf.f<? super l> fVar) {
            super(fVar);
            this.f89629c = jVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89628b = obj;
            this.f89630d |= Integer.MIN_VALUE;
            Object Z02 = j.Z0(this.f89629c, this);
            return Z02 == Af.d.l() ? Z02 : p.b(Z02);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {0, 0, 0, 0}, l = {3056}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk", n = {"this", "segment", FirebaseAnalytics.d.f67690b0, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c}, s = {"L$0", "L$1", "I$0", "J$0"})
    public static final class m extends Bf.d {

        public Object f89631b;

        public Object f89632c;

        public int f89633d;

        public long f89634e;

        public Object f89635f;

        public final j<E> f89636g;

        public int f89637h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(j<E> jVar, yf.f<? super m> fVar) {
            super(fVar);
            this.f89636g = jVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89635f = obj;
            this.f89637h |= Integer.MIN_VALUE;
            Object a12 = this.f89636g.a1(null, 0, 0L, this);
            return a12 == Af.d.l() ? a12 : p.b(a12);
        }
    }

    @t0({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n*L\n1#1,3055:1\n*E\n"})
    public static final class n extends O implements Mf.q {

        public static final n f89638b = new n();

        public n() {
            super(3);
        }

        @NotNull
        public final Void b(@NotNull q<E> qVar, int i10, long j10) {
            throw new IllegalStateException("unexpected");
        }

        @Override
        public Object n(Object obj, Object obj2, Object obj3) {
            return b((q) obj, ((Number) obj2).intValue(), ((Number) obj3).longValue());
        }
    }

    @t0({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,3055:1\n*E\n"})
    public static final class o extends O implements Mf.r {

        public static final o f89639b = new o();

        public o() {
            super(4);
        }

        @NotNull
        public final Void b(@NotNull q<E> qVar, int i10, E e10, long j10) {
            throw new IllegalStateException("unexpected");
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
            return b((q) obj, ((Number) obj2).intValue(), obj3, ((Number) obj4).longValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j(int i10, @Nullable Mf.l<? super E, P0> lVar) {
        this.f89608b = i10;
        this.f89609c = lVar;
        if (i10 >= 0) {
            this.bufferEnd = gg.k.t(i10);
            this.completedExpandBuffersAndPauseFlag = e0();
            q qVar = new q(0L, null, this, 3);
            this.sendSegment = qVar;
            this.receiveSegment = qVar;
            if (B0()) {
                qVar = gg.k.n();
                M.n(qVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
            }
            this.bufferEndSegment = qVar;
            this.f89610d = lVar != 0 ? new k(this) : null;
            this._closeCause = gg.k.l();
            return;
        }
        throw new IllegalArgumentException(("Invalid channel capacity: " + i10 + ", should be >=0").toString());
    }

    @InterfaceC13153z0
    public static void A0() {
    }

    private final void D0(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    public static <E> Object Y0(j<E> jVar, yf.f<? super E> fVar) {
        q<E> qVar = (q) f89604j.get(jVar);
        while (!jVar.D()) {
            long andIncrement = f89600f.getAndIncrement(jVar);
            int i10 = gg.k.f89650b;
            long j10 = andIncrement / i10;
            int i11 = (int) (andIncrement % i10);
            if (qVar.f97034d != j10) {
                q<E> b02 = jVar.b0(j10, qVar);
                if (b02 == null) {
                    continue;
                } else {
                    qVar = b02;
                }
            }
            Object A12 = jVar.A1(qVar, i11, andIncrement, null);
            if (A12 == gg.k.r()) {
                throw new IllegalStateException("unexpected");
            }
            if (A12 != gg.k.h()) {
                if (A12 == gg.k.s()) {
                    return jVar.e1(qVar, i11, andIncrement, fVar);
                }
                qVar.b();
                return A12;
            }
            if (andIncrement < jVar.o0()) {
                qVar.b();
            }
        }
        throw S.o(jVar.l0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <E> Object Z0(j<E> jVar, yf.f<? super p<? extends E>> fVar) {
        l lVar;
        int i10;
        if (fVar instanceof l) {
            lVar = (l) fVar;
            int i11 = lVar.f89630d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                lVar.f89630d = i11 - Integer.MIN_VALUE;
                l lVar2 = lVar;
                Object obj = lVar2.f89628b;
                Object l10 = Af.d.l();
                i10 = lVar2.f89630d;
                if (i10 == 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                    return ((p) obj).o();
                }
                C14418j0.n(obj);
                q<E> qVar = (q) f89604j.get(jVar);
                while (!jVar.D()) {
                    long andIncrement = f89600f.getAndIncrement(jVar);
                    int i12 = gg.k.f89650b;
                    long j10 = andIncrement / i12;
                    int i13 = (int) (andIncrement % i12);
                    if (qVar.f97034d != j10) {
                        q<E> b02 = jVar.b0(j10, qVar);
                        if (b02 == null) {
                            continue;
                        } else {
                            qVar = b02;
                        }
                    }
                    Object A12 = jVar.A1(qVar, i13, andIncrement, null);
                    if (A12 == gg.k.r()) {
                        throw new IllegalStateException("unexpected");
                    }
                    if (A12 != gg.k.h()) {
                        if (A12 != gg.k.s()) {
                            qVar.b();
                            return p.f89695b.c(A12);
                        }
                        lVar2.f89630d = 1;
                        Object a12 = jVar.a1(qVar, i13, andIncrement, lVar2);
                        return a12 == l10 ? l10 : a12;
                    }
                    if (andIncrement < jVar.o0()) {
                        qVar.b();
                    }
                }
                return p.f89695b.a(jVar.f0());
            }
        }
        lVar = new l(jVar, fVar);
        l lVar22 = lVar;
        Object obj2 = lVar22.f89628b;
        Object l102 = Af.d.l();
        i10 = lVar22.f89630d;
        if (i10 == 0) {
        }
    }

    public static Object c1(j jVar, Object obj, Mf.l lVar, Mf.q qVar, Mf.a aVar, Mf.q qVar2, int i10, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: receiveImpl");
        }
        if ((i10 & 16) != 0) {
            qVar2 = n.f89638b;
        }
        q qVar3 = (q) f89604j.get(jVar);
        while (!jVar.D()) {
            long andIncrement = f89600f.getAndIncrement(jVar);
            int i11 = gg.k.f89650b;
            long j10 = andIncrement / i11;
            int i12 = (int) (andIncrement % i11);
            if (qVar3.f97034d != j10) {
                q b02 = jVar.b0(j10, qVar3);
                if (b02 == null) {
                    continue;
                } else {
                    qVar3 = b02;
                }
            }
            Object A12 = jVar.A1(qVar3, i12, andIncrement, obj);
            if (A12 == gg.k.r()) {
                y1 y1Var = obj instanceof y1 ? (y1) obj : null;
                if (y1Var != null) {
                    jVar.S0(y1Var, qVar3, i12);
                }
                return qVar.n(qVar3, Integer.valueOf(i12), Long.valueOf(andIncrement));
            }
            if (A12 != gg.k.h()) {
                if (A12 == gg.k.s()) {
                    return qVar2.n(qVar3, Integer.valueOf(i12), Long.valueOf(andIncrement));
                }
                qVar3.b();
                return lVar.invoke(A12);
            }
            if (andIncrement < jVar.o0()) {
                qVar3.b();
            }
        }
        return aVar.invoke();
    }

    public static void g0() {
    }

    public static void h0() {
    }

    public static void i0() {
    }

    public static void j0() {
    }

    public static void k0() {
    }

    public static <E> Object l1(j<E> jVar, E e10, yf.f<? super P0> fVar) {
        q<E> qVar = (q) f89603i.get(jVar);
        while (true) {
            long andIncrement = f89599e.getAndIncrement(jVar);
            long j10 = 1152921504606846975L & andIncrement;
            boolean y02 = jVar.y0(andIncrement);
            int i10 = gg.k.f89650b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (qVar.f97034d != j11) {
                q<E> c02 = jVar.c0(j11, qVar);
                if (c02 != null) {
                    qVar = c02;
                } else if (y02) {
                    Object O02 = jVar.O0(e10, fVar);
                    if (O02 == Af.d.l()) {
                        return O02;
                    }
                }
            }
            int C12 = jVar.C1(qVar, i11, e10, j10, null, y02);
            if (C12 == 0) {
                qVar.b();
                break;
            }
            if (C12 == 1) {
                break;
            }
            if (C12 != 2) {
                if (C12 == 3) {
                    Object r12 = jVar.r1(qVar, i11, e10, j10, fVar);
                    if (r12 == Af.d.l()) {
                        return r12;
                    }
                } else if (C12 == 4) {
                    if (j10 < jVar.m0()) {
                        qVar.b();
                    }
                    Object O03 = jVar.O0(e10, fVar);
                    if (O03 == Af.d.l()) {
                        return O03;
                    }
                } else if (C12 == 5) {
                    qVar.b();
                }
            } else if (y02) {
                qVar.r();
                Object O04 = jVar.O0(e10, fVar);
                if (O04 == Af.d.l()) {
                    return O04;
                }
            }
        }
        return P0.f98194a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a6, code lost:
    
        r0 = nf.C14416i0.f98201c;
        r9.resumeWith(nf.C14416i0.b(Bf.b.a(true)));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <E> Object n1(j<E> jVar, E e10, yf.f<? super Boolean> fVar) {
        q qVar;
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        if (jVar.f89609c != null) {
            throw new IllegalStateException("the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`");
        }
        b bVar = new b(c13135q);
        q qVar2 = (q) f89603i.get(jVar);
        while (true) {
            long andIncrement = f89599e.getAndIncrement(jVar);
            long j10 = andIncrement & 1152921504606846975L;
            boolean y02 = jVar.y0(andIncrement);
            int i10 = gg.k.f89650b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (qVar2.f97034d != j11) {
                q c02 = jVar.c0(j11, qVar2);
                if (c02 != null) {
                    qVar = c02;
                } else if (y02) {
                    break;
                }
            } else {
                qVar = qVar2;
            }
            q qVar3 = qVar;
            int C12 = jVar.C1(qVar, i11, e10, j10, bVar, y02);
            if (C12 == 0) {
                qVar3.b();
                break;
            }
            if (C12 == 1) {
                break;
            }
            if (C12 != 2) {
                if (C12 == 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (C12 != 4) {
                    if (C12 == 5) {
                        qVar3.b();
                    }
                    qVar2 = qVar3;
                } else if (j10 < jVar.m0()) {
                    qVar3.b();
                }
            } else if (y02) {
                qVar3.r();
            } else {
                jVar.T0(bVar, qVar3, i11);
            }
        }
        C14416i0.a aVar = C14416i0.f98201c;
        c13135q.resumeWith(C14416i0.b(Bf.b.a(false)));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }

    public static Object p1(j jVar, Object obj, Object obj2, Mf.a aVar, Mf.p pVar, Mf.a aVar2, Mf.r rVar, int i10, Object obj3) {
        q qVar;
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendImpl");
        }
        Mf.r rVar2 = (i10 & 32) != 0 ? o.f89639b : rVar;
        q qVar2 = (q) f89603i.get(jVar);
        while (true) {
            long andIncrement = f89599e.getAndIncrement(jVar);
            long j10 = andIncrement & 1152921504606846975L;
            boolean y02 = jVar.y0(andIncrement);
            int i11 = gg.k.f89650b;
            long j11 = j10 / i11;
            int i12 = (int) (j10 % i11);
            if (qVar2.f97034d != j11) {
                q c02 = jVar.c0(j11, qVar2);
                if (c02 != null) {
                    qVar = c02;
                } else if (y02) {
                    return aVar2.invoke();
                }
            } else {
                qVar = qVar2;
            }
            int C12 = jVar.C1(qVar, i12, obj, j10, obj2, y02);
            if (C12 == 0) {
                qVar.b();
                return aVar.invoke();
            }
            if (C12 == 1) {
                return aVar.invoke();
            }
            if (C12 == 2) {
                if (y02) {
                    qVar.r();
                    return aVar2.invoke();
                }
                y1 y1Var = obj2 instanceof y1 ? (y1) obj2 : null;
                if (y1Var != null) {
                    jVar.T0(y1Var, qVar, i12);
                }
                return pVar.invoke(qVar, Integer.valueOf(i12));
            }
            if (C12 == 3) {
                return rVar2.invoke(qVar, Integer.valueOf(i12), obj, Long.valueOf(j10));
            }
            if (C12 == 4) {
                if (j10 < jVar.m0()) {
                    qVar.b();
                }
                return aVar2.invoke();
            }
            if (C12 == 5) {
                qVar.b();
            }
            qVar2 = qVar;
        }
    }

    public static void r0(j jVar, long j10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i10 & 1) != 0) {
            j10 = 1;
        }
        jVar.q0(j10);
    }

    @InterfaceC13153z0
    public static void v0() {
    }

    @InterfaceC13153z0
    public static void x0() {
    }

    @Override
    public boolean A() {
        return y0(f89599e.get(this));
    }

    public final Object A1(q<E> qVar, int i10, long j10, Object obj) {
        Object y10 = qVar.y(i10);
        if (y10 == null) {
            if (j10 >= (f89599e.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return gg.k.s();
                }
                if (qVar.t(i10, y10, obj)) {
                    Z();
                    return gg.k.r();
                }
            }
        } else if (y10 == gg.k.f89654f && qVar.t(i10, y10, gg.k.f())) {
            Z();
            return qVar.A(i10);
        }
        return B1(qVar, i10, j10, obj);
    }

    public final boolean B0() {
        long e02 = e0();
        return e02 == 0 || e02 == Long.MAX_VALUE;
    }

    public final Object B1(q<E> qVar, int i10, long j10, Object obj) {
        while (true) {
            Object y10 = qVar.y(i10);
            if (y10 == null || y10 == gg.k.k()) {
                if (j10 < (f89599e.get(this) & 1152921504606846975L)) {
                    if (qVar.t(i10, y10, gg.k.o())) {
                        Z();
                        return gg.k.h();
                    }
                } else {
                    if (obj == null) {
                        return gg.k.s();
                    }
                    if (qVar.t(i10, y10, obj)) {
                        Z();
                        return gg.k.r();
                    }
                }
            } else {
                if (y10 != gg.k.f89654f) {
                    if (y10 != gg.k.j() && y10 != gg.k.o()) {
                        if (y10 == gg.k.z()) {
                            Z();
                            return gg.k.h();
                        }
                        if (y10 != gg.k.p() && qVar.t(i10, y10, gg.k.q())) {
                            boolean z10 = y10 instanceof H;
                            if (z10) {
                                y10 = ((H) y10).f89574a;
                            }
                            if (w1(y10, qVar, i10)) {
                                qVar.C(i10, gg.k.f());
                                Z();
                                return qVar.A(i10);
                            }
                            qVar.C(i10, gg.k.j());
                            qVar.z(i10, false);
                            if (z10) {
                                Z();
                            }
                            return gg.k.h();
                        }
                    }
                    return gg.k.h();
                }
                if (qVar.t(i10, y10, gg.k.f())) {
                    Z();
                    return qVar.A(i10);
                }
            }
        }
    }

    public final void C0(AtomicLongFieldUpdater atomicLongFieldUpdater, Mf.l<? super Long, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    public final int C1(q<E> qVar, int i10, E e10, long j10, Object obj, boolean z10) {
        qVar.D(i10, e10);
        if (z10) {
            return D1(qVar, i10, e10, j10, obj, z10);
        }
        Object y10 = qVar.y(i10);
        if (y10 == null) {
            if (P(j10)) {
                if (qVar.t(i10, null, gg.k.f89654f)) {
                    return 1;
                }
            } else {
                if (obj == null) {
                    return 3;
                }
                if (qVar.t(i10, null, obj)) {
                    return 2;
                }
            }
        } else if (y10 instanceof y1) {
            qVar.u(i10);
            if (v1(y10, e10)) {
                qVar.C(i10, gg.k.f());
                Q0();
                return 0;
            }
            if (qVar.v(i10, gg.k.i()) != gg.k.i()) {
                qVar.z(i10, true);
            }
            return 5;
        }
        return D1(qVar, i10, e10, j10, obj, z10);
    }

    @Override
    public boolean D() {
        return w0(f89599e.get(this));
    }

    public final int D1(q<E> qVar, int i10, E e10, long j10, Object obj, boolean z10) {
        while (true) {
            Object y10 = qVar.y(i10);
            if (y10 == null) {
                if (!P(j10) || z10) {
                    if (z10) {
                        if (qVar.t(i10, null, gg.k.j())) {
                            qVar.z(i10, false);
                            return 4;
                        }
                    } else {
                        if (obj == null) {
                            return 3;
                        }
                        if (qVar.t(i10, null, obj)) {
                            return 2;
                        }
                    }
                } else if (qVar.t(i10, null, gg.k.f89654f)) {
                    return 1;
                }
            } else {
                if (y10 != gg.k.k()) {
                    if (y10 == gg.k.i()) {
                        qVar.u(i10);
                        return 5;
                    }
                    if (y10 == gg.k.o()) {
                        qVar.u(i10);
                        return 5;
                    }
                    if (y10 == gg.k.z()) {
                        qVar.u(i10);
                        X();
                        return 4;
                    }
                    qVar.u(i10);
                    if (y10 instanceof H) {
                        y10 = ((H) y10).f89574a;
                    }
                    if (v1(y10, e10)) {
                        qVar.C(i10, gg.k.f());
                        Q0();
                        return 0;
                    }
                    if (qVar.v(i10, gg.k.i()) != gg.k.i()) {
                        qVar.z(i10, true);
                    }
                    return 5;
                }
                if (qVar.t(i10, y10, gg.k.f89654f)) {
                    return 1;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003c, code lost:
    
        r8 = (gg.q) r8.g();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long E0(q<E> qVar) {
        do {
            int i10 = gg.k.f89650b;
            while (true) {
                i10--;
                if (-1 >= i10) {
                    break;
                }
                long j10 = (qVar.f97034d * gg.k.f89650b) + i10;
                if (j10 < m0()) {
                    return -1L;
                }
                while (true) {
                    Object y10 = qVar.y(i10);
                    if (y10 == null || y10 == gg.k.k()) {
                        if (qVar.t(i10, y10, gg.k.z())) {
                            qVar.r();
                            break;
                        }
                    } else if (y10 == gg.k.f89654f) {
                        return j10;
                    }
                }
            }
        } while (qVar != null);
        return -1L;
    }

    public final void E1(long j10) {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f89600f;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if (j11 >= j10) {
                return;
            }
        } while (!f89600f.compareAndSet(this, j11, j10));
    }

    @Override
    public void F(@NotNull Mf.l<? super Throwable, P0> lVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f89607m;
        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, lVar)) {
            return;
        }
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != gg.k.d()) {
                if (obj == gg.k.e()) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked");
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f89607m, this, gg.k.d(), gg.k.e()));
        lVar.invoke(f0());
    }

    public final void F0() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f89599e;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if (((int) (j10 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, gg.k.b(1152921504606846975L & j10, 1)));
    }

    public final void F1(long j10) {
        long j11;
        long j12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f89599e;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            j12 = 1152921504606846975L & j11;
            if (j12 >= j10) {
                return;
            }
        } while (!f89599e.compareAndSet(this, j11, gg.k.b(j12, (int) (j11 >> 60))));
    }

    public final void G0() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f89599e;
        do {
            j10 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, gg.k.b(1152921504606846975L & j10, 3)));
    }

    public final void G1(long j10) {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j12;
        if (B0()) {
            return;
        }
        do {
        } while (e0() <= j10);
        int g10 = gg.k.g();
        for (int i10 = 0; i10 < g10; i10++) {
            long e02 = e0();
            if (e02 == (4611686018427387903L & f89602h.get(this)) && e02 == e0()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f89602h;
        do {
            j11 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j11, gg.k.a(j11 & 4611686018427387903L, true)));
        while (true) {
            long e03 = e0();
            atomicLongFieldUpdater = f89602h;
            long j13 = atomicLongFieldUpdater.get(this);
            long j14 = j13 & 4611686018427387903L;
            boolean z10 = (4611686018427387904L & j13) != 0;
            if (e03 == j14 && e03 == e0()) {
                break;
            } else if (!z10) {
                atomicLongFieldUpdater.compareAndSet(this, j13, gg.k.a(j14, true));
            }
        }
        do {
            j12 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j12, gg.k.a(j12 & 4611686018427387903L, false)));
    }

    @Override
    @Nullable
    public Object H(@NotNull yf.f<? super E> fVar) {
        return Y0(this, fVar);
    }

    public final void H0() {
        long j10;
        long b10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f89599e;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            int i10 = (int) (j10 >> 60);
            if (i10 == 0) {
                b10 = gg.k.b(j10 & 1152921504606846975L, 2);
            } else if (i10 != 1) {
                return;
            } else {
                b10 = gg.k.b(j10 & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, b10));
    }

    @Override
    @NotNull
    public pg.g<E> I() {
        c cVar = c.f89616b;
        M.n(cVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Mf.q qVar = (Mf.q) w0.q(cVar, 3);
        d dVar = d.f89617b;
        M.n(dVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new pg.h(this, qVar, (Mf.q) w0.q(dVar, 3), this.f89610d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0011, code lost:
    
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void I0(long j10, q<E> qVar) {
        q<E> qVar2;
        q<E> qVar3;
        while (qVar.f97034d < j10 && (qVar3 = (q) qVar.e()) != null) {
            qVar = qVar3;
        }
        while (true) {
            if (!qVar.h() || (qVar2 = (q) qVar.e()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f89605k;
                while (true) {
                    P p10 = (P) atomicReferenceFieldUpdater.get(this);
                    if (p10.f97034d >= qVar.f97034d) {
                        return;
                    }
                    if (!qVar.s()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, p10, qVar)) {
                        if (p10.o()) {
                            p10.l();
                            return;
                        }
                        return;
                    } else if (qVar.o()) {
                        qVar.l();
                    }
                }
            } else {
                qVar = qVar2;
            }
        }
    }

    @Override
    public boolean J(@Nullable Throwable th2) {
        return U(th2, false);
    }

    public void J0() {
    }

    public final void K0(InterfaceC13133p<? super p<? extends E>> interfaceC13133p) {
        C14416i0.a aVar = C14416i0.f98201c;
        interfaceC13133p.resumeWith(C14416i0.b(p.b(p.f89695b.a(f0()))));
    }

    public final void L0(InterfaceC13133p<? super E> interfaceC13133p) {
        C14416i0.a aVar = C14416i0.f98201c;
        interfaceC13133p.resumeWith(C14416i0.b(C14418j0.a(l0())));
    }

    @Override
    @Nullable
    public Object M(E e10, @NotNull yf.f<? super P0> fVar) {
        return l1(this, e10, fVar);
    }

    public final void M0(pg.m<?> mVar) {
        mVar.w(gg.k.z());
    }

    public final void N0(E e10, pg.m<?> mVar) {
        Mf.l<E, P0> lVar = this.f89609c;
        if (lVar != null) {
            J.b(lVar, e10, mVar.getContext());
        }
        mVar.w(gg.k.z());
    }

    public final Object O0(E e10, yf.f<? super P0> fVar) {
        UndeliveredElementException d10;
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        Mf.l<E, P0> lVar = this.f89609c;
        if (lVar == null || (d10 = J.d(lVar, e10, null, 2, null)) == null) {
            Throwable n02 = n0();
            C14416i0.a aVar = C14416i0.f98201c;
            c13135q.resumeWith(C14416i0.b(C14418j0.a(n02)));
        } else {
            C14436t.a(d10, n0());
            C14416i0.a aVar2 = C14416i0.f98201c;
            c13135q.resumeWith(C14416i0.b(C14418j0.a(d10)));
        }
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    public final boolean P(long j10) {
        return j10 < e0() || j10 < m0() + ((long) this.f89608b);
    }

    public final void P0(E e10, InterfaceC13133p<? super P0> interfaceC13133p) {
        Mf.l<E, P0> lVar = this.f89609c;
        if (lVar != null) {
            J.b(lVar, e10, interfaceC13133p.getContext());
        }
        Throwable n02 = n0();
        C14416i0.a aVar = C14416i0.f98201c;
        interfaceC13133p.resumeWith(C14416i0.b(C14418j0.a(n02)));
    }

    public boolean Q(@Nullable Throwable th2) {
        if (th2 == null) {
            th2 = new CancellationException("Channel was cancelled");
        }
        return U(th2, true);
    }

    public void Q0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void R(q<E> qVar, long j10) {
        Object c10 = C14256q.c(null, 1, null);
        loop0: while (qVar != null) {
            for (int i10 = gg.k.f89650b - 1; -1 < i10; i10--) {
                if ((qVar.f97034d * gg.k.f89650b) + i10 < j10) {
                    break loop0;
                }
                while (true) {
                    Object y10 = qVar.y(i10);
                    if (y10 != null && y10 != gg.k.k()) {
                        if (!(y10 instanceof H)) {
                            if (!(y10 instanceof y1)) {
                                break;
                            }
                            if (qVar.t(i10, y10, gg.k.z())) {
                                c10 = C14256q.h(c10, y10);
                                qVar.z(i10, true);
                                break;
                            }
                        } else {
                            if (qVar.t(i10, y10, gg.k.z())) {
                                c10 = C14256q.h(c10, ((H) y10).f89574a);
                                qVar.z(i10, true);
                                break;
                            }
                        }
                    } else {
                        if (qVar.t(i10, y10, gg.k.z())) {
                            qVar.r();
                            break;
                        }
                    }
                }
            }
            qVar = (q) qVar.g();
        }
        if (c10 != null) {
            if (!(c10 instanceof ArrayList)) {
                i1((y1) c10);
                return;
            }
            M.n(c10, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ArrayList arrayList = (ArrayList) c10;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                i1((y1) arrayList.get(size));
            }
        }
    }

    public void R0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void S() {
        if (B0()) {
            if (f89605k.get(this) != gg.k.n()) {
                throw new IllegalStateException(("bufferEndSegment must be NULL_SEGMENT for rendezvous and unlimited channels; they do not manipulate it.\nChannel state: " + ((Object) this)).toString());
            }
        } else if (((q) f89604j.get(this)).f97034d > ((q) f89605k.get(this)).f97034d) {
            throw new IllegalStateException(("bufferEndSegment should not have lower id than receiveSegment.\nChannel state: " + ((Object) this)).toString());
        }
        List Q10 = pf.H.Q(f89604j.get(this), f89603i.get(this), f89605k.get(this));
        ArrayList arrayList = new ArrayList();
        for (E e10 : Q10) {
            if (((q) e10) != gg.k.n()) {
                arrayList.add(e10);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j10 = ((q) next).f97034d;
            do {
                Object next2 = it.next();
                long j11 = ((q) next2).f97034d;
                if (j10 > j11) {
                    next = next2;
                    j10 = j11;
                }
            } while (it.hasNext());
        }
        q qVar = (q) next;
        if (qVar.g() != 0) {
            throw new IllegalStateException(("All processed segments should be unreachable from the data structure, but the `prev` link of the leftmost segment is non-null.\nChannel state: " + ((Object) this)).toString());
        }
        while (qVar.e() != 0) {
            S e11 = qVar.e();
            M.m(e11);
            if (((q) e11).g() != 0) {
                S e12 = qVar.e();
                M.m(e12);
                if (((q) e12).g() != qVar) {
                    throw new IllegalStateException(("The `segment.next.prev === segment` invariant is violated.\nChannel state: " + ((Object) this)).toString());
                }
            }
            int i10 = gg.k.f89650b;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object y10 = qVar.y(i12);
                if (!M.g(y10, gg.k.f89654f) && !(y10 instanceof y1)) {
                    if (M.g(y10, gg.k.i()) ? true : M.g(y10, gg.k.j()) ? true : M.g(y10, gg.k.z())) {
                        if (!(qVar.x(i12) == null)) {
                            throw new IllegalStateException("Check failed.");
                        }
                        i11++;
                    } else {
                        if (!(M.g(y10, gg.k.o()) ? true : M.g(y10, gg.k.f()))) {
                            throw new IllegalStateException(("Unexpected segment cell state: " + y10 + ".\nChannel state: " + ((Object) this)).toString());
                        }
                        if (!(qVar.x(i12) == null)) {
                            throw new IllegalStateException("Check failed.");
                        }
                    }
                }
            }
            if (i11 == gg.k.f89650b) {
                if (!(qVar == f89604j.get(this) || qVar == f89603i.get(this) || qVar == f89605k.get(this))) {
                    throw new IllegalStateException(("Logically removed segment is reachable.\nChannel state: " + ((Object) this)).toString());
                }
            }
            S e13 = qVar.e();
            M.m(e13);
            qVar = (q) e13;
        }
    }

    public final void S0(y1 y1Var, q<E> qVar, int i10) {
        R0();
        y1Var.t(qVar, i10);
    }

    public final q<E> T() {
        Object obj = f89605k.get(this);
        q qVar = (q) f89603i.get(this);
        if (qVar.f97034d > ((q) obj).f97034d) {
            obj = qVar;
        }
        q qVar2 = (q) f89604j.get(this);
        if (qVar2.f97034d > ((q) obj).f97034d) {
            obj = qVar2;
        }
        return (q) C14245f.d((AbstractC14246g) obj);
    }

    public final void T0(y1 y1Var, q<E> qVar, int i10) {
        y1Var.t(qVar, i10 + gg.k.f89650b);
    }

    public boolean U(@Nullable Throwable th2, boolean z10) {
        if (z10) {
            F0();
        }
        boolean a10 = androidx.concurrent.futures.a.a(f89606l, this, gg.k.l(), th2);
        if (z10) {
            G0();
        } else {
            H0();
        }
        X();
        J0();
        if (a10) {
            s0();
        }
        return a10;
    }

    public final Object U0(Object obj, Object obj2) {
        if (obj2 != gg.k.z()) {
            return obj2;
        }
        throw l0();
    }

    public final void V(long j10) {
        h1(W(j10));
    }

    public final Object V0(Object obj, Object obj2) {
        return p.b(obj2 == gg.k.z() ? p.f89695b.a(f0()) : p.f89695b.c(obj2));
    }

    public final q<E> W(long j10) {
        q<E> T10 = T();
        if (z0()) {
            long E02 = E0(T10);
            if (E02 != -1) {
                Y(E02);
            }
        }
        R(T10, j10);
        return T10;
    }

    public final Object W0(Object obj, Object obj2) {
        if (obj2 != gg.k.z()) {
            return obj2;
        }
        if (f0() == null) {
            return null;
        }
        throw l0();
    }

    public final void X() {
        A();
    }

    public final Object X0(Object obj, Object obj2) {
        if (obj2 != gg.k.z()) {
            return this;
        }
        throw n0();
    }

    public final void Y(long j10) {
        UndeliveredElementException d10;
        q<E> qVar = (q) f89604j.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f89600f;
            long j11 = atomicLongFieldUpdater.get(this);
            if (j10 < Math.max(this.f89608b + j11, e0())) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j11, j11 + 1)) {
                int i10 = gg.k.f89650b;
                long j12 = j11 / i10;
                int i11 = (int) (j11 % i10);
                if (qVar.f97034d != j12) {
                    q<E> b02 = b0(j12, qVar);
                    if (b02 == null) {
                        continue;
                    } else {
                        qVar = b02;
                    }
                }
                Object A12 = A1(qVar, i11, j11, null);
                if (A12 != gg.k.h()) {
                    qVar.b();
                    Mf.l<E, P0> lVar = this.f89609c;
                    if (lVar != null && (d10 = J.d(lVar, A12, null, 2, null)) != null) {
                        throw d10;
                    }
                } else if (j11 < o0()) {
                    qVar.b();
                }
            }
        }
    }

    public final void Z() {
        if (B0()) {
            return;
        }
        q<E> qVar = (q) f89605k.get(this);
        while (true) {
            long andIncrement = f89601g.getAndIncrement(this);
            int i10 = gg.k.f89650b;
            long j10 = andIncrement / i10;
            if (o0() <= andIncrement) {
                if (qVar.f97034d < j10 && qVar.e() != 0) {
                    I0(j10, qVar);
                }
                r0(this, 0L, 1, null);
                return;
            }
            if (qVar.f97034d != j10) {
                q<E> a02 = a0(j10, qVar, andIncrement);
                if (a02 == null) {
                    continue;
                } else {
                    qVar = a02;
                }
            }
            if (y1(qVar, (int) (andIncrement % i10), andIncrement)) {
                r0(this, 0L, 1, null);
                return;
            }
            r0(this, 0L, 1, null);
        }
    }

    @Override
    public final void a(@Nullable CancellationException cancellationException) {
        Q(cancellationException);
    }

    public final q<E> a0(long j10, q<E> qVar, long j11) {
        Object g10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f89605k;
        Mf.p pVar = (Mf.p) gg.k.y();
        loop0: while (true) {
            g10 = C14245f.g(qVar, j10, pVar);
            if (!Q.h(g10)) {
                P f10 = Q.f(g10);
                while (true) {
                    P p10 = (P) atomicReferenceFieldUpdater.get(this);
                    if (p10.f97034d >= f10.f97034d) {
                        break loop0;
                    }
                    if (!f10.s()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, p10, f10)) {
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
        if (Q.h(g10)) {
            X();
            I0(j10, qVar);
            r0(this, 0L, 1, null);
            return null;
        }
        q<E> qVar2 = (q) Q.f(g10);
        long j12 = qVar2.f97034d;
        if (j12 <= j10) {
            return qVar2;
        }
        int i10 = gg.k.f89650b;
        if (f89601g.compareAndSet(this, j11 + 1, i10 * j12)) {
            q0((qVar2.f97034d * i10) - j11);
            return null;
        }
        r0(this, 0L, 1, null);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a1(q<E> qVar, int i10, long j10, yf.f<? super p<? extends E>> fVar) {
        m mVar;
        int i11;
        p b10;
        if (fVar instanceof m) {
            mVar = (m) fVar;
            int i12 = mVar.f89637h;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                mVar.f89637h = i12 - Integer.MIN_VALUE;
                Object obj = mVar.f89635f;
                Object l10 = Af.d.l();
                i11 = mVar.f89637h;
                if (i11 != 0) {
                    C14418j0.n(obj);
                    mVar.f89631b = this;
                    mVar.f89632c = qVar;
                    mVar.f89633d = i10;
                    mVar.f89634e = j10;
                    mVar.f89637h = 1;
                    C13135q b11 = C13138s.b(Af.c.e(mVar));
                    try {
                        M.n(b11, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$35>>");
                        C13359C c13359c = new C13359C(b11);
                        Object A12 = A1(qVar, i10, j10, c13359c);
                        if (A12 == gg.k.r()) {
                            S0(c13359c, qVar, i10);
                        } else {
                            Mf.l<Throwable, P0> lVar = null;
                            if (A12 == gg.k.h()) {
                                if (j10 < o0()) {
                                    qVar.b();
                                }
                                q qVar2 = (q) f89604j.get(this);
                                while (true) {
                                    if (D()) {
                                        K0(b11);
                                        break;
                                    }
                                    long andIncrement = f89600f.getAndIncrement(this);
                                    int i13 = gg.k.f89650b;
                                    long j11 = andIncrement / i13;
                                    int i14 = (int) (andIncrement % i13);
                                    if (qVar2.f97034d != j11) {
                                        q b02 = b0(j11, qVar2);
                                        if (b02 != null) {
                                            qVar2 = b02;
                                        }
                                    }
                                    Object A13 = A1(qVar2, i14, andIncrement, c13359c);
                                    if (A13 == gg.k.r()) {
                                        S0(c13359c, qVar2, i14);
                                        break;
                                    }
                                    if (A13 == gg.k.h()) {
                                        if (andIncrement < o0()) {
                                            qVar2.b();
                                        }
                                    } else {
                                        if (A13 == gg.k.s()) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        qVar2.b();
                                        b10 = p.b(p.f89695b.c(A13));
                                        Mf.l<E, P0> lVar2 = this.f89609c;
                                        if (lVar2 != null) {
                                            lVar = J.a(lVar2, A13, b11.getContext());
                                        }
                                    }
                                }
                            } else {
                                qVar.b();
                                b10 = p.b(p.f89695b.c(A12));
                                Mf.l<E, P0> lVar3 = this.f89609c;
                                if (lVar3 != null) {
                                    lVar = J.a(lVar3, A12, b11.getContext());
                                }
                            }
                            b11.o(b10, lVar);
                        }
                        obj = b11.D();
                        if (obj == Af.d.l()) {
                            Bf.h.c(mVar);
                        }
                        if (obj == l10) {
                            return l10;
                        }
                    } catch (Throwable th2) {
                        b11.T();
                        throw th2;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                return ((p) obj).o();
            }
        }
        mVar = new m(this, fVar);
        Object obj2 = mVar.f89635f;
        Object l102 = Af.d.l();
        i11 = mVar.f89637h;
        if (i11 != 0) {
        }
        return ((p) obj2).o();
    }

    @Override
    public final boolean b(@Nullable Throwable th2) {
        return Q(th2);
    }

    public final q<E> b0(long j10, q<E> qVar) {
        Object g10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f89604j;
        Mf.p pVar = (Mf.p) gg.k.y();
        loop0: while (true) {
            g10 = C14245f.g(qVar, j10, pVar);
            if (!Q.h(g10)) {
                P f10 = Q.f(g10);
                while (true) {
                    P p10 = (P) atomicReferenceFieldUpdater.get(this);
                    if (p10.f97034d >= f10.f97034d) {
                        break loop0;
                    }
                    if (!f10.s()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, p10, f10)) {
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
        if (Q.h(g10)) {
            X();
            if (qVar.f97034d * gg.k.f89650b >= o0()) {
                return null;
            }
            qVar.b();
            return null;
        }
        q<E> qVar2 = (q) Q.f(g10);
        if (!B0() && j10 <= e0() / gg.k.f89650b) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f89605k;
            while (true) {
                P p11 = (P) atomicReferenceFieldUpdater2.get(this);
                if (p11.f97034d >= qVar2.f97034d || !qVar2.s()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, p11, qVar2)) {
                    if (p11.o()) {
                        p11.l();
                    }
                } else if (qVar2.o()) {
                    qVar2.l();
                }
            }
        }
        long j11 = qVar2.f97034d;
        if (j11 <= j10) {
            return qVar2;
        }
        int i10 = gg.k.f89650b;
        E1(j11 * i10);
        if (qVar2.f97034d * i10 >= o0()) {
            return null;
        }
        qVar2.b();
        return null;
    }

    public final <R> R b1(Object obj, Mf.l<? super E, ? extends R> lVar, Mf.q<? super q<E>, ? super Integer, ? super Long, ? extends R> qVar, Mf.a<? extends R> aVar, Mf.q<? super q<E>, ? super Integer, ? super Long, ? extends R> qVar2) {
        q qVar3 = (q) f89604j.get(this);
        while (!D()) {
            long andIncrement = f89600f.getAndIncrement(this);
            int i10 = gg.k.f89650b;
            long j10 = andIncrement / i10;
            int i11 = (int) (andIncrement % i10);
            if (qVar3.f97034d != j10) {
                q b02 = b0(j10, qVar3);
                if (b02 == null) {
                    continue;
                } else {
                    qVar3 = b02;
                }
            }
            T t10 = (Object) A1(qVar3, i11, andIncrement, obj);
            if (t10 == gg.k.r()) {
                y1 y1Var = obj instanceof y1 ? (y1) obj : null;
                if (y1Var != null) {
                    S0(y1Var, qVar3, i11);
                }
                return qVar.n(qVar3, Integer.valueOf(i11), Long.valueOf(andIncrement));
            }
            if (t10 != gg.k.h()) {
                if (t10 == gg.k.s()) {
                    return qVar2.n(qVar3, Integer.valueOf(i11), Long.valueOf(andIncrement));
                }
                qVar3.b();
                return lVar.invoke(t10);
            }
            if (andIncrement < o0()) {
                qVar3.b();
            }
        }
        return aVar.invoke();
    }

    public final q<E> c0(long j10, q<E> qVar) {
        Object g10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f89603i;
        Mf.p pVar = (Mf.p) gg.k.y();
        loop0: while (true) {
            g10 = C14245f.g(qVar, j10, pVar);
            if (!Q.h(g10)) {
                P f10 = Q.f(g10);
                while (true) {
                    P p10 = (P) atomicReferenceFieldUpdater.get(this);
                    if (p10.f97034d >= f10.f97034d) {
                        break loop0;
                    }
                    if (!f10.s()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, p10, f10)) {
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
        if (Q.h(g10)) {
            X();
            if (qVar.f97034d * gg.k.f89650b >= m0()) {
                return null;
            }
            qVar.b();
            return null;
        }
        q<E> qVar2 = (q) Q.f(g10);
        long j11 = qVar2.f97034d;
        if (j11 <= j10) {
            return qVar2;
        }
        int i10 = gg.k.f89650b;
        F1(j11 * i10);
        if (qVar2.f97034d * i10 >= m0()) {
            return null;
        }
        qVar2.b();
        return null;
    }

    @Override
    public final void cancel() {
        Q(null);
    }

    public final Object d0(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, ? extends Object> lVar, Object obj) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, obj2, lVar.invoke(obj2)));
        return obj2;
    }

    public final void d1(q<E> qVar, int i10, long j10, y1 y1Var, Mf.l<? super E, P0> lVar, Mf.a<P0> aVar) {
        T t10 = (Object) A1(qVar, i10, j10, y1Var);
        if (t10 == gg.k.r()) {
            S0(y1Var, qVar, i10);
            return;
        }
        if (t10 != gg.k.h()) {
            qVar.b();
            lVar.invoke(t10);
            return;
        }
        if (j10 < o0()) {
            qVar.b();
        }
        q qVar2 = (q) f89604j.get(this);
        while (!D()) {
            long andIncrement = f89600f.getAndIncrement(this);
            int i11 = gg.k.f89650b;
            long j11 = andIncrement / i11;
            int i12 = (int) (andIncrement % i11);
            if (qVar2.f97034d != j11) {
                q b02 = b0(j11, qVar2);
                if (b02 == null) {
                    continue;
                } else {
                    qVar2 = b02;
                }
            }
            T t11 = (Object) A1(qVar2, i12, andIncrement, y1Var);
            if (t11 == gg.k.r()) {
                if (y1Var == null) {
                    y1Var = null;
                }
                if (y1Var != null) {
                    S0(y1Var, qVar2, i12);
                }
                P0 p02 = P0.f98194a;
                return;
            }
            if (t11 != gg.k.h()) {
                if (t11 == gg.k.s()) {
                    throw new IllegalStateException("unexpected");
                }
                qVar2.b();
                lVar.invoke(t11);
                return;
            }
            if (andIncrement < o0()) {
                qVar2.b();
            }
        }
        aVar.invoke();
    }

    public final long e0() {
        return f89601g.get(this);
    }

    public final Object e1(q<E> qVar, int i10, long j10, yf.f<? super E> fVar) {
        C13135q b10 = C13138s.b(Af.c.e(fVar));
        try {
            Object A12 = A1(qVar, i10, j10, b10);
            if (A12 == gg.k.r()) {
                S0(b10, qVar, i10);
            } else {
                Mf.l<Throwable, P0> lVar = null;
                lVar = null;
                if (A12 == gg.k.h()) {
                    if (j10 < o0()) {
                        qVar.b();
                    }
                    q qVar2 = (q) f89604j.get(this);
                    while (true) {
                        if (D()) {
                            L0(b10);
                            break;
                        }
                        long andIncrement = f89600f.getAndIncrement(this);
                        int i11 = gg.k.f89650b;
                        long j11 = andIncrement / i11;
                        int i12 = (int) (andIncrement % i11);
                        if (qVar2.f97034d != j11) {
                            q b02 = b0(j11, qVar2);
                            if (b02 != null) {
                                qVar2 = b02;
                            }
                        }
                        A12 = A1(qVar2, i12, andIncrement, b10);
                        if (A12 == gg.k.r()) {
                            C13135q c13135q = b10 != null ? b10 : null;
                            if (c13135q != null) {
                                S0(c13135q, qVar2, i12);
                            }
                        } else if (A12 == gg.k.h()) {
                            if (andIncrement < o0()) {
                                qVar2.b();
                            }
                        } else {
                            if (A12 == gg.k.s()) {
                                throw new IllegalStateException("unexpected");
                            }
                            qVar2.b();
                            Mf.l<E, P0> lVar2 = this.f89609c;
                            if (lVar2 != null) {
                                lVar = J.a(lVar2, A12, b10.getContext());
                            }
                        }
                    }
                } else {
                    qVar.b();
                    Mf.l<E, P0> lVar3 = this.f89609c;
                    if (lVar3 != null) {
                        lVar = J.a(lVar3, A12, b10.getContext());
                    }
                }
                b10.o(A12, lVar);
            }
            Object D10 = b10.D();
            if (D10 == Af.d.l()) {
                Bf.h.c(fVar);
            }
            return D10;
        } catch (Throwable th2) {
            b10.T();
            throw th2;
        }
    }

    @Nullable
    public final Throwable f0() {
        return (Throwable) f89606l.get(this);
    }

    public final void f1(pg.m<?> mVar, Object obj) {
        q qVar = (q) f89604j.get(this);
        while (!D()) {
            long andIncrement = f89600f.getAndIncrement(this);
            int i10 = gg.k.f89650b;
            long j10 = andIncrement / i10;
            int i11 = (int) (andIncrement % i10);
            if (qVar.f97034d != j10) {
                q b02 = b0(j10, qVar);
                if (b02 == null) {
                    continue;
                } else {
                    qVar = b02;
                }
            }
            Object A12 = A1(qVar, i11, andIncrement, mVar);
            if (A12 == gg.k.r()) {
                y1 y1Var = mVar instanceof y1 ? (y1) mVar : null;
                if (y1Var != null) {
                    S0(y1Var, qVar, i11);
                    return;
                }
                return;
            }
            if (A12 != gg.k.h()) {
                if (A12 == gg.k.s()) {
                    throw new IllegalStateException("unexpected");
                }
                qVar.b();
                mVar.w(A12);
                return;
            }
            if (andIncrement < o0()) {
                qVar.b();
            }
        }
        M0(mVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0082, code lost:
    
        r14.w(nf.P0.f98194a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g1(@NotNull pg.m<?> mVar, @Nullable Object obj) {
        q qVar = (q) f89603i.get(this);
        while (true) {
            long andIncrement = f89599e.getAndIncrement(this);
            long j10 = 1152921504606846975L & andIncrement;
            boolean y02 = y0(andIncrement);
            int i10 = gg.k.f89650b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (qVar.f97034d != j11) {
                q c02 = c0(j11, qVar);
                if (c02 != null) {
                    qVar = c02;
                } else if (y02) {
                    break;
                }
            }
            int C12 = C1(qVar, i11, obj, j10, mVar, y02);
            if (C12 == 0) {
                qVar.b();
                break;
            }
            if (C12 == 1) {
                break;
            }
            if (C12 != 2) {
                if (C12 == 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (C12 != 4) {
                    if (C12 == 5) {
                        qVar.b();
                    }
                } else if (j10 < m0()) {
                    qVar.b();
                }
            } else {
                if (!y02) {
                    y1 y1Var = mVar instanceof y1 ? (y1) mVar : null;
                    if (y1Var != null) {
                        T0(y1Var, qVar, i11);
                        return;
                    }
                    return;
                }
                qVar.r();
            }
        }
        N0(obj, mVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x00b3, code lost:
    
        r12 = (gg.q) r12.g();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h1(q<E> qVar) {
        Mf.l<E, P0> lVar = this.f89609c;
        UndeliveredElementException undeliveredElementException = null;
        Object c10 = C14256q.c(null, 1, null);
        loop0: do {
            int i10 = gg.k.f89650b - 1;
            while (true) {
                if (-1 >= i10) {
                    break;
                }
                long j10 = (qVar.f97034d * gg.k.f89650b) + i10;
                while (true) {
                    Object y10 = qVar.y(i10);
                    if (y10 == gg.k.f()) {
                        break loop0;
                    }
                    if (y10 == gg.k.f89654f) {
                        if (j10 < m0()) {
                            break loop0;
                        }
                        if (qVar.t(i10, y10, gg.k.z())) {
                            if (lVar != null) {
                                undeliveredElementException = J.c(lVar, qVar.x(i10), undeliveredElementException);
                            }
                            qVar.u(i10);
                            qVar.r();
                        }
                    } else if (y10 == gg.k.k() || y10 == null) {
                        if (qVar.t(i10, y10, gg.k.z())) {
                            qVar.r();
                            break;
                        }
                    } else if (!(y10 instanceof y1) && !(y10 instanceof H)) {
                        if (y10 != gg.k.p() && y10 != gg.k.q()) {
                            if (y10 != gg.k.p()) {
                                break;
                            }
                        } else {
                            break loop0;
                        }
                    } else {
                        if (j10 < m0()) {
                            break loop0;
                        }
                        y1 y1Var = y10 instanceof H ? ((H) y10).f89574a : (y1) y10;
                        if (qVar.t(i10, y10, gg.k.z())) {
                            if (lVar != null) {
                                undeliveredElementException = J.c(lVar, qVar.x(i10), undeliveredElementException);
                            }
                            c10 = C14256q.h(c10, y1Var);
                            qVar.u(i10);
                            qVar.r();
                        }
                    }
                }
                i10--;
            }
        } while (qVar != null);
        if (c10 != null) {
            if (c10 instanceof ArrayList) {
                M.n(c10, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
                ArrayList arrayList = (ArrayList) c10;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    j1((y1) arrayList.get(size));
                }
            } else {
                j1((y1) c10);
            }
        }
        if (undeliveredElementException != null) {
            throw undeliveredElementException;
        }
    }

    public final void i1(y1 y1Var) {
        k1(y1Var, true);
    }

    @Override
    public boolean isEmpty() {
        if (D() || p0()) {
            return false;
        }
        return !D();
    }

    @Override
    @NotNull
    public gg.n<E> iterator() {
        return new a();
    }

    @Override
    @NotNull
    public pg.i<E, j<E>> j() {
        i iVar = i.f89622b;
        M.n(iVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Mf.q qVar = (Mf.q) w0.q(iVar, 3);
        C1718j c1718j = C1718j.f89623b;
        M.n(c1718j, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new pg.j(this, qVar, (Mf.q) w0.q(c1718j, 3), null, 8, null);
    }

    public final void j1(y1 y1Var) {
        k1(y1Var, false);
    }

    public final void k1(y1 y1Var, boolean z10) {
        if (y1Var instanceof b) {
            InterfaceC13133p<Boolean> a10 = ((b) y1Var).a();
            C14416i0.a aVar = C14416i0.f98201c;
            a10.resumeWith(C14416i0.b(Boolean.FALSE));
            return;
        }
        if (y1Var instanceof InterfaceC13133p) {
            yf.f fVar = (yf.f) y1Var;
            C14416i0.a aVar2 = C14416i0.f98201c;
            fVar.resumeWith(C14416i0.b(C14418j0.a(z10 ? l0() : n0())));
        } else if (y1Var instanceof C13359C) {
            C13135q<p<? extends E>> c13135q = ((C13359C) y1Var).f89556b;
            C14416i0.a aVar3 = C14416i0.f98201c;
            c13135q.resumeWith(C14416i0.b(p.b(p.f89695b.a(f0()))));
        } else if (y1Var instanceof a) {
            ((a) y1Var).k();
        } else {
            if (y1Var instanceof pg.m) {
                ((pg.m) y1Var).x(this, gg.k.z());
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + ((Object) y1Var)).toString());
        }
    }

    public final Throwable l0() {
        Throwable f02 = f0();
        return f02 == null ? new ClosedReceiveChannelException(r.f89701a) : f02;
    }

    public final long m0() {
        return f89600f.get(this);
    }

    @Nullable
    public Object m1(E e10, @NotNull yf.f<? super Boolean> fVar) {
        return n1(this, e10, fVar);
    }

    @NotNull
    public final Throwable n0() {
        Throwable f02 = f0();
        return f02 == null ? new ClosedSendChannelException(r.f89701a) : f02;
    }

    public final long o0() {
        return f89599e.get(this) & 1152921504606846975L;
    }

    public final <R> R o1(E e10, @Nullable Object obj, @NotNull Mf.a<? extends R> aVar, @NotNull Mf.p<? super q<E>, ? super Integer, ? extends R> pVar, @NotNull Mf.a<? extends R> aVar2, @NotNull Mf.r<? super q<E>, ? super Integer, ? super E, ? super Long, ? extends R> rVar) {
        q qVar;
        q qVar2 = (q) f89603i.get(this);
        while (true) {
            long andIncrement = f89599e.getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean y02 = y0(andIncrement);
            int i10 = gg.k.f89650b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (qVar2.f97034d != j11) {
                q c02 = c0(j11, qVar2);
                if (c02 != null) {
                    qVar = c02;
                } else if (y02) {
                    return aVar2.invoke();
                }
            } else {
                qVar = qVar2;
            }
            int C12 = C1(qVar, i11, e10, j10, obj, y02);
            if (C12 == 0) {
                qVar.b();
                return aVar.invoke();
            }
            if (C12 == 1) {
                return aVar.invoke();
            }
            if (C12 == 2) {
                if (y02) {
                    qVar.r();
                    return aVar2.invoke();
                }
                y1 y1Var = obj instanceof y1 ? (y1) obj : null;
                if (y1Var != null) {
                    T0(y1Var, qVar, i11);
                }
                return pVar.invoke(qVar, Integer.valueOf(i11));
            }
            if (C12 == 3) {
                return rVar.invoke(qVar, Integer.valueOf(i11), e10, Long.valueOf(j10));
            }
            if (C12 == 4) {
                if (j10 < m0()) {
                    qVar.b();
                }
                return aVar2.invoke();
            }
            if (C12 == 5) {
                qVar.b();
            }
            qVar2 = qVar;
        }
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        return l.a.c(this, e10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return gg.p.f89695b.c(nf.P0.f98194a);
     */
    @Override
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object p(E e10) {
        q qVar;
        if (s1(f89599e.get(this))) {
            return p.f89695b.b();
        }
        Object j10 = gg.k.j();
        q qVar2 = (q) f89603i.get(this);
        while (true) {
            long andIncrement = f89599e.getAndIncrement(this);
            long j11 = andIncrement & 1152921504606846975L;
            boolean y02 = y0(andIncrement);
            int i10 = gg.k.f89650b;
            long j12 = j11 / i10;
            int i11 = (int) (j11 % i10);
            if (qVar2.f97034d != j12) {
                q c02 = c0(j12, qVar2);
                if (c02 != null) {
                    qVar = c02;
                } else if (y02) {
                    break;
                }
            } else {
                qVar = qVar2;
            }
            int C12 = C1(qVar, i11, e10, j11, j10, y02);
            if (C12 == 0) {
                qVar.b();
                break;
            }
            if (C12 == 1) {
                break;
            }
            if (C12 != 2) {
                if (C12 == 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (C12 != 4) {
                    if (C12 == 5) {
                        qVar.b();
                    }
                    qVar2 = qVar;
                } else if (j11 < m0()) {
                    qVar.b();
                }
            } else {
                if (!y02) {
                    y1 y1Var = j10 instanceof y1 ? (y1) j10 : null;
                    if (y1Var != null) {
                        T0(y1Var, qVar, i11);
                    }
                    qVar.r();
                    return p.f89695b.b();
                }
                qVar.r();
            }
        }
        return p.f89695b.a(n0());
    }

    public final boolean p0() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f89604j;
            q<E> qVar = (q) atomicReferenceFieldUpdater.get(this);
            long m02 = m0();
            if (o0() <= m02) {
                return false;
            }
            int i10 = gg.k.f89650b;
            long j10 = m02 / i10;
            if (qVar.f97034d == j10 || (qVar = b0(j10, qVar)) != null) {
                qVar.b();
                if (t0(qVar, (int) (m02 % i10), m02)) {
                    return true;
                }
                f89600f.compareAndSet(this, m02, m02 + 1);
            } else if (((q) atomicReferenceFieldUpdater.get(this)).f97034d < j10) {
                return false;
            }
        }
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @InterfaceC14412g0(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return (E) l.a.d(this);
    }

    public final void q0(long j10) {
        if ((f89602h.addAndGet(this, j10) & 4611686018427387904L) == 0) {
            return;
        }
        do {
        } while ((f89602h.get(this) & 4611686018427387904L) != 0);
    }

    public final void q1(q<E> qVar, int i10, E e10, long j10, y1 y1Var, Mf.a<P0> aVar, Mf.a<P0> aVar2) {
        q qVar2;
        y1 y1Var2 = y1Var;
        int C12 = C1(qVar, i10, e10, j10, y1Var, false);
        if (C12 == 0) {
            qVar.b();
            aVar.invoke();
            return;
        }
        if (C12 == 1) {
            aVar.invoke();
            return;
        }
        if (C12 == 2) {
            T0(y1Var2, qVar, i10);
            return;
        }
        if (C12 == 4) {
            if (j10 < m0()) {
                qVar.b();
            }
            aVar2.invoke();
            return;
        }
        if (C12 != 5) {
            throw new IllegalStateException("unexpected");
        }
        qVar.b();
        q qVar3 = (q) f89603i.get(this);
        while (true) {
            long andIncrement = f89599e.getAndIncrement(this);
            long j11 = andIncrement & 1152921504606846975L;
            boolean y02 = y0(andIncrement);
            int i11 = gg.k.f89650b;
            long j12 = j11 / i11;
            int i12 = (int) (j11 % i11);
            if (qVar3.f97034d != j12) {
                q c02 = c0(j12, qVar3);
                if (c02 != null) {
                    qVar2 = c02;
                } else if (y02) {
                    aVar2.invoke();
                    return;
                }
            } else {
                qVar2 = qVar3;
            }
            q qVar4 = qVar2;
            int C13 = C1(qVar2, i12, e10, j11, y1Var, y02);
            if (C13 == 0) {
                qVar4.b();
                aVar.invoke();
                return;
            }
            if (C13 == 1) {
                aVar.invoke();
                return;
            }
            if (C13 == 2) {
                if (y02) {
                    qVar4.r();
                    aVar2.invoke();
                    return;
                }
                if (y1Var2 == null) {
                    y1Var2 = null;
                }
                if (y1Var2 != null) {
                    T0(y1Var2, qVar4, i12);
                }
                P0 p02 = P0.f98194a;
                return;
            }
            if (C13 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (C13 == 4) {
                if (j11 < m0()) {
                    qVar4.b();
                }
                aVar2.invoke();
                return;
            } else {
                if (C13 == 5) {
                    qVar4.b();
                }
                qVar3 = qVar4;
            }
        }
    }

    @Override
    @NotNull
    public pg.g<p<E>> r() {
        e eVar = e.f89618b;
        M.n(eVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Mf.q qVar = (Mf.q) w0.q(eVar, 3);
        f fVar = f.f89619b;
        M.n(fVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new pg.h(this, qVar, (Mf.q) w0.q(fVar, 3), this.f89610d);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object r1(q<E> qVar, int i10, E e10, long j10, yf.f<? super P0> fVar) {
        Object b10;
        Object D10;
        q qVar2;
        C13135q b11 = C13138s.b(Af.c.e(fVar));
        try {
            int C12 = C1(qVar, i10, e10, j10, b11, false);
            if (C12 == 0) {
                qVar.b();
                C14416i0.a aVar = C14416i0.f98201c;
                b10 = C14416i0.b(P0.f98194a);
            } else {
                if (C12 != 1) {
                    if (C12 != 2) {
                        if (C12 != 4) {
                            if (C12 != 5) {
                                throw new IllegalStateException("unexpected");
                            }
                            qVar.b();
                            q qVar3 = (q) f89603i.get(this);
                            while (true) {
                                long andIncrement = f89599e.getAndIncrement(this);
                                long j11 = andIncrement & 1152921504606846975L;
                                boolean y02 = y0(andIncrement);
                                int i11 = gg.k.f89650b;
                                long j12 = j11 / i11;
                                int i12 = (int) (j11 % i11);
                                if (qVar3.f97034d != j12) {
                                    q c02 = c0(j12, qVar3);
                                    if (c02 != null) {
                                        qVar2 = c02;
                                    } else if (y02) {
                                        break;
                                    }
                                } else {
                                    qVar2 = qVar3;
                                }
                                q qVar4 = qVar2;
                                int C13 = C1(qVar2, i12, e10, j11, b11, y02);
                                if (C13 == 0) {
                                    qVar4.b();
                                    C14416i0.a aVar2 = C14416i0.f98201c;
                                    b10 = C14416i0.b(P0.f98194a);
                                    break;
                                }
                                if (C13 == 1) {
                                    C14416i0.a aVar3 = C14416i0.f98201c;
                                    b10 = C14416i0.b(P0.f98194a);
                                    break;
                                }
                                if (C13 != 2) {
                                    if (C13 == 3) {
                                        throw new IllegalStateException("unexpected");
                                    }
                                    if (C13 != 4) {
                                        if (C13 == 5) {
                                            qVar4.b();
                                        }
                                        qVar3 = qVar4;
                                    } else if (j11 < m0()) {
                                        qVar4.b();
                                    }
                                } else if (y02) {
                                    qVar4.r();
                                } else {
                                    C13135q c13135q = b11 != null ? b11 : null;
                                    if (c13135q != null) {
                                        T0(c13135q, qVar4, i12);
                                    }
                                }
                            }
                        } else if (j10 < m0()) {
                            qVar.b();
                        }
                        P0(e10, b11);
                    } else {
                        T0(b11, qVar, i10);
                    }
                    D10 = b11.D();
                    if (D10 == Af.d.l()) {
                        Bf.h.c(fVar);
                    }
                    return D10 != Af.d.l() ? D10 : P0.f98194a;
                }
                C14416i0.a aVar4 = C14416i0.f98201c;
                b10 = C14416i0.b(P0.f98194a);
            }
            b11.resumeWith(b10);
            D10 = b11.D();
            if (D10 == Af.d.l()) {
            }
            if (D10 != Af.d.l()) {
            }
        } catch (Throwable th2) {
            b11.T();
            throw th2;
        }
    }

    @Override
    @NotNull
    public pg.g<E> s() {
        g gVar = g.f89620b;
        M.n(gVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Mf.q qVar = (Mf.q) w0.q(gVar, 3);
        h hVar = h.f89621b;
        M.n(hVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new pg.h(this, qVar, (Mf.q) w0.q(hVar, 3), this.f89610d);
    }

    public final void s0() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f89607m;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, obj == null ? gg.k.d() : gg.k.e()));
        if (obj == null) {
            return;
        }
        ((Mf.l) obj).invoke(f0());
    }

    public final boolean s1(long j10) {
        if (y0(j10)) {
            return false;
        }
        return !P(j10 & 1152921504606846975L);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @InterfaceC14412g0(expression = "receiveCatching().getOrNull()", imports = {}))
    @Ef.i
    @Nullable
    public Object t(@NotNull yf.f<? super E> fVar) {
        return l.a.e(this, fVar);
    }

    public final boolean t0(q<E> qVar, int i10, long j10) {
        Object y10;
        do {
            y10 = qVar.y(i10);
            if (y10 != null && y10 != gg.k.k()) {
                if (y10 == gg.k.f89654f) {
                    return true;
                }
                if (y10 == gg.k.j() || y10 == gg.k.z() || y10 == gg.k.f() || y10 == gg.k.o()) {
                    return false;
                }
                if (y10 == gg.k.p()) {
                    return true;
                }
                return y10 != gg.k.q() && j10 == m0();
            }
        } while (!qVar.t(i10, y10, gg.k.o()));
        Z();
        return false;
    }

    public boolean t1() {
        return s1(f89599e.get(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01dc, code lost:
    
        r3 = (gg.q) r3.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01e3, code lost:
    
        if (r3 != null) goto L98;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        String obj;
        StringBuilder sb2 = new StringBuilder();
        int i10 = (int) (f89599e.get(this) >> 60);
        if (i10 == 2) {
            sb2.append("closed,");
        } else if (i10 == 3) {
            sb2.append("cancelled,");
        }
        sb2.append("capacity=" + this.f89608b + IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("data=[");
        int i11 = 0;
        List Q10 = pf.H.Q(f89604j.get(this), f89603i.get(this), f89605k.get(this));
        ArrayList arrayList = new ArrayList();
        for (E e10 : Q10) {
            if (((q) e10) != gg.k.n()) {
                arrayList.add(e10);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j10 = ((q) next).f97034d;
            do {
                Object next2 = it.next();
                long j11 = ((q) next2).f97034d;
                if (j10 > j11) {
                    next = next2;
                    j10 = j11;
                }
            } while (it.hasNext());
        }
        q qVar = (q) next;
        long m02 = m0();
        long o02 = o0();
        loop2: while (true) {
            int i12 = gg.k.f89650b;
            int i13 = i11;
            while (true) {
                if (i13 >= i12) {
                    break;
                }
                long j12 = (qVar.f97034d * gg.k.f89650b) + i13;
                if (j12 >= o02 && j12 >= m02) {
                    break loop2;
                }
                Object y10 = qVar.y(i13);
                Object x10 = qVar.x(i13);
                if (y10 instanceof InterfaceC13133p) {
                    obj = (j12 >= m02 || j12 < o02) ? (j12 >= o02 || j12 < m02) ? "cont" : "send" : "receive";
                } else if (y10 instanceof pg.m) {
                    obj = (j12 >= m02 || j12 < o02) ? (j12 >= o02 || j12 < m02) ? "select" : "onSend" : "onReceive";
                } else if (y10 instanceof C13359C) {
                    obj = "receiveCatching";
                } else if (y10 instanceof b) {
                    obj = "sendBroadcast";
                } else if (y10 instanceof H) {
                    obj = "EB(" + y10 + ')';
                } else if (M.g(y10, gg.k.q()) ? true : M.g(y10, gg.k.p())) {
                    obj = "resuming_sender";
                } else if (y10 == null ? true : M.g(y10, gg.k.k()) ? true : M.g(y10, gg.k.f()) ? true : M.g(y10, gg.k.o()) ? true : M.g(y10, gg.k.i()) ? true : M.g(y10, gg.k.j()) ? true : M.g(y10, gg.k.z())) {
                    i13++;
                } else {
                    obj = y10.toString();
                }
                if (x10 != null) {
                    sb2.append('(' + obj + IIndexConstants.PARAMETER_SEPARATOR + x10 + "),");
                } else {
                    sb2.append(obj + IIndexConstants.PARAMETER_SEPARATOR);
                }
                i13++;
            }
            i11 = 0;
        }
        if (X.Z7(sb2) == ',') {
            M.o(sb2.deleteCharAt(sb2.length() - 1), "this.deleteCharAt(index)");
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override
    @Nullable
    public Object u(@NotNull yf.f<? super p<? extends E>> fVar) {
        return Z0(this, fVar);
    }

    public final boolean u0(long j10, boolean z10) {
        int i10 = (int) (j10 >> 60);
        if (i10 == 0 || i10 == 1) {
            return false;
        }
        if (i10 == 2) {
            W(j10 & 1152921504606846975L);
            if (z10 && p0()) {
                return false;
            }
        } else {
            if (i10 != 3) {
                throw new IllegalStateException(("unexpected close status: " + i10).toString());
            }
            V(j10 & 1152921504606846975L);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final String u1() {
        String valueOf;
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("S=");
        sb3.append(o0());
        sb3.append(",R=");
        sb3.append(m0());
        sb3.append(",B=");
        sb3.append(e0());
        sb3.append(",B'=");
        sb3.append(f89602h.get(this));
        sb3.append(",C=");
        AtomicLongFieldUpdater atomicLongFieldUpdater = f89599e;
        sb3.append((int) (atomicLongFieldUpdater.get(this) >> 60));
        sb3.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append(sb3.toString());
        int i10 = (int) (atomicLongFieldUpdater.get(this) >> 60);
        if (i10 == 1) {
            sb2.append("CANCELLATION_STARTED,");
        } else if (i10 == 2) {
            sb2.append("CLOSED,");
        } else if (i10 == 3) {
            sb2.append("CANCELLED,");
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("SEND_SEGM=");
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f89603i;
        sb4.append(W.b(atomicReferenceFieldUpdater.get(this)));
        sb4.append(",RCV_SEGM=");
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f89604j;
        sb4.append(W.b(atomicReferenceFieldUpdater2.get(this)));
        sb2.append(sb4.toString());
        if (!B0()) {
            sb2.append(",EB_SEGM=" + W.b(f89605k.get(this)));
        }
        sb2.append(GlideException.a.f59088e);
        List Q10 = pf.H.Q(atomicReferenceFieldUpdater2.get(this), atomicReferenceFieldUpdater.get(this), f89605k.get(this));
        ArrayList arrayList = new ArrayList();
        for (E e10 : Q10) {
            if (((q) e10) != gg.k.n()) {
                arrayList.add(e10);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j10 = ((q) next).f97034d;
            do {
                Object next2 = it.next();
                long j11 = ((q) next2).f97034d;
                if (j10 > j11) {
                    next = next2;
                    j10 = j11;
                }
            } while (it.hasNext());
        }
        q qVar = (q) next;
        do {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(W.b(qVar));
            sb5.append("=[");
            sb5.append(qVar.h() ? "*" : "");
            sb5.append(qVar.f97034d);
            sb5.append(",prev=");
            q qVar2 = (q) qVar.g();
            sb5.append(qVar2 != null ? W.b(qVar2) : null);
            sb5.append(IIndexConstants.PARAMETER_SEPARATOR);
            sb2.append(sb5.toString());
            int i11 = gg.k.f89650b;
            for (int i12 = 0; i12 < i11; i12++) {
                Object y10 = qVar.y(i12);
                Object x10 = qVar.x(i12);
                if (y10 instanceof InterfaceC13133p) {
                    valueOf = "cont";
                } else if (y10 instanceof pg.m) {
                    valueOf = "select";
                } else if (y10 instanceof C13359C) {
                    valueOf = "receiveCatching";
                } else if (y10 instanceof b) {
                    valueOf = "send(broadcast)";
                } else if (y10 instanceof H) {
                    valueOf = "EB(" + y10 + ')';
                } else {
                    valueOf = String.valueOf(y10);
                }
                sb2.append('[' + i12 + "]=(" + valueOf + IIndexConstants.PARAMETER_SEPARATOR + x10 + "),");
            }
            StringBuilder sb6 = new StringBuilder();
            sb6.append("next=");
            q qVar3 = (q) qVar.e();
            sb6.append(qVar3 != null ? W.b(qVar3) : null);
            sb6.append("]  ");
            sb2.append(sb6.toString());
            qVar = (q) qVar.e();
        } while (qVar != null);
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NotNull
    public Object v() {
        q qVar;
        long j10 = f89600f.get(this);
        long j11 = f89599e.get(this);
        if (w0(j11)) {
            return p.f89695b.a(f0());
        }
        if (j10 >= (j11 & 1152921504606846975L)) {
            return p.f89695b.b();
        }
        Object i10 = gg.k.i();
        q qVar2 = (q) f89604j.get(this);
        while (!D()) {
            long andIncrement = f89600f.getAndIncrement(this);
            int i11 = gg.k.f89650b;
            long j12 = andIncrement / i11;
            int i12 = (int) (andIncrement % i11);
            if (qVar2.f97034d != j12) {
                q b02 = b0(j12, qVar2);
                if (b02 == null) {
                    continue;
                } else {
                    qVar = b02;
                }
            } else {
                qVar = qVar2;
            }
            Object A12 = A1(qVar, i12, andIncrement, i10);
            if (A12 == gg.k.r()) {
                y1 y1Var = i10 instanceof y1 ? (y1) i10 : null;
                if (y1Var != null) {
                    S0(y1Var, qVar, i12);
                }
                G1(andIncrement);
                qVar.r();
                return p.f89695b.b();
            }
            if (A12 != gg.k.h()) {
                if (A12 == gg.k.s()) {
                    throw new IllegalStateException("unexpected");
                }
                qVar.b();
                return p.f89695b.c(A12);
            }
            if (andIncrement < o0()) {
                qVar.b();
            }
            qVar2 = qVar;
        }
        return p.f89695b.a(f0());
    }

    public final boolean v1(Object obj, E e10) {
        if (obj instanceof pg.m) {
            return ((pg.m) obj).x(this, e10);
        }
        if (obj instanceof C13359C) {
            M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            C13359C c13359c = (C13359C) obj;
            C13135q<p<? extends E>> c13135q = c13359c.f89556b;
            p b10 = p.b(p.f89695b.c(e10));
            Mf.l<E, P0> lVar = this.f89609c;
            return gg.k.u(c13135q, b10, lVar != null ? J.a(lVar, e10, c13359c.f89556b.getContext()) : null);
        }
        if (obj instanceof a) {
            M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).j(e10);
        }
        if (obj instanceof InterfaceC13133p) {
            M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            InterfaceC13133p interfaceC13133p = (InterfaceC13133p) obj;
            Mf.l<E, P0> lVar2 = this.f89609c;
            return gg.k.u(interfaceC13133p, e10, lVar2 != null ? J.a(lVar2, e10, interfaceC13133p.getContext()) : null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    public final boolean w0(long j10) {
        return u0(j10, true);
    }

    public final boolean w1(Object obj, q<E> qVar, int i10) {
        if (obj instanceof InterfaceC13133p) {
            M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return gg.k.G((InterfaceC13133p) obj, P0.f98194a, null, 2, null);
        }
        if (obj instanceof pg.m) {
            M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            pg.r j02 = ((pg.l) obj).j0(this, P0.f98194a);
            if (j02 == pg.r.REREGISTER) {
                qVar.u(i10);
            }
            return j02 == pg.r.SUCCESSFUL;
        }
        if (obj instanceof b) {
            return gg.k.G(((b) obj).a(), Boolean.TRUE, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    public final void x1(AtomicLongFieldUpdater atomicLongFieldUpdater, Mf.l<? super Long, Long> lVar, Object obj) {
        long j10;
        do {
            j10 = atomicLongFieldUpdater.get(obj);
        } while (!atomicLongFieldUpdater.compareAndSet(obj, j10, lVar.invoke(Long.valueOf(j10)).longValue()));
    }

    public final boolean y0(long j10) {
        return u0(j10, false);
    }

    public final boolean y1(q<E> qVar, int i10, long j10) {
        Object y10 = qVar.y(i10);
        if (!(y10 instanceof y1) || j10 < f89600f.get(this) || !qVar.t(i10, y10, gg.k.p())) {
            return z1(qVar, i10, j10);
        }
        if (w1(y10, qVar, i10)) {
            qVar.C(i10, gg.k.f89654f);
            return true;
        }
        qVar.C(i10, gg.k.j());
        qVar.z(i10, false);
        return false;
    }

    public boolean z0() {
        return false;
    }

    public final boolean z1(q<E> qVar, int i10, long j10) {
        while (true) {
            Object y10 = qVar.y(i10);
            if (y10 instanceof y1) {
                if (j10 < f89600f.get(this)) {
                    if (qVar.t(i10, y10, new H((y1) y10))) {
                        return true;
                    }
                } else if (qVar.t(i10, y10, gg.k.p())) {
                    if (w1(y10, qVar, i10)) {
                        qVar.C(i10, gg.k.f89654f);
                        return true;
                    }
                    qVar.C(i10, gg.k.j());
                    qVar.z(i10, false);
                    return false;
                }
            } else {
                if (y10 == gg.k.j()) {
                    return false;
                }
                if (y10 == null) {
                    if (qVar.t(i10, y10, gg.k.k())) {
                        return true;
                    }
                } else {
                    if (y10 == gg.k.f89654f || y10 == gg.k.o() || y10 == gg.k.f() || y10 == gg.k.i() || y10 == gg.k.z()) {
                        return true;
                    }
                    if (y10 != gg.k.q()) {
                        throw new IllegalStateException(("Unexpected cell state: " + y10).toString());
                    }
                }
            }
        }
    }

    public j(int i10, Mf.l lVar, int i11, C14026x c14026x) {
        this(i10, (i11 & 2) != 0 ? null : lVar);
    }
}
