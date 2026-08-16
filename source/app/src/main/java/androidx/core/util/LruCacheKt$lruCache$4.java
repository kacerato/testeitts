package androidx.core.util;

import Mf.l;
import Mf.p;
import Mf.r;
import android.util.LruCache;
import kotlin.jvm.internal.M;
import nf.P0;

public final class LruCacheKt$lruCache$4<K, V> extends LruCache<K, V> {
    final l<K, V> $create;
    final r<Boolean, K, V, V, P0> $onEntryRemoved;
    final p<K, V, Integer> $sizeOf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LruCacheKt$lruCache$4(int i10, p<? super K, ? super V, Integer> pVar, l<? super K, ? extends V> lVar, r<? super Boolean, ? super K, ? super V, ? super V, P0> rVar) {
        super(i10);
        this.$sizeOf = pVar;
        this.$create = lVar;
        this.$onEntryRemoved = rVar;
    }

    @Override
    public V create(K key) {
        M.p(key, "key");
        return this.$create.invoke(key);
    }

    @Override
    public void entryRemoved(boolean z10, K key, V oldValue, V v10) {
        M.p(key, "key");
        M.p(oldValue, "oldValue");
        this.$onEntryRemoved.invoke(Boolean.valueOf(z10), key, oldValue, v10);
    }

    @Override
    public int sizeOf(K key, V value) {
        M.p(key, "key");
        M.p(value, "value");
        return this.$sizeOf.invoke(key, value).intValue();
    }
}
