package java.util.concurrent;

import java.util.Deque;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/BlockingDeque.class
 */
public interface BlockingDeque<E> extends BlockingQueue<E>, Deque<E> {
    @Override
    void addFirst(E e10);

    @Override
    void addLast(E e10);

    @Override
    boolean offerFirst(E e10);

    @Override
    boolean offerLast(E e10);

    void putFirst(E e10) throws InterruptedException;

    void putLast(E e10) throws InterruptedException;

    boolean offerFirst(E e10, long j10, TimeUnit timeUnit) throws InterruptedException;

    boolean offerLast(E e10, long j10, TimeUnit timeUnit) throws InterruptedException;

    E takeFirst() throws InterruptedException;

    E takeLast() throws InterruptedException;

    E pollFirst(long j10, TimeUnit timeUnit) throws InterruptedException;

    E pollLast(long j10, TimeUnit timeUnit) throws InterruptedException;

    @Override
    boolean removeFirstOccurrence(Object obj);

    @Override
    boolean removeLastOccurrence(Object obj);

    @Override
    boolean add(E e10);

    @Override
    boolean offer(E e10);

    @Override
    void put(E e10) throws InterruptedException;

    @Override
    boolean offer(E e10, long j10, TimeUnit timeUnit) throws InterruptedException;

    @Override
    E remove();

    @Override
    E poll();

    @Override
    E take() throws InterruptedException;

    @Override
    E poll(long j10, TimeUnit timeUnit) throws InterruptedException;

    @Override
    E element();

    @Override
    E peek();

    @Override
    boolean remove(Object obj);

    @Override
    boolean contains(Object obj);

    @Override
    int size();

    @Override
    Iterator<E> iterator();

    @Override
    void push(E e10);
}
