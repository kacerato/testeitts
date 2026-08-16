package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public enum b implements Callable<List<Object>>, Fe.o<Object, List<Object>> {
    INSTANCE;

    public static <T> Callable<List<T>> b() {
        return INSTANCE;
    }

    public static <T, O> Fe.o<O, List<T>> c() {
        return INSTANCE;
    }

    @Override
    public List<Object> apply(Object obj) throws Exception {
        return new ArrayList();
    }

    @Override
    public List<Object> call() throws Exception {
        return new ArrayList();
    }
}
