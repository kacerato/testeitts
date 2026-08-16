package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Deque.class
 */
public interface Deque<E> extends Queue<E> {
    void addFirst(E e10);

    void addLast(E e10);

    boolean offerFirst(E e10);

    boolean offerLast(E e10);

    E removeFirst();

    E removeLast();

    E pollFirst();

    E pollLast();

    E getFirst();

    E getLast();

    E peekFirst();

    E peekLast();

    boolean removeFirstOccurrence(Object obj);

    boolean removeLastOccurrence(Object obj);

    @Override
    boolean add(E e10);

    @Override
    boolean offer(E e10);

    @Override
    E remove();

    @Override
    E poll();

    @Override
    E element();

    @Override
    E peek();

    void push(E e10);

    E pop();

    @Override
    boolean remove(Object obj);

    @Override
    boolean contains(Object obj);

    @Override
    int size();

    @Override
    Iterator<E> iterator();

    Iterator<E> descendingIterator();
}
