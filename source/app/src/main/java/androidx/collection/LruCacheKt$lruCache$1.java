package androidx.collection;

import Mf.p;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class LruCacheKt$lruCache$1 extends O implements p<Object, Object, Integer> {
    public static final LruCacheKt$lruCache$1 INSTANCE = new LruCacheKt$lruCache$1();

    public LruCacheKt$lruCache$1() {
        super(2);
    }

    public final int invoke2(Object obj, Object obj2) {
        M.q(obj, "<anonymous parameter 0>");
        M.q(obj2, "<anonymous parameter 1>");
        return 1;
    }

    @Override
    public Integer invoke(Object obj, Object obj2) {
        return Integer.valueOf(invoke2(obj, obj2));
    }
}
