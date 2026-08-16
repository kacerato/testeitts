package jg;

import gg.InterfaceC13360D;
import gg.InterfaceC13364d;
import kg.C13983e;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,176:1\n107#2:177\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n153#1:177\n*E\n"})
public final class C13846m {

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n1#1,113:1\n154#2,2:114\n*E\n"})
    public static final class a<T> implements InterfaceC13842i<T> {

        public final InterfaceC13364d f93388b;

        public a(InterfaceC13364d interfaceC13364d) {
            this.f93388b = interfaceC13364d;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object l02 = C13844k.l0(interfaceC13843j, this.f93388b.m(), fVar);
            return l02 == Af.d.l() ? l02 : P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", f = "Channels.kt", i = {0, 0, 0, 1, 1, 1}, l = {36, 37}, m = "emitAllImpl$FlowKt__ChannelsKt", n = {"$this$emitAllImpl", "channel", "consume", "$this$emitAllImpl", "channel", "consume"}, s = {"L$0", "L$1", "Z$0", "L$0", "L$1", "Z$0"})
    public static final class b<T> extends Bf.d {

        public Object f93389b;

        public Object f93390c;

        public Object f93391d;

        public boolean f93392e;

        public Object f93393f;

        public int f93394g;

        public b(yf.f<? super b> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93393f = obj;
            this.f93394g |= Integer.MIN_VALUE;
            return C13846m.e(null, null, false, this);
        }
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "'BroadcastChannel' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow")
    @NotNull
    public static final <T> InterfaceC13842i<T> b(@NotNull InterfaceC13364d<T> interfaceC13364d) {
        return new a(interfaceC13364d);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> c(@NotNull InterfaceC13360D<? extends T> interfaceC13360D) {
        return new C13838e(interfaceC13360D, true, null, 0, null, 28, null);
    }

    @Nullable
    public static final <T> Object d(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull InterfaceC13360D<? extends T> interfaceC13360D, @NotNull yf.f<? super P0> fVar) {
        Object e10 = e(interfaceC13843j, interfaceC13360D, true, fVar);
        return e10 == Af.d.l() ? e10 : P0.f98194a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #0 {all -> 0x003c, blocks: (B:12:0x0036, B:14:0x0062, B:19:0x0077, B:21:0x007f, B:32:0x0054, B:34:0x005e), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r2v1, types: [jg.j, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0091 -> B:13:0x0039). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object e(InterfaceC13843j<? super T> interfaceC13843j, InterfaceC13360D<? extends T> interfaceC13360D, boolean z10, yf.f<? super P0> fVar) {
        b bVar;
        int i10;
        gg.n<? extends T> it;
        gg.n<? extends T> nVar;
        ?? r22;
        Object a10;
        try {
            if (fVar instanceof b) {
                bVar = (b) fVar;
                int i11 = bVar.f93394g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    bVar.f93394g = i11 - Integer.MIN_VALUE;
                    Object obj = bVar.f93393f;
                    Object l10 = Af.d.l();
                    i10 = bVar.f93394g;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        C13844k.o0(interfaceC13843j);
                        it = interfaceC13360D.iterator();
                        bVar.f93389b = interfaceC13843j;
                        bVar.f93390c = interfaceC13360D;
                        bVar.f93391d = it;
                        bVar.f93392e = z10;
                        bVar.f93394g = 1;
                        a10 = it.a(bVar);
                        if (a10 == l10) {
                        }
                    } else if (i10 == 1) {
                        z10 = bVar.f93392e;
                        nVar = (gg.n) bVar.f93391d;
                        interfaceC13360D = (InterfaceC13360D) bVar.f93390c;
                        InterfaceC13843j interfaceC13843j2 = (InterfaceC13843j) bVar.f93389b;
                        C14418j0.n(obj);
                        r22 = interfaceC13843j2;
                        if (((Boolean) obj).booleanValue()) {
                        }
                    } else {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z10 = bVar.f93392e;
                        nVar = (gg.n) bVar.f93391d;
                        interfaceC13360D = (InterfaceC13360D) bVar.f93390c;
                        InterfaceC13843j<? super T> interfaceC13843j3 = (InterfaceC13843j) bVar.f93389b;
                        C14418j0.n(obj);
                        InterfaceC13843j<? super T> interfaceC13843j4 = interfaceC13843j3;
                        it = nVar;
                        interfaceC13843j = interfaceC13843j4;
                        bVar.f93389b = interfaceC13843j;
                        bVar.f93390c = interfaceC13360D;
                        bVar.f93391d = it;
                        bVar.f93392e = z10;
                        bVar.f93394g = 1;
                        a10 = it.a(bVar);
                        if (a10 == l10) {
                            return l10;
                        }
                        r22 = interfaceC13843j;
                        nVar = it;
                        obj = a10;
                        if (((Boolean) obj).booleanValue()) {
                            if (z10) {
                                gg.r.b(interfaceC13360D, null);
                            }
                            return P0.f98194a;
                        }
                        T next = nVar.next();
                        bVar.f93389b = r22;
                        bVar.f93390c = interfaceC13360D;
                        bVar.f93391d = nVar;
                        bVar.f93392e = z10;
                        bVar.f93394g = 2;
                        Object emit = r22.emit(next, bVar);
                        interfaceC13843j4 = r22;
                        if (emit == l10) {
                            return l10;
                        }
                        it = nVar;
                        interfaceC13843j = interfaceC13843j4;
                        bVar.f93389b = interfaceC13843j;
                        bVar.f93390c = interfaceC13360D;
                        bVar.f93391d = it;
                        bVar.f93392e = z10;
                        bVar.f93394g = 1;
                        a10 = it.a(bVar);
                        if (a10 == l10) {
                        }
                    }
                }
            }
            if (i10 != 0) {
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                if (z10) {
                    gg.r.b(interfaceC13360D, th2);
                }
                throw th3;
            }
        }
        bVar = new b(fVar);
        Object obj2 = bVar.f93393f;
        Object l102 = Af.d.l();
        i10 = bVar.f93394g;
    }

    @NotNull
    public static final <T> InterfaceC13360D<T> f(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10) {
        return C13983e.b(interfaceC13842i).l(s10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> g(@NotNull InterfaceC13360D<? extends T> interfaceC13360D) {
        return new C13838e(interfaceC13360D, false, null, 0, null, 28, null);
    }
}
