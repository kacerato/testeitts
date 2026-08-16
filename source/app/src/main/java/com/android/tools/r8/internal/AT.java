package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;

public class AT {

    public static final boolean f38618a = true;

    public static <S, T> List<T> a(List<S> list, final Function<S, Collection<T>> function) {
        final ArrayList arrayList = new ArrayList();
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.addAll((Collection) function.apply(obj));
            }
        });
        return arrayList;
    }

    public static List b(List list, Function function) {
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            Object obj = list.get(i10);
            Collection collection = (Collection) function.apply(obj);
            if (collection != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList((collection.size() + list.size()) - 1);
                    for (int i11 = 0; i11 < i10; i11++) {
                        arrayList.add(list.get(i11));
                    }
                }
                arrayList.addAll(collection);
            } else if (arrayList != null) {
                arrayList.add(obj);
            }
        }
        if (arrayList != null) {
            return arrayList;
        }
        return null;
    }

    public static <T> List<T> c(List<T> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int size = list.size() - 1; size >= 0; size--) {
            arrayList.add(list.get(size));
        }
        return arrayList;
    }

    public static <S, T extends S> List<T> a(Collection<S> collection, final Predicate<? super S> predicate) {
        final ArrayList arrayList = new ArrayList(collection.size());
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AT.a(Predicate.this, arrayList, obj);
            }
        });
        return arrayList;
    }

    public static void a(Predicate predicate, ArrayList arrayList, Object obj) {
        if (predicate.test(obj)) {
            arrayList.add(obj);
        }
    }

    public static <T> T a(List<T> list) {
        return list.get(0);
    }

    public static <T> T b(List<T> list) {
        return list.get(list.size() - 1);
    }

    public static int a(List list, Predicate predicate) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (predicate.test(list.get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    public static <T> int b(List<T> list, Predicate<T> predicate) {
        for (int size = list.size() - 1; size >= 0; size--) {
            if (predicate.test(list.get(size))) {
                return size;
            }
        }
        return -1;
    }

    public static <S, T> List<T> a(S[] sArr, Function<S, T> function) {
        ArrayList arrayList = new ArrayList();
        for (S s10 : sArr) {
            arrayList.add(function.apply(s10));
        }
        return arrayList;
    }

    public static AbstractC7552hC b(InterfaceC6285Yx interfaceC6285Yx) {
        int i10 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        interfaceC6285Yx.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7051eC.this.a(obj);
            }
        });
        return c7051eC.a();
    }

    public static <S, T> List<T> a(Collection<S> collection, Function<S, T> function) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<S> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(function.apply(it.next()));
        }
        return arrayList;
    }

    public static List a(List list, final Function function, List list2) {
        return a(list, new InterfaceC6568bI() {
            @Override
            public final Object a(int i10, Object obj) {
                Object apply;
                apply = Function.this.apply(obj);
                return apply;
            }
        }, list2);
    }

    public static List a(List list, InterfaceC6568bI interfaceC6568bI, List list2) {
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            Object obj = list.get(i10);
            Object a10 = interfaceC6568bI.a(i10, obj);
            if (a10 != obj) {
                if (arrayList == null) {
                    arrayList = new ArrayList(list.size());
                    for (int i11 = 0; i11 < i10; i11++) {
                        arrayList.add(list.get(i11));
                    }
                }
                if (a10 != null) {
                    arrayList.add(a10);
                }
            } else if (arrayList != null) {
                arrayList.add(obj);
            }
        }
        return arrayList != null ? arrayList : list2;
    }

    public static void a(List list, Function function, Consumer consumer) {
        List a10 = a(list, function, list);
        if (a10 != list) {
            consumer.accept(a10);
        }
    }

    public static <T> ArrayList<T> a(InterfaceC6285Yx<T> interfaceC6285Yx) {
        final ArrayList<T> arrayList = new ArrayList<>();
        interfaceC6285Yx.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ArrayList.this.add(obj);
            }
        });
        return arrayList;
    }

    public static ArrayList a(final AbstractC7552hC abstractC7552hC, CH ch2) {
        boolean z10 = f38618a;
        if (!z10 && ch2.stream().distinct().count() != ch2.f39177c) {
            throw new AssertionError();
        }
        if (!z10 && !ch2.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AT.a(List.this, (Integer) obj);
            }
        })) {
            throw new AssertionError();
        }
        if (ch2.f39177c == abstractC7552hC.size()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(abstractC7552hC.size() - ch2.f39177c);
        int i10 = 0;
        UH o10 = ch2.o(0);
        int r10 = o10.r();
        while (true) {
            if (i10 >= abstractC7552hC.size()) {
                break;
            }
            boolean z11 = f38618a;
            if (!z11 && i10 > r10) {
                throw new AssertionError();
            }
            if (i10 == r10) {
                if (!o10.hasNext()) {
                    while (true) {
                        i10++;
                        if (i10 >= abstractC7552hC.size()) {
                            break;
                        }
                        arrayList.add(abstractC7552hC.get(i10));
                    }
                } else {
                    r10 = o10.r();
                    if (!z11 && r10 <= i10) {
                        throw new AssertionError();
                    }
                }
            } else {
                arrayList.add(abstractC7552hC.get(i10));
            }
            i10++;
        }
        return arrayList;
    }

    public static boolean a(List list, Integer num) {
        return num.intValue() < list.size();
    }

    public static <T> ArrayList<T> a(int i10, IntFunction<T> intFunction) {
        ArrayList<T> arrayList = new ArrayList<>(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(intFunction.apply(i11));
        }
        return arrayList;
    }

    public static Object a(Object obj, Collection collection, BiFunction biFunction) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            obj = biFunction.apply(obj, it.next());
        }
        return obj;
    }

    public static void a(List list, InterfaceC10593zT interfaceC10593zT) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            interfaceC10593zT.accept(list.get(i10), i10);
        }
    }

    public static ArrayList a(C9406sK c9406sK, Comparator comparator, int i10) {
        ArrayList arrayList = new ArrayList(i10);
        AbstractC9907vK.a(c9406sK, arrayList);
        arrayList.sort(comparator);
        return arrayList;
    }

    public static ArrayList a(Collection collection, Comparator comparator) {
        ArrayList arrayList = new ArrayList(collection);
        arrayList.sort(comparator);
        return arrayList;
    }

    public static void a(List list, Comparator comparator) {
        list.sort(comparator);
    }
}
