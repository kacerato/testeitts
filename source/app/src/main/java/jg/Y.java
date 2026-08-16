package jg;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,426:1\n329#2:427\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n417#1:427\n*E\n"})
public final class Y<T> implements InterfaceC13843j<T> {

    @NotNull
    public final InterfaceC13843j<T> f93277b;

    @NotNull
    public final Mf.p<InterfaceC13843j<? super T>, yf.f<? super P0>, Object> f93278c;

    @Bf.f(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", i = {0, 0}, l = {419, TypedValues.CycleType.TYPE_WAVE_PERIOD}, m = "onSubscription", n = {"this", "safeCollector"}, s = {"L$0", "L$1"})
    public static final class a extends Bf.d {

        public Object f93279b;

        public Object f93280c;

        public Object f93281d;

        public final Y<T> f93282e;

        public int f93283f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Y<T> y10, yf.f<? super a> fVar) {
            super(fVar);
            this.f93282e = y10;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93281d = obj;
            this.f93283f |= Integer.MIN_VALUE;
            return this.f93282e.a(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Y(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        this.f93277b = interfaceC13843j;
        this.f93278c = pVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kg.t] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(@NotNull yf.f<? super P0> fVar) {
        a aVar;
        ?? r22;
        kg.t tVar;
        Y<T> y10;
        try {
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i10 = aVar.f93283f;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    aVar.f93283f = i10 - Integer.MIN_VALUE;
                    Object obj = aVar.f93281d;
                    Object l10 = Af.d.l();
                    r22 = aVar.f93283f;
                    if (r22 != 0) {
                        C14418j0.n(obj);
                        tVar = new kg.t(this.f93277b, aVar.getContext());
                        Mf.p<InterfaceC13843j<? super T>, yf.f<? super P0>, Object> pVar = this.f93278c;
                        aVar.f93279b = this;
                        aVar.f93280c = tVar;
                        aVar.f93283f = 1;
                        if (pVar.invoke(tVar, aVar) == l10) {
                            return l10;
                        }
                        y10 = this;
                    } else {
                        if (r22 != 1) {
                            if (r22 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            C14418j0.n(obj);
                            return P0.f98194a;
                        }
                        tVar = (kg.t) aVar.f93280c;
                        y10 = (Y) aVar.f93279b;
                        C14418j0.n(obj);
                    }
                    tVar.releaseIntercepted();
                    InterfaceC13843j<T> interfaceC13843j = y10.f93277b;
                    r22 = interfaceC13843j instanceof Y;
                    if (r22 != 0) {
                        return P0.f98194a;
                    }
                    aVar.f93279b = null;
                    aVar.f93280c = null;
                    aVar.f93283f = 2;
                    if (((Y) interfaceC13843j).a(aVar) == l10) {
                        return l10;
                    }
                    return P0.f98194a;
                }
            }
            if (r22 != 0) {
            }
            tVar.releaseIntercepted();
            InterfaceC13843j<T> interfaceC13843j2 = y10.f93277b;
            r22 = interfaceC13843j2 instanceof Y;
            if (r22 != 0) {
            }
        } catch (Throwable th2) {
            r22.releaseIntercepted();
            throw th2;
        }
        aVar = new a(this, fVar);
        Object obj2 = aVar.f93281d;
        Object l102 = Af.d.l();
        r22 = aVar.f93283f;
    }

    @Override
    @Nullable
    public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
        return this.f93277b.emit(t10, fVar);
    }
}
