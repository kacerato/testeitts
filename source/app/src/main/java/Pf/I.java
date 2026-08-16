package pf;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class I extends H {

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n*L\n1#1,70:1\n*E\n"})
    public static final class a<T> implements Iterable<T>, Nf.a {

        public final Mf.a<Iterator<T>> f103824b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Mf.a<? extends Iterator<? extends T>> aVar) {
            this.f103824b = aVar;
        }

        @Override
        public Iterator<T> iterator() {
            return this.f103824b.invoke();
        }
    }

    @Ef.f
    public static final <T> Iterable<T> c0(Mf.a<? extends Iterator<? extends T>> iterator) {
        kotlin.jvm.internal.M.p(iterator, "iterator");
        return new a(iterator);
    }

    @InterfaceC14410f0
    public static <T> int d0(@NotNull Iterable<? extends T> iterable, int i10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i10;
    }

    @InterfaceC14410f0
    @Nullable
    public static final <T> Integer e0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof Collection) {
            return Integer.valueOf(((Collection) iterable).size());
        }
        return null;
    }

    @NotNull
    public static final <T> List<T> f0(@NotNull Iterable<? extends Iterable<? extends T>> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends Iterable<? extends T>> it = iterable.iterator();
        while (it.hasNext()) {
            M.t0(arrayList, it.next());
        }
        return arrayList;
    }

    @NotNull
    public static final <T, R> nf.Z<List<T>, List<R>> g0(@NotNull Iterable<? extends nf.Z<? extends T, ? extends R>> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        int d02 = d0(iterable, 10);
        ArrayList arrayList = new ArrayList(d02);
        ArrayList arrayList2 = new ArrayList(d02);
        for (nf.Z<? extends T, ? extends R> z10 : iterable) {
            arrayList.add(z10.e());
            arrayList2.add(z10.f());
        }
        return nf.v0.a(arrayList, arrayList2);
    }
}
