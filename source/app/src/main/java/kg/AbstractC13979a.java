package kg;

import java.util.Arrays;
import jg.U;
import kg.AbstractC13981c;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n28#2,4:133\n28#2,4:138\n28#2,4:144\n20#3:137\n20#3:142\n20#3:148\n1#4:143\n13579#5,2:149\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n30#1:133,4\n45#1:138,4\n76#1:144,4\n30#1:137\n45#1:142\n76#1:148\n95#1:149,2\n*E\n"})
public abstract class AbstractC13979a<S extends AbstractC13981c<?>> {

    @Nullable
    public S[] f95078b;

    public int f95079c;

    public int f95080d;

    @Nullable
    public y f95081e;

    @NotNull
    public final S f() {
        S s10;
        y yVar;
        synchronized (this) {
            try {
                S[] sArr = this.f95078b;
                if (sArr == null) {
                    sArr = i(2);
                    this.f95078b = sArr;
                } else if (this.f95079c >= sArr.length) {
                    Object[] copyOf = Arrays.copyOf(sArr, sArr.length * 2);
                    M.o(copyOf, "copyOf(this, newSize)");
                    this.f95078b = (S[]) ((AbstractC13981c[]) copyOf);
                    sArr = (S[]) ((AbstractC13981c[]) copyOf);
                }
                int i10 = this.f95080d;
                do {
                    s10 = sArr[i10];
                    if (s10 == null) {
                        s10 = g();
                        sArr[i10] = s10;
                    }
                    i10++;
                    if (i10 >= sArr.length) {
                        i10 = 0;
                    }
                    M.n(s10, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!s10.a(this));
                this.f95080d = i10;
                this.f95079c++;
                yVar = this.f95081e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (yVar != null) {
            yVar.e0(1);
        }
        return s10;
    }

    @NotNull
    public abstract S g();

    @NotNull
    public abstract S[] i(int i10);

    public final void j(@NotNull Mf.l<? super S, P0> lVar) {
        AbstractC13981c[] abstractC13981cArr;
        if (this.f95079c == 0 || (abstractC13981cArr = this.f95078b) == null) {
            return;
        }
        for (AbstractC13981c abstractC13981c : abstractC13981cArr) {
            if (abstractC13981c != null) {
                lVar.invoke(abstractC13981c);
            }
        }
    }

    public final void k(@NotNull S s10) {
        y yVar;
        int i10;
        yf.f<P0>[] b10;
        synchronized (this) {
            try {
                int i11 = this.f95079c - 1;
                this.f95079c = i11;
                yVar = this.f95081e;
                if (i11 == 0) {
                    this.f95080d = 0;
                }
                M.n(s10, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                b10 = s10.b(this);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (yf.f<P0> fVar : b10) {
            if (fVar != null) {
                C14416i0.a aVar = C14416i0.f98201c;
                fVar.resumeWith(C14416i0.b(P0.f98194a));
            }
        }
        if (yVar != null) {
            yVar.e0(-1);
        }
    }

    public final int l() {
        return this.f95079c;
    }

    @Nullable
    public final S[] m() {
        return this.f95078b;
    }

    @NotNull
    public final U<Integer> y() {
        y yVar;
        synchronized (this) {
            yVar = this.f95081e;
            if (yVar == null) {
                yVar = new y(this.f95079c);
                this.f95081e = yVar;
            }
        }
        return yVar;
    }
}
