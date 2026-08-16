package com.google.common.collect;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.Queue;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@Deprecated
@X
@v2.b
@InterfaceC15800a
public abstract class d3<T> {

    public class a extends d3<T> {

        public final InterfaceC15902t f66550a;

        public a(InterfaceC15902t interfaceC15902t) {
            this.f66550a = interfaceC15902t;
        }

        @Override
        public Iterable<T> b(T t10) {
            return (Iterable) this.f66550a.apply(t10);
        }
    }

    public class b extends AbstractC12556p0<T> {

        public final Object f66551c;

        public b(Object obj) {
            this.f66551c = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public e3<T> iterator() {
            return d3.this.e(this.f66551c);
        }
    }

    public class c extends AbstractC12556p0<T> {

        public final Object f66553c;

        public c(Object obj) {
            this.f66553c = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public e3<T> iterator() {
            return d3.this.c(this.f66553c);
        }
    }

    public class d extends AbstractC12556p0<T> {

        public final Object f66555c;

        public d(Object obj) {
            this.f66555c = obj;
        }

        @Override
        public e3<T> iterator() {
            return new e(this.f66555c);
        }
    }

    public final class e extends e3<T> implements InterfaceC12522g2<T> {

        public final Queue<T> f66557b;

        public e(T t10) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f66557b = arrayDeque;
            arrayDeque.add(t10);
        }

        @Override
        public boolean hasNext() {
            return !this.f66557b.isEmpty();
        }

        @Override
        public T next() {
            T remove = this.f66557b.remove();
            D1.a(this.f66557b, d3.this.b(remove));
            return remove;
        }

        @Override
        public T peek() {
            return this.f66557b.element();
        }
    }

    public final class f extends AbstractC12503c<T> {

        public final ArrayDeque<g<T>> f66559d;

        public f(T t10) {
            ArrayDeque<g<T>> arrayDeque = new ArrayDeque<>();
            this.f66559d = arrayDeque;
            arrayDeque.addLast(e(t10));
        }

        @Override
        @CheckForNull
        public T a() {
            while (!this.f66559d.isEmpty()) {
                g<T> last = this.f66559d.getLast();
                if (!last.f66562b.hasNext()) {
                    this.f66559d.removeLast();
                    return last.f66561a;
                }
                this.f66559d.addLast(e(last.f66562b.next()));
            }
            return b();
        }

        public final g<T> e(T t10) {
            return new g<>(t10, d3.this.b(t10).iterator());
        }
    }

    public static final class g<T> {

        public final T f66561a;

        public final Iterator<T> f66562b;

        public g(T t10, Iterator<T> it) {
            this.f66561a = (T) w2.H.E(t10);
            this.f66562b = (Iterator) w2.H.E(it);
        }
    }

    public final class h extends e3<T> {

        public final Deque<Iterator<T>> f66563b;

        public h(T t10) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f66563b = arrayDeque;
            arrayDeque.addLast(E1.Y(w2.H.E(t10)));
        }

        @Override
        public boolean hasNext() {
            return !this.f66563b.isEmpty();
        }

        @Override
        public T next() {
            Iterator<T> last = this.f66563b.getLast();
            T t10 = (T) w2.H.E(last.next());
            if (!last.hasNext()) {
                this.f66563b.removeLast();
            }
            Iterator<T> it = d3.this.b(t10).iterator();
            if (it.hasNext()) {
                this.f66563b.addLast(it);
            }
            return t10;
        }
    }

    @Deprecated
    public static <T> d3<T> g(InterfaceC15902t<T, ? extends Iterable<T>> interfaceC15902t) {
        w2.H.E(interfaceC15902t);
        return new a(interfaceC15902t);
    }

    @Deprecated
    public final AbstractC12556p0<T> a(T t10) {
        w2.H.E(t10);
        return new d(t10);
    }

    public abstract Iterable<T> b(T t10);

    public e3<T> c(T t10) {
        return new f(t10);
    }

    @Deprecated
    public final AbstractC12556p0<T> d(T t10) {
        w2.H.E(t10);
        return new c(t10);
    }

    public e3<T> e(T t10) {
        return new h(t10);
    }

    @Deprecated
    public final AbstractC12556p0<T> f(T t10) {
        w2.H.E(t10);
        return new b(t10);
    }
}
