package tn;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Queue;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jn.C13904v;
import wn.C16030h;
import wn.N;
import wn.p;

public class r {

    public static final int f117767j = 6;

    public final s f117768a;

    public final wn.p f117769b;

    public final N f117771d;

    public final jn.y f117772e;

    public C13904v f117775h;

    public final Map<Long, u> f117770c = new HashMap();

    public final Queue<x> f117773f = new LinkedBlockingQueue();

    public final AtomicLong f117774g = new AtomicLong();

    public boolean f117776i = true;

    public r(vn.c voxelFile) {
        s sVar = new s(voxelFile.f121731s, voxelFile.f121732t, voxelFile.f121733u, voxelFile.f121722j);
        this.f117768a = sVar;
        sVar.f117783g = voxelFile.f121719g;
        sVar.f117785i = voxelFile.f121718f;
        sVar.f117786j = voxelFile.f121720h;
        sVar.f117784h = voxelFile.f121721i;
        sVar.f117790n = voxelFile.f121723k;
        sVar.f117789m = voxelFile.f121724l;
        sVar.f117787k = voxelFile.f121725m;
        sVar.f117788l = voxelFile.f121726n;
        sVar.f117791o = voxelFile.f121727o;
        sVar.f117792p = voxelFile.f121728p;
        sVar.f117793q = voxelFile.f121729q;
        sVar.f117794r = voxelFile.f121730r;
        this.f117769b = new wn.p();
        jn.y yVar = new jn.y();
        this.f117772e = yVar;
        float[] fArr = yVar.f94387a;
        float[] fArr2 = voxelFile.f121735w;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        float f10 = voxelFile.f121722j;
        yVar.f94388b = voxelFile.f121732t * f10;
        yVar.f94389c = f10 * voxelFile.f121733u;
        yVar.f94390d = voxelFile.f121736x.size();
        yVar.f94391e = 32768;
        voxelFile.f121736x.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                r.this.z((vn.f) obj);
            }
        });
        this.f117771d = new N();
    }

    public static Stream A(x xVar) {
        return xVar.b().stream();
    }

    public static CompletableFuture[] D(int i10) {
        return new CompletableFuture[i10];
    }

    public static boolean w(long j10, u uVar) {
        return uVar.g(j10);
    }

    public final CompletableFuture C(ExecutorService executorService, final u uVar) {
        return CompletableFuture.runAsync(new Runnable() {
            @Override
            public final void run() {
                r.this.B(uVar);
            }
        }, executorService);
    }

    public final Boolean E(Void r12) {
        return Boolean.valueOf(U());
    }

    public final Optional<C16030h> I(int x10, int z10) {
        return Optional.ofNullable(t(x10, z10)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                v vVar;
                vVar = ((u) obj).f117804b;
                return vVar;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                C16030h c16030h;
                c16030h = ((v) obj).f117810a;
                return c16030h;
            }
        });
    }

    public final long J(long x10, long z10) {
        return x10 | (z10 << 32);
    }

    public C13904v K() {
        return this.f117775h;
    }

    public final void L(final x item) {
        item.b().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                x.this.a((u) obj);
            }
        });
    }

    public final Collection<u> M() {
        return (Collection) s().stream().peek(new Consumer() {
            @Override
            public final void accept(Object obj) {
                r.this.L((x) obj);
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream A10;
                A10 = r.A((x) obj);
                return A10;
            }
        }).collect(Collectors.toSet());
    }

    public final CompletableFuture<Boolean> N(Collection<u> tiles, final ExecutorService executor) {
        return CompletableFuture.allOf((CompletableFuture[]) tiles.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                CompletableFuture C10;
                C10 = r.this.C(executor, (u) obj);
                return C10;
            }
        }).toArray(new IntFunction() {
            @Override
            public final Object apply(int i10) {
                CompletableFuture[] D10;
                D10 = r.D(i10);
                return D10;
            }
        })).thenApply(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean E10;
                E10 = r.this.E((Void) obj);
                return E10;
            }
        });
    }

    public final void B(u tile) {
        jn.x xVar = new jn.x();
        s sVar = this.f117768a;
        xVar.f94386z = sVar.f117783g;
        this.f117776i = tile.d(this.f117769b, sVar, this.f117771d) | this.f117776i;
    }

    public final boolean P(Collection<u> stream) {
        stream.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                r.this.B((u) obj);
            }
        });
        return U();
    }

    public List<p.b> Q() {
        return (List) this.f117770c.values().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                p.b bVar;
                bVar = ((u) obj).f117805c;
                return bVar;
            }
        }).collect(Collectors.toList());
    }

    public void R(long colliderId) {
        this.f117773f.add(new w(colliderId, v(colliderId)));
    }

    public CompletableFuture<Boolean> S(ExecutorService executor) {
        return N(M(), executor);
    }

    public boolean T() {
        return P(M());
    }

    public final boolean U() {
        if (!this.f117776i) {
            return false;
        }
        final C13904v c13904v = new C13904v(this.f117772e, 6);
        this.f117770c.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((u) obj).c(C13904v.this);
            }
        });
        this.f117775h = c13904v;
        this.f117776i = false;
        return true;
    }

    public y V() {
        jn.y yVar = this.f117772e;
        return new y(yVar.f94387a, yVar.f94388b, yVar.f94389c, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                Optional I10;
                I10 = r.this.I(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                return I10;
            }
        });
    }

    public List<vn.f> W() {
        return (List) this.f117770c.values().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                vn.f fVar;
                fVar = ((u) obj).f117803a;
                return fVar;
            }
        }).collect(Collectors.toList());
    }

    public long p(un.d collider) {
        long incrementAndGet = this.f117774g.incrementAndGet();
        this.f117773f.add(new a(incrementAndGet, collider, u(collider.a())));
        return incrementAndGet;
    }

    public CompletableFuture<Boolean> q(ExecutorService executor) {
        M();
        return N(this.f117770c.values(), executor);
    }

    public void r() {
        M();
        P(this.f117770c.values());
    }

    public final List<x> s() {
        ArrayList arrayList = new ArrayList();
        while (true) {
            x poll = this.f117773f.poll();
            if (poll == null) {
                return arrayList;
            }
            arrayList.add(poll);
        }
    }

    public final u t(int x10, int z10) {
        return this.f117770c.get(Long.valueOf(J(x10, z10)));
    }

    public final Collection<u> u(float[] bounds) {
        if (bounds == null) {
            return this.f117770c.values();
        }
        float f10 = bounds[0];
        jn.y yVar = this.f117772e;
        int floor = (int) Math.floor((f10 - yVar.f94387a[0]) / yVar.f94388b);
        float f11 = bounds[2];
        jn.y yVar2 = this.f117772e;
        float f12 = bounds[3];
        jn.y yVar3 = this.f117772e;
        int floor2 = (int) Math.floor((f12 - yVar3.f94387a[0]) / yVar3.f94388b);
        float f13 = bounds[5];
        jn.y yVar4 = this.f117772e;
        int floor3 = (int) Math.floor((f13 - yVar4.f94387a[2]) / yVar4.f94389c);
        ArrayList arrayList = new ArrayList();
        for (int floor4 = (int) Math.floor((f11 - yVar2.f94387a[2]) / yVar2.f94389c); floor4 <= floor3; floor4++) {
            for (int i10 = floor; i10 <= floor2; i10++) {
                u t10 = t(i10, floor4);
                if (t10 != null) {
                    arrayList.add(t10);
                }
            }
        }
        return arrayList;
    }

    public final Collection<u> v(final long cid) {
        return (Collection) this.f117770c.values().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean w10;
                w10 = r.w(cid, (u) obj);
                return w10;
            }
        }).collect(Collectors.toList());
    }

    public final void z(vn.f fVar) {
        this.f117770c.put(Long.valueOf(J(fVar.f121741a, fVar.f121742b)), new u(fVar));
    }
}
