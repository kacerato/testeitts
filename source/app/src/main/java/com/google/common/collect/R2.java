package com.google.common.collect;

import com.google.common.collect.S2;
import com.google.common.collect.V1;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@X
@v2.b(emulated = true)
public final class R2 {

    public static class b<K, V> extends k<K, Collection<V>> {

        public static final long f66130k = 0;

        @CheckForNull
        public transient Set<Map.Entry<K, Collection<V>>> f66131i;

        @CheckForNull
        public transient Collection<Collection<V>> f66132j;

        public b(Map<K, Collection<V>> map, @CheckForNull Object obj) {
            super(map, obj);
        }

        @Override
        public boolean containsValue(@CheckForNull Object obj) {
            return values().contains(obj);
        }

        @Override
        public Set<Map.Entry<K, Collection<V>>> entrySet() {
            Set<Map.Entry<K, Collection<V>>> set;
            synchronized (this.f66168c) {
                try {
                    if (this.f66131i == null) {
                        this.f66131i = new c(m().entrySet(), this.f66168c);
                    }
                    set = this.f66131i;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return set;
        }

        @Override
        public Collection<Collection<V>> values() {
            Collection<Collection<V>> collection;
            synchronized (this.f66168c) {
                try {
                    if (this.f66132j == null) {
                        this.f66132j = new d(m().values(), this.f66168c);
                    }
                    collection = this.f66132j;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return collection;
        }

        @Override
        @CheckForNull
        public Collection<V> get(@CheckForNull Object obj) {
            Collection<V> A10;
            synchronized (this.f66168c) {
                Collection collection = (Collection) super.get(obj);
                A10 = collection == null ? null : R2.A(collection, this.f66168c);
            }
            return A10;
        }
    }

    public static class d<V> extends f<Collection<V>> {

        public static final long f66137f = 0;

        public class a extends V2<Collection<V>, Collection<V>> {
            public a(Iterator it) {
                super(it);
            }

            @Override
            public Collection<V> a(Collection<V> collection) {
                return R2.A(collection, d.this.f66168c);
            }
        }

        public d(Collection<Collection<V>> collection, @CheckForNull Object obj) {
            super(collection, obj);
        }

        @Override
        public Iterator<Collection<V>> iterator() {
            return new a(super.iterator());
        }
    }

    @v2.d
    public static class e<K, V> extends k<K, V> implements InterfaceC12582w<K, V>, Serializable {

        public static final long f66139k = 0;

        @CheckForNull
        public transient Set<V> f66140i;

        @q3.h
        @CheckForNull
        public transient InterfaceC12582w<V, K> f66141j;

        @Override
        public InterfaceC12582w<V, K> A8() {
            InterfaceC12582w<V, K> interfaceC12582w;
            synchronized (this.f66168c) {
                try {
                    if (this.f66141j == null) {
                        this.f66141j = new e(i().A8(), this.f66168c, this);
                    }
                    interfaceC12582w = this.f66141j;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return interfaceC12582w;
        }

        @Override
        @CheckForNull
        public V U6(K k10, V v10) {
            V U62;
            synchronized (this.f66168c) {
                U62 = i().U6(k10, v10);
            }
            return U62;
        }

        @Override
        public InterfaceC12582w<K, V> m() {
            return (InterfaceC12582w) super.m();
        }

        public e(InterfaceC12582w<K, V> interfaceC12582w, @CheckForNull Object obj, @CheckForNull InterfaceC12582w<V, K> interfaceC12582w2) {
            super(interfaceC12582w, obj);
            this.f66141j = interfaceC12582w2;
        }

        @Override
        public Set<V> values() {
            Set<V> set;
            synchronized (this.f66168c) {
                try {
                    if (this.f66140i == null) {
                        this.f66140i = R2.u(i().values(), this.f66168c);
                    }
                    set = this.f66140i;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return set;
        }
    }

    @v2.d
    public static class f<E> extends p implements Collection<E> {

        public static final long f66142e = 0;

        @Override
        public boolean add(E e10) {
            boolean add;
            synchronized (this.f66168c) {
                add = n().add(e10);
            }
            return add;
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            boolean addAll;
            synchronized (this.f66168c) {
                addAll = n().addAll(collection);
            }
            return addAll;
        }

        @Override
        public void clear() {
            synchronized (this.f66168c) {
                n().clear();
            }
        }

        public boolean contains(@CheckForNull Object obj) {
            boolean contains;
            synchronized (this.f66168c) {
                contains = n().contains(obj);
            }
            return contains;
        }

        public boolean containsAll(Collection<?> collection) {
            boolean containsAll;
            synchronized (this.f66168c) {
                containsAll = n().containsAll(collection);
            }
            return containsAll;
        }

        @Override
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f66168c) {
                isEmpty = n().isEmpty();
            }
            return isEmpty;
        }

        public Iterator<E> iterator() {
            return n().iterator();
        }

        @Override
        public Collection<E> m() {
            return (Collection) super.m();
        }

        public boolean remove(@CheckForNull Object obj) {
            boolean remove;
            synchronized (this.f66168c) {
                remove = n().remove(obj);
            }
            return remove;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean removeAll;
            synchronized (this.f66168c) {
                removeAll = n().removeAll(collection);
            }
            return removeAll;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean retainAll;
            synchronized (this.f66168c) {
                retainAll = n().retainAll(collection);
            }
            return retainAll;
        }

        @Override
        public int size() {
            int size;
            synchronized (this.f66168c) {
                size = n().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] array;
            synchronized (this.f66168c) {
                array = n().toArray();
            }
            return array;
        }

        public f(Collection<E> collection, @CheckForNull Object obj) {
            super(collection, obj);
        }

        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.f66168c) {
                tArr2 = (T[]) n().toArray(tArr);
            }
            return tArr2;
        }
    }

    public static final class g<E> extends q<E> implements Deque<E> {

        public static final long f66143g = 0;

        public g(Deque<E> deque, @CheckForNull Object obj) {
            super(deque, obj);
        }

        @Override
        public void addFirst(E e10) {
            synchronized (this.f66168c) {
                m().addFirst(e10);
            }
        }

        @Override
        public void addLast(E e10) {
            synchronized (this.f66168c) {
                m().addLast(e10);
            }
        }

        @Override
        public Iterator<E> descendingIterator() {
            Iterator<E> descendingIterator;
            synchronized (this.f66168c) {
                descendingIterator = m().descendingIterator();
            }
            return descendingIterator;
        }

        @Override
        public E getFirst() {
            E first;
            synchronized (this.f66168c) {
                first = m().getFirst();
            }
            return first;
        }

        @Override
        public E getLast() {
            E last;
            synchronized (this.f66168c) {
                last = m().getLast();
            }
            return last;
        }

        @Override
        public boolean offerFirst(E e10) {
            boolean offerFirst;
            synchronized (this.f66168c) {
                offerFirst = m().offerFirst(e10);
            }
            return offerFirst;
        }

        @Override
        public boolean offerLast(E e10) {
            boolean offerLast;
            synchronized (this.f66168c) {
                offerLast = m().offerLast(e10);
            }
            return offerLast;
        }

        @Override
        @CheckForNull
        public E peekFirst() {
            E peekFirst;
            synchronized (this.f66168c) {
                peekFirst = m().peekFirst();
            }
            return peekFirst;
        }

        @Override
        @CheckForNull
        public E peekLast() {
            E peekLast;
            synchronized (this.f66168c) {
                peekLast = m().peekLast();
            }
            return peekLast;
        }

        @Override
        @CheckForNull
        public E pollFirst() {
            E pollFirst;
            synchronized (this.f66168c) {
                pollFirst = m().pollFirst();
            }
            return pollFirst;
        }

        @Override
        @CheckForNull
        public E pollLast() {
            E pollLast;
            synchronized (this.f66168c) {
                pollLast = m().pollLast();
            }
            return pollLast;
        }

        @Override
        public E pop() {
            E pop;
            synchronized (this.f66168c) {
                pop = m().pop();
            }
            return pop;
        }

        @Override
        public void push(E e10) {
            synchronized (this.f66168c) {
                m().push(e10);
            }
        }

        @Override
        public Deque<E> n() {
            return (Deque) super.n();
        }

        @Override
        public E removeFirst() {
            E removeFirst;
            synchronized (this.f66168c) {
                removeFirst = m().removeFirst();
            }
            return removeFirst;
        }

        @Override
        public boolean removeFirstOccurrence(@CheckForNull Object obj) {
            boolean removeFirstOccurrence;
            synchronized (this.f66168c) {
                removeFirstOccurrence = m().removeFirstOccurrence(obj);
            }
            return removeFirstOccurrence;
        }

        @Override
        public E removeLast() {
            E removeLast;
            synchronized (this.f66168c) {
                removeLast = m().removeLast();
            }
            return removeLast;
        }

        @Override
        public boolean removeLastOccurrence(@CheckForNull Object obj) {
            boolean removeLastOccurrence;
            synchronized (this.f66168c) {
                removeLastOccurrence = m().removeLastOccurrence(obj);
            }
            return removeLastOccurrence;
        }
    }

    @v2.c
    public static class h<K, V> extends p implements Map.Entry<K, V> {

        public static final long f66144e = 0;

        public h(Map.Entry<K, V> entry, @CheckForNull Object obj) {
            super(entry, obj);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            boolean equals;
            synchronized (this.f66168c) {
                equals = m().equals(obj);
            }
            return equals;
        }

        @Override
        public K getKey() {
            K key;
            synchronized (this.f66168c) {
                key = m().getKey();
            }
            return key;
        }

        @Override
        public V getValue() {
            V value;
            synchronized (this.f66168c) {
                value = m().getValue();
            }
            return value;
        }

        @Override
        public int hashCode() {
            int hashCode;
            synchronized (this.f66168c) {
                hashCode = m().hashCode();
            }
            return hashCode;
        }

        @Override
        public Map.Entry<K, V> m() {
            return (Map.Entry) super.m();
        }

        @Override
        public V setValue(V v10) {
            V value;
            synchronized (this.f66168c) {
                value = m().setValue(v10);
            }
            return value;
        }
    }

    public static class i<E> extends f<E> implements List<E> {

        public static final long f66145f = 0;

        public i(List<E> list, @CheckForNull Object obj) {
            super(list, obj);
        }

        @Override
        public void add(int i10, E e10) {
            synchronized (this.f66168c) {
                m().add(i10, e10);
            }
        }

        @Override
        public boolean addAll(int i10, Collection<? extends E> collection) {
            boolean addAll;
            synchronized (this.f66168c) {
                addAll = m().addAll(i10, collection);
            }
            return addAll;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f66168c) {
                equals = m().equals(obj);
            }
            return equals;
        }

        @Override
        public E get(int i10) {
            E e10;
            synchronized (this.f66168c) {
                e10 = m().get(i10);
            }
            return e10;
        }

        @Override
        public int hashCode() {
            int hashCode;
            synchronized (this.f66168c) {
                hashCode = m().hashCode();
            }
            return hashCode;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int indexOf;
            synchronized (this.f66168c) {
                indexOf = m().indexOf(obj);
            }
            return indexOf;
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int lastIndexOf;
            synchronized (this.f66168c) {
                lastIndexOf = m().lastIndexOf(obj);
            }
            return lastIndexOf;
        }

        @Override
        public ListIterator<E> listIterator() {
            return m().listIterator();
        }

        @Override
        public List<E> n() {
            return (List) super.n();
        }

        @Override
        public E remove(int i10) {
            E remove;
            synchronized (this.f66168c) {
                remove = m().remove(i10);
            }
            return remove;
        }

        @Override
        public E set(int i10, E e10) {
            E e11;
            synchronized (this.f66168c) {
                e11 = m().set(i10, e10);
            }
            return e11;
        }

        @Override
        public List<E> subList(int i10, int i11) {
            List<E> j10;
            synchronized (this.f66168c) {
                j10 = R2.j(m().subList(i10, i11), this.f66168c);
            }
            return j10;
        }

        @Override
        public ListIterator<E> listIterator(int i10) {
            return m().listIterator(i10);
        }
    }

    public static class j<K, V> extends l<K, V> implements L1<K, V> {

        public static final long f66146k = 0;

        public j(L1<K, V> l12, @CheckForNull Object obj) {
            super(l12, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection d(Object obj, Iterable iterable) {
            return d((j<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection y(Object obj) {
            return y((j<K, V>) obj);
        }

        @Override
        public L1<K, V> m() {
            return (L1) super.m();
        }

        @Override
        public List<V> c(@CheckForNull Object obj) {
            List<V> c10;
            synchronized (this.f66168c) {
                c10 = n().c(obj);
            }
            return c10;
        }

        @Override
        public List<V> d(K k10, Iterable<? extends V> iterable) {
            List<V> d10;
            synchronized (this.f66168c) {
                d10 = n().d((L1<K, V>) k10, (Iterable) iterable);
            }
            return d10;
        }

        @Override
        public List<V> y(K k10) {
            List<V> j10;
            synchronized (this.f66168c) {
                j10 = R2.j(n().y((L1<K, V>) k10), this.f66168c);
            }
            return j10;
        }
    }

    public static class k<K, V> extends p implements Map<K, V> {

        public static final long f66147h = 0;

        @CheckForNull
        public transient Set<K> f66148e;

        @CheckForNull
        public transient Collection<V> f66149f;

        @CheckForNull
        public transient Set<Map.Entry<K, V>> f66150g;

        public k(Map<K, V> map, @CheckForNull Object obj) {
            super(map, obj);
        }

        @Override
        public void clear() {
            synchronized (this.f66168c) {
                m().clear();
            }
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            boolean containsKey;
            synchronized (this.f66168c) {
                containsKey = m().containsKey(obj);
            }
            return containsKey;
        }

        public boolean containsValue(@CheckForNull Object obj) {
            boolean containsValue;
            synchronized (this.f66168c) {
                containsValue = m().containsValue(obj);
            }
            return containsValue;
        }

        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.f66168c) {
                try {
                    if (this.f66150g == null) {
                        this.f66150g = R2.u(m().entrySet(), this.f66168c);
                    }
                    set = this.f66150g;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return set;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f66168c) {
                equals = m().equals(obj);
            }
            return equals;
        }

        @CheckForNull
        public V get(@CheckForNull Object obj) {
            V v10;
            synchronized (this.f66168c) {
                v10 = m().get(obj);
            }
            return v10;
        }

        @Override
        public int hashCode() {
            int hashCode;
            synchronized (this.f66168c) {
                hashCode = m().hashCode();
            }
            return hashCode;
        }

        @Override
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f66168c) {
                isEmpty = m().isEmpty();
            }
            return isEmpty;
        }

        @Override
        public Set<K> o() {
            Set<K> set;
            synchronized (this.f66168c) {
                try {
                    if (this.f66148e == null) {
                        this.f66148e = R2.u(m().o(), this.f66168c);
                    }
                    set = this.f66148e;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return set;
        }

        @Override
        public Map<K, V> m() {
            return (Map) super.m();
        }

        @Override
        @CheckForNull
        public V put(K k10, V v10) {
            V put;
            synchronized (this.f66168c) {
                put = m().put(k10, v10);
            }
            return put;
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.f66168c) {
                m().putAll(map);
            }
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            V remove;
            synchronized (this.f66168c) {
                remove = m().remove(obj);
            }
            return remove;
        }

        @Override
        public int size() {
            int size;
            synchronized (this.f66168c) {
                size = m().size();
            }
            return size;
        }

        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.f66168c) {
                try {
                    if (this.f66149f == null) {
                        this.f66149f = R2.h(m().values(), this.f66168c);
                    }
                    collection = this.f66149f;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return collection;
        }
    }

    public static class l<K, V> extends p implements S1<K, V> {

        public static final long f66151j = 0;

        @CheckForNull
        public transient Set<K> f66152e;

        @CheckForNull
        public transient Collection<V> f66153f;

        @CheckForNull
        public transient Collection<Map.Entry<K, V>> f66154g;

        @CheckForNull
        public transient Map<K, Collection<V>> f66155h;

        @CheckForNull
        public transient V1<K> f66156i;

        public l(S1<K, V> s12, @CheckForNull Object obj) {
            super(s12, obj);
        }

        @Override
        public boolean Z(K k10, Iterable<? extends V> iterable) {
            boolean Z10;
            synchronized (this.f66168c) {
                Z10 = m().Z(k10, iterable);
            }
            return Z10;
        }

        public Collection<V> c(@CheckForNull Object obj) {
            Collection<V> c10;
            synchronized (this.f66168c) {
                c10 = m().c(obj);
            }
            return c10;
        }

        @Override
        public void clear() {
            synchronized (this.f66168c) {
                m().clear();
            }
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            boolean containsKey;
            synchronized (this.f66168c) {
                containsKey = m().containsKey(obj);
            }
            return containsKey;
        }

        @Override
        public boolean containsValue(@CheckForNull Object obj) {
            boolean containsValue;
            synchronized (this.f66168c) {
                containsValue = m().containsValue(obj);
            }
            return containsValue;
        }

        public Collection<V> d(K k10, Iterable<? extends V> iterable) {
            Collection<V> d10;
            synchronized (this.f66168c) {
                d10 = m().d(k10, iterable);
            }
            return d10;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f66168c) {
                equals = m().equals(obj);
            }
            return equals;
        }

        @Override
        public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
            boolean g02;
            synchronized (this.f66168c) {
                g02 = m().g0(obj, obj2);
            }
            return g02;
        }

        public Collection<V> y(K k10) {
            Collection<V> A10;
            synchronized (this.f66168c) {
                A10 = R2.A(m().y(k10), this.f66168c);
            }
            return A10;
        }

        @Override
        public int hashCode() {
            int hashCode;
            synchronized (this.f66168c) {
                hashCode = m().hashCode();
            }
            return hashCode;
        }

        @Override
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f66168c) {
                isEmpty = m().isEmpty();
            }
            return isEmpty;
        }

        @Override
        public V1<K> j() {
            V1<K> v12;
            synchronized (this.f66168c) {
                try {
                    if (this.f66156i == null) {
                        this.f66156i = R2.n(m().j(), this.f66168c);
                    }
                    v12 = this.f66156i;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return v12;
        }

        @Override
        public Map<K, Collection<V>> k() {
            Map<K, Collection<V>> map;
            synchronized (this.f66168c) {
                try {
                    if (this.f66155h == null) {
                        this.f66155h = new b(m().k(), this.f66168c);
                    }
                    map = this.f66155h;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return map;
        }

        @Override
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.f66168c) {
                try {
                    if (this.f66152e == null) {
                        this.f66152e = R2.B(m().keySet(), this.f66168c);
                    }
                    set = this.f66152e;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return set;
        }

        @Override
        public S1<K, V> m() {
            return (S1) super.m();
        }

        @Override
        public boolean put(K k10, V v10) {
            boolean put;
            synchronized (this.f66168c) {
                put = m().put(k10, v10);
            }
            return put;
        }

        @Override
        public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            boolean remove;
            synchronized (this.f66168c) {
                remove = m().remove(obj, obj2);
            }
            return remove;
        }

        @Override
        public int size() {
            int size;
            synchronized (this.f66168c) {
                size = m().size();
            }
            return size;
        }

        @Override
        public Collection<Map.Entry<K, V>> v() {
            Collection<Map.Entry<K, V>> collection;
            synchronized (this.f66168c) {
                try {
                    if (this.f66154g == null) {
                        this.f66154g = R2.A(m().v(), this.f66168c);
                    }
                    collection = this.f66154g;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return collection;
        }

        @Override
        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.f66168c) {
                try {
                    if (this.f66153f == null) {
                        this.f66153f = R2.h(m().values(), this.f66168c);
                    }
                    collection = this.f66153f;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return collection;
        }

        @Override
        public boolean w(S1<? extends K, ? extends V> s12) {
            boolean w10;
            synchronized (this.f66168c) {
                w10 = m().w(s12);
            }
            return w10;
        }
    }

    public static class m<E> extends f<E> implements V1<E> {

        public static final long f66157h = 0;

        @CheckForNull
        public transient Set<E> f66158f;

        @CheckForNull
        public transient Set<V1.a<E>> f66159g;

        public m(V1<E> v12, @CheckForNull Object obj) {
            super(v12, obj);
        }

        @Override
        public int Ad(@CheckForNull Object obj) {
            int Ad2;
            synchronized (this.f66168c) {
                Ad2 = m().Ad(obj);
            }
            return Ad2;
        }

        @Override
        public int P9(E e10, int i10) {
            int P92;
            synchronized (this.f66168c) {
                P92 = m().P9(e10, i10);
            }
            return P92;
        }

        @Override
        public Set<E> S1() {
            Set<E> set;
            synchronized (this.f66168c) {
                try {
                    if (this.f66158f == null) {
                        this.f66158f = R2.B(m().S1(), this.f66168c);
                    }
                    set = this.f66158f;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return set;
        }

        @Override
        public boolean e7(E e10, int i10, int i11) {
            boolean e72;
            synchronized (this.f66168c) {
                e72 = m().e7(e10, i10, i11);
            }
            return e72;
        }

        @Override
        public Set<V1.a<E>> entrySet() {
            Set<V1.a<E>> set;
            synchronized (this.f66168c) {
                try {
                    if (this.f66159g == null) {
                        this.f66159g = R2.B(m().entrySet(), this.f66168c);
                    }
                    set = this.f66159g;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return set;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f66168c) {
                equals = m().equals(obj);
            }
            return equals;
        }

        @Override
        public int hashCode() {
            int hashCode;
            synchronized (this.f66168c) {
                hashCode = m().hashCode();
            }
            return hashCode;
        }

        @Override
        public V1<E> n() {
            return (V1) super.n();
        }

        @Override
        public int pc(@CheckForNull Object obj, int i10) {
            int pc2;
            synchronized (this.f66168c) {
                pc2 = m().pc(obj, i10);
            }
            return pc2;
        }

        @Override
        public int y6(E e10, int i10) {
            int y62;
            synchronized (this.f66168c) {
                y62 = m().y6(e10, i10);
            }
            return y62;
        }
    }

    public static class p implements Serializable {

        @v2.c
        public static final long f66166d = 0;

        public final Object f66167b;

        public final Object f66168c;

        public p(Object obj, @CheckForNull Object obj2) {
            this.f66167b = w2.H.E(obj);
            this.f66168c = obj2 == null ? this : obj2;
        }

        @v2.c
        private void l(ObjectOutputStream objectOutputStream) throws IOException {
            synchronized (this.f66168c) {
                objectOutputStream.defaultWriteObject();
            }
        }

        public Object m() {
            return this.f66167b;
        }

        public String toString() {
            String obj;
            synchronized (this.f66168c) {
                obj = this.f66167b.toString();
            }
            return obj;
        }
    }

    public static class q<E> extends f<E> implements Queue<E> {

        public static final long f66169f = 0;

        public q(Queue<E> queue, @CheckForNull Object obj) {
            super(queue, obj);
        }

        @Override
        public E element() {
            E element;
            synchronized (this.f66168c) {
                element = n().element();
            }
            return element;
        }

        @Override
        public Queue<E> n() {
            return (Queue) super.n();
        }

        @Override
        public boolean offer(E e10) {
            boolean offer;
            synchronized (this.f66168c) {
                offer = n().offer(e10);
            }
            return offer;
        }

        @Override
        @CheckForNull
        public E peek() {
            E peek;
            synchronized (this.f66168c) {
                peek = n().peek();
            }
            return peek;
        }

        @Override
        @CheckForNull
        public E poll() {
            E poll;
            synchronized (this.f66168c) {
                poll = n().poll();
            }
            return poll;
        }

        @Override
        public E remove() {
            E remove;
            synchronized (this.f66168c) {
                remove = n().remove();
            }
            return remove;
        }
    }

    public static class r<E> extends i<E> implements RandomAccess {

        public static final long f66170g = 0;

        public r(List<E> list, @CheckForNull Object obj) {
            super(list, obj);
        }
    }

    public static class s<E> extends f<E> implements Set<E> {

        public static final long f66171f = 0;

        public s(Set<E> set, @CheckForNull Object obj) {
            super(set, obj);
        }

        public boolean equals(@CheckForNull Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f66168c) {
                equals = n().equals(obj);
            }
            return equals;
        }

        @Override
        public int hashCode() {
            int hashCode;
            synchronized (this.f66168c) {
                hashCode = n().hashCode();
            }
            return hashCode;
        }

        @Override
        public Set<E> n() {
            return (Set) super.n();
        }
    }

    public static class t<K, V> extends l<K, V> implements C2<K, V> {

        public static final long f66172l = 0;

        @CheckForNull
        public transient Set<Map.Entry<K, V>> f66173k;

        public t(C2<K, V> c22, @CheckForNull Object obj) {
            super(c22, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection d(Object obj, Iterable iterable) {
            return d((t<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection y(Object obj) {
            return y((t<K, V>) obj);
        }

        @Override
        public C2<K, V> m() {
            return (C2) super.m();
        }

        @Override
        public Set<V> c(@CheckForNull Object obj) {
            Set<V> c10;
            synchronized (this.f66168c) {
                c10 = n().c(obj);
            }
            return c10;
        }

        @Override
        public Set<V> d(K k10, Iterable<? extends V> iterable) {
            Set<V> d10;
            synchronized (this.f66168c) {
                d10 = n().d((C2<K, V>) k10, (Iterable) iterable);
            }
            return d10;
        }

        @Override
        public Set<V> y(K k10) {
            Set<V> u10;
            synchronized (this.f66168c) {
                u10 = R2.u(n().y((C2<K, V>) k10), this.f66168c);
            }
            return u10;
        }

        @Override
        public Set<Map.Entry<K, V>> v() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.f66168c) {
                try {
                    if (this.f66173k == null) {
                        this.f66173k = R2.u(n().v(), this.f66168c);
                    }
                    set = this.f66173k;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return set;
        }
    }

    public static class u<K, V> extends k<K, V> implements SortedMap<K, V> {

        public static final long f66174i = 0;

        public u(SortedMap<K, V> sortedMap, @CheckForNull Object obj) {
            super(sortedMap, obj);
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator;
            synchronized (this.f66168c) {
                comparator = m().comparator();
            }
            return comparator;
        }

        @Override
        public K firstKey() {
            K firstKey;
            synchronized (this.f66168c) {
                firstKey = m().firstKey();
            }
            return firstKey;
        }

        public SortedMap<K, V> headMap(K k10) {
            SortedMap<K, V> w10;
            synchronized (this.f66168c) {
                w10 = R2.w(m().headMap(k10), this.f66168c);
            }
            return w10;
        }

        @Override
        public K lastKey() {
            K lastKey;
            synchronized (this.f66168c) {
                lastKey = m().lastKey();
            }
            return lastKey;
        }

        @Override
        public SortedMap<K, V> m() {
            return (SortedMap) super.m();
        }

        public SortedMap<K, V> subMap(K k10, K k11) {
            SortedMap<K, V> w10;
            synchronized (this.f66168c) {
                w10 = R2.w(m().subMap(k10, k11), this.f66168c);
            }
            return w10;
        }

        public SortedMap<K, V> tailMap(K k10) {
            SortedMap<K, V> w10;
            synchronized (this.f66168c) {
                w10 = R2.w(m().tailMap(k10), this.f66168c);
            }
            return w10;
        }
    }

    public static class v<E> extends s<E> implements SortedSet<E> {

        public static final long f66175g = 0;

        public v(SortedSet<E> sortedSet, @CheckForNull Object obj) {
            super(sortedSet, obj);
        }

        @Override
        @CheckForNull
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator;
            synchronized (this.f66168c) {
                comparator = m().comparator();
            }
            return comparator;
        }

        @Override
        public E first() {
            E first;
            synchronized (this.f66168c) {
                first = m().first();
            }
            return first;
        }

        public SortedSet<E> headSet(E e10) {
            SortedSet<E> x10;
            synchronized (this.f66168c) {
                x10 = R2.x(m().headSet(e10), this.f66168c);
            }
            return x10;
        }

        @Override
        public E last() {
            E last;
            synchronized (this.f66168c) {
                last = m().last();
            }
            return last;
        }

        @Override
        public SortedSet<E> n() {
            return (SortedSet) super.n();
        }

        public SortedSet<E> subSet(E e10, E e11) {
            SortedSet<E> x10;
            synchronized (this.f66168c) {
                x10 = R2.x(m().subSet(e10, e11), this.f66168c);
            }
            return x10;
        }

        public SortedSet<E> tailSet(E e10) {
            SortedSet<E> x10;
            synchronized (this.f66168c) {
                x10 = R2.x(m().tailSet(e10), this.f66168c);
            }
            return x10;
        }
    }

    public static class w<K, V> extends t<K, V> implements N2<K, V> {

        public static final long f66176m = 0;

        public w(N2<K, V> n22, @CheckForNull Object obj) {
            super(n22, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection d(Object obj, Iterable iterable) {
            return d((w<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection y(Object obj) {
            return y((w<K, V>) obj);
        }

        @Override
        public N2<K, V> n() {
            return (N2) super.n();
        }

        @Override
        @CheckForNull
        public Comparator<? super V> z() {
            Comparator<? super V> z10;
            synchronized (this.f66168c) {
                z10 = n().z();
            }
            return z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Set d(Object obj, Iterable iterable) {
            return d((w<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Set y(Object obj) {
            return y((w<K, V>) obj);
        }

        @Override
        public SortedSet<V> c(@CheckForNull Object obj) {
            SortedSet<V> c10;
            synchronized (this.f66168c) {
                c10 = n().c(obj);
            }
            return c10;
        }

        @Override
        public SortedSet<V> d(K k10, Iterable<? extends V> iterable) {
            SortedSet<V> d10;
            synchronized (this.f66168c) {
                d10 = n().d((N2<K, V>) k10, (Iterable) iterable);
            }
            return d10;
        }

        @Override
        public SortedSet<V> y(K k10) {
            SortedSet<V> x10;
            synchronized (this.f66168c) {
                x10 = R2.x(n().y((N2<K, V>) k10), this.f66168c);
            }
            return x10;
        }
    }

    public static final class x<R, C, V> extends p implements S2<R, C, V> {

        public class a implements InterfaceC15902t<Map<C, V>, Map<C, V>> {
            public a() {
            }

            @Override
            public Map<C, V> apply(Map<C, V> map) {
                return R2.l(map, x.this.f66168c);
            }
        }

        public class b implements InterfaceC15902t<Map<R, V>, Map<R, V>> {
            public b() {
            }

            @Override
            public Map<R, V> apply(Map<R, V> map) {
                return R2.l(map, x.this.f66168c);
            }
        }

        public x(S2<R, C, V> s22, @CheckForNull Object obj) {
            super(s22, obj);
        }

        @Override
        public Map<C, Map<R, V>> A() {
            Map<C, Map<R, V>> l10;
            synchronized (this.f66168c) {
                l10 = R2.l(Q1.B0(m().A(), new b()), this.f66168c);
            }
            return l10;
        }

        @Override
        public Map<R, V> B(C c10) {
            Map<R, V> l10;
            synchronized (this.f66168c) {
                l10 = R2.l(m().B(c10), this.f66168c);
            }
            return l10;
        }

        @Override
        @CheckForNull
        public V L(R r10, C c10, V v10) {
            V L10;
            synchronized (this.f66168c) {
                L10 = m().L(r10, c10, v10);
            }
            return L10;
        }

        @Override
        public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
            boolean Q10;
            synchronized (this.f66168c) {
                Q10 = m().Q(obj, obj2);
            }
            return Q10;
        }

        @Override
        public void Y(S2<? extends R, ? extends C, ? extends V> s22) {
            synchronized (this.f66168c) {
                m().Y(s22);
            }
        }

        @Override
        public Set<S2.a<R, C, V>> c0() {
            Set<S2.a<R, C, V>> u10;
            synchronized (this.f66168c) {
                u10 = R2.u(m().c0(), this.f66168c);
            }
            return u10;
        }

        @Override
        public void clear() {
            synchronized (this.f66168c) {
                m().clear();
            }
        }

        @Override
        public boolean containsValue(@CheckForNull Object obj) {
            boolean containsValue;
            synchronized (this.f66168c) {
                containsValue = m().containsValue(obj);
            }
            return containsValue;
        }

        @Override
        public Set<C> d0() {
            Set<C> u10;
            synchronized (this.f66168c) {
                u10 = R2.u(m().d0(), this.f66168c);
            }
            return u10;
        }

        @Override
        @CheckForNull
        public V e(@CheckForNull Object obj, @CheckForNull Object obj2) {
            V e10;
            synchronized (this.f66168c) {
                e10 = m().e(obj, obj2);
            }
            return e10;
        }

        @Override
        public boolean e0(@CheckForNull Object obj) {
            boolean e02;
            synchronized (this.f66168c) {
                e02 = m().e0(obj);
            }
            return e02;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            boolean equals;
            if (this == obj) {
                return true;
            }
            synchronized (this.f66168c) {
                equals = m().equals(obj);
            }
            return equals;
        }

        @Override
        public boolean g(@CheckForNull Object obj) {
            boolean g10;
            synchronized (this.f66168c) {
                g10 = m().g(obj);
            }
            return g10;
        }

        @Override
        public int hashCode() {
            int hashCode;
            synchronized (this.f66168c) {
                hashCode = m().hashCode();
            }
            return hashCode;
        }

        @Override
        public Map<C, V> i0(R r10) {
            Map<C, V> l10;
            synchronized (this.f66168c) {
                l10 = R2.l(m().i0(r10), this.f66168c);
            }
            return l10;
        }

        @Override
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f66168c) {
                isEmpty = m().isEmpty();
            }
            return isEmpty;
        }

        @Override
        public S2<R, C, V> m() {
            return (S2) super.m();
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            V remove;
            synchronized (this.f66168c) {
                remove = m().remove(obj, obj2);
            }
            return remove;
        }

        @Override
        public int size() {
            int size;
            synchronized (this.f66168c) {
                size = m().size();
            }
            return size;
        }

        @Override
        public Map<R, Map<C, V>> u() {
            Map<R, Map<C, V>> l10;
            synchronized (this.f66168c) {
                l10 = R2.l(Q1.B0(m().u(), new a()), this.f66168c);
            }
            return l10;
        }

        @Override
        public Collection<V> values() {
            Collection<V> h10;
            synchronized (this.f66168c) {
                h10 = R2.h(m().values(), this.f66168c);
            }
            return h10;
        }

        @Override
        public Set<R> x() {
            Set<R> u10;
            synchronized (this.f66168c) {
                u10 = R2.u(m().x(), this.f66168c);
            }
            return u10;
        }
    }

    public static <E> Collection<E> A(Collection<E> collection, @CheckForNull Object obj) {
        return collection instanceof SortedSet ? x((SortedSet) collection, obj) : collection instanceof Set ? u((Set) collection, obj) : collection instanceof List ? j((List) collection, obj) : h(collection, obj);
    }

    public static <E> Set<E> B(Set<E> set, @CheckForNull Object obj) {
        return set instanceof SortedSet ? x((SortedSet) set, obj) : u(set, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> InterfaceC12582w<K, V> g(InterfaceC12582w<K, V> interfaceC12582w, @CheckForNull Object obj) {
        return ((interfaceC12582w instanceof e) || (interfaceC12582w instanceof AbstractC12497a1)) ? interfaceC12582w : new e(interfaceC12582w, obj, null);
    }

    public static <E> Collection<E> h(Collection<E> collection, @CheckForNull Object obj) {
        return new f(collection, obj);
    }

    public static <E> Deque<E> i(Deque<E> deque, @CheckForNull Object obj) {
        return new g(deque, obj);
    }

    public static <E> List<E> j(List<E> list, @CheckForNull Object obj) {
        return list instanceof RandomAccess ? new r(list, obj) : new i(list, obj);
    }

    public static <K, V> L1<K, V> k(L1<K, V> l12, @CheckForNull Object obj) {
        return ((l12 instanceof j) || (l12 instanceof AbstractC12578v)) ? l12 : new j(l12, obj);
    }

    @v2.d
    public static <K, V> Map<K, V> l(Map<K, V> map, @CheckForNull Object obj) {
        return new k(map, obj);
    }

    public static <K, V> S1<K, V> m(S1<K, V> s12, @CheckForNull Object obj) {
        return ((s12 instanceof l) || (s12 instanceof AbstractC12578v)) ? s12 : new l(s12, obj);
    }

    public static <E> V1<E> n(V1<E> v12, @CheckForNull Object obj) {
        return ((v12 instanceof m) || (v12 instanceof AbstractC12549n1)) ? v12 : new m(v12, obj);
    }

    @v2.c
    public static <K, V> NavigableMap<K, V> o(NavigableMap<K, V> navigableMap) {
        return p(navigableMap, null);
    }

    @v2.c
    public static <K, V> NavigableMap<K, V> p(NavigableMap<K, V> navigableMap, @CheckForNull Object obj) {
        return new n(navigableMap, obj);
    }

    @v2.c
    public static <E> NavigableSet<E> q(NavigableSet<E> navigableSet) {
        return r(navigableSet, null);
    }

    @v2.c
    public static <E> NavigableSet<E> r(NavigableSet<E> navigableSet, @CheckForNull Object obj) {
        return new o(navigableSet, obj);
    }

    @CheckForNull
    @v2.c
    public static <K, V> Map.Entry<K, V> s(@CheckForNull Map.Entry<K, V> entry, @CheckForNull Object obj) {
        if (entry == null) {
            return null;
        }
        return new h(entry, obj);
    }

    public static <E> Queue<E> t(Queue<E> queue, @CheckForNull Object obj) {
        return queue instanceof q ? queue : new q(queue, obj);
    }

    @v2.d
    public static <E> Set<E> u(Set<E> set, @CheckForNull Object obj) {
        return new s(set, obj);
    }

    public static <K, V> C2<K, V> v(C2<K, V> c22, @CheckForNull Object obj) {
        return ((c22 instanceof t) || (c22 instanceof AbstractC12578v)) ? c22 : new t(c22, obj);
    }

    public static <K, V> SortedMap<K, V> w(SortedMap<K, V> sortedMap, @CheckForNull Object obj) {
        return new u(sortedMap, obj);
    }

    public static <E> SortedSet<E> x(SortedSet<E> sortedSet, @CheckForNull Object obj) {
        return new v(sortedSet, obj);
    }

    public static <K, V> N2<K, V> y(N2<K, V> n22, @CheckForNull Object obj) {
        return n22 instanceof w ? n22 : new w(n22, obj);
    }

    public static <R, C, V> S2<R, C, V> z(S2<R, C, V> s22, @CheckForNull Object obj) {
        return new x(s22, obj);
    }

    @v2.d
    @v2.c
    public static class n<K, V> extends u<K, V> implements NavigableMap<K, V> {

        public static final long f66160m = 0;

        @CheckForNull
        public transient NavigableSet<K> f66161j;

        @CheckForNull
        public transient NavigableMap<K, V> f66162k;

        @CheckForNull
        public transient NavigableSet<K> f66163l;

        public n(NavigableMap<K, V> navigableMap, @CheckForNull Object obj) {
            super(navigableMap, obj);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> ceilingEntry(K k10) {
            Map.Entry<K, V> s10;
            synchronized (this.f66168c) {
                s10 = R2.s(n().ceilingEntry(k10), this.f66168c);
            }
            return s10;
        }

        @Override
        @CheckForNull
        public K ceilingKey(K k10) {
            K ceilingKey;
            synchronized (this.f66168c) {
                ceilingKey = n().ceilingKey(k10);
            }
            return ceilingKey;
        }

        @Override
        public NavigableSet<K> descendingKeySet() {
            synchronized (this.f66168c) {
                try {
                    NavigableSet<K> navigableSet = this.f66161j;
                    if (navigableSet != null) {
                        return navigableSet;
                    }
                    NavigableSet<K> r10 = R2.r(n().descendingKeySet(), this.f66168c);
                    this.f66161j = r10;
                    return r10;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public NavigableMap<K, V> descendingMap() {
            synchronized (this.f66168c) {
                try {
                    NavigableMap<K, V> navigableMap = this.f66162k;
                    if (navigableMap != null) {
                        return navigableMap;
                    }
                    NavigableMap<K, V> p10 = R2.p(n().descendingMap(), this.f66168c);
                    this.f66162k = p10;
                    return p10;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> firstEntry() {
            Map.Entry<K, V> s10;
            synchronized (this.f66168c) {
                s10 = R2.s(n().firstEntry(), this.f66168c);
            }
            return s10;
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> floorEntry(K k10) {
            Map.Entry<K, V> s10;
            synchronized (this.f66168c) {
                s10 = R2.s(n().floorEntry(k10), this.f66168c);
            }
            return s10;
        }

        @Override
        @CheckForNull
        public K floorKey(K k10) {
            K floorKey;
            synchronized (this.f66168c) {
                floorKey = n().floorKey(k10);
            }
            return floorKey;
        }

        @Override
        public NavigableMap<K, V> headMap(K k10, boolean z10) {
            NavigableMap<K, V> p10;
            synchronized (this.f66168c) {
                p10 = R2.p(n().headMap(k10, z10), this.f66168c);
            }
            return p10;
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> higherEntry(K k10) {
            Map.Entry<K, V> s10;
            synchronized (this.f66168c) {
                s10 = R2.s(n().higherEntry(k10), this.f66168c);
            }
            return s10;
        }

        @Override
        @CheckForNull
        public K higherKey(K k10) {
            K higherKey;
            synchronized (this.f66168c) {
                higherKey = n().higherKey(k10);
            }
            return higherKey;
        }

        @Override
        public Set<K> o() {
            return navigableKeySet();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> lastEntry() {
            Map.Entry<K, V> s10;
            synchronized (this.f66168c) {
                s10 = R2.s(n().lastEntry(), this.f66168c);
            }
            return s10;
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> lowerEntry(K k10) {
            Map.Entry<K, V> s10;
            synchronized (this.f66168c) {
                s10 = R2.s(n().lowerEntry(k10), this.f66168c);
            }
            return s10;
        }

        @Override
        @CheckForNull
        public K lowerKey(K k10) {
            K lowerKey;
            synchronized (this.f66168c) {
                lowerKey = n().lowerKey(k10);
            }
            return lowerKey;
        }

        @Override
        public NavigableSet<K> navigableKeySet() {
            synchronized (this.f66168c) {
                try {
                    NavigableSet<K> navigableSet = this.f66163l;
                    if (navigableSet != null) {
                        return navigableSet;
                    }
                    NavigableSet<K> r10 = R2.r(n().navigableKeySet(), this.f66168c);
                    this.f66163l = r10;
                    return r10;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> pollFirstEntry() {
            Map.Entry<K, V> s10;
            synchronized (this.f66168c) {
                s10 = R2.s(n().pollFirstEntry(), this.f66168c);
            }
            return s10;
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> pollLastEntry() {
            Map.Entry<K, V> s10;
            synchronized (this.f66168c) {
                s10 = R2.s(n().pollLastEntry(), this.f66168c);
            }
            return s10;
        }

        @Override
        public NavigableMap<K, V> m() {
            return (NavigableMap) super.m();
        }

        @Override
        public NavigableMap<K, V> subMap(K k10, boolean z10, K k11, boolean z11) {
            NavigableMap<K, V> p10;
            synchronized (this.f66168c) {
                p10 = R2.p(n().subMap(k10, z10, k11, z11), this.f66168c);
            }
            return p10;
        }

        @Override
        public NavigableMap<K, V> tailMap(K k10, boolean z10) {
            NavigableMap<K, V> p10;
            synchronized (this.f66168c) {
                p10 = R2.p(n().tailMap(k10, z10), this.f66168c);
            }
            return p10;
        }

        @Override
        public SortedMap<K, V> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override
        public SortedMap<K, V> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override
        public SortedMap<K, V> tailMap(K k10) {
            return tailMap(k10, true);
        }
    }

    @v2.d
    @v2.c
    public static class o<E> extends v<E> implements NavigableSet<E> {

        public static final long f66164i = 0;

        @CheckForNull
        public transient NavigableSet<E> f66165h;

        public o(NavigableSet<E> navigableSet, @CheckForNull Object obj) {
            super(navigableSet, obj);
        }

        @Override
        @CheckForNull
        public E ceiling(E e10) {
            E ceiling;
            synchronized (this.f66168c) {
                ceiling = m().ceiling(e10);
            }
            return ceiling;
        }

        @Override
        public Iterator<E> descendingIterator() {
            return m().descendingIterator();
        }

        @Override
        public NavigableSet<E> descendingSet() {
            synchronized (this.f66168c) {
                try {
                    NavigableSet<E> navigableSet = this.f66165h;
                    if (navigableSet != null) {
                        return navigableSet;
                    }
                    NavigableSet<E> r10 = R2.r(m().descendingSet(), this.f66168c);
                    this.f66165h = r10;
                    return r10;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        @CheckForNull
        public E floor(E e10) {
            E floor;
            synchronized (this.f66168c) {
                floor = m().floor(e10);
            }
            return floor;
        }

        @Override
        public NavigableSet<E> headSet(E e10, boolean z10) {
            NavigableSet<E> r10;
            synchronized (this.f66168c) {
                r10 = R2.r(m().headSet(e10, z10), this.f66168c);
            }
            return r10;
        }

        @Override
        @CheckForNull
        public E higher(E e10) {
            E higher;
            synchronized (this.f66168c) {
                higher = m().higher(e10);
            }
            return higher;
        }

        @Override
        @CheckForNull
        public E lower(E e10) {
            E lower;
            synchronized (this.f66168c) {
                lower = m().lower(e10);
            }
            return lower;
        }

        @Override
        @CheckForNull
        public E pollFirst() {
            E pollFirst;
            synchronized (this.f66168c) {
                pollFirst = m().pollFirst();
            }
            return pollFirst;
        }

        @Override
        @CheckForNull
        public E pollLast() {
            E pollLast;
            synchronized (this.f66168c) {
                pollLast = m().pollLast();
            }
            return pollLast;
        }

        @Override
        public NavigableSet<E> m() {
            return (NavigableSet) super.m();
        }

        @Override
        public NavigableSet<E> subSet(E e10, boolean z10, E e11, boolean z11) {
            NavigableSet<E> r10;
            synchronized (this.f66168c) {
                r10 = R2.r(m().subSet(e10, z10, e11, z11), this.f66168c);
            }
            return r10;
        }

        @Override
        public NavigableSet<E> tailSet(E e10, boolean z10) {
            NavigableSet<E> r10;
            synchronized (this.f66168c) {
                r10 = R2.r(m().tailSet(e10, z10), this.f66168c);
            }
            return r10;
        }

        @Override
        public SortedSet<E> headSet(E e10) {
            return headSet(e10, false);
        }

        @Override
        public SortedSet<E> tailSet(E e10) {
            return tailSet(e10, true);
        }

        @Override
        public SortedSet<E> subSet(E e10, E e11) {
            return subSet(e10, true, e11, false);
        }
    }

    public static class c<K, V> extends s<Map.Entry<K, Collection<V>>> {

        public static final long f66133g = 0;

        public class a extends V2<Map.Entry<K, Collection<V>>, Map.Entry<K, Collection<V>>> {

            public class C0992a extends D0<K, Collection<V>> {

                public final Map.Entry f66135b;

                public C0992a(Map.Entry entry) {
                    this.f66135b = entry;
                }

                @Override
                public Map.Entry<K, Collection<V>> k0() {
                    return this.f66135b;
                }

                @Override
                public Collection<V> getValue() {
                    return R2.A((Collection) this.f66135b.getValue(), c.this.f66168c);
                }
            }

            public a(Iterator it) {
                super(it);
            }

            @Override
            public Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
                return new C0992a(entry);
            }
        }

        public c(Set<Map.Entry<K, Collection<V>>> set, @CheckForNull Object obj) {
            super(set, obj);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            boolean p10;
            synchronized (this.f66168c) {
                p10 = Q1.p(n(), obj);
            }
            return p10;
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            boolean b10;
            synchronized (this.f66168c) {
                b10 = C.b(n(), collection);
            }
            return b10;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            boolean g10;
            if (obj == this) {
                return true;
            }
            synchronized (this.f66168c) {
                g10 = D2.g(n(), obj);
            }
            return g10;
        }

        @Override
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new a(super.iterator());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            boolean k02;
            synchronized (this.f66168c) {
                k02 = Q1.k0(n(), obj);
            }
            return k02;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean V10;
            synchronized (this.f66168c) {
                V10 = E1.V(n().iterator(), collection);
            }
            return V10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            boolean X10;
            synchronized (this.f66168c) {
                X10 = E1.X(n().iterator(), collection);
            }
            return X10;
        }

        @Override
        public Object[] toArray() {
            Object[] l10;
            synchronized (this.f66168c) {
                l10 = C12506c2.l(n());
            }
            return l10;
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.f66168c) {
                tArr2 = (T[]) C12506c2.m(n(), tArr);
            }
            return tArr2;
        }
    }
}
