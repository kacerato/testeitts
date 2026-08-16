package Pc;

import java.util.AbstractList;
import java.util.Collections;
import java.util.List;

public final class o<T> extends AbstractList<List<T>> {

    public final List<T> f21255b;

    public final int f21256c;

    public o(List<T> list, int numThreads) {
        this.f21255b = list;
        int size = list.size() % numThreads;
        int size2 = list.size() / numThreads;
        this.f21256c = size != 0 ? size2 + 1 : size2;
    }

    @Override
    public synchronized List<T> get(int index) {
        int i10 = this.f21256c;
        int i11 = index * i10;
        int min = Math.min(i10 + i11, this.f21255b.size());
        if (i11 > min) {
            return Collections.emptyList();
        }
        return this.f21255b.subList(i11, min);
    }

    @Override
    public int size() {
        return (int) Math.ceil(this.f21255b.size() / this.f21256c);
    }
}
