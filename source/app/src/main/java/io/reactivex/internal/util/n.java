package io.reactivex.internal.util;

import java.util.List;

public enum n implements Fe.c<List, Object, List> {
    INSTANCE;

    public static <T> Fe.c<List<T>, T, List<T>> b() {
        return INSTANCE;
    }

    @Override
    public List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
