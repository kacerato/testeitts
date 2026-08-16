package org.openjdk.tools.javac.util;

import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class ListBuffer<A> extends AbstractQueue<A> {
    private int count;
    private List<A> elems;
    private List<A> last;
    private boolean shared;

    public ListBuffer() {
        clear();
    }

    private void copy() {
        if (!this.elems.nonEmpty()) {
            return;
        }
        List<A> list = this.elems;
        List<A> of2 = List.of(list.head);
        this.last = of2;
        this.elems = of2;
        while (true) {
            list = list.tail;
            if (!list.nonEmpty()) {
                return;
            }
            this.last.tail = List.of(list.head);
            this.last = this.last.tail;
        }
    }

    public static <T> ListBuffer<T> of(T t10) {
        ListBuffer<T> listBuffer = new ListBuffer<>();
        listBuffer.add(t10);
        return listBuffer;
    }

    @Override
    public boolean add(A a10) {
        append(a10);
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends A> collection) {
        Iterator<? extends A> it = collection.iterator();
        while (it.hasNext()) {
            append(it.next());
        }
        return true;
    }

    public ListBuffer<A> append(A a10) {
        Assert.checkNonNull(a10);
        if (this.shared) {
            copy();
        }
        List<A> of2 = List.of(a10);
        List<A> list = this.last;
        if (list != null) {
            list.tail = of2;
            this.last = of2;
        } else {
            this.last = of2;
            this.elems = of2;
        }
        this.count++;
        return this;
    }

    public ListBuffer<A> appendArray(A[] aArr) {
        for (A a10 : aArr) {
            append(a10);
        }
        return this;
    }

    public ListBuffer<A> appendList(List<A> list) {
        while (list.nonEmpty()) {
            append(list.head);
            list = list.tail;
        }
        return this;
    }

    @Override
    public final void clear() {
        this.elems = List.nil();
        this.last = null;
        this.count = 0;
        this.shared = false;
    }

    @Override
    public boolean contains(Object obj) {
        return this.elems.contains(obj);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public A first() {
        return this.elems.head;
    }

    @Override
    public boolean isEmpty() {
        return this.count == 0;
    }

    @Override
    public Iterator<A> iterator() {
        return new Iterator<A>() {
            List<A> elems;

            {
                this.elems = ListBuffer.this.elems;
            }

            @Override
            public boolean hasNext() {
                return !this.elems.isEmpty();
            }

            @Override
            public A next() {
                if (this.elems.isEmpty()) {
                    throw new NoSuchElementException();
                }
                List<A> list = this.elems;
                A a10 = list.head;
                this.elems = list.tail;
                return a10;
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    public A last() {
        List<A> list = this.last;
        if (list != null) {
            return list.head;
        }
        return null;
    }

    public int length() {
        return this.count;
    }

    public A next() {
        List<A> list = this.elems;
        A a10 = list.head;
        if (!list.isEmpty()) {
            List<A> list2 = this.elems.tail;
            this.elems = list2;
            if (list2.isEmpty()) {
                this.last = null;
            }
            this.count--;
        }
        return a10;
    }

    public boolean nonEmpty() {
        return this.count != 0;
    }

    @Override
    public boolean offer(A a10) {
        append(a10);
        return true;
    }

    @Override
    public A peek() {
        return first();
    }

    @Override
    public A poll() {
        return next();
    }

    public ListBuffer<A> prepend(A a10) {
        List<A> prepend = this.elems.prepend(a10);
        this.elems = prepend;
        if (this.last == null) {
            this.last = prepend;
        }
        this.count++;
        return this;
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.count;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.elems.toArray(tArr);
    }

    public List<A> toList() {
        this.shared = true;
        return this.elems;
    }

    @Override
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    public ListBuffer<A> appendList(ListBuffer<A> listBuffer) {
        return appendList(listBuffer.toList());
    }
}
