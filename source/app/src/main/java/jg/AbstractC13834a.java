package jg;

import eg.InterfaceC13153z0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC13153z0
public abstract class AbstractC13834a<T> implements InterfaceC13842i<T>, InterfaceC13836c<T> {

    @Bf.f(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", i = {0}, l = {230}, m = "collect", n = {"safeCollector"}, s = {"L$0"})
    public static final class C1811a extends Bf.d {

        public Object f93289b;

        public Object f93290c;

        public final AbstractC13834a<T> f93291d;

        public int f93292e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1811a(AbstractC13834a<T> abstractC13834a, yf.f<? super C1811a> fVar) {
            super(fVar);
            this.f93291d = abstractC13834a;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93290c = obj;
            this.f93292e |= Integer.MIN_VALUE;
            return this.f93291d.a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        C1811a c1811a;
        int i10;
        Throwable th2;
        kg.t tVar;
        if (fVar instanceof C1811a) {
            c1811a = (C1811a) fVar;
            int i11 = c1811a.f93292e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c1811a.f93292e = i11 - Integer.MIN_VALUE;
                Object obj = c1811a.f93290c;
                Object l10 = Af.d.l();
                i10 = c1811a.f93292e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    kg.t tVar2 = new kg.t(interfaceC13843j, c1811a.getContext());
                    try {
                        c1811a.f93289b = tVar2;
                        c1811a.f93292e = 1;
                        if (d(tVar2, c1811a) == l10) {
                            return l10;
                        }
                        tVar = tVar2;
                    } catch (Throwable th3) {
                        th2 = th3;
                        tVar = tVar2;
                        tVar.releaseIntercepted();
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    tVar = (kg.t) c1811a.f93289b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th4) {
                        th2 = th4;
                        tVar.releaseIntercepted();
                        throw th2;
                    }
                }
                tVar.releaseIntercepted();
                return P0.f98194a;
            }
        }
        c1811a = new C1811a(this, fVar);
        Object obj2 = c1811a.f93290c;
        Object l102 = Af.d.l();
        i10 = c1811a.f93292e;
        if (i10 != 0) {
        }
        tVar.releaseIntercepted();
        return P0.f98194a;
    }

    @Nullable
    public abstract Object d(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar);
}
