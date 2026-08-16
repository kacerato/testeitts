package w2;

import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b(serializable = true)
public final class D<E, T extends E> extends AbstractC15896m<Iterable<T>> implements Serializable {

    public static final long f126144c = 1;

    public final AbstractC15896m<E> f126145b;

    public D(AbstractC15896m<E> abstractC15896m) {
        this.f126145b = (AbstractC15896m) H.E(abstractC15896m);
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof D) {
            return this.f126145b.equals(((D) obj).f126145b);
        }
        return false;
    }

    public int hashCode() {
        return this.f126145b.hashCode() ^ 1185147655;
    }

    @Override
    public boolean a(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!this.f126145b.d(it.next(), it2.next())) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    @Override
    public int b(Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int i10 = 78721;
        while (it.hasNext()) {
            i10 = (i10 * 24943) + this.f126145b.f(it.next());
        }
        return i10;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f126145b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 11);
        sb2.append(valueOf);
        sb2.append(".pairwise()");
        return sb2.toString();
    }
}
