package com.google.common.collect;

import com.google.common.collect.V1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

@X
@v2.c
public final class B2 {

    public static final class b<T> {

        public final Field f65604a;

        public void a(T t10, int i10) {
            try {
                this.f65604a.set(t10, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        public void b(T t10, Object obj) {
            try {
                this.f65604a.set(t10, obj);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        public b(Field field) {
            this.f65604a = field;
            field.setAccessible(true);
        }
    }

    public static <T> b<T> a(Class<T> cls, String str) {
        try {
            return new b<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e10) {
            throw new AssertionError(e10);
        }
    }

    public static <K, V> void b(Map<K, V> map, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        c(map, objectInputStream, objectInputStream.readInt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void c(Map<K, V> map, ObjectInputStream objectInputStream, int i10) throws IOException, ClassNotFoundException {
        for (int i11 = 0; i11 < i10; i11++) {
            map.put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    public static <K, V> void d(S1<K, V> s12, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        e(s12, objectInputStream, objectInputStream.readInt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void e(S1<K, V> s12, ObjectInputStream objectInputStream, int i10) throws IOException, ClassNotFoundException {
        for (int i11 = 0; i11 < i10; i11++) {
            Collection y10 = s12.y(objectInputStream.readObject());
            int readInt = objectInputStream.readInt();
            for (int i12 = 0; i12 < readInt; i12++) {
                y10.add(objectInputStream.readObject());
            }
        }
    }

    public static <E> void f(V1<E> v12, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        g(v12, objectInputStream, objectInputStream.readInt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> void g(V1<E> v12, ObjectInputStream objectInputStream, int i10) throws IOException, ClassNotFoundException {
        for (int i11 = 0; i11 < i10; i11++) {
            v12.y6(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    public static int h(ObjectInputStream objectInputStream) throws IOException {
        return objectInputStream.readInt();
    }

    public static <K, V> void i(Map<K, V> map, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    public static <K, V> void j(S1<K, V> s12, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(s12.k().size());
        for (Map.Entry<K, Collection<V>> entry : s12.k().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            Iterator<V> it = entry.getValue().iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }

    public static <E> void k(V1<E> v12, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(v12.entrySet().size());
        for (V1.a<E> aVar : v12.entrySet()) {
            objectOutputStream.writeObject(aVar.getElement());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }
}
