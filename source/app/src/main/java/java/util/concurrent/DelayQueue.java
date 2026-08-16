package java.util.concurrent;

import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Delayed;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/DelayQueue.class
 */
public class DelayQueue<E extends Delayed> extends AbstractQueue<E> implements BlockingQueue<E> {
    public DelayQueue() {
        throw new RuntimeException("Stub!");
    }

    public DelayQueue(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean add(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean offer(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void put(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean offer(E e10, long timeout, TimeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E poll() {
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
    public E peek() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int size() {
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
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int remainingCapacity() {
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
    public boolean remove(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Iterator<E> iterator() {
        throw new RuntimeException("Stub!");
    }
}
