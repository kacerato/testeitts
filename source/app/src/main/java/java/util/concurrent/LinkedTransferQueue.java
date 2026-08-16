package java.util.concurrent;

import java.io.Serializable;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/LinkedTransferQueue.class
 */
public class LinkedTransferQueue<E> extends AbstractQueue<E> implements TransferQueue<E>, Serializable {
    public LinkedTransferQueue() {
        throw new RuntimeException("Stub!");
    }

    public LinkedTransferQueue(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
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
    public Spliterator<E> spliterator() {
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
    public boolean offer(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean add(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean tryTransfer(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void transfer(E e10) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean tryTransfer(E e10, long timeout, TimeUnit unit) throws InterruptedException {
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
    public E peek() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasWaitingConsumer() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int size() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getWaitingConsumerCount() {
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
    public int remainingCapacity() {
        throw new RuntimeException("Stub!");
    }
}
