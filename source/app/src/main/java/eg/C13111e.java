package eg;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import nf.C14416i0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n314#2,9:128\n323#2,2:141\n13#3:137\n19#3:140\n13579#4,2:138\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n*L\n71#1:128,9\n71#1:141,2\n78#1:137\n90#1:140\n83#1:138,2\n*E\n"})
public final class C13111e<T> {

    @NotNull
    public static final AtomicIntegerFieldUpdater f85704b = AtomicIntegerFieldUpdater.newUpdater(C13111e.class, "notCompletedCount");

    @NotNull
    public final Z<T>[] f85705a;

    @Lf.x
    private volatile int notCompletedCount;

    @kotlin.jvm.internal.t0({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n11335#2:128\n11670#2,3:129\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n*L\n121#1:128\n121#1:129,3\n*E\n"})
    public final class a extends Q0 {

        @NotNull
        public static final AtomicReferenceFieldUpdater f85706i = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer");

        @Lf.x
        @Nullable
        private volatile Object _disposer;

        @NotNull
        public final InterfaceC13133p<List<? extends T>> f85707f;

        public InterfaceC13128m0 f85708g;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull InterfaceC13133p<? super List<? extends T>> interfaceC13133p) {
            this.f85707f = interfaceC13133p;
        }

        @Override
        public void Y(@Nullable Throwable th2) {
            if (th2 != null) {
                Object E10 = this.f85707f.E(th2);
                if (E10 != null) {
                    this.f85707f.B(E10);
                    C13111e<T>.b b02 = b0();
                    if (b02 != null) {
                        b02.z();
                        return;
                    }
                    return;
                }
                return;
            }
            if (C13111e.f85704b.decrementAndGet(C13111e.this) == 0) {
                InterfaceC13133p<List<? extends T>> interfaceC13133p = this.f85707f;
                Z[] zArr = C13111e.this.f85705a;
                ArrayList arrayList = new ArrayList(zArr.length);
                for (Z z10 : zArr) {
                    arrayList.add(z10.e());
                }
                C14416i0.a aVar = C14416i0.f98201c;
                interfaceC13133p.resumeWith(C14416i0.b(arrayList));
            }
        }

        @Nullable
        public final C13111e<T>.b b0() {
            return (b) f85706i.get(this);
        }

        @NotNull
        public final InterfaceC13128m0 c0() {
            InterfaceC13128m0 interfaceC13128m0 = this.f85708g;
            if (interfaceC13128m0 != null) {
                return interfaceC13128m0;
            }
            kotlin.jvm.internal.M.S("handle");
            return null;
        }

        public final void d0(@Nullable C13111e<T>.b bVar) {
            f85706i.set(this, bVar);
        }

        public final void e0(@NotNull InterfaceC13128m0 interfaceC13128m0) {
            this.f85708g = interfaceC13128m0;
        }

        @Override
        public nf.P0 invoke(Throwable th2) {
            Y(th2);
            return nf.P0.f98194a;
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n13579#2,2:128\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n*L\n96#1:128,2\n*E\n"})
    public final class b extends AbstractC13129n {

        @NotNull
        public final C13111e<T>.a[] f85710b;

        public b(@NotNull C13111e<T>.a[] aVarArr) {
            this.f85710b = aVarArr;
        }

        @Override
        public nf.P0 invoke(Throwable th2) {
            y(th2);
            return nf.P0.f98194a;
        }

        @NotNull
        public String toString() {
            return "DisposeHandlersOnCancel[" + ((Object) this.f85710b) + JavaElement.JEM_TYPE_PARAMETER;
        }

        @Override
        public void y(@Nullable Throwable th2) {
            z();
        }

        public final void z() {
            for (C13111e<T>.a aVar : this.f85710b) {
                aVar.c0().dispose();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13111e(@NotNull Z<? extends T>[] zArr) {
        this.f85705a = zArr;
        this.notCompletedCount = zArr.length;
    }

    @Nullable
    public final Object c(@NotNull yf.f<? super List<? extends T>> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        int length = this.f85705a.length;
        a[] aVarArr = new a[length];
        for (int i10 = 0; i10 < length; i10++) {
            Z z10 = this.f85705a[i10];
            z10.start();
            a aVar = new a(c13135q);
            aVar.e0(z10.w(aVar));
            nf.P0 p02 = nf.P0.f98194a;
            aVarArr[i10] = aVar;
        }
        C13111e<T>.b bVar = new b(aVarArr);
        for (int i11 = 0; i11 < length; i11++) {
            aVarArr[i11].d0(bVar);
        }
        if (c13135q.d()) {
            bVar.z();
        } else {
            c13135q.K(bVar);
        }
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }
}
