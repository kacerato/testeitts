package h1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
import org.jspecify.annotations.NullMarked;

@NullMarked
public abstract class AbstractC13417k extends AbstractC13413g implements List, RandomAccess {

    public static final o f90204c = new C13415i(C13419m.f90205f, 0);

    public static AbstractC13417k k(Object[] objArr, int i10) {
        return i10 == 0 ? C13419m.f90205f : new C13419m(objArr, i10);
    }

    public static AbstractC13417k l(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return m((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return C13419m.f90205f;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return o(next);
        }
        C13414h c13414h = new C13414h(4);
        c13414h.b(next);
        c13414h.c(it);
        c13414h.f90198c = true;
        return k(c13414h.f90196a, c13414h.f90197b);
    }

    public static AbstractC13417k m(Collection collection) {
        if (!(collection instanceof AbstractC13413g)) {
            Object[] array = collection.toArray();
            int length = array.length;
            C13418l.a(array, length);
            return k(array, length);
        }
        AbstractC13417k d10 = ((AbstractC13413g) collection).d();
        if (!d10.h()) {
            return d10;
        }
        Object[] array2 = d10.toArray();
        return k(array2, array2.length);
    }

    public static AbstractC13417k n() {
        return C13419m.f90205f;
    }

    public static AbstractC13417k o(Object obj) {
        Object[] objArr = {obj};
        C13418l.a(objArr, 1);
        return k(objArr, 1);
    }

    public static AbstractC13417k p(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        C13418l.a(objArr, 2);
        return k(objArr, 2);
    }

    @Override
    public int a(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i11] = get(i11);
        }
        return size;
    }

    @Override
    @Deprecated
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    @Deprecated
    public final AbstractC13417k d() {
        return this;
    }

    @Override
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (I.a(get(i10), list.get(i10))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!it2.hasNext() || !I.a(it.next(), it2.next())) {
                            break;
                        }
                    } else if (!it2.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public final AbstractC13420n iterator() {
        return listIterator(0);
    }

    @Override
    public final int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = (i10 * 31) + get(i11).hashCode();
        }
        return i10;
    }

    @Override
    public final int indexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (obj.equals(get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override
    public AbstractC13417k subList(int i10, int i11) {
        J.c(i10, i11, size());
        int i12 = i11 - i10;
        return i12 == size() ? this : i12 == 0 ? C13419m.f90205f : new C13416j(this, i10, i12);
    }

    @Override
    public final int lastIndexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override
    public final o listIterator(int i10) {
        J.b(i10, size(), FirebaseAnalytics.d.f67690b0);
        return isEmpty() ? f90204c : new C13415i(this, i10);
    }

    @Override
    @Deprecated
    public final Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }
}
