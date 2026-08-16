package F0;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import p.C14917a;

public final class j {
    @NonNull
    public static <T, E extends i<T>> ArrayList<T> a(@NonNull ArrayList<E> arrayList) {
        C14917a.C1932a c1932a = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            c1932a.add(arrayList.get(i10).freeze());
        }
        return c1932a;
    }

    @NonNull
    public static <T, E extends i<T>> ArrayList<T> b(@NonNull E[] eArr) {
        C14917a.C1932a c1932a = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e10 : eArr) {
            c1932a.add(e10.freeze());
        }
        return c1932a;
    }

    @NonNull
    public static <T, E extends i<T>> ArrayList<T> c(@NonNull Iterable<E> iterable) {
        C14917a.C1932a c1932a = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            c1932a.add(it.next().freeze());
        }
        return c1932a;
    }
}
