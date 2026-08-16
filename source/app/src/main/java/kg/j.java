package kg;

import eg.C13123k;
import eg.S;
import gg.InterfaceC13358B;
import gg.InterfaceC13360D;
import java.util.Iterator;
import jg.InterfaceC13842i;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2,2:101\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge\n*L\n95#1:101,2\n*E\n"})
public final class j<T> extends AbstractC13982d<T> {

    @NotNull
    public final Iterable<InterfaceC13842i<T>> f95131e;

    @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {96}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f95132b;

        public final InterfaceC13842i<T> f95133c;

        public final w<T> f95134d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(InterfaceC13842i<? extends T> interfaceC13842i, w<T> wVar, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f95133c = interfaceC13842i;
            this.f95134d = wVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new a(this.f95133c, this.f95134d, fVar);
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f95132b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13842i<T> interfaceC13842i = this.f95133c;
                w<T> wVar = this.f95134d;
                this.f95132b = 1;
                if (interfaceC13842i.a(wVar, this) == l10) {
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

    public j(Iterable iterable, yf.j jVar, int i10, gg.i iVar, int i11, C14026x c14026x) {
        this(iterable, (i11 & 2) != 0 ? yf.l.f130251b : jVar, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? gg.i.SUSPEND : iVar);
    }

    @Override
    @Nullable
    public Object f(@NotNull InterfaceC13358B<? super T> interfaceC13358B, @NotNull yf.f<? super P0> fVar) {
        w wVar = new w(interfaceC13358B);
        Iterator<InterfaceC13842i<T>> it = this.f95131e.iterator();
        while (it.hasNext()) {
            C13123k.f(interfaceC13358B, null, null, new a(it.next(), wVar, null), 3, null);
        }
        return P0.f98194a;
    }

    @Override
    @NotNull
    public AbstractC13982d<T> g(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return new j(this.f95131e, jVar, i10, iVar);
    }

    @Override
    @NotNull
    public InterfaceC13360D<T> l(@NotNull S s10) {
        return gg.z.c(s10, this.f95083b, this.f95084c, j());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j(@NotNull Iterable<? extends InterfaceC13842i<? extends T>> iterable, @NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        super(jVar, i10, iVar);
        this.f95131e = iterable;
    }
}
