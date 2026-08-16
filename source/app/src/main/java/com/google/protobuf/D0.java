package com.google.protobuf;

import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import org.apache.commons.lang3.CharEncoding;

public final class D0 {

    public static final Charset f67921a = Charset.forName(CharEncoding.US_ASCII);

    public static final Charset f67922b = Charset.forName("UTF-8");

    public static final Charset f67923c = Charset.forName("ISO-8859-1");

    public static final int f67924d = 4096;

    public static final byte[] f67925e;

    public static final ByteBuffer f67926f;

    public static final C f67927g;

    public interface a extends k<Boolean> {
        boolean getBoolean(int index);

        void l4(boolean element);

        @Override
        k<Boolean> q2(int capacity);

        @A
        boolean setBoolean(int index, boolean element);
    }

    public interface b extends k<Double> {
        void G7(double element);

        double getDouble(int index);

        @Override
        k<Double> q2(int capacity);

        @A
        double setDouble(int index, double element);
    }

    public interface c {
        int getNumber();
    }

    public interface d<T extends c> {
        T findValueByNumber(int number);
    }

    public interface e {
        boolean a(int number);
    }

    public interface f extends k<Float> {
        float getFloat(int index);

        void k9(float element);

        @Override
        k<Float> q2(int capacity);

        @A
        float setFloat(int index, float element);
    }

    public interface g extends k<Integer> {
        void Cc(int element);

        int getInt(int index);

        @Override
        k<Integer> q2(int capacity);

        @A
        int setInt(int index, int element);
    }

    public static class h<F, T> extends AbstractList<T> {

        public final List<F> f67928b;

        public final a<F, T> f67929c;

        public interface a<F, T> {
            T convert(F from);
        }

        public h(List<F> fromList, a<F, T> converter) {
            this.f67928b = fromList;
            this.f67929c = converter;
        }

        @Override
        public T get(int i10) {
            return (T) this.f67929c.convert(this.f67928b.get(i10));
        }

        @Override
        public int size() {
            return this.f67928b.size();
        }
    }

    public interface i extends k<Long> {
        long getLong(int index);

        @Override
        k<Long> q2(int capacity);

        @A
        long setLong(int index, long element);

        void x7(long element);
    }

    public static class j<K, V, RealValue> extends AbstractMap<K, V> {

        public final Map<K, RealValue> f67930b;

        public final b<RealValue, V> f67931c;

        public class a<T> implements b<Integer, T> {

            public final d f67932a;

            public final c f67933b;

            public a(final d val$enumMap, final c val$unrecognizedValue) {
                this.f67932a = val$enumMap;
                this.f67933b = val$unrecognizedValue;
            }

            /* JADX WARN: Incorrect types in method signature: (TT;)Ljava/lang/Integer; */
            @Override
            public Integer b(c value) {
                return Integer.valueOf(value.getNumber());
            }

            /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Integer;)TT; */
            @Override
            public c a(Integer value) {
                c findValueByNumber = this.f67932a.findValueByNumber(value.intValue());
                return findValueByNumber == null ? this.f67933b : findValueByNumber;
            }
        }

        public interface b<A, B> {
            B a(A object);

            A b(B object);
        }

        public class c implements Map.Entry<K, V> {

            public final Map.Entry<K, RealValue> f67934b;

            public c(Map.Entry<K, RealValue> realEntry) {
                this.f67934b = realEntry;
            }

            @Override
            public boolean equals(Object o10) {
                if (o10 == this) {
                    return true;
                }
                if (o10 instanceof Map.Entry) {
                    return getKey().equals(((Map.Entry) o10).getKey()) && getValue().equals(getValue());
                }
                return false;
            }

            @Override
            public K getKey() {
                return this.f67934b.getKey();
            }

            @Override
            public V getValue() {
                return (V) j.this.f67931c.a(this.f67934b.getValue());
            }

            @Override
            public int hashCode() {
                return this.f67934b.hashCode();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public V setValue(V v10) {
                Object value = this.f67934b.setValue(j.this.f67931c.b(v10));
                if (value == null) {
                    return null;
                }
                return (V) j.this.f67931c.a(value);
            }
        }

        public class d implements Iterator<Map.Entry<K, V>> {

            public final Iterator<Map.Entry<K, RealValue>> f67936b;

            public d(Iterator<Map.Entry<K, RealValue>> realIterator) {
                this.f67936b = realIterator;
            }

            @Override
            public Map.Entry<K, V> next() {
                return new c(this.f67936b.next());
            }

            @Override
            public boolean hasNext() {
                return this.f67936b.hasNext();
            }

            @Override
            public void remove() {
                this.f67936b.remove();
            }
        }

        public class e extends AbstractSet<Map.Entry<K, V>> {

            public final Set<Map.Entry<K, RealValue>> f67938b;

            public e(Set<Map.Entry<K, RealValue>> realSet) {
                this.f67938b = realSet;
            }

            @Override
            public Iterator<Map.Entry<K, V>> iterator() {
                return new d(this.f67938b.iterator());
            }

            @Override
            public int size() {
                return this.f67938b.size();
            }
        }

        public j(Map<K, RealValue> realMap, b<RealValue, V> valueConverter) {
            this.f67930b = realMap;
            this.f67931c = valueConverter;
        }

        public static <T extends c> b<Integer, T> b(final d<T> enumMap, final T unrecognizedValue) {
            return new a(enumMap, unrecognizedValue);
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            return new e(this.f67930b.entrySet());
        }

