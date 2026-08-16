package eg;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n37#2,2:128\n13579#3,2:130\n1855#4,2:132\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n*L\n42#1:128,2\n54#1:130,2\n66#1:132,2\n*E\n"})
public final class C13113f {

    @Bf.f(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {0}, l = {54}, m = "joinAll", n = {"$this$forEach$iv"}, s = {"L$0"})
    public static final class a extends Bf.d {

        public Object f85714b;

        public int f85715c;

        public int f85716d;

        public Object f85717e;

        public int f85718f;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f85717e = obj;
            this.f85718f |= Integer.MIN_VALUE;
            return C13113f.d(null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {}, l = {66}, m = "joinAll", n = {}, s = {})
    public static final class b extends Bf.d {

        public Object f85719b;

        public Object f85720c;

        public int f85721d;

        public b(yf.f<? super b> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f85720c = obj;
            this.f85721d |= Integer.MIN_VALUE;
            return C13113f.c(null, this);
        }
    }

    @Nullable
    public static final <T> Object a(@NotNull Collection<? extends Z<? extends T>> collection, @NotNull yf.f<? super List<? extends T>> fVar) {
        return collection.isEmpty() ? pf.H.J() : new C13111e((Z[]) collection.toArray(new Z[0])).c(fVar);
    }

    @Nullable
    public static final <T> Object b(@NotNull Z<? extends T>[] zArr, @NotNull yf.f<? super List<? extends T>> fVar) {
        return zArr.length == 0 ? pf.H.J() : new C13111e(zArr).c(fVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(@NotNull Collection<? extends K0> collection, @NotNull yf.f<? super nf.P0> fVar) {
        b bVar;
        int i10;
        Iterator<? extends K0> it;
        if (fVar instanceof b) {
            bVar = (b) fVar;
            int i11 = bVar.f85721d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f85721d = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f85720c;
                Object l10 = Af.d.l();
                i10 = bVar.f85721d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    it = collection.iterator();
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) bVar.f85719b;
                    C14418j0.n(obj);
                }
                while (it.hasNext()) {
                    K0 next = it.next();
                    bVar.f85719b = it;
                    bVar.f85721d = 1;
                    if (next.c0(bVar) == l10) {
                        return l10;
                    }
                }
                return nf.P0.f98194a;
            }
        }
        bVar = new b(fVar);
        Object obj2 = bVar.f85720c;
        Object l102 = Af.d.l();
        i10 = bVar.f85721d;
        if (i10 != 0) {
        }
        while (it.hasNext()) {
        }
        return nf.P0.f98194a;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0052 -> B:10:0x0055). Please report as a decompilation issue!!! */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(@NotNull K0[] k0Arr, @NotNull yf.f<? super nf.P0> fVar) {
        a aVar;
        int i10;
        int i11;
        K0[] k0Arr2;
        int length;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i12 = aVar.f85718f;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                aVar.f85718f = i12 - Integer.MIN_VALUE;
                Object obj = aVar.f85717e;
                Object l10 = Af.d.l();
                i10 = aVar.f85718f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    i11 = 0;
                    k0Arr2 = k0Arr;
                    length = k0Arr.length;
                    if (i11 < length) {
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    length = aVar.f85716d;
                    i11 = aVar.f85715c;
                    K0[] k0Arr3 = (K0[]) aVar.f85714b;
                    C14418j0.n(obj);
                    k0Arr2 = k0Arr3;
                    i11++;
                    if (i11 < length) {
                        K0 k02 = k0Arr2[i11];
                        aVar.f85714b = k0Arr2;
                        aVar.f85715c = i11;
                        aVar.f85716d = length;
                        aVar.f85718f = 1;
                        if (k02.c0(aVar) == l10) {
                            return l10;
                        }
                        i11++;
                        if (i11 < length) {
                            return nf.P0.f98194a;
                        }
                    }
                }
            }
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f85717e;
        Object l102 = Af.d.l();
        i10 = aVar.f85718f;
        if (i10 != 0) {
        }
    }
}
