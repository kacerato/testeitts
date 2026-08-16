package androidx.collection;

import Mf.l;
import Mf.p;
import Mf.r;
import kotlin.jvm.internal.M;
import nf.P0;

public final class LruCacheKt {
    public static final <K, V> LruCache<K, V> lruCache(int i10, p<? super K, ? super V, Integer> sizeOf, l<? super K, ? extends V> create, r<? super Boolean, ? super K, ? super V, ? super V, P0> onEntryRemoved) {
        M.q(sizeOf, "sizeOf");
        M.q(create, "create");
        M.q(onEntryRemoved, "onEntryRemoved");
        return new LruCacheKt$lruCache$4(sizeOf, create, onEntryRemoved, i10, i10);
    }

    public static LruCache lruCache$default(int i10, p pVar, l lVar, r rVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            pVar = LruCacheKt$lruCache$1.INSTANCE;
        }
        p sizeOf = pVar;
        if ((i11 & 4) != 0) {
            lVar = LruCacheKt$lruCache$2.INSTANCE;
        }
        l create = lVar;
        if ((i11 & 8) != 0) {
            rVar = LruCacheKt$lruCache$3.INSTANCE;
        }
        r onEntryRemoved = rVar;
        M.q(sizeOf, "sizeOf");
        M.q(create, "create");
        M.q(onEntryRemoved, "onEntryRemoved");
        return new LruCacheKt$lruCache$4(sizeOf, create, onEntryRemoved, i10, i10);
    }
}