        @Override
        public V get(Object key) {
            RealValue realvalue = this.f67930b.get(key);
            if (realvalue == null) {
                return null;
            }
            return this.f67931c.a(realvalue);
        }

        @Override
        public V put(K k10, V v10) {
            Object put = this.f67930b.put(k10, this.f67931c.b(v10));
            if (put == null) {
                return null;
            }
            return (V) this.f67931c.a(put);
        }
    }

    public interface k<E> extends List<E>, RandomAccess {
        boolean hc();

        k<E> q2(int capacity);

        void r9();
    }

    static {
        byte[] bArr = new byte[0];
        f67925e = bArr;
        f67926f = ByteBuffer.wrap(bArr);
        f67927g = C.q(bArr);
    }

    public static byte[] a(String bytes) {
        return bytes.getBytes(f67923c);
    }

    public static ByteBuffer b(String bytes) {
        return ByteBuffer.wrap(a(bytes));
    }

    public static AbstractC12724x c(String bytes) {
        return AbstractC12724x.u(bytes.getBytes(f67923c));
    }

    public static <T> T d(T obj) {
        obj.getClass();
        return obj;
    }

    public static <T> T e(T obj, String message) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(message);
    }

    public static ByteBuffer f(ByteBuffer source) {
        ByteBuffer duplicate = source.duplicate();
        duplicate.clear();
        ByteBuffer allocate = ByteBuffer.allocate(duplicate.capacity());
        allocate.put(duplicate);
        allocate.clear();
        return allocate;
    }

    public static boolean g(List<byte[]> a10, List<byte[]> b10) {
        if (a10.size() != b10.size()) {
            return false;
        }
        for (int i10 = 0; i10 < a10.size(); i10++) {
            if (!Arrays.equals(a10.get(i10), b10.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(ByteBuffer a10, ByteBuffer b10) {
        if (a10.capacity() != b10.capacity()) {
            return false;
        }
        ByteBuffer duplicate = a10.duplicate();
        F0.a(duplicate);
        ByteBuffer duplicate2 = b10.duplicate();
        F0.a(duplicate2);
        return duplicate.equals(duplicate2);
    }

    public static boolean i(List<ByteBuffer> a10, List<ByteBuffer> b10) {
        if (a10.size() != b10.size()) {
            return false;
        }
        for (int i10 = 0; i10 < a10.size(); i10++) {
            if (!h(a10.get(i10), b10.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static <T extends InterfaceC12659b1> T j(Class<T> clazz) {
        try {
            Method method = clazz.getMethod(G.f68056a, null);
            return (T) method.invoke(method, null);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to get default instance for " + ((Object) clazz), e10);
        }
    }

    public static int k(boolean b10) {
        return b10 ? 1231 : 1237;
    }

    public static int l(List<byte[]> list) {
        Iterator<byte[]> it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            i10 = (i10 * 31) + m(it.next());
        }
        return i10;
    }

    public static int m(byte[] bytes) {
        return n(bytes, 0, bytes.length);
    }

    public static int n(byte[] bytes, int offset, int length) {
        int w10 = w(length, bytes, offset, length);
        if (w10 == 0) {
            return 1;
        }
        return w10;
    }

    public static int o(ByteBuffer bytes) {
        if (bytes.hasArray()) {
            int w10 = w(bytes.capacity(), bytes.array(), bytes.arrayOffset(), bytes.capacity());
            if (w10 == 0) {
                return 1;
            }
            return w10;
        }
        int capacity = bytes.capacity() <= 4096 ? bytes.capacity() : 4096;
        byte[] bArr = new byte[capacity];
        ByteBuffer duplicate = bytes.duplicate();
        F0.a(duplicate);
        int capacity2 = bytes.capacity();
        while (duplicate.remaining() > 0) {
            int remaining = duplicate.remaining() <= capacity ? duplicate.remaining() : capacity;
            duplicate.get(bArr, 0, remaining);
            capacity2 = w(capacity2, bArr, 0, remaining);
        }
        if (capacity2 == 0) {
            return 1;
        }
        return capacity2;
    }

    public static int p(List<ByteBuffer> list) {
        Iterator<ByteBuffer> it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            i10 = (i10 * 31) + o(it.next());
        }
        return i10;
    }

    public static int q(c e10) {
        return e10.getNumber();
    }

    public static int r(List<? extends c> list) {
        Iterator<? extends c> it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            i10 = (i10 * 31) + q(it.next());
        }
        return i10;
    }

    public static int s(long n10) {
        return (int) (n10 ^ (n10 >>> 32));
    }

    public static boolean t(AbstractC12724x byteString) {
        return byteString.J();
    }

    public static boolean u(byte[] byteArray) {
        return Utf8.t(byteArray);
    }

    public static Object v(Object destination, Object source) {
        return ((InterfaceC12659b1) destination).toBuilder().mergeFrom((InterfaceC12659b1) source).buildPartial();
    }

    public static int w(int h10, byte[] bytes, int offset, int length) {
        for (int i10 = offset; i10 < offset + length; i10++) {
            h10 = (h10 * 31) + bytes[i10];
        }
        return h10;
    }

    public static String x(String bytes) {
        return new String(bytes.getBytes(f67923c), f67922b);
    }

    public static byte[] y(String value) {
        return value.getBytes(f67922b);
    }

    public static String z(byte[] bytes) {
        return new String(bytes, f67922b);
    }
}
