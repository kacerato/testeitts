package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C10656zq0;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.openjdk.tools.doclint.DocLint;
import u.C15556y0;

public class TU {

    public static final boolean f44487a = true;

    public static Map a(Map map, final HashMap hashMap, final Function function) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Map.this.put(obj, function.apply(obj2));
            }
        });
        return hashMap;
    }

    public static String b(Map.Entry entry) {
        return entry.getKey() + b3.s.f32937c + entry.getValue();
    }

    public static void a(Map map, BiConsumer biConsumer, Object obj) {
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key.equals(obj)) {
                return;
            } else {
                biConsumer.accept(key, entry.getValue());
            }
        }
    }

    public static <T, R> Function<T, R> a(final Supplier<R> supplier) {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                Object obj2;
                obj2 = Supplier.this.get();
                return obj2;
            }
        };
    }

    public static IdentityHashMap a(Consumer consumer) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        consumer.accept(identityHashMap);
        return identityHashMap;
    }

    public static IdentityHashMap a(InterfaceC7033e6 interfaceC7033e6, int i10) {
        final IdentityHashMap identityHashMap = new IdentityHashMap(i10);
        interfaceC7033e6.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                IdentityHashMap.this.put(obj, obj2);
            }
        });
        return identityHashMap;
    }

    public static boolean a(Map.Entry entry) {
        return entry.getKey() == entry.getValue();
    }

    public static void a(AbstractMap abstractMap) {
        abstractMap.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return TU.a((Map.Entry) obj);
            }
        });
    }

    public static void a(Map map, InterfaceC6103Vr0 interfaceC6103Vr0) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (interfaceC6103Vr0.test(entry.getKey(), entry.getValue())) {
                it.remove();
            }
        }
    }

    public static Object a(IdentityHashMap identityHashMap, C5855Rj c5855Rj, Function function) {
        Object remove = identityHashMap.remove(c5855Rj);
        return remove != null ? remove : function.apply(c5855Rj);
    }

    public static String a(InterfaceC7896jG interfaceC7896jG) {
        return C10656zq0.a(DocLint.SEPARATOR, interfaceC7896jG.entrySet(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return TU.b((Map.Entry) obj);
            }
        }, C10656zq0.a.f54551d);
    }

    public static Map a(Collection collection, IntFunction intFunction, Function function) {
        return a(collection, intFunction, function, Function.identity());
    }

    public static Map a(Collection collection, IntFunction intFunction, Function function, Function function2) {
        Object apply;
        Object put;
        InterfaceC7495gt0 interfaceC7495gt0 = new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return TU.a(obj, obj2, obj3);
            }
        };
        Map map = (Map) intFunction.apply(collection.size());
        for (Object obj : collection) {
            Object apply2 = function.apply(obj);
            if (apply2 != null && (apply = function2.apply(obj)) != null && (put = map.put(apply2, apply)) != null) {
                map.put(apply2, interfaceC7495gt0.a(apply2, put, apply));
            }
        }
        return map;
    }

    public static Object a(Object obj, Object obj2, Object obj3) {
        throw new C5417Jv0();
    }

    public static <K1, V1, K2, V2> Map<K2, V2> a(Map<K1, V1> map, IntFunction<Map<K2, V2>> intFunction, final Function<K1, K2> function, final Function<V1, V2> function2, InterfaceC7495gt0<K2, V2, V2, V2> interfaceC7495gt0) {
        return a(map, intFunction, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                Object apply;
                apply = Function.this.apply(obj);
                return apply;
            }
        }, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                Object apply;
                apply = Function.this.apply(obj2);
                return apply;
            }
        }, interfaceC7495gt0);
    }

    public static Map a(Map map, IntFunction intFunction, final BiFunction biFunction, final BiFunction biFunction2, final InterfaceC7495gt0 interfaceC7495gt0) {
        final Map map2 = (Map) intFunction.apply(map.size());
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TU.a(BiFunction.this, biFunction2, map2, interfaceC7495gt0, obj, obj2);
            }
        });
        return map2;
    }

    public static void a(BiFunction biFunction, BiFunction biFunction2, Map map, InterfaceC7495gt0 interfaceC7495gt0, Object obj, Object obj2) {
        Object apply;
        Object put;
        Object apply2 = biFunction.apply(obj, obj2);
        if (apply2 == null || (apply = biFunction2.apply(obj, obj2)) == null || (put = map.put(apply2, apply)) == null) {
            return;
        }
        map.put(apply2, interfaceC7495gt0.a(apply2, put, apply));
    }

    public static Map a(IdentityHashMap identityHashMap, int i10) {
        if (identityHashMap.size() >= i10) {
            return identityHashMap;
        }
        Map map = (Map) new C15556y0().apply(identityHashMap.size());
        map.putAll(identityHashMap);
        return map;
    }
}
