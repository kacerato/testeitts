package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class C5467Kr0 {

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        public static final a f41789c = new a("HEAVY", 0, 2);

        public static final a f41790d = new a("LIGHT", 1, 4);

        public final int f41791b;

        public a(String str, int i10, int i11) {
            this.f41791b = i11;
        }

        public int a() {
            return this.f41791b;
        }
    }

    public static ArrayList a(Iterable iterable, final InterfaceC6217Xr0 interfaceC6217Xr0, ThreadingModule threadingModule, ExecutorService executorService) {
        return a(iterable, new InterfaceC6825cs0() {
            @Override
            public final Object a(Object obj, int i10) {
                Object apply;
                apply = InterfaceC6217Xr0.this.apply(obj);
                return apply;
            }
        }, threadingModule, executorService);
    }

    public static ArrayList a(Iterable iterable, final InterfaceC6217Xr0 interfaceC6217Xr0, Predicate predicate, ThreadingModule threadingModule, ExecutorService executorService) {
        return a(iterable, new InterfaceC6825cs0() {
            @Override
            public final Object a(Object obj, int i10) {
                Object apply;
                apply = InterfaceC6217Xr0.this.apply(obj);
                return apply;
            }
        }, predicate, threadingModule, executorService);
    }

    public static ArrayList a(Iterable iterable, InterfaceC6825cs0 interfaceC6825cs0, ThreadingModule threadingModule, ExecutorService executorService) {
        Objects.requireNonNull(iterable);
        return a(new C8909pL0(iterable), interfaceC6825cs0, (Predicate) null, threadingModule, executorService);
    }

    public static ArrayList a(Iterable iterable, InterfaceC6825cs0 interfaceC6825cs0, Predicate predicate, ThreadingModule threadingModule, ExecutorService executorService) {
        Objects.requireNonNull(iterable);
        return a(new C8909pL0(iterable), interfaceC6825cs0, predicate, threadingModule, executorService);
    }

    public static ArrayList a(InterfaceC6285Yx interfaceC6285Yx, final InterfaceC6825cs0 interfaceC6825cs0, Predicate predicate, ThreadingModule threadingModule, ExecutorService executorService) {
        final C10325xr0 c10325xr0 = new C10325xr0(threadingModule, executorService, -1);
        try {
            interfaceC6285Yx.a(new ZH() {
                @Override
                public final void a(int i10, Object obj) {
                    C5467Kr0.a(C10325xr0.this, interfaceC6825cs0, i10, obj);
                }
            });
            return c10325xr0.a(predicate);
        } catch (C6052Uu0 e10) {
            throw e10.f44898b;
        }
    }

    public static void a(C10325xr0 c10325xr0, final InterfaceC6825cs0 interfaceC6825cs0, final int i10, final Object obj) {
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                Object a10;
                a10 = InterfaceC6825cs0.this.a(obj, i10);
                return a10;
            }
        };
        c10325xr0.getClass();
        try {
            c10325xr0.a(callable);
        } catch (ExecutionException e10) {
            throw new C6052Uu0(e10);
        }
    }

    public static void a(Collection collection, final Consumer consumer, ThreadingModule threadingModule, ExecutorService executorService) {
        a(collection, new InterfaceC10593zT() {
            @Override
            public final void accept(Object obj, int i10) {
                Consumer.this.accept(obj);
            }
        }, threadingModule, executorService, a.f41790d);
    }

    public static void a(final Collection collection, final InterfaceC10593zT interfaceC10593zT, ThreadingModule threadingModule, ExecutorService executorService, a aVar) {
        if (collection.size() >= aVar.a()) {
            InterfaceC6285Yx interfaceC6285Yx = new InterfaceC6285Yx() {
                @Override
                public final void forEach(Consumer consumer) {
                    Collection.this.forEach(consumer);
                }
            };
            Objects.requireNonNull(interfaceC10593zT);
            a(interfaceC6285Yx, new InterfaceC6659bs0() {
                @Override
                public final void accept(Object obj, int i10) {
                    InterfaceC10593zT.this.accept(obj, i10);
                }
            }, threadingModule, executorService);
        } else {
            Iterator it = collection.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                interfaceC10593zT.accept(it.next(), i10);
                i10++;
            }
        }
    }

    public static void a(InterfaceC6285Yx interfaceC6285Yx, final InterfaceC6160Wr0 interfaceC6160Wr0, ThreadingModule threadingModule, ExecutorService executorService) {
        a(interfaceC6285Yx, new InterfaceC6659bs0() {
            @Override
            public final void accept(Object obj, int i10) {
                InterfaceC6160Wr0.this.accept(obj);
            }
        }, threadingModule, executorService);
    }

    public static void a(InterfaceC6285Yx interfaceC6285Yx, final InterfaceC6659bs0 interfaceC6659bs0, ThreadingModule threadingModule, ExecutorService executorService) {
        a(interfaceC6285Yx, new InterfaceC6825cs0() {
            @Override
            public final Object a(Object obj, int i10) {
                return C5467Kr0.a(InterfaceC6659bs0.this, obj, i10);
            }
        }, (Predicate) null, threadingModule, executorService);
    }

    public static Object a(InterfaceC6659bs0 interfaceC6659bs0, Object obj, int i10) {
        interfaceC6659bs0.accept(obj, i10);
        return null;
    }

    public static void a(Map map, final InterfaceC5988Tr0 interfaceC5988Tr0, ThreadingModule threadingModule, ExecutorService executorService) {
        a(map, new InterfaceC6046Ur0() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C5467Kr0.a(InterfaceC5988Tr0.this, obj, obj2);
            }
        }, threadingModule, executorService);
    }

    public static Object a(InterfaceC5988Tr0 interfaceC5988Tr0, Object obj, Object obj2) {
        interfaceC5988Tr0.accept(obj, obj2);
        return null;
    }

    public static void a(Map map, final InterfaceC6046Ur0 interfaceC6046Ur0, ThreadingModule threadingModule, ExecutorService executorService) {
        a(map.entrySet(), new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                Object apply;
                apply = InterfaceC6046Ur0.this.apply(r2.getKey(), ((Map.Entry) obj).getValue());
                return apply;
            }
        }, threadingModule, executorService);
    }

    public static void a(C4798y c4798y, final InterfaceC6160Wr0 interfaceC6160Wr0, ThreadingModule threadingModule, ExecutorService executorService) {
        a(c4798y.f().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5467Kr0.a(InterfaceC6160Wr0.this, (com.android.tools.r8.graph.H2) obj);
            }
        }, threadingModule, executorService);
    }

    public static void a(final InterfaceC6160Wr0 interfaceC6160Wr0, com.android.tools.r8.graph.H2 h22) {
        Objects.requireNonNull(interfaceC6160Wr0);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC6160Wr0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public static ExecutorService a(C8570nJ c8570nJ) {
        int i10 = c8570nJ.f50695k0;
        ThreadingModule G10 = c8570nJ.G();
        if (i10 == -1) {
            int availableProcessors = Runtime.getRuntime().availableProcessors();
            if (availableProcessors > 16) {
                availableProcessors = Math.min(((int) Math.round((availableProcessors - 16) / 2.0d)) + 16, 48);
            }
            return G10.createThreadedExecutorService(availableProcessors);
        }
        return G10.createThreadedExecutorService(i10);
    }

    public static int a(ExecutorService executorService) {
        if (executorService instanceof ForkJoinPool) {
            return ((ForkJoinPool) executorService).getParallelism();
        }
        return -1;
    }
}
