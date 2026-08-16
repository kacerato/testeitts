package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.InterfaceC12659b1;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;

public class R0<K, V> {

    public static final int f68855d = 1;

    public static final int f68856e = 2;

    public final b<K, V> f68857a;

    public final K f68858b;

    public final V f68859c;

    public static class a {

        public static final int[] f68860a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f68860a = iArr;
            try {
                iArr[A2.b.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68860a[A2.b.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f68860a[A2.b.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class b<K, V> {

        public final A2.b f68861a;

        public final K f68862b;

        public final A2.b f68863c;

        public final V f68864d;

        public b(A2.b keyType, K defaultKey, A2.b valueType, V defaultValue) {
            this.f68861a = keyType;
            this.f68862b = defaultKey;
            this.f68863c = valueType;
            this.f68864d = defaultValue;
        }
    }

    public R0(A2.b keyType, K defaultKey, A2.b valueType, V defaultValue) {
        this.f68857a = new b<>(keyType, defaultKey, valueType, defaultValue);
        this.f68858b = defaultKey;
        this.f68859c = defaultValue;
    }

    public static <K, V> int b(b<K, V> metadata, K key, V value) {
        return C12699o0.o(metadata.f68861a, 1, key) + C12699o0.o(metadata.f68863c, 2, value);
    }

    public static <K, V> R0<K, V> f(A2.b keyType, K defaultKey, A2.b valueType, V defaultValue) {
        return new R0<>(keyType, defaultKey, valueType, defaultValue);
    }

    public static <K, V> Map.Entry<K, V> h(C input, b<K, V> metadata, C12666d0 extensionRegistry) throws IOException {
        Object obj = metadata.f68862b;
        Object obj2 = metadata.f68864d;
        while (true) {
            int Z10 = input.Z();
            if (Z10 == 0) {
                break;
            }
            if (Z10 == A2.c(1, metadata.f68861a.b())) {
                obj = i(input, extensionRegistry, metadata.f68861a, obj);
            } else if (Z10 == A2.c(2, metadata.f68863c.b())) {
                obj2 = i(input, extensionRegistry, metadata.f68863c, obj2);
            } else if (!input.h0(Z10)) {
                break;
            }
        }
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    public static <T> T i(C c10, C12666d0 c12666d0, A2.b bVar, T t10) throws IOException {
        int i10 = a.f68860a[bVar.ordinal()];
        if (i10 == 1) {
            InterfaceC12659b1.a builder = ((InterfaceC12659b1) t10).toBuilder();
            c10.J(builder, c12666d0);
            return (T) builder.buildPartial();
        }
        if (i10 == 2) {
            return (T) Integer.valueOf(c10.A());
        }
        if (i10 != 3) {
            return (T) C12699o0.O(c10, bVar, true);
        }
        throw new RuntimeException("Groups are not allowed in maps.");
    }

    public static <K, V> void l(CodedOutputStream output, b<K, V> metadata, K key, V value) throws IOException {
        C12699o0.S(output, metadata.f68861a, 1, key);
        C12699o0.S(output, metadata.f68863c, 2, value);
    }

    public int a(int fieldNumber, K key, V value) {
        return CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(b(this.f68857a, key, value));
    }

    public K c() {
        return this.f68858b;
    }

    public b<K, V> d() {
        return this.f68857a;
    }

    public V e() {
        return this.f68859c;
    }

    public Map.Entry<K, V> g(AbstractC12724x bytes, C12666d0 extensionRegistry) throws IOException {
        return h(bytes.N(), this.f68857a, extensionRegistry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void j(T0<K, V> map, C input, C12666d0 extensionRegistry) throws IOException {
        int u10 = input.u(input.O());
        b<K, V> bVar = this.f68857a;
        Object obj = bVar.f68862b;
        Object obj2 = bVar.f68864d;
        while (true) {
            int Z10 = input.Z();
            if (Z10 == 0) {
                break;
            }
            if (Z10 == A2.c(1, this.f68857a.f68861a.b())) {
                obj = i(input, extensionRegistry, this.f68857a.f68861a, obj);
            } else if (Z10 == A2.c(2, this.f68857a.f68863c.b())) {
                obj2 = i(input, extensionRegistry, this.f68857a.f68863c, obj2);
            } else if (!input.h0(Z10)) {
                break;
            }
        }
        input.a(0);
        input.t(u10);
        map.put(obj, obj2);
    }

    public void k(CodedOutputStream output, int fieldNumber, K key, V value) throws IOException {
        output.g2(fieldNumber, 2);
        output.h2(b(this.f68857a, key, value));
        l(output, this.f68857a, key, value);
    }

    public R0(b<K, V> metadata, K key, V value) {
        this.f68857a = metadata;
        this.f68858b = key;
        this.f68859c = value;
    }
}
