package pf;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nGrouping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n*L\n1#1,291:1\n80#1,6:292\n53#1:298\n80#1,6:299\n80#1,6:305\n53#1:311\n80#1,6:312\n80#1,6:318\n53#1:324\n80#1,6:325\n80#1,6:331\n189#1:337\n80#1,6:338\n*S KotlinDebug\n*F\n+ 1 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n*L\n53#1:292,6\n112#1:298\n112#1:299,6\n143#1:305,6\n164#1:311\n164#1:312,6\n189#1:318,6\n211#1:324\n211#1:325,6\n239#1:331,6\n257#1:337\n257#1:338,6\n*E\n"})
public class C14966c0 extends C14964b0 {
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> c(@NotNull Z<T, ? extends K> z10, @NotNull Mf.r<? super K, ? super R, ? super T, ? super Boolean, ? extends R> operation) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> b10 = z10.b();
        while (b10.hasNext()) {
            ?? next = b10.next();
            Object a10 = z10.a(next);
            A.c cVar = (Object) linkedHashMap.get(a10);
            linkedHashMap.put(a10, operation.invoke(a10, cVar, next, Boolean.valueOf(cVar == null && !linkedHashMap.containsKey(a10))));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M d(@NotNull Z<T, ? extends K> z10, @NotNull M destination, @NotNull Mf.r<? super K, ? super R, ? super T, ? super Boolean, ? extends R> operation) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<T> b10 = z10.b();
        while (b10.hasNext()) {
            ?? next = b10.next();
            Object a10 = z10.a(next);
            A.c cVar = (Object) destination.get(a10);
            destination.put(a10, operation.invoke(a10, cVar, next, Boolean.valueOf(cVar == null && !destination.containsKey(a10))));
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K, M extends Map<? super K, Integer>> M e(@NotNull Z<T, ? extends K> z10, @NotNull M destination) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        Iterator<T> b10 = z10.b();
        while (b10.hasNext()) {
            K a10 = z10.a(b10.next());
            Object obj = destination.get(a10);
            if (obj == null && !destination.containsKey(a10)) {
                obj = 0;
            }
            destination.put(a10, Integer.valueOf(((Number) obj).intValue() + 1));
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> f(@NotNull Z<T, ? extends K> z10, @NotNull Mf.p<? super K, ? super T, ? extends R> initialValueSelector, @NotNull Mf.q<? super K, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(initialValueSelector, "initialValueSelector");
        kotlin.jvm.internal.M.p(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> b10 = z10.b();
        while (b10.hasNext()) {
            ?? next = b10.next();
            Object a10 = z10.a(next);
            R r10 = (Object) linkedHashMap.get(a10);
            if (r10 == null && !linkedHashMap.containsKey(a10)) {
                r10 = initialValueSelector.invoke(a10, next);
            }
            linkedHashMap.put(a10, operation.n(a10, r10, next));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> g(@NotNull Z<T, ? extends K> z10, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> b10 = z10.b();
        while (b10.hasNext()) {
            ?? next = b10.next();
            K a10 = z10.a(next);
            A0.a aVar = (Object) linkedHashMap.get(a10);
            if (aVar == null && !linkedHashMap.containsKey(a10)) {
                aVar = (Object) r10;
            }
            linkedHashMap.put(a10, operation.invoke(aVar, next));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M h(@NotNull Z<T, ? extends K> z10, @NotNull M destination, @NotNull Mf.p<? super K, ? super T, ? extends R> initialValueSelector, @NotNull Mf.q<? super K, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(initialValueSelector, "initialValueSelector");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<T> b10 = z10.b();
        while (b10.hasNext()) {
            ?? next = b10.next();
            Object a10 = z10.a(next);
            R r10 = (Object) destination.get(a10);
            if (r10 == null && !destination.containsKey(a10)) {
                r10 = initialValueSelector.invoke(a10, next);
            }
            destination.put(a10, operation.n(a10, r10, next));
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M i(@NotNull Z<T, ? extends K> z10, @NotNull M destination, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<T> b10 = z10.b();
        while (b10.hasNext()) {
            ?? next = b10.next();
            K a10 = z10.a(next);
            A0.a aVar = (Object) destination.get(a10);
            if (aVar == null && !destination.containsKey(a10)) {
                aVar = (Object) r10;
            }
            destination.put(a10, operation.invoke(aVar, next));
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <S, T extends S, K> Map<K, S> j(@NotNull Z<T, ? extends K> z10, @NotNull Mf.q<? super K, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator b10 = z10.b();
        while (b10.hasNext()) {
            S s10 = (Object) b10.next();
            Object a10 = z10.a(s10);
            A.c cVar = (Object) linkedHashMap.get(a10);
            if (!(cVar == null && !linkedHashMap.containsKey(a10))) {
                s10 = operation.n(a10, cVar, s10);
            }
            linkedHashMap.put(a10, s10);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <S, T extends S, K, M extends Map<? super K, S>> M k(@NotNull Z<T, ? extends K> z10, @NotNull M destination, @NotNull Mf.q<? super K, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator b10 = z10.b();
        while (b10.hasNext()) {
            S s10 = (Object) b10.next();
            Object a10 = z10.a(s10);
            A.c cVar = (Object) destination.get(a10);
            if (!(cVar == null && !destination.containsKey(a10))) {
                s10 = operation.n(a10, cVar, s10);
            }
            destination.put(a10, s10);
        }
        return destination;
    }
}
