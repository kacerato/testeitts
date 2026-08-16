package androidx.lifecycle.viewmodel;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.M;

public abstract class CreationExtras {
    private final Map<Key<?>, Object> map = new LinkedHashMap();

    public static final class Empty extends CreationExtras {
        public static final Empty INSTANCE = new Empty();

        private Empty() {
        }

        @Override
        public <T> T get(Key<T> key) {
            M.p(key, "key");
            return null;
        }
    }

    public interface Key<T> {
    }

    public abstract <T> T get(Key<T> key);

    public final Map<Key<?>, Object> getMap$lifecycle_viewmodel_release() {
        return this.map;
    }
}
