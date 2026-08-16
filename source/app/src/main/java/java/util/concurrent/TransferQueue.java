package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/TransferQueue.class
 */
public interface TransferQueue<E> extends BlockingQueue<E> {
    boolean tryTransfer(E e10);

    void transfer(E e10) throws InterruptedException;

    boolean tryTransfer(E e10, long j10, TimeUnit timeUnit) throws InterruptedException;

    boolean hasWaitingConsumer();

    int getWaitingConsumerCount();
}
