package com.google.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@B
public final class C12732z1 {

    public static final C12732z1 f69779c = new C12732z1();

    public final ConcurrentMap<Class<?>, L1<?>> f69781b = new ConcurrentHashMap();

    public final M1 f69780a = new P0();

    public static C12732z1 a() {
        return f69779c;
    }

    public int b() {
        int i10 = 0;
        for (L1<?> l12 : this.f69781b.values()) {
            if (l12 instanceof C12676g1) {
                i10 += ((C12676g1) l12).q();
            }
        }
        return i10;
    }

    public <T> boolean c(T message) {
        return j(message).K1(message);
    }

    public <T> void d(T message) {
        j(message).M1(message);
    }

    public <T> void e(T message, E1 reader) throws IOException {
        f(message, reader, C12666d0.d());
    }

    public <T> void f(T message, E1 reader, C12666d0 extensionRegistry) throws IOException {
        j(message).P1(message, reader, extensionRegistry);
    }

    public L1<?> g(Class<?> messageType, L1<?> schema) {
        D0.e(messageType, "messageType");
        D0.e(schema, "schema");
        return this.f69781b.putIfAbsent(messageType, schema);
    }

    @A
    public L1<?> h(Class<?> messageType, L1<?> schema) {
        D0.e(messageType, "messageType");
        D0.e(schema, "schema");
        return this.f69781b.put(messageType, schema);
    }

    public <T> L1<T> i(Class<T> cls) {
        D0.e(cls, "messageType");
        L1<T> l12 = (L1) this.f69781b.get(cls);
        if (l12 != null) {
            return l12;
        }
        L1<T> a10 = this.f69780a.a(cls);
        L1<T> l13 = (L1<T>) g(cls, a10);
        return l13 != null ? l13 : a10;
    }

    public <T> L1<T> j(T message) {
        return i(message.getClass());
    }

    public <T> void k(T message, C2 writer) throws IOException {
        j(message).J1(message, writer);
    }
}
