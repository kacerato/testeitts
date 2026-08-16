package cb;

import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import java.util.Iterator;

public interface o<T> {

    public static class a<T> implements Iterable<T> {

        public Iterable<T> f34664b;

        public o<T> f34665c;

        public b<T> f34666d = null;

        public a(Iterable<T> iterable, o<T> predicate) {
            a(iterable, predicate);
        }

        public void a(Iterable<T> iterable, o<T> predicate) {
            this.f34664b = iterable;
            this.f34665c = predicate;
        }

        @Override
        public Iterator<T> iterator() {
            if (e.f34523a) {
                return new b(this.f34664b.iterator(), this.f34665c);
            }
            b<T> bVar = this.f34666d;
            if (bVar == null) {
                this.f34666d = new b<>(this.f34664b.iterator(), this.f34665c);
            } else {
                bVar.b(this.f34664b.iterator(), this.f34665c);
            }
            return this.f34666d;
        }
    }

    public static class b<T> implements Iterator<T> {

        public Iterator<T> f34667b;

        public o<T> f34668c;

        public boolean f34669d;

        public boolean f34670e;

        public T f34671f;

        public b(final Iterable<T> iterable, final o<T> predicate) {
            this(iterable.iterator(), predicate);
        }

        public void a(final Iterable<T> iterable, final o<T> predicate) {
            b(iterable.iterator(), predicate);
        }

        public void b(final Iterator<T> iterator, final o<T> predicate) {
            this.f34667b = iterator;
            this.f34668c = predicate;
            this.f34670e = false;
            this.f34669d = false;
            this.f34671f = null;
        }

        @Override
        public boolean hasNext() {
            if (this.f34669d) {
                return false;
            }
            if (this.f34671f != null) {
                return true;
            }
            this.f34670e = true;
            while (this.f34667b.hasNext()) {
                T next = this.f34667b.next();
                if (this.f34668c.a(next)) {
                    this.f34671f = next;
                    return true;
                }
            }
            this.f34669d = true;
            return false;
        }

        @Override
        public T next() {
            if (this.f34671f == null && !hasNext()) {
                return null;
            }
            T t10 = this.f34671f;
            this.f34671f = null;
            this.f34670e = false;
            return t10;
        }

        @Override
        public void remove() {
            if (this.f34670e) {
                throw new GdxRuntimeException("Cannot remove between a call to hasNext() and next().");
            }
            this.f34667b.remove();
        }

        public b(final Iterator<T> iterator, final o<T> predicate) {
            this.f34669d = false;
            this.f34670e = false;
            this.f34671f = null;
            b(iterator, predicate);
        }
    }

    boolean a(T arg0);
}
