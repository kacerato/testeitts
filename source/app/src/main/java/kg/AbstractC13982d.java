package kg;

import eg.F0;
import eg.S;
import eg.T;
import eg.U;
import eg.W;
import gg.InterfaceC13358B;
import gg.InterfaceC13360D;
import java.util.ArrayList;
import jg.C13844k;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
@t0({"SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"})
public abstract class AbstractC13982d<T> implements p<T> {

    @Lf.g
    @NotNull
    public final yf.j f95083b;

    @Lf.g
    public final int f95084c;

    @Lf.g
    @NotNull
    public final gg.i f95085d;

    @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", i = {}, l = {123}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f95086b;

        public Object f95087c;

        public final InterfaceC13843j<T> f95088d;

        public final AbstractC13982d<T> f95089e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(InterfaceC13843j<? super T> interfaceC13843j, AbstractC13982d<T> abstractC13982d, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f95088d = interfaceC13843j;
            this.f95089e = abstractC13982d;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            a aVar = new a(this.f95088d, this.f95089e, fVar);
            aVar.f95087c = obj;
            return aVar;
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
            int i10 = this.f95086b;
            if (i10 == 0) {
                C14418j0.n(obj);
                S s10 = (S) this.f95087c;
                InterfaceC13843j<T> interfaceC13843j = this.f95088d;
                InterfaceC13360D<T> l11 = this.f95089e.l(s10);
                this.f95086b = 1;
                if (C13844k.l0(interfaceC13843j, l11, this) == l10) {
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

    @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends Bf.q implements Mf.p<InterfaceC13358B<? super T>, yf.f<? super P0>, Object> {

        public int f95090b;

        public Object f95091c;

        public final AbstractC13982d<T> f95092d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(AbstractC13982d<T> abstractC13982d, yf.f<? super b> fVar) {
            super(2, fVar);
            this.f95092d = abstractC13982d;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            b bVar = new b(this.f95092d, fVar);
            bVar.f95091c = obj;
            return bVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super T> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((b) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f95090b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13358B<? super T> interfaceC13358B = (InterfaceC13358B) this.f95091c;
                AbstractC13982d<T> abstractC13982d = this.f95092d;
                this.f95090b = 1;
                if (abstractC13982d.f(interfaceC13358B, this) == l10) {
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

    public AbstractC13982d(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        this.f95083b = jVar;
        this.f95084c = i10;
        this.f95085d = iVar;
    }

    public static <T> Object e(AbstractC13982d<T> abstractC13982d, InterfaceC13843j<? super T> interfaceC13843j, yf.f<? super P0> fVar) {
        Object g10 = T.g(new a(interfaceC13843j, abstractC13982d, null), fVar);
        return g10 == Af.d.l() ? g10 : P0.f98194a;
    }

    @Override
    @Nullable
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        return e(this, interfaceC13843j, fVar);
    }

    @Override
    @NotNull
    public InterfaceC13842i<T> c(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        yf.j plus = jVar.plus(this.f95083b);
        if (iVar == gg.i.SUSPEND) {
            int i11 = this.f95084c;
            if (i11 != -3) {
                if (i10 != -3) {
                    if (i11 != -2) {
                        if (i10 != -2) {
                            i10 += i11;
                            if (i10 < 0) {
                                i10 = Integer.MAX_VALUE;
                            }
                        }
                    }
                }
                i10 = i11;
            }
            iVar = this.f95085d;
        }
        return (M.g(plus, this.f95083b) && i10 == this.f95084c && iVar == this.f95085d) ? this : g(plus, i10, iVar);
    }

    @Nullable
    public String d() {
        return null;
    }

    @Nullable
    public abstract Object f(@NotNull InterfaceC13358B<? super T> interfaceC13358B, @NotNull yf.f<? super P0> fVar);

    @NotNull
    public abstract AbstractC13982d<T> g(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar);

    @Nullable
    public InterfaceC13842i<T> i() {
        return null;
    }

    @NotNull
    public final Mf.p<InterfaceC13358B<? super T>, yf.f<? super P0>, Object> j() {
        return new b(this, null);
    }

    public final int k() {
        int i10 = this.f95084c;
        if (i10 == -3) {
            return -2;
        }
        return i10;
    }

    @NotNull
    public InterfaceC13360D<T> l(@NotNull S s10) {
        return gg.z.h(s10, this.f95083b, k(), this.f95085d, U.ATOMIC, null, j(), 16, null);
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String d10 = d();
        if (d10 != null) {
            arrayList.add(d10);
        }
        if (this.f95083b != yf.l.f130251b) {
            arrayList.add("context=" + ((Object) this.f95083b));
        }
        if (this.f95084c != -3) {
            arrayList.add("capacity=" + this.f95084c);
        }
        if (this.f95085d != gg.i.SUSPEND) {
            arrayList.add("onBufferOverflow=" + ((Object) this.f95085d));
        }
        return W.a(this) + '[' + pf.S.r3(arrayList, ", ", null, null, 0, null, null, 62, null) + JavaElement.JEM_TYPE_PARAMETER;
    }
}
