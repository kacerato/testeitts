package java.util.concurrent;

import java.util.Collection;
import java.util.Queue;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/BlockingQueue.class
 */
public interface BlockingQueue<E> extends Queue<E> {
    @Override
    boolean add(E e10);

    @Override
    boolean offer(E e10);

    void put(E e10) throws InterruptedException;

    boolean offer(E e10, long j10, TimeUnit timeUnit) throws InterruptedException;

    E take() throws InterruptedException;

    E poll(long j10, TimeUnit timeUnit) throws InterruptedException;

    int remainingCapacity();

    @Override
    boolean remove(Object obj);

    @Override
    boolean contains(Object obj);

    int drainTo(Collection<? super E> collection);

    int drainTo(Collection<? super E> collection, int i10);
}
