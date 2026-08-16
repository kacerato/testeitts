package Pc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class n<T, E> {

    public static final Integer f21251d = 1;

    public Integer f21252a;

    public ExecutorService f21253b;

    public List<E> f21254c;

    public n() {
        Integer valueOf = Integer.valueOf(Runtime.getRuntime().availableProcessors());
        this.f21252a = valueOf;
        this.f21253b = Executors.newFixedThreadPool(valueOf.intValue());
        this.f21254c = new SteppedArrayList();
    }

    public static void q(Object[] objArr, p pVar, List list, int i10) {
        objArr[i10] = pVar.apply(list.get(i10));
    }

    public static void r(int i10, int i11, final List list, final Object[] objArr, final p pVar) {
        int i12 = i10 * i11;
        int min = Math.min(i11 + i12, list.size());
        if (i12 > min) {
            i12 = min;
        }
        IntStream.range(i12, min).forEach(new IntConsumer() {
            @Override
            public final void accept(int i13) {
                n.q(objArr, pVar, list, i13);
            }
        });
    }

    public static void w(p pVar, List list, int i10) {
        pVar.apply(list.get(i10));
    }

    public static void x(int i10, int i11, final List list, final p pVar) {
        int i12 = i10 * i11;
        int min = Math.min(i11 + i12, list.size());
        if (i12 > min) {
            i12 = min;
        }
        IntStream.range(i12, min).forEach(new IntConsumer() {
            @Override
            public final void accept(int i13) {
                n.w(p.this, list, i13);
            }
        });
    }

    public final void A(p pVar, o oVar, int i10) {
        List list = (List) pVar.apply(oVar.get(i10));
        if (list == null || list.isEmpty()) {
            return;
        }
        synchronized (this.f21254c) {
            this.f21254c.addAll(list);
        }
    }

    public final void B(final p pVar, final o oVar, final int i10) {
        this.f21253b.execute(new Runnable() {
            @Override
            public final void run() {
                n.this.A(pVar, oVar, i10);
            }
        });
    }

    public void C(List<T> inputList, final p<T, E> converter) {
        this.f21254c = (List) inputList.parallelStream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Object apply;
                apply = p.this.apply(obj);
                return apply;
            }
        }).collect(Collectors.toList());
    }

    public void D(final List<T> inputList, final p<T, E> converter) {
        final int size = inputList.size() % this.f21252a.intValue() == 0 ? inputList.size() / this.f21252a.intValue() : (inputList.size() / this.f21252a.intValue()) + 1;
        final Object[] objArr = new Object[inputList.size()];
        IntStream.range(0, this.f21252a.intValue()).forEach(new IntConsumer() {
            @Override
            public final void accept(int i10) {
                n.this.s(size, inputList, objArr, converter, i10);
            }
        });
        J();
        this.f21254c = Arrays.asList(objArr);
    }

    public void E(final List<T> inputList, final p<T, E> converter) {
        final int size = inputList.size() % this.f21252a.intValue() == 0 ? inputList.size() / this.f21252a.intValue() : (inputList.size() / this.f21252a.intValue()) + 1;
        this.f21254c = new SteppedArrayList(Collections.nCopies(inputList.size(), null));
        IntStream.range(0, this.f21252a.intValue()).forEach(new IntConsumer() {
            @Override
            public final void accept(int i10) {
                n.this.v(size, inputList, converter, i10);
            }
        });
    }

    public void F(final List<T> inputList, final p<T, E> converter) {
        final int size = inputList.size() % this.f21252a.intValue() == 0 ? inputList.size() / this.f21252a.intValue() : (inputList.size() / this.f21252a.intValue()) + 1;
        IntStream.range(0, this.f21252a.intValue()).forEach(new IntConsumer() {
            @Override
            public final void accept(int i10) {
                n.this.y(size, inputList, converter, i10);
            }
        });
    }

    public void G(List<T> inputList, final p<T, E> converter) {
        this.f21254c = (List) inputList.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Object apply;
                apply = p.this.apply(obj);
                return apply;
            }
        }).collect(Collectors.toList());
    }

    public void H(List<T> inputList, final p<List<T>, List<E>> converter) {
        final o oVar = new o(inputList, this.f21252a.intValue());
        IntStream.range(0, this.f21252a.intValue()).forEach(new IntConsumer() {
            @Override
            public final void accept(int i10) {
                n.this.B(converter, oVar, i10);
            }
        });
    }

    public void I(Integer numThreads) {
        this.f21252a = numThreads;
    }

    public void J() {
        this.f21253b.shutdown();
        try {
            this.f21253b.awaitTermination(f21251d.intValue(), TimeUnit.MINUTES);
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e10);
        }
    }

    public void K() {
        try {
            this.f21253b.awaitTermination(f21251d.intValue(), TimeUnit.MINUTES);
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e10);
        }
    }

    public Integer n() {
        return this.f21252a;
    }

    public List<E> o() {
        return this.f21254c;
    }

    public final void s(final int i10, final List list, final Object[] objArr, final p pVar, final int i11) {
        this.f21253b.execute(new Runnable() {
            @Override
            public final void run() {
                n.r(i11, i10, list, objArr, pVar);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t(p pVar, List list, int i10) {
        this.f21254c.set(i10, pVar.apply(list.get(i10)));
    }

    public final void u(int i10, int i11, final List list, final p pVar) {
        int i12 = i10 * i11;
        int min = Math.min(i11 + i12, list.size());
        if (i12 > min) {
            i12 = min;
        }
        IntStream.range(i12, min).forEach(new IntConsumer() {
            @Override
            public final void accept(int i13) {
                n.this.t(pVar, list, i13);
            }
        });
    }

    public final void v(final int i10, final List list, final p pVar, final int i11) {
        this.f21253b.execute(new Runnable() {
            @Override
            public final void run() {
                n.this.u(i11, i10, list, pVar);
            }
        });
    }

    public final void y(final int i10, final List list, final p pVar, final int i11) {
        this.f21253b.execute(new Runnable() {
            @Override
            public final void run() {
                n.x(i11, i10, list, pVar);
            }
        });
    }

    public n(int threads) {
        Integer valueOf = Integer.valueOf(threads);
        this.f21252a = valueOf;
        this.f21253b = Executors.newFixedThreadPool(valueOf.intValue());
        this.f21254c = new SteppedArrayList();
    }
}
