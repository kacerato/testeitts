package androidx.core.util;

import Mf.l;
import Mf.p;
import Mf.r;
import android.util.LruCache;
import kotlin.jvm.internal.M;
import nf.P0;

public final class LruCacheKt {
    public static final <K, V> LruCache<K, V> lruCache(int i10, p<? super K, ? super V, Integer> sizeOf, l<? super K, ? extends V> create, r<? super Boolean, ? super K, ? super V, ? super V, P0> onEntryRemoved) {
        M.p(sizeOf, "sizeOf");
        M.p(create, "create");
        M.p(onEntryRemoved, "onEntryRemoved");
        return new LruCacheKt$lruCache$4(i10, sizeOf, create, onEntryRemoved);
    }

    public static LruCache lruCache$default(int i10, p sizeOf, l create, r onEntryRemoved, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            sizeOf = LruCacheKt$lruCache$1.INSTANCE;
        }
        if ((i11 & 4) != 0) {
            create = LruCacheKt$lruCache$2.INSTANCE;
        }
        if ((i11 & 8) != 0) {
            onEntryRemoved = LruCacheKt$lruCache$3.INSTANCE;
        }
        M.p(sizeOf, "sizeOf");
        M.p(create, "create");
        M.p(onEntryRemoved, "onEntryRemoved");
        return new LruCacheKt$lruCache$4(i10, sizeOf, create, onEntryRemoved);
    }
}
