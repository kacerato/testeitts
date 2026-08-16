package com.android.tools.r8.internal;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.Predicate;

public class X3 {

    public static final boolean f45604a = true;

    public static boolean a(Object[] objArr, Predicate predicate) {
        for (Object obj : objArr) {
            if (predicate.test(obj)) {
                return true;
            }
        }
        return false;
    }

    public static <T> T b(T[] tArr) {
        return tArr[tArr.length - 1];
    }

    public static <T> Optional<T>[] c(T[] tArr) {
        Optional<T>[] optionalArr = new Optional[tArr.length + 1];
        for (int i10 = 0; i10 < tArr.length; i10++) {
            optionalArr[i10] = Optional.of(tArr[i10]);
        }
        optionalArr[tArr.length] = Optional.empty();
        return optionalArr;
    }

    public static Object[] b(Object[] objArr, Object obj) {
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length + 1);
        copyOf[objArr.length] = obj;
        return copyOf;
    }

    public static <T> T[] a(Class<T[]> cls, T[] tArr, Map<Integer, T> map) {
        T[] cast = cls.cast(Array.newInstance(cls.getComponentType(), tArr.length));
        int i10 = 0;
        for (Map.Entry<Integer, T> entry : map.entrySet()) {
            int intValue = entry.getKey().intValue();
            System.arraycopy(tArr, i10, cast, i10, intValue - i10);
            cast[intValue] = entry.getValue();
            i10 = intValue + 1;
        }
        if (i10 < tArr.length) {
            System.arraycopy(tArr, i10, cast, i10, tArr.length - i10);
        }
        return cast;
    }

    public static int[] a(int[] iArr, IntUnaryOperator intUnaryOperator) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr[i10] = intUnaryOperator.applyAsInt(i10);
        }
        return iArr;
    }

    public static Object[] a(Object[] objArr, IntFunction intFunction) {
        for (int i10 = 0; i10 < objArr.length; i10++) {
            objArr[i10] = intFunction.apply(i10);
        }
        return objArr;
    }

    public static boolean a(Object[] objArr) {
        return objArr.length == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <S, T> T[] a(S[] sArr, Function<S, T> function, T[] tArr) {
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < sArr.length; i10++) {
            S s10 = sArr[i10];
            T apply = function.apply(s10);
            if (apply != s10) {
                if (arrayList == null) {
                    arrayList = new ArrayList(sArr.length);
                    for (int i11 = 0; i11 < i10; i11++) {
                        arrayList.add(sArr[i11]);
                    }
                }
                if (apply != null) {
                    arrayList.add(apply);
                }
            } else if (arrayList != null) {
                arrayList.add(s10);
            }
        }
        return arrayList != null ? (T[]) arrayList.toArray(tArr) : sArr;
    }

    public static void a(Object[] objArr, Function function, Object[] objArr2, Consumer consumer) {
        Object[] a10 = a(objArr, function, objArr2);
        if (a10 != objArr) {
            consumer.accept(a10);
        }
    }

    public static String[] a(Object[] objArr, Function function) {
        String[] strArr = new String[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            strArr[i10] = (String) function.apply(objArr[i10]);
        }
        return strArr;
    }

    public static <T> T[] a(T[] tArr, final Predicate<T> predicate, T[] tArr2) {
        return (T[]) a((Object[]) tArr, new Function() {
            @Override
            public final Object apply(Object obj) {
                return X3.a(Predicate.this, obj);
            }
        }, (Object[]) tArr2);
    }

    public static Object a(Predicate predicate, Object obj) {
        if (predicate.test(obj)) {
            return obj;
        }
        return null;
    }

    public static Object[] a(Object[] objArr, Predicate predicate, Object[] objArr2, int i10) {
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), i10);
        int i11 = 0;
        for (Object obj : objArr) {
            if (predicate.test(obj)) {
                objArr3[i11] = obj;
                i11++;
            }
        }
        if (f45604a || i11 == i10) {
            return objArr3;
        }
        throw new AssertionError();
    }

    public static boolean a(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (!Objects.equals(obj2, obj)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(Object[] objArr, com.android.tools.r8.graph.M2 m22) {
        for (Object obj : objArr) {
            if (Objects.equals(obj, m22)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(Object[] objArr, Function function, Object obj) {
        for (Object obj2 : objArr) {
            if (function.apply(obj2).equals(obj)) {
                return true;
            }
        }
        return false;
    }
}
