package org.openjdk.tools.javac.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Context {
    protected final Map<Key<?>, Object> ht = new HashMap();
    private final Map<Key<?>, Factory<?>> ft = new HashMap();
    private final Map<Class<?>, Key<?>> kt = new HashMap();

    public interface Factory<T> {
        T make(Context context);
    }

    public static class Key<T> {
    }

    private static void checkState(Map<?, ?> map) {
        if (map == null) {
            throw new IllegalStateException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T uncheckedCast(Object obj) {
        return obj;
    }

    public void dump() {
        Iterator<Object> it = this.ht.values().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            System.err.println(next == null ? null : next.getClass());
        }
    }

    public <T> T get(Key<T> key) {
        checkState(this.ht);
        Object obj = this.ht.get(key);
        if (obj instanceof Factory) {
            obj = ((Factory) obj).make(this);
            if (!(obj instanceof Factory)) {
                Assert.check(this.ht.get(key) == obj);
            } else {
                throw new AssertionError((Object) "T extends Context.Factory");
            }
        }
        return (T) uncheckedCast(obj);
    }

    public <T> Key<T> key(Class<T> cls) {
        checkState(this.kt);
        Key<T> key = (Key) uncheckedCast(this.kt.get(cls));
        if (key != null) {
            return key;
        }
        Key<T> key2 = new Key<>();
        this.kt.put(cls, key2);
        return key2;
    }

    public <T> void put(Key<T> key, Factory<T> factory) {
        checkState(this.ht);
        if (this.ht.put(key, factory) == null) {
            checkState(this.ft);
            this.ft.put(key, factory);
            return;
        }
        throw new AssertionError((Object) "duplicate context value");
    }

    public <T> void put(Key<T> key, T t10) {
        if (!(t10 instanceof Factory)) {
            checkState(this.ht);
            Object put = this.ht.put(key, t10);
            if (put != null && !(put instanceof Factory) && put != t10 && t10 != null) {
                throw new AssertionError((Object) "duplicate context value");
            }
            return;
        }
        throw new AssertionError((Object) "T extends Context.Factory");
    }

    public <T> T get(Class<T> cls) {
        return (T) get(key(cls));
    }

    public <T> void put(Class<T> cls, T t10) {
        put((Key<Key<T>>) key(cls), (Key<T>) t10);
    }

    public <T> void put(Class<T> cls, Factory<T> factory) {
        put((Key) key(cls), (Factory) factory);
    }
}
