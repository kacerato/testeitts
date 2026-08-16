package gg;

import eg.C13145v0;
import eg.InterfaceC13104a1;
import gg.InterfaceC13360D;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14410f0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,141:1\n82#1,11:142\n105#1:153\n82#1,6:154\n106#1,2:160\n92#1:162\n88#1,3:163\n33#1,5:166\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n105#1:142,11\n116#1:153\n116#1:154,6\n116#1:160,2\n116#1:162\n116#1:163,3\n129#1:166,5\n*E\n"})
public final class t {

    @t0({"SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1\n*L\n1#1,141:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {106}, m = "consumeEach", n = {"action", "$this$consume$iv"}, s = {"L$0", "L$1"})
    public static final class a<E> extends Bf.d {

        public Object f89709b;

        public Object f89710c;

        public Object f89711d;

        public Object f89712e;

        public int f89713f;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89712e = obj;
            this.f89713f |= Integer.MIN_VALUE;
            return t.e(null, null, this);
        }
    }

    @t0({"SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3\n*L\n1#1,141:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {130}, m = "consumeEach", n = {"action", "channel$iv"}, s = {"L$0", "L$1"})
    public static final class b<E> extends Bf.d {

        public Object f89714b;

        public Object f89715c;

        public Object f89716d;

        public Object f89717e;

        public int f89718f;

        public b(yf.f<? super b> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89717e = obj;
            this.f89718f |= Integer.MIN_VALUE;
            return t.d(null, null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {149}, m = "toList", n = {"$this$toList_u24lambda_u243", "$this$consume$iv$iv"}, s = {"L$1", "L$2"})
    public static final class c<E> extends Bf.d {

        public Object f89719b;

        public Object f89720c;

        public Object f89721d;

        public Object f89722e;

        public Object f89723f;

        public int f89724g;

        public c(yf.f<? super c> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89723f = obj;
            this.f89724g |= Integer.MIN_VALUE;
            return r.g0(null, this);
        }
    }

    @InterfaceC14410f0
    public static final void a(@NotNull InterfaceC13360D<?> interfaceC13360D, @Nullable Throwable th2) {
        if (th2 != null) {
            r0 = th2 instanceof CancellationException ? (CancellationException) th2 : null;
            if (r0 == null) {
                r0 = C13145v0.a("Channel was consumed, consumer had failed", th2);
            }
        }
        interfaceC13360D.a(r0);
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @InterfaceC13104a1
    public static final <E, R> R b(@NotNull InterfaceC13364d<E> interfaceC13364d, @NotNull Mf.l<? super InterfaceC13360D<? extends E>, ? extends R> lVar) {
        InterfaceC13360D<E> m10 = interfaceC13364d.m();
        try {
            return lVar.invoke(m10);
        } finally {
            J.d(1);
            InterfaceC13360D.a.b(m10, null, 1, null);
            J.c(1);
        }
    }

    public static final <E, R> R c(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull Mf.l<? super InterfaceC13360D<? extends E>, ? extends R> lVar) {
        try {
            R invoke = lVar.invoke(interfaceC13360D);
            J.d(1);
            r.b(interfaceC13360D, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006d A[Catch: all -> 0x0077, TryCatch #1 {all -> 0x0077, blocks: (B:15:0x0065, B:17:0x006d, B:29:0x007a), top: B:14:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007a A[Catch: all -> 0x0077, TRY_LEAVE, TryCatch #1 {all -> 0x0077, blocks: (B:15:0x0065, B:17:0x006d, B:29:0x007a), top: B:14:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0061 -> B:13:0x0038). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E> Object d(@NotNull InterfaceC13364d<E> interfaceC13364d, @NotNull Mf.l<? super E, P0> lVar, @NotNull yf.f<? super P0> fVar) {
        b bVar;
        int i10;
        InterfaceC13360D<E> interfaceC13360D;
        Throwable th2;
        InterfaceC13360D<E> interfaceC13360D2;
        n it;
        Object a10;
        if (fVar instanceof b) {
            bVar = (b) fVar;
            int i11 = bVar.f89718f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f89718f = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f89717e;
                Object l10 = Af.d.l();
                i10 = bVar.f89718f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    InterfaceC13360D<E> m10 = interfaceC13364d.m();
                    try {
                        interfaceC13360D2 = m10;
                        it = m10.iterator();
                        bVar.f89714b = lVar;
                        bVar.f89715c = interfaceC13360D2;
                        bVar.f89716d = it;
                        bVar.f89718f = 1;
                        a10 = it.a(bVar);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D = m10;
                        th2 = th3;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (n) bVar.f89716d;
                    interfaceC13360D = (InterfaceC13360D) bVar.f89715c;
                    Mf.l<? super E, P0> lVar2 = (Mf.l) bVar.f89714b;
                    try {
                        C14418j0.n(obj);
                        b bVar2 = bVar;
                        InterfaceC13360D<E> interfaceC13360D3 = interfaceC13360D;
                        lVar = lVar2;
                        b bVar3 = bVar2;
                        try {
                            if (!((Boolean) obj).booleanValue()) {
                                lVar.invoke((Object) it.next());
                                interfaceC13360D2 = interfaceC13360D3;
                                bVar = bVar3;
                                try {
                                    bVar.f89714b = lVar;
                                    bVar.f89715c = interfaceC13360D2;
                                    bVar.f89716d = it;
                                    bVar.f89718f = 1;
                                    a10 = it.a(bVar);
                                    if (a10 != l10) {
                                        return l10;
                                    }
                                    bVar2 = bVar;
                                    interfaceC13360D3 = interfaceC13360D2;
                                    obj = a10;
                                    b bVar32 = bVar2;
                                    if (!((Boolean) obj).booleanValue()) {
                                        P0 p02 = P0.f98194a;
                                        J.d(1);
                                        InterfaceC13360D.a.b(interfaceC13360D3, null, 1, null);
                                        J.c(1);
                                        return p02;
                                    }
                                } catch (Throwable th4) {
                                    th2 = th4;
                                    interfaceC13360D = interfaceC13360D2;
                                }
                            }
                        } catch (Throwable th5) {
                            th2 = th5;
                            interfaceC13360D = interfaceC13360D3;
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                    }
                }
                J.d(1);
                InterfaceC13360D.a.b(interfaceC13360D, null, 1, null);
                J.c(1);
                throw th2;
            }
        }
        bVar = new b(fVar);
        Object obj2 = bVar.f89717e;
        Object l102 = Af.d.l();
        i10 = bVar.f89718f;
        if (i10 != 0) {
        }
        J.d(1);
        InterfaceC13360D.a.b(interfaceC13360D, null, 1, null);
        J.c(1);
        throw th2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0064 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x005c, B:14:0x0064, B:15:0x004a, B:20:0x006d), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x005c, B:14:0x0064, B:15:0x004a, B:20:0x006d), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0059 -> B:12:0x005c). Please report as a decompilation issue!!! */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E> Object e(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull Mf.l<? super E, P0> lVar, @NotNull yf.f<? super P0> fVar) {
        a aVar;
        int i10;
        InterfaceC13360D<? extends E> interfaceC13360D2;
        Throwable th2;
        n it;
        Mf.l<? super E, P0> lVar2;
        Object a10;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f89713f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f89713f = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f89712e;
                Object l10 = Af.d.l();
                i10 = aVar.f89713f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        interfaceC13360D2 = interfaceC13360D;
                        it = interfaceC13360D.iterator();
                        lVar2 = lVar;
                        aVar.f89709b = lVar2;
                        aVar.f89710c = interfaceC13360D2;
                        aVar.f89711d = it;
                        aVar.f89713f = 1;
                        a10 = it.a(aVar);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (n) aVar.f89711d;
                    interfaceC13360D2 = (InterfaceC13360D) aVar.f89710c;
                    Mf.l<? super E, P0> lVar3 = (Mf.l) aVar.f89709b;
                    try {
                        C14418j0.n(obj);
                        if (!((Boolean) obj).booleanValue()) {
                            lVar3.invoke((Object) it.next());
                            lVar2 = lVar3;
                            aVar.f89709b = lVar2;
                            aVar.f89710c = interfaceC13360D2;
                            aVar.f89711d = it;
                            aVar.f89713f = 1;
                            a10 = it.a(aVar);
                            if (a10 != l10) {
                                return l10;
                            }
                            lVar3 = lVar2;
                            obj = a10;
                            if (!((Boolean) obj).booleanValue()) {
                                P0 p02 = P0.f98194a;
                                J.d(1);
                                r.b(interfaceC13360D2, null);
                                J.c(1);
                                return p02;
                            }
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            J.d(1);
                            r.b(interfaceC13360D2, th2);
                            J.c(1);
                            throw th5;
                        }
                    }
                }
            }
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f89712e;
        Object l102 = Af.d.l();
        i10 = aVar.f89713f;
        if (i10 != 0) {
        }
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    public static final <E> Object f(InterfaceC13364d<E> interfaceC13364d, Mf.l<? super E, P0> lVar, yf.f<? super P0> fVar) {
        InterfaceC13360D<E> m10 = interfaceC13364d.m();
        try {
            n<E> it = m10.iterator();
            while (true) {
                J.e(3);
                J.e(0);
                Object a10 = it.a(null);
                J.e(1);
                if (!((Boolean) a10).booleanValue()) {
                    P0 p02 = P0.f98194a;
                    J.d(1);
                    InterfaceC13360D.a.b(m10, null, 1, null);
                    J.c(1);
                    return p02;
                }
                lVar.invoke(it.next());
            }
        } catch (Throwable th2) {
            J.d(1);
            InterfaceC13360D.a.b(m10, null, 1, null);
            J.c(1);
            throw th2;
        }
    }

    public static final <E> Object g(InterfaceC13360D<? extends E> interfaceC13360D, Mf.l<? super E, P0> lVar, yf.f<? super P0> fVar) {
        try {
            n<? extends E> it = interfaceC13360D.iterator();
            while (true) {
                J.e(3);
                J.e(0);
                Object a10 = it.a(null);
                J.e(1);
                if (!((Boolean) a10).booleanValue()) {
                    P0 p02 = P0.f98194a;
                    J.d(1);
                    r.b(interfaceC13360D, null);
                    J.c(1);
                    return p02;
                }
                lVar.invoke(it.next());
            }
        } finally {
        }
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Deprecated in the favour of 'onReceiveCatching'")
    public static final pg.g h(InterfaceC13360D interfaceC13360D) {
        M.n(interfaceC13360D, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.onReceiveOrNull?>");
        return interfaceC13360D.s();
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Deprecated in the favour of 'receiveCatching'", replaceWith = @InterfaceC14412g0(expression = "receiveCatching().getOrNull()", imports = {}))
    public static final Object i(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        M.n(interfaceC13360D, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.receiveOrNull?>");
        return interfaceC13360D.t(fVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006f A[Catch: all -> 0x0039, TryCatch #2 {all -> 0x0039, blocks: (B:11:0x0035, B:12:0x0067, B:14:0x006f, B:29:0x0078), top: B:10:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0078 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #2 {all -> 0x0039, blocks: (B:11:0x0035, B:12:0x0067, B:14:0x006f, B:29:0x0078), top: B:10:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0064 -> B:12:0x0067). Please report as a decompilation issue!!! */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E> Object j(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.f<? super List<? extends E>> fVar) {
        c cVar;
        int i10;
        InterfaceC13360D<? extends E> interfaceC13360D2;
        Throwable th2;
        List list;
        n it;
        List list2;
        Object a10;
        if (fVar instanceof c) {
            cVar = (c) fVar;
            int i11 = cVar.f89724g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                cVar.f89724g = i11 - Integer.MIN_VALUE;
                Object obj = cVar.f89723f;
                Object l10 = Af.d.l();
                i10 = cVar.f89724g;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        List j10 = pf.G.j();
                        list = j10;
                        interfaceC13360D2 = interfaceC13360D;
                        it = interfaceC13360D.iterator();
                        list2 = j10;
                        cVar.f89719b = list;
                        cVar.f89720c = list2;
                        cVar.f89721d = interfaceC13360D2;
                        cVar.f89722e = it;
                        cVar.f89724g = 1;
                        a10 = it.a(cVar);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (n) cVar.f89722e;
                    InterfaceC13360D<? extends E> interfaceC13360D3 = (InterfaceC13360D) cVar.f89721d;
                    List list3 = (List) cVar.f89720c;
                    list = (List) cVar.f89719b;
                    try {
                        C14418j0.n(obj);
                        ?? r42 = list3;
                        if (!((Boolean) obj).booleanValue()) {
                            r42.add(it.next());
                            interfaceC13360D2 = interfaceC13360D3;
                            list2 = r42;
                            try {
                                cVar.f89719b = list;
                                cVar.f89720c = list2;
                                cVar.f89721d = interfaceC13360D2;
                                cVar.f89722e = it;
                                cVar.f89724g = 1;
                                a10 = it.a(cVar);
                                if (a10 != l10) {
                                    return l10;
                                }
                                interfaceC13360D3 = interfaceC13360D2;
                                obj = a10;
                                r42 = list2;
                                if (!((Boolean) obj).booleanValue()) {
                                    P0 p02 = P0.f98194a;
                                    r.b(interfaceC13360D3, null);
                                    return pf.G.b(list);
                                }
                            } catch (Throwable th4) {
                                th2 = th4;
                                try {
                                    throw th2;
                                } catch (Throwable th5) {
                                    r.b(interfaceC13360D2, th2);
                                    throw th5;
                                }
                            }
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                        interfaceC13360D2 = interfaceC13360D3;
                        throw th2;
                    }
                }
            }
        }
        cVar = new c(fVar);
        Object obj2 = cVar.f89723f;
        Object l102 = Af.d.l();
        i10 = cVar.f89724g;
        if (i10 != 0) {
        }
    }
}
