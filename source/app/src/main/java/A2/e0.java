package A2;

import com.google.common.collect.AbstractC12503c;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.e3;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC2284t
@I2.f("Call forGraph or forTree, passing a lambda or a Graph with the desired edges (built with GraphBuilder)")
@InterfaceC15800a
public abstract class e0<N> {

    public final d0<N> f210a;

    public class a extends e0<N> {

        public final d0 f211b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d0 d0Var, d0 d0Var2) {
            super(d0Var, null);
            this.f211b = d0Var2;
        }

        @Override
        public g<N> i() {
            return g.b(this.f211b);
        }
    }

    public class b extends e0<N> {

        public final d0 f212b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(d0 d0Var, d0 d0Var2) {
            super(d0Var, null);
            this.f212b = d0Var2;
        }

        @Override
        public g<N> i() {
            return g.c(this.f212b);
        }
    }

    public class c implements Iterable<N> {

        public final AbstractC12564r1 f213b;

        public c(AbstractC12564r1 abstractC12564r1) {
            this.f213b = abstractC12564r1;
        }

        @Override
        public Iterator<N> iterator() {
            return e0.this.i().a(this.f213b.iterator());
        }
    }

    public class d implements Iterable<N> {

        public final AbstractC12564r1 f215b;

        public d(AbstractC12564r1 abstractC12564r1) {
            this.f215b = abstractC12564r1;
        }

        @Override
        public Iterator<N> iterator() {
            return e0.this.i().e(this.f215b.iterator());
        }
    }

    public class e implements Iterable<N> {

        public final AbstractC12564r1 f217b;

        public e(AbstractC12564r1 abstractC12564r1) {
            this.f217b = abstractC12564r1;
        }

        @Override
        public Iterator<N> iterator() {
            return e0.this.i().d(this.f217b.iterator());
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class f {
        public static final f FRONT = new a("FRONT", 0);
        public static final f BACK = new b("BACK", 1);
        private static final f[] $VALUES = a();

        public enum a extends f {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <T> void b(Deque<T> deque, T t10) {
                deque.addFirst(t10);
            }
        }

        public enum b extends f {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public <T> void b(Deque<T> deque, T t10) {
                deque.addLast(t10);
            }
        }

        public f(String str, int i10) {
        }

        public static f[] a() {
            return new f[]{FRONT, BACK};
        }

        public static f valueOf(String str) {
            return (f) Enum.valueOf(f.class, str);
        }

        public static f[] values() {
            return (f[]) $VALUES.clone();
        }

        public abstract <T> void b(Deque<T> deque, T t10);

        public f(String str, int i10, a aVar) {
            this(str, i10);
        }
    }

    public static abstract class g<N> {

        public final d0<N> f219a;

        public class a extends g<N> {

            public final Set f220b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d0 d0Var, Set set) {
                super(d0Var);
                this.f220b = set;
            }

            @Override
            @CheckForNull
            public N g(Deque<Iterator<? extends N>> deque) {
                Iterator<? extends N> first = deque.getFirst();
                while (first.hasNext()) {
                    N next = first.next();
                    Objects.requireNonNull(next);
                    if (this.f220b.add(next)) {
                        return next;
                    }
                }
                deque.removeFirst();
                return null;
            }
        }

        public class b extends g<N> {
            public b(d0 d0Var) {
                super(d0Var);
            }

            @Override
            @CheckForNull
            public N g(Deque<Iterator<? extends N>> deque) {
                Iterator<? extends N> first = deque.getFirst();
                if (first.hasNext()) {
                    return (N) w2.H.E(first.next());
                }
                deque.removeFirst();
                return null;
            }
        }

        public class c extends AbstractC12503c<N> {

            public final Deque f221d;

            public final f f222e;

            public c(Deque deque, f fVar) {
                this.f221d = deque;
                this.f222e = fVar;
            }

            @Override
            @CheckForNull
            public N a() {
                do {
                    N n10 = (N) g.this.g(this.f221d);
                    if (n10 != null) {
                        Iterator<? extends N> it = g.this.f219a.a(n10).iterator();
                        if (it.hasNext()) {
                            this.f222e.b(this.f221d, it);
                        }
                        return n10;
                    }
                } while (!this.f221d.isEmpty());
                return b();
            }
        }

        public class d extends AbstractC12503c<N> {

            public final Deque f224d;

            public final Deque f225e;

            public d(Deque deque, Deque deque2) {
                this.f224d = deque;
                this.f225e = deque2;
            }

            @Override
            @CheckForNull
            public N a() {
                while (true) {
                    N n10 = (N) g.this.g(this.f224d);
                    if (n10 == null) {
                        return !this.f225e.isEmpty() ? (N) this.f225e.pop() : b();
                    }
                    Iterator<? extends N> it = g.this.f219a.a(n10).iterator();
                    if (!it.hasNext()) {
                        return n10;
                    }
                    this.f224d.addFirst(it);
                    this.f225e.push(n10);
                }
            }
        }

        public g(d0<N> d0Var) {
            this.f219a = d0Var;
        }

        public static <N> g<N> b(d0<N> d0Var) {
            return new a(d0Var, new HashSet());
        }

        public static <N> g<N> c(d0<N> d0Var) {
            return new b(d0Var);
        }

        public final Iterator<N> a(Iterator<? extends N> it) {
            return f(it, f.BACK);
        }

        public final Iterator<N> d(Iterator<? extends N> it) {
            ArrayDeque arrayDeque = new ArrayDeque();
            ArrayDeque arrayDeque2 = new ArrayDeque();
            arrayDeque2.add(it);
            return new d(arrayDeque2, arrayDeque);
        }

        public final Iterator<N> e(Iterator<? extends N> it) {
            return f(it, f.FRONT);
        }

        public final Iterator<N> f(Iterator<? extends N> it, f fVar) {
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.add(it);
            return new c(arrayDeque, fVar);
        }

        @CheckForNull
        public abstract N g(Deque<Iterator<? extends N>> deque);
    }

    public e0(d0 d0Var, a aVar) {
        this(d0Var);
    }

    public static <N> e0<N> g(d0<N> d0Var) {
        return new a(d0Var, d0Var);
    }

    public static <N> e0<N> h(d0<N> d0Var) {
        if (d0Var instanceof InterfaceC2276k) {
            w2.H.e(((InterfaceC2276k) d0Var).c(), "Undirected graphs can never be trees.");
        }
        if (d0Var instanceof T) {
            w2.H.e(((T) d0Var).c(), "Undirected networks can never be trees.");
        }
        return new b(d0Var, d0Var);
    }

    public final Iterable<N> a(Iterable<? extends N> iterable) {
        return new c(j(iterable));
    }

    public final Iterable<N> b(N n10) {
        return a(AbstractC12564r1.A(n10));
    }

    public final Iterable<N> c(Iterable<? extends N> iterable) {
        return new e(j(iterable));
    }

    public final Iterable<N> d(N n10) {
        return c(AbstractC12564r1.A(n10));
    }

    public final Iterable<N> e(Iterable<? extends N> iterable) {
        return new d(j(iterable));
    }

    public final Iterable<N> f(N n10) {
        return e(AbstractC12564r1.A(n10));
    }

    public abstract g<N> i();

    public final AbstractC12564r1<N> j(Iterable<? extends N> iterable) {
        AbstractC12564r1<N> r10 = AbstractC12564r1.r(iterable);
        e3<N> it = r10.iterator();
        while (it.hasNext()) {
            this.f210a.a(it.next());
        }
        return r10;
    }

    public e0(d0<N> d0Var) {
        this.f210a = (d0) w2.H.E(d0Var);
    }
}
