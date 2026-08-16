package androidx.collection;

import Mf.l;
import Mf.p;
import Mf.r;
import kotlin.jvm.internal.M;

public final class LruCacheKt$lruCache$4<K, V> extends LruCache<K, V> {
    final l $create;
    final int $maxSize;
    final r $onEntryRemoved;
    final p $sizeOf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LruCacheKt$lruCache$4(p pVar, l lVar, r rVar, int i10, int i11) {
        super(i11);
        this.$sizeOf = pVar;
        this.$create = lVar;
        this.$onEntryRemoved = rVar;
        this.$maxSize = i10;
    }

    @Override
    public V create(K key) {
        M.q(key, "key");
        return (V) this.$create.invoke(key);
    }

    @Override
    public void entryRemoved(boolean z10, K key, V oldValue, V v10) {
        M.q(key, "key");
        M.q(oldValue, "oldValue");
        this.$onEntryRemoved.invoke(Boolean.valueOf(z10), key, oldValue, v10);
    }

    @Override
    public int sizeOf(K key, V value) {
        M.q(key, "key");
        M.q(value, "value");
        return ((Number) this.$sizeOf.invoke(key, value)).intValue();
    }
}
