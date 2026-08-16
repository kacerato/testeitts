package io.reactivex.internal.util;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

public enum l implements Callable<Map<Object, Object>> {
    INSTANCE;

    public static <K, V> Callable<Map<K, V>> a() {
        return INSTANCE;
    }

    @Override
    public Map<Object, Object> call() throws Exception {
        return new HashMap();
    }
}
