package T0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@C0.a
public final class C3038h {
    @C0.a
    public static boolean a(@Nullable Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }

    @NonNull
    @C0.a
    @Deprecated
    public static <T> List<T> b() {
        return Collections.emptyList();
    }

    @NonNull
    @C0.a
    @Deprecated
    public static <T> List<T> c(@NonNull T t10) {
        return Collections.singletonList(t10);
    }

    @NonNull
    @C0.a
    @Deprecated
    public static <T> List<T> d(@NonNull T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : Collections.singletonList(tArr[0]) : Collections.emptyList();
    }

    @NonNull
    @C0.a
    public static <K, V> Map<K, V> e(@NonNull K k10, @NonNull V v10, @NonNull K k11, @NonNull V v11, @NonNull K k12, @NonNull V v12) {
        Map k13 = k(3, false);
        k13.put(k10, v10);
        k13.put(k11, v11);
        k13.put(k12, v12);
        return Collections.unmodifiableMap(k13);
    }

    @NonNull
    @C0.a
    public static <K, V> Map<K, V> f(@NonNull K k10, @NonNull V v10, @NonNull K k11, @NonNull V v11, @NonNull K k12, @NonNull V v12, @NonNull K k13, @NonNull V v13, @NonNull K k14, @NonNull V v14, @NonNull K k15, @NonNull V v15) {
        Map k16 = k(6, false);
        k16.put(k10, v10);
        k16.put(k11, v11);
        k16.put(k12, v12);
        k16.put(k13, v13);
        k16.put(k14, v14);
        k16.put(k15, v15);
        return Collections.unmodifiableMap(k16);
    }

    @NonNull
    @C0.a
    public static <K, V> Map<K, V> g(@NonNull K[] kArr, @NonNull V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length != length2) {
            throw new IllegalArgumentException("Key and values array lengths not equal: " + length + " != " + length2);
        }
        if (length == 0) {
            return Collections.emptyMap();
        }
        if (length == 1) {
            return Collections.singletonMap(kArr[0], vArr[0]);
        }
        Map k10 = k(length, false);
        for (int i10 = 0; i10 < kArr.length; i10++) {
            k10.put(kArr[i10], vArr[i10]);
        }
        return Collections.unmodifiableMap(k10);
    }

    @NonNull
    @C0.a
    public static <T> Set<T> h(int i10) {
        return i10 == 0 ? new ArraySet() : l(i10, true);
    }

    @NonNull
    @C0.a
    @Deprecated
    public static <T> Set<T> i(@NonNull T t10, @NonNull T t11, @NonNull T t12) {
        Set l10 = l(3, false);
        l10.add(t10);
        l10.add(t11);
        l10.add(t12);
        return Collections.unmodifiableSet(l10);
    }

    @NonNull
    @C0.a
    @Deprecated
    public static <T> Set<T> j(@NonNull T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t10 = tArr[0];
            T t11 = tArr[1];
            Set l10 = l(2, false);
            l10.add(t10);
            l10.add(t11);
            return Collections.unmodifiableSet(l10);
        }
        if (length == 3) {
            return i(tArr[0], tArr[1], tArr[2]);
        }
        if (length != 4) {
            Set l11 = l(length, false);
            Collections.addAll(l11, tArr);
            return Collections.unmodifiableSet(l11);
        }
        T t12 = tArr[0];
        T t13 = tArr[1];
        T t14 = tArr[2];
        T t15 = tArr[3];
        Set l12 = l(4, false);
        l12.add(t12);
        l12.add(t13);
        l12.add(t14);
        l12.add(t15);
        return Collections.unmodifiableSet(l12);
    }

    public static Map k(int i10, boolean z10) {
        return i10 <= 256 ? new ArrayMap(i10) : new HashMap(i10, 1.0f);
    }

    public static Set l(int i10, boolean z10) {
        if (i10 <= (true != z10 ? 256 : 128)) {
            return new ArraySet(i10);
        }
        return new HashSet(i10, true != z10 ? 1.0f : 0.75f);
    }
}
