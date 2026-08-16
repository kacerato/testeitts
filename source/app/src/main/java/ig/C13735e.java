package ig;

import Mf.p;
import Xf.AbstractC3314o;
import Xf.C3316q;
import Xf.K;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;

@t0({"SMAP\nDebugCoroutineInfoImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugCoroutineInfoImpl.kt\nkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1#2:181\n*E\n"})
@InterfaceC14410f0
public final class C13735e {

    @Lf.g
    @Nullable
    public volatile WeakReference<Bf.e> _lastObservedFrame;

    @Lf.g
    @NotNull
    public volatile String _state = C13736f.f92236a;

    @Nullable
    public final m f92222a;

    @Lf.g
    public final long f92223b;

    @NotNull
    public final WeakReference<yf.j> f92224c;

    public int f92225d;

    @Lf.g
    @Nullable
    public volatile Thread lastObservedThread;

    @Bf.f(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$creationStackTrace$1", f = "DebugCoroutineInfoImpl.kt", i = {}, l = {166}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.l implements p<AbstractC3314o<? super StackTraceElement>, yf.f<? super P0>, Object> {

        public int f92226b;

        public Object f92227c;

        public final m f92229e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(m mVar, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f92229e = mVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            a aVar = new a(this.f92229e, fVar);
            aVar.f92227c = obj;
            return aVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull AbstractC3314o<? super StackTraceElement> abstractC3314o, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f92226b;
            if (i10 == 0) {
                C14418j0.n(obj);
                AbstractC3314o abstractC3314o = (AbstractC3314o) this.f92227c;
                C13735e c13735e = C13735e.this;
                Bf.e callerFrame = this.f92229e.getCallerFrame();
                this.f92226b = 1;
                if (c13735e.k(abstractC3314o, callerFrame, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl", f = "DebugCoroutineInfoImpl.kt", i = {0, 0, 0}, l = {171}, m = "yieldFrames", n = {"this", "$this$yieldFrames", TypedValues.AttributesType.S_FRAME}, s = {"L$0", "L$1", "L$2"})
    public static final class b extends Bf.d {

        public Object f92230b;

        public Object f92231c;

        public Object f92232d;

        public Object f92233e;

        public int f92235g;

        public b(yf.f<? super b> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f92233e = obj;
            this.f92235g |= Integer.MIN_VALUE;
            return C13735e.this.k(null, null, this);
        }
    }

    public C13735e(@Nullable yf.j jVar, @Nullable m mVar, long j10) {
        this.f92222a = mVar;
        this.f92223b = j10;
        this.f92224c = new WeakReference<>(jVar);
    }

    public final List<StackTraceElement> b() {
        m mVar = this.f92222a;
        return mVar == null ? H.J() : K.I3(C3316q.b(new a(mVar, null)));
    }

    @Nullable
    public final yf.j c() {
        return this.f92224c.get();
    }

    @Nullable
    public final m d() {
        return this.f92222a;
    }

    @NotNull
    public final List<StackTraceElement> e() {
        return b();
    }

    @Nullable
    public final Bf.e f() {
        WeakReference<Bf.e> weakReference = this._lastObservedFrame;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NotNull
    public final String g() {
        return this._state;
    }

    @NotNull
    public final List<StackTraceElement> h() {
        Bf.e f10 = f();
        if (f10 == null) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList();
        while (f10 != null) {
            StackTraceElement stackTraceElement = f10.getStackTraceElement();
            if (stackTraceElement != null) {
                arrayList.add(stackTraceElement);
            }
            f10 = f10.getCallerFrame();
        }
        return arrayList;
    }

    public final void i(@Nullable Bf.e eVar) {
        this._lastObservedFrame = eVar != null ? new WeakReference<>(eVar) : null;
    }

    public final synchronized void j(@NotNull String str, @NotNull yf.f<?> fVar, boolean z10) {
        try {
            if (M.g(this._state, C13736f.f92237b) && M.g(str, C13736f.f92237b) && z10) {
                this.f92225d++;
            } else if (this.f92225d > 0 && M.g(str, C13736f.f92238c)) {
                this.f92225d--;
                return;
            }
            if (M.g(this._state, str) && M.g(str, C13736f.f92238c) && f() != null) {
                return;
            }
            this._state = str;
            i(fVar instanceof Bf.e ? (Bf.e) fVar : null);
            this.lastObservedThread = M.g(str, C13736f.f92237b) ? Thread.currentThread() : null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x004a -> B:11:0x0061). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005b -> B:10:0x005e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object k(AbstractC3314o<? super StackTraceElement> abstractC3314o, Bf.e eVar, yf.f<? super P0> fVar) {
        b bVar;
        int i10;
        C13735e c13735e;
        if (fVar instanceof b) {
            bVar = (b) fVar;
            int i11 = bVar.f92235g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f92235g = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f92233e;
                Object l10 = Af.d.l();
                i10 = bVar.f92235g;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    c13735e = this;
                    if (eVar == null) {
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Bf.e eVar2 = (Bf.e) bVar.f92232d;
                    AbstractC3314o<? super StackTraceElement> abstractC3314o2 = (AbstractC3314o) bVar.f92231c;
                    c13735e = (C13735e) bVar.f92230b;
                    C14418j0.n(obj);
                    AbstractC3314o<? super StackTraceElement> abstractC3314o3 = abstractC3314o2;
                    eVar = eVar2;
                    abstractC3314o = abstractC3314o3;
                    eVar = eVar.getCallerFrame();
                    if (eVar == null) {
                        return P0.f98194a;
                    }
                    if (eVar == null) {
                        StackTraceElement stackTraceElement = eVar.getStackTraceElement();
                        if (stackTraceElement != null) {
                            bVar.f92230b = c13735e;
                            bVar.f92231c = abstractC3314o;
                            bVar.f92232d = eVar;
                            bVar.f92235g = 1;
                            if (abstractC3314o.a(stackTraceElement, bVar) == l10) {
                                return l10;
                            }
                            Bf.e eVar3 = eVar;
                            abstractC3314o2 = abstractC3314o;
                            eVar2 = eVar3;
                            AbstractC3314o<? super StackTraceElement> abstractC3314o32 = abstractC3314o2;
                            eVar = eVar2;
                            abstractC3314o = abstractC3314o32;
                        }
                        eVar = eVar.getCallerFrame();
                        if (eVar == null) {
                        }
                        if (eVar == null) {
                            return P0.f98194a;
                        }
                    }
                }
            }
        }
        bVar = new b(fVar);
        Object obj2 = bVar.f92233e;
        Object l102 = Af.d.l();
        i10 = bVar.f92235g;
        if (i10 != 0) {
        }
    }

    @NotNull
    public String toString() {
        return "DebugCoroutineInfo(state=" + g() + ",context=" + ((Object) c()) + ')';
    }
}
