package androidx.collection;

import Mf.r;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;

public final class LruCacheKt$lruCache$3 extends O implements r<Boolean, Object, Object, Object, P0> {
    public static final LruCacheKt$lruCache$3 INSTANCE = new LruCacheKt$lruCache$3();

    public LruCacheKt$lruCache$3() {
        super(4);
    }

    @Override
    public P0 invoke(Boolean bool, Object obj, Object obj2, Object obj3) {
        invoke(bool.booleanValue(), obj, obj2, obj3);
        return P0.f98194a;
    }

    public final void invoke(boolean z10, Object obj, Object obj2, Object obj3) {
        M.q(obj, "<anonymous parameter 1>");
        M.q(obj2, "<anonymous parameter 2>");
    }
}
