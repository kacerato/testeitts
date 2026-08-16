package qf;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,724:1\n1#2:725\n*E\n"})
public final class c {
    public static final boolean a(Object[] objArr, int i10, int i11, List list) {
        return h(objArr, i10, i11, list);
    }

    public static final int b(Object[] objArr, int i10, int i11) {
        return i(objArr, i10, i11);
    }

    public static final String c(Object[] objArr, int i10, int i11, Collection collection) {
        return j(objArr, i10, i11, collection);
    }

    @NotNull
    public static final <E> E[] d(int i10) {
        if (i10 >= 0) {
            return (E[]) new Object[i10];
        }
        throw new IllegalArgumentException("capacity must be non-negative.");
    }

    @NotNull
    public static final <T> T[] e(@NotNull T[] tArr, int i10) {
        M.p(tArr, "<this>");
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, i10);
        M.o(tArr2, "copyOf(...)");
        return tArr2;
    }

    public static final <E> void f(@NotNull E[] eArr, int i10) {
        M.p(eArr, "<this>");
        eArr[i10] = null;
    }

    public static final <E> void g(@NotNull E[] eArr, int i10, int i11) {
        M.p(eArr, "<this>");
        while (i10 < i11) {
            f(eArr, i10);
            i10++;
        }
    }

    public static final <T> boolean h(T[] tArr, int i10, int i11, List<?> list) {
        if (i11 != list.size()) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (!M.g(tArr[i10 + i12], list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    public static final <T> int i(T[] tArr, int i10, int i11) {
        int i12 = 1;
        for (int i13 = 0; i13 < i11; i13++) {
            T t10 = tArr[i10 + i13];
            i12 = (i12 * 31) + (t10 != null ? t10.hashCode() : 0);
        }
        return i12;
    }

    public static final <T> String j(T[] tArr, int i10, int i11, Collection<? extends T> collection) {
        StringBuilder sb2 = new StringBuilder((i11 * 3) + 2);
        sb2.append("[");
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            T t10 = tArr[i10 + i12];
            if (t10 == collection) {
                sb2.append("(this Collection)");
            } else {
                sb2.append((Object) t10);
            }
        }
        sb2.append("]");
        String sb3 = sb2.toString();
        M.o(sb3, "toString(...)");
        return sb3;
    }
}
