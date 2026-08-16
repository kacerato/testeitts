package org.eclipse.jdt.internal.core.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public class ToStringSorter<T> {
    private final Function<T, String> toString;

    public static class Pair<T> implements Comparable<Pair<T>> {
        final T object;
        final String string;

        public Pair(T t10, String str) {
            this.object = t10;
            this.string = str;
        }

        @Override
        public int compareTo(Pair<T> pair) {
            return this.string.compareTo(pair.string);
        }
    }

    public ToStringSorter(Function<T, String> function) {
        this.toString = function;
    }

    public void lambda$0(List list, Object obj) {
        list.add(new Pair(obj, this.toString.apply(obj)));
    }

    public List<Pair<T>> sort(Collection<T> collection) {
        final ArrayList arrayList = new ArrayList(collection.size());
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ToStringSorter.this.lambda$0(arrayList, obj);
            }
        });
        Collections.sort(arrayList);
        return arrayList;
    }
}
