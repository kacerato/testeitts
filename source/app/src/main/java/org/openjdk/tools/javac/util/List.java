package org.openjdk.tools.javac.util;

import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
import org.openjdk.tools.doclint.DocLint;

public class List<A> extends AbstractCollection<A> implements java.util.List<A> {
    private static final Iterator<?> EMPTYITERATOR = new Iterator<Object>() {
        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    };
    private static final List<?> EMPTY_LIST;
    public A head;
    public List<A> tail;

    static {
        List list = null;
        EMPTY_LIST = new List<Object>(list, list) {
            @Override
            public boolean isEmpty() {
                return true;
            }

            @Override
            public List<Object> setTail(List<Object> list2) {
                throw new UnsupportedOperationException();
            }
        };
    }

    public List(A a10, List<A> list) {
        this.tail = list;
        this.head = a10;
    }

    public static <Z> Collector<Z, ListBuffer<Z>, List<Z>> collector() {
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return new ListBuffer();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((ListBuffer) obj).add(obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                ListBuffer lambda$collector$0;
                lambda$collector$0 = List.lambda$collector$0((ListBuffer) obj, (ListBuffer) obj2);
                return lambda$collector$0;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ListBuffer) obj).toList();
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> List<T> convert(Class<T> cls, List<?> list) {
        if (list == 0) {
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            cls.cast(it.next());
        }
        return list;
    }

    private static <A> Iterator<A> emptyIterator() {
        return (Iterator<A>) EMPTYITERATOR;
    }

    @Deprecated
    public static <A> List<A> fill(int i10, A a10) {
        List<A> nil = nil();
        int i11 = 0;
        while (i11 < i10) {
            i11++;
            nil = new List<>(a10, nil);
        }
        return nil;
    }

    public static <A> List<A> filter(List<A> list, A a10) {
        Assert.checkNonNull(a10);
        List nil = nil();
        Iterator<A> it = list.iterator();
        while (it.hasNext()) {
            A next = it.next();
            if (next != null && !next.equals(a10)) {
                nil = nil.prepend(next);
            }
        }
        return nil.reverse();
    }

    public static <A> List<A> from(A[] aArr) {
        List<A> nil = nil();
        if (aArr != null) {
            int length = aArr.length - 1;
            while (length >= 0) {
                List<A> list = new List<>(aArr[length], nil);
                length--;
                nil = list;
            }
        }
        return nil;
    }

    public static ListBuffer lambda$collector$0(ListBuffer listBuffer, ListBuffer listBuffer2) {
        listBuffer.addAll(listBuffer2);
        return listBuffer;
    }

    public static <A> List<A> nil() {
        return (List<A>) EMPTY_LIST;
    }

    public static <A> List<A> of(A a10) {
        return new List<>(a10, nil());
    }

