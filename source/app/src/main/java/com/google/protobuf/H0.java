package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;

public class H0 extends I0 {

    public final InterfaceC12659b1 f68738f;

    public static class b<K> implements Map.Entry<K, Object> {

        public Map.Entry<K, H0> f68739b;

        public H0 b() {
            return this.f68739b.getValue();
        }

        @Override
        public K getKey() {
            return this.f68739b.getKey();
        }

        @Override
        public Object getValue() {
            H0 value = this.f68739b.getValue();
            if (value == null) {
                return null;
            }
            return value.p();
        }

        @Override
        public Object setValue(Object value) {
            if (value instanceof InterfaceC12659b1) {
                return this.f68739b.getValue().m((InterfaceC12659b1) value);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }

        public b(Map.Entry<K, H0> entry) {
            this.f68739b = entry;
        }
    }

    public static class c<K> implements Iterator<Map.Entry<K, Object>> {

        public Iterator<Map.Entry<K, Object>> f68740b;

        public c(Iterator<Map.Entry<K, Object>> iterator) {
            this.f68740b = iterator;
        }

        @Override
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f68740b.next();
            return next.getValue() instanceof H0 ? new b(next) : next;
        }

        @Override
        public boolean hasNext() {
            return this.f68740b.hasNext();
        }

        @Override
        public void remove() {
            this.f68740b.remove();
        }
    }

    public H0(InterfaceC12659b1 defaultInstance, C12666d0 extensionRegistry, AbstractC12724x bytes) {
        super(extensionRegistry, bytes);
        this.f68738f = defaultInstance;
    }

    @Override
    public boolean c() {
        return super.c() || this.f68765c == this.f68738f;
    }

    @Override
    public boolean equals(Object obj) {
        return p().equals(obj);
    }

    @Override
    public int hashCode() {
        return p().hashCode();
    }

    public InterfaceC12659b1 p() {
        return g(this.f68738f);
    }

    public String toString() {
        return p().toString();
    }
}
