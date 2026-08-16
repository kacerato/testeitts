package Mc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;

public class i<T> extends SteppedArrayList<T> {
    public i() {
    }

    public static boolean a(Collection<?> collection, Object target) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (Objects.equals(it.next(), target)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public T remove(int index) {
        int size = size() - 1;
        T t10 = get(index);
        if (index != size) {
            super.set(index, get(size));
        }
        super.remove(size);
        return t10;
    }

    @Override
    public boolean removeAll(Collection<?> c10) {
        boolean z10 = false;
        for (int size = size() - 1; size >= 0; size--) {
            if (a(c10, get(size))) {
                remove(size);
                z10 = true;
            }
        }
        return z10;
    }

    public i(int initialCapacity) {
        super(initialCapacity);
    }

    @Override
    public boolean remove(Object o10) {
        int indexOf = indexOf(o10);
        if (indexOf < 0) {
            return false;
        }
        remove(indexOf);
        return true;
    }
}