    @Override
    public void add(int i10, A a10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(int i10, Collection<? extends A> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        throw new UnsupportedOperationException();
    }

    public List<A> append(A a10) {
        return of(a10).prependList(this);
    }

    public List<A> appendList(List<A> list) {
        return list.prependList(this);
    }

    @Override
    public boolean contains(Object obj) {
        for (List<A> list = this; list.tail != null; list = list.tail) {
            if (obj == null) {
                if (list.head == null) {
                    return true;
                }
            } else if (list.head.equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public List<A> diff(List<A> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<A> it = iterator();
        while (it.hasNext()) {
            A next = it.next();
            if (!list.contains(next)) {
                listBuffer.append(next);
            }
        }
        return listBuffer.toList();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof List) {
            return equals(this, (List) obj);
        }
        if (!(obj instanceof java.util.List)) {
            return false;
        }
        Iterator it = ((java.util.List) obj).iterator();
        List<A> list = this;
        while (list.tail != null && it.hasNext()) {
            Object next = it.next();
            A a10 = list.head;
            if (a10 == null) {
                if (next != null) {
                    return false;
                }
                list = list.tail;
            } else {
                if (!a10.equals(next)) {
                    return false;
                }
                list = list.tail;
            }
        }
        return list.isEmpty() && !it.hasNext();
    }

    @Override
    public A get(int i10) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(String.valueOf(i10));
        }
        List<A> list = this;
        int i11 = i10;
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0 || list.isEmpty()) {
                break;
            }
            list = list.tail;
            i11 = i12;
        }
        if (!list.isEmpty()) {
            return list.head;
        }
        throw new IndexOutOfBoundsException("Index: " + i10 + ", Size: " + size());
    }

    @Override
    public int hashCode() {
        int i10 = 1;
        for (List<A> list = this; list.tail != null; list = list.tail) {
            int i11 = i10 * 31;
            A a10 = list.head;
            i10 = i11 + (a10 == null ? 0 : a10.hashCode());
        }
        return i10;
    }

    @Override
    public int indexOf(Object obj) {
        int i10 = 0;
        List<A> list = this;
        while (list.tail != null) {
            A a10 = list.head;
            if (a10 == null) {
                if (obj == null) {
                    return i10;
                }
                list = list.tail;
                i10++;
            } else {
                if (a10.equals(obj)) {
                    return i10;
                }
                list = list.tail;
                i10++;
            }
        }
        return -1;
    }

    public List<A> intersect(List<A> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<A> it = iterator();
        while (it.hasNext()) {
            A next = it.next();
            if (list.contains(next)) {
                listBuffer.append(next);
            }
        }
        return listBuffer.toList();
    }

    @Override
    public boolean isEmpty() {
        return this.tail == null;
    }

    @Override
    public Iterator<A> iterator() {
        return this.tail == null ? emptyIterator() : new Iterator<A>() {
            List<A> elems;

            {
                this.elems = List.this;
            }

            @Override
            public boolean hasNext() {
                return this.elems.tail != null;
            }

            @Override
            public A next() {
                List<A> list = this.elems;
                List<A> list2 = list.tail;
                if (list2 == null) {
                    throw new NoSuchElementException();
                }
                A a10 = list.head;
                this.elems = list2;
                return a10;
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    public A last() {
        A a10 = null;
        List<A> list = this;
        while (true) {
            List<A> list2 = list.tail;
            if (list2 == null) {
                return a10;
            }
            a10 = list.head;
            list = list2;
        }
    }

    @Override
    public int lastIndexOf(Object obj) {
        int i10 = -1;
        int i11 = 0;
        List<A> list = this;
        while (list.tail != null) {
            A a10 = list.head;
            if (a10 == null) {
                if (obj != null) {
                    list = list.tail;
                    i11++;
                }
                i10 = i11;
                list = list.tail;
                i11++;
            } else {
                if (!a10.equals(obj)) {
                    list = list.tail;
                    i11++;
                }
                i10 = i11;
                list = list.tail;
                i11++;
            }
        }
        return i10;
    }

    public int length() {
        int i10 = 0;
        List<A> list = this;
        while (true) {
            list = list.tail;
            if (list == null) {
                return i10;
            }
            i10++;
        }
    }

    @Override
    public ListIterator<A> listIterator() {
        return Collections.unmodifiableList(new ArrayList(this)).listIterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <Z> List<Z> map(Function<A, Z> function) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Object next = it.next();
            Object apply = function.apply(next);
            listBuffer.append(apply);
            z10 |= apply != next;
        }
        return z10 ? listBuffer.toList() : this;
    }

    public boolean nonEmpty() {
        return this.tail != null;
    }

    public List<A> prepend(A a10) {
        return new List<>(a10, this);
    }

    public List<A> prependList(List<A> list) {
        if (isEmpty()) {
            return list;
        }
        if (list.isEmpty()) {
            return this;
        }
        if (list.tail.isEmpty()) {
            return prepend(list.head);
        }
        List<A> reverse = list.reverse();
        Assert.check(reverse != list);
        List<A> list2 = this;
        while (reverse.nonEmpty()) {
            List<A> list3 = reverse.tail;
            reverse.setTail(list2);
            list2 = reverse;
            reverse = list3;
        }
        return list2;
    }

    @Override
    public A remove(int i10) {
        throw new UnsupportedOperationException();
    }

    public List<A> reverse() {
        if (isEmpty() || this.tail.isEmpty()) {
            return this;
        }
        List<A> nil = nil();
        List<A> list = this;
        while (list.nonEmpty()) {
            List<A> list2 = new List<>(list.head, nil);
            list = list.tail;
            nil = list2;
        }
        return nil;
    }

    @Override
    public A set(int i10, A a10) {
        throw new UnsupportedOperationException();
    }

    public List<A> setTail(List<A> list) {
        this.tail = list;
        return list;
    }

    @Override
    public int size() {
        return length();
    }

    @Override
    public java.util.List<A> subList(int i10, int i11) {
        if (i10 < 0 || i11 > size() || i10 > i11) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i11 - i10);
        List<A> list = this;
        for (int i12 = 0; list.tail != null && i12 != i11; i12++) {
            if (i12 >= i10) {
                arrayList.add(list.head);
            }
            list = list.tail;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public List<A> take(int i10) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<A> it = iterator();
        int i11 = 0;
        while (it.hasNext()) {
            A next = it.next();
            int i12 = i11 + 1;
            if (i11 == i10) {
                break;
            }
            listBuffer.append(next);
            i11 = i12;
        }
        return listBuffer.toList();
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        int i10 = 0;
        List<A> list = this;
        while (list.nonEmpty() && i10 < tArr.length) {
            tArr[i10] = list.head;
            list = list.tail;
            i10++;
        }
        if (list.isEmpty()) {
            if (i10 < tArr.length) {
                tArr[i10] = 0;
            }
            return tArr;
        }
        return (T[]) toArray((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size()));
    }

    public String toString(String str) {
        if (isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) this.head);
        for (List<A> list = this.tail; list.nonEmpty(); list = list.tail) {
            sb2.append(str);
            sb2.append((Object) list.head);
        }
        return sb2.toString();
    }

    public static <A> List<A> of(A a10, A a11) {
        return new List<>(a10, of(a11));
    }

    public List<A> appendList(ListBuffer<A> listBuffer) {
        return appendList(listBuffer.toList());
    }

    @Override
    public ListIterator<A> listIterator(int i10) {
        return Collections.unmodifiableList(new ArrayList(this)).listIterator(i10);
    }

    public static <A> List<A> of(A a10, A a11, A a12) {
        return new List<>(a10, of(a11, a12));
    }

    public static <A> List<A> from(Iterable<? extends A> iterable) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<? extends A> it = iterable.iterator();
        while (it.hasNext()) {
            listBuffer.append(it.next());
        }
        return listBuffer.toList();
    }

    public static <A> List<A> of(A a10, A a11, A a12, A... aArr) {
        return new List<>(a10, new List(a11, new List(a12, from(aArr))));
    }

    @Override
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0020, code lost:
    
        if (r0 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0024, code lost:
    
        if (r4.tail != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0026, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean equals(List<?> list, List<?> list2) {
        while (true) {
            List<?> list3 = list.tail;
            if (list3 == null || list2.tail == null) {
                break;
            }
            A a10 = list.head;
            if (a10 == null) {
                if (list2.head != null) {
                    return false;
                }
            } else if (!a10.equals(list2.head)) {
                return false;
            }
            list = (List<A>) list.tail;
            list2 = (List<A>) list2.tail;
        }
    }

    @Override
    public String toString() {
        return toString(DocLint.SEPARATOR);
    }
}
