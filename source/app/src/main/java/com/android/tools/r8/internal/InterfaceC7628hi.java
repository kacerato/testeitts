package com.android.tools.r8.internal;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public interface InterfaceC7628hi {
    AbstractC6333Zs0 a(Object obj, InterfaceC7495gt0 interfaceC7495gt0, Object obj2);

    AbstractC6333Zs0 a(Object obj, Object obj2, BiFunction biFunction);

    AbstractC6333Zs0 a(Object obj, BiFunction biFunction, D1 d12);

    Object a();

    default Object a(final Object obj) {
        if (AbstractC7461gi.f48339a || b(obj)) {
            return AbstractC6495at0.a(new Function() {
                @Override
                public final Object apply(Object obj2) {
                    return InterfaceC7628hi.this.a(obj, (Function) obj2);
                }
            });
        }
        throw new AssertionError();
    }

    AbstractC6333Zs0 b(Object obj, Object obj2, BiFunction biFunction);

    default boolean b(final Object obj) {
        return AbstractC6495at0.a(1, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                InterfaceC7628hi.this.i(obj, (Function) obj2);
            }
        });
    }

    AbstractC6333Zs0 c(Object obj, BiFunction biFunction);

    default void c(Object obj, final Function function) {
        b(obj, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return InterfaceC7628hi.a(Function.this, obj2, (com.android.tools.r8.graph.M2) obj3);
            }
        });
    }

    default Object d(final Object obj) {
        if (AbstractC7461gi.f48339a || c(obj)) {
            return AbstractC6495at0.a(new Function() {
                @Override
                public final Object apply(Object obj2) {
                    return InterfaceC7628hi.this.j(obj, (Function) obj2);
                }
            });
        }
        throw new AssertionError();
    }

    default boolean e(final Object obj) {
        return !AbstractC6495at0.a(0, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                InterfaceC7628hi.this.g(obj, (Function) obj2);
            }
        });
    }

    default boolean f(final Object obj) {
        return !AbstractC6495at0.a(0, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                InterfaceC7628hi.this.c(obj, (Function) obj2);
            }
        });
    }

    default void h(Object obj, final Function function) {
        c(obj, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return InterfaceC7628hi.b(Function.this, obj2, obj3);
            }
        });
    }

    default boolean c(final Object obj) {
        return AbstractC6495at0.a(1, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                InterfaceC7628hi.this.e(obj, (Function) obj2);
            }
        });
    }

    default AbstractC6333Zs0 i(Object obj, final Function function) {
        return a(obj, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return InterfaceC7628hi.c(Function.this, obj2, obj3);
            }
        });
    }

    default AbstractC6333Zs0 j(Object obj, final Function function) {
        return d(obj, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return InterfaceC7628hi.a(Function.this, obj2, obj3);
            }
        });
    }

    default void g(Object obj, final Function function) {
        a(obj, (Object) null, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return InterfaceC7628hi.d(Function.this, obj2, obj3);
            }
        });
    }

    static AbstractC6333Zs0 a(Function function, Object obj, com.android.tools.r8.graph.M2 m22) {
        return (AbstractC6333Zs0) function.apply(obj);
    }

    static AbstractC6333Zs0 b(Function function, Object obj, Object obj2) {
        return (AbstractC6333Zs0) function.apply(obj);
    }

    static AbstractC6333Zs0 c(Function function, Object obj, Object obj2) {
        return (AbstractC6333Zs0) function.apply(obj);
    }

    static AbstractC6333Zs0 d(Function function, Object obj, Object obj2) {
        return (AbstractC6333Zs0) function.apply(obj);
    }

    static AbstractC6333Zs0 a(Function function, Object obj, Object obj2) {
        return (AbstractC6333Zs0) function.apply(obj);
    }

    default void b(Object obj, final BiFunction biFunction) {
        a(obj, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj2, Object obj3, Object obj4) {
                return InterfaceC7628hi.a(BiFunction.this, obj2, (com.android.tools.r8.graph.M2) obj3, obj4);
            }
        }, (Object) null);
    }

    default void c(final Consumer consumer, Object obj) {
        b(consumer, obj);
        a(obj, new BiConsumer() {
            @Override
            public final void accept(Object obj2, Object obj3) {
                Consumer.this.accept(obj2);
            }
        });
    }

    default AbstractC6333Zs0 d(final Object obj, final BiFunction biFunction) {
        return b(obj, (Object) null, biFunction).a(new Function() {
            @Override
            public final Object apply(Object obj2) {
                return InterfaceC7628hi.this.a(obj, biFunction, (C6276Ys0) obj2);
            }
        });
    }

    static AbstractC6333Zs0 a(BiFunction biFunction, Object obj, com.android.tools.r8.graph.M2 m22, Object obj2) {
        return (AbstractC6333Zs0) biFunction.apply(obj, m22);
    }

    default AbstractC6333Zs0 b(Object obj, final BiFunction biFunction, C6276Ys0 c6276Ys0) {
        return a(obj, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj2, Object obj3, Object obj4) {
                return InterfaceC7628hi.b(BiFunction.this, obj2, (com.android.tools.r8.graph.M2) obj3, obj4);
            }
        }, c6276Ys0.f());
    }

    default AbstractC6333Zs0 a(Object obj, BiFunction biFunction, C6276Ys0 c6276Ys0) {
        return a(obj, c6276Ys0.f(), biFunction);
    }

    default AbstractC6333Zs0 a(final Object obj, final BiFunction biFunction) {
        return c(obj, biFunction).a(new Function() {
            @Override
            public final Object apply(Object obj2) {
                return InterfaceC7628hi.this.b(obj, biFunction, (C6276Ys0) obj2);
            }
        });
    }

    static AbstractC6333Zs0 b(BiFunction biFunction, Object obj, com.android.tools.r8.graph.M2 m22, Object obj2) {
        return (AbstractC6333Zs0) biFunction.apply(obj, obj2);
    }

    default void b(final Consumer consumer, Object obj) {
        h(obj, new Function() {
            @Override
            public final Object apply(Object obj2) {
                return InterfaceC7628hi.a(Consumer.this, obj2);
            }
        });
    }

    static AbstractC6333Zs0 a(Consumer consumer, Object obj) {
        consumer.accept(obj);
        return C6276Ys0.f46097c;
    }

    default void a(Object obj, final BiConsumer biConsumer) {
        b(obj, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return InterfaceC7628hi.a(BiConsumer.this, obj2, (com.android.tools.r8.graph.M2) obj3);
            }
        });
    }

    static AbstractC6333Zs0 a(BiConsumer biConsumer, Object obj, com.android.tools.r8.graph.M2 m22) {
        biConsumer.accept(obj, m22);
        return C6276Ys0.f46097c;
    }
}
