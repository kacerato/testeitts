package java.lang;

public abstract class BaseVirtualThread extends Thread {
    public abstract void park();

    public abstract void parkNanos(long j10);

    public abstract void unpark();

    public BaseVirtualThread(String name, int characteristics, boolean bound) {
        super(name, characteristics, bound);
    }
}
