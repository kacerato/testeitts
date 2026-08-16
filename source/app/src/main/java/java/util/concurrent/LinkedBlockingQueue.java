package java.util.concurrent;

import java.io.Serializable;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/LinkedBlockingQueue.class
 */
public class LinkedBlockingQueue<E> extends AbstractQueue<E> implements BlockingQueue<E>, Serializable {
    public LinkedBlockingQueue() {
        throw new RuntimeException("Stub!");
    }

    public LinkedBlockingQueue(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public LinkedBlockingQueue(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int size() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int remainingCapacity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void put(E e10) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean offer(E e10, long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean offer(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E take() throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E poll(long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E poll() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E peek() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean remove(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean contains(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object[] toArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> T[] toArray(T[] a10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int drainTo(Collection<? super E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int drainTo(Collection<? super E> c10, int maxElements) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Iterator<E> iterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Spliterator<E> spliterator() {
        throw new RuntimeException("Stub!");
    }
}
