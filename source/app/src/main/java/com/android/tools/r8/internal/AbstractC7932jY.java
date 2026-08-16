package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.internal.IA;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public abstract class AbstractC7932jY {

    public static final boolean f49266a = true;

    public static void a(Map map, IA.a aVar, IA.a aVar2, com.android.tools.r8.graph.M2 m22, Set set) {
        if (map.containsKey(m22)) {
            if (!f49266a && !set.equals(map.get(m22))) {
                throw new AssertionError();
            }
            aVar.f41027r.put(m22, set);
            return;
        }
        aVar2.f41027r.put(m22, set);
    }

    public static void b(IA ia2, IA ia3, final IA.a aVar, final IA.a aVar2) {
        d(ia2, ia3, aVar, aVar2);
        c(ia2, ia3, aVar, aVar2);
        Map<com.android.tools.r8.graph.M2, JA> e10 = ia2.e();
        Map<com.android.tools.r8.graph.M2, JA> e11 = ia3.e();
        Objects.requireNonNull(aVar);
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                IA.a.this.a((com.android.tools.r8.graph.M2) obj, (JA) obj2);
            }
        };
        Objects.requireNonNull(aVar2);
        a(e10, e11, biConsumer, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                IA.a.this.a((com.android.tools.r8.graph.M2) obj, (JA) obj2);
            }
        });
        b(ia2.g(), ia3.g(), new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                IA.a.this.b((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                IA.a.this.b((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        b(ia2.f40998i, ia3.f40998i, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                IA.a.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                IA.a.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        b(ia2.f(), ia3.f(), new LJ0(aVar), new LJ0(aVar2));
        b(ia2.c(), ia3.c(), new MJ0(aVar), new MJ0(aVar2));
        a(ia2.d(), ia3.d(), new NJ0(aVar), new NJ0(aVar2));
        e(ia2, ia3, aVar, aVar2);
        a(ia2, ia3, aVar, aVar2);
    }

    public static void c(IA ia2, final IA ia3, final IA.a aVar, final IA.a aVar2) {
        ia2.h().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7932jY.a(IA.this, aVar2, aVar, (String) obj, (Map) obj2);
            }
        });
    }

    public static void d(IA ia2, final IA ia3, final IA.a aVar, final IA.a aVar2) {
        ia2.i().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7932jY.a(IA.this, aVar, aVar2, (String) obj, (String) obj2);
            }
        });
    }

    public static void e(IA ia2, IA ia3, final IA.a aVar, final IA.a aVar2) {
        final Map<com.android.tools.r8.graph.M2, Set<com.android.tools.r8.graph.A2>> j10 = ia3.j();
        ia2.j().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7932jY.a(Map.this, aVar, aVar2, (com.android.tools.r8.graph.M2) obj, (Set) obj2);
            }
        });
    }

    public static void a(IA ia2, IA ia3, final IA.a aVar, final IA.a aVar2) {
        final Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.L4> b10 = ia3.b();
        ia2.b().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7932jY.a(Map.this, aVar, aVar2, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.L4) obj2);
            }
        });
    }

    public static void a(Map map, IA.a aVar, IA.a aVar2, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.L4 l42) {
        if (map.get(a22) == l42) {
            aVar.f41029t.put(a22, l42);
        } else {
            aVar2.f41029t.put(a22, l42);
        }
    }

    public static void a(IA ia2, final IA.a aVar, final IA.a aVar2, final String str, Map map) {
        if (!ia2.h().containsKey(str)) {
            map.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    IA.a.this.a(str, (String) obj, (String) obj2);
                }
            });
        } else {
            final Map<String, String> map2 = ia2.h().get(str);
            map.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    AbstractC7932jY.a(Map.this, aVar2, str, aVar, (String) obj, (String) obj2);
                }
            });
        }
    }

    public static void a(Map map, IA.a aVar, String str, IA.a aVar2, String str2, String str3) {
        if (map.containsKey(str2) && ((String) map.get(str2)).equals(str3)) {
            aVar.a(str, str2, str3);
        } else {
            aVar2.a(str, str2, str3);
        }
    }

    public static void a(IA ia2, IA.a aVar, IA.a aVar2, String str, String str2) {
        if (ia2.i().containsKey(str) && ia2.i().get(str).equals(str2)) {
            aVar.a(str, str2);
        } else {
            aVar2.a(str, str2);
        }
    }

    public static void a(Map map, final Map map2, final BiConsumer biConsumer, final BiConsumer biConsumer2) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7932jY.a(Map.this, biConsumer, biConsumer2, (AbstractC4592n1) obj, (JA) obj2);
            }
        });
    }

    public static void a(Map map, BiConsumer biConsumer, BiConsumer biConsumer2, AbstractC4592n1 abstractC4592n1, JA ja2) {
        if (((JA) map.get(abstractC4592n1)).equals(ja2)) {
            biConsumer.accept(abstractC4592n1, ja2);
        } else {
            biConsumer2.accept(abstractC4592n1, ja2);
        }
    }

    public static void a(Map map, BiConsumer biConsumer, BiConsumer biConsumer2, AbstractC4592n1 abstractC4592n1, com.android.tools.r8.graph.M2 m22) {
        if (map.get(abstractC4592n1) == m22) {
            biConsumer.accept(abstractC4592n1, m22);
        } else {
            biConsumer2.accept(abstractC4592n1, m22);
        }
    }

    public static void a(Set set, final Set set2, final Consumer consumer, final Consumer consumer2) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC7932jY.a(Set.this, consumer, consumer2, (AbstractC4592n1) obj);
            }
        });
    }

    public static void a(Set set, Consumer consumer, Consumer consumer2, AbstractC4592n1 abstractC4592n1) {
        if (set.contains(abstractC4592n1)) {
            consumer.accept(abstractC4592n1);
        } else {
            consumer2.accept(abstractC4592n1);
        }
    }

    public static void b(Map map, final Map map2, final BiConsumer biConsumer, final BiConsumer biConsumer2) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7932jY.a(Map.this, biConsumer, biConsumer2, (AbstractC4592n1) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
    }
}
