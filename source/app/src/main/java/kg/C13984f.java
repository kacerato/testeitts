package kg;

import eg.C13123k;
import eg.K0;
import eg.N0;
import eg.S;
import gg.InterfaceC13358B;
import gg.InterfaceC13360D;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.C14026x;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rg.C15180f;
import rg.InterfaceC15178d;

public final class C13984f<T> extends AbstractC13982d<T> {

    @NotNull
    public final InterfaceC13842i<InterfaceC13842i<T>> f95093e;

    public final int f95094f;

    public static final class a<T> implements InterfaceC13843j {

        public final K0 f95095b;

        public final InterfaceC15178d f95096c;

        public final InterfaceC13358B<T> f95097d;

        public final w<T> f95098e;

        @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
        public static final class C1844a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

            public int f95099b;

            public final InterfaceC13842i<T> f95100c;

            public final w<T> f95101d;

            public final InterfaceC15178d f95102e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C1844a(InterfaceC13842i<? extends T> interfaceC13842i, w<T> wVar, InterfaceC15178d interfaceC15178d, yf.f<? super C1844a> fVar) {
                super(2, fVar);
                this.f95100c = interfaceC13842i;
                this.f95101d = wVar;
                this.f95102e = interfaceC15178d;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                return new C1844a(this.f95100c, this.f95101d, this.f95102e, fVar);
            }

            @Override
            @Nullable
            public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
                return ((C1844a) create(s10, fVar)).invokeSuspend(P0.f98194a);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f95099b;
                try {
                    if (i10 == 0) {
                        C14418j0.n(obj);
                        InterfaceC13842i<T> interfaceC13842i = this.f95100c;
                        w<T> wVar = this.f95101d;
                        this.f95099b = 1;
                        if (interfaceC13842i.a(wVar, this) == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                    }
                    this.f95102e.release();
                    return P0.f98194a;
                } catch (Throwable th2) {
                    this.f95102e.release();
                    throw th2;
                }
            }
        }

        @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2", f = "Merge.kt", i = {0, 0}, l = {66}, m = "emit", n = {"this", "inner"}, s = {"L$0", "L$1"})
        public static final class b extends Bf.d {

            public Object f95103b;

            public Object f95104c;

            public Object f95105d;

            public final a<T> f95106e;

            public int f95107f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public b(a<? super T> aVar, yf.f<? super b> fVar) {
                super(fVar);
                this.f95106e = aVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f95105d = obj;
                this.f95107f |= Integer.MIN_VALUE;
                return this.f95106e.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(K0 k02, InterfaceC15178d interfaceC15178d, InterfaceC13358B<? super T> interfaceC13358B, w<T> wVar) {
            this.f95095b = k02;
            this.f95096c = interfaceC15178d;
            this.f95097d = interfaceC13358B;
            this.f95098e = wVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super P0> fVar) {
            b bVar;
            int i10;
            a<T> aVar;
            if (fVar instanceof b) {
                bVar = (b) fVar;
                int i11 = bVar.f95107f;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    bVar.f95107f = i11 - Integer.MIN_VALUE;
                    Object obj = bVar.f95105d;
                    Object l10 = Af.d.l();
                    i10 = bVar.f95107f;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        K0 k02 = this.f95095b;
                        if (k02 != null) {
                            N0.z(k02);
                        }
                        InterfaceC15178d interfaceC15178d = this.f95096c;
                        bVar.f95103b = this;
                        bVar.f95104c = interfaceC13842i;
                        bVar.f95107f = 1;
                        if (interfaceC15178d.g(bVar) == l10) {
                            return l10;
                        }
                        aVar = this;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        interfaceC13842i = (InterfaceC13842i) bVar.f95104c;
                        aVar = (a) bVar.f95103b;
                        C14418j0.n(obj);
                    }
                    C13123k.f(aVar.f95097d, null, null, new C1844a(interfaceC13842i, aVar.f95098e, aVar.f95096c, null), 3, null);
                    return P0.f98194a;
                }
            }
            bVar = new b(this, fVar);
            Object obj2 = bVar.f95105d;
            Object l102 = Af.d.l();
            i10 = bVar.f95107f;
            if (i10 != 0) {
            }
            C13123k.f(aVar.f95097d, null, null, new C1844a(interfaceC13842i, aVar.f95098e, aVar.f95096c, null), 3, null);
            return P0.f98194a;
        }
    }

    public C13984f(InterfaceC13842i interfaceC13842i, int i10, yf.j jVar, int i11, gg.i iVar, int i12, C14026x c14026x) {
        this(interfaceC13842i, i10, (i12 & 4) != 0 ? yf.l.f130251b : jVar, (i12 & 8) != 0 ? -2 : i11, (i12 & 16) != 0 ? gg.i.SUSPEND : iVar);
    }

    @Override
    @NotNull
    public String d() {
        return "concurrency=" + this.f95094f;
    }

    @Override
    @Nullable
    public Object f(@NotNull InterfaceC13358B<? super T> interfaceC13358B, @NotNull yf.f<? super P0> fVar) {
        Object a10 = this.f95093e.a(new a((K0) fVar.getContext().get(K0.f85619y4), C15180f.b(this.f95094f, 0, 2, null), interfaceC13358B, new w(interfaceC13358B)), fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    @Override
    @NotNull
    public AbstractC13982d<T> g(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return new C13984f(this.f95093e, this.f95094f, jVar, i10, iVar);
    }

    @Override
    @NotNull
    public InterfaceC13360D<T> l(@NotNull S s10) {
        return gg.z.c(s10, this.f95083b, this.f95084c, j());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13984f(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i, int i10, @NotNull yf.j jVar, int i11, @NotNull gg.i iVar) {
        super(jVar, i11, iVar);
        this.f95093e = interfaceC13842i;
        this.f95094f = i10;
    }
}
