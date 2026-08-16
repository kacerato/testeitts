package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/Phaser.class
 */
public class Phaser {
    public Phaser() {
        throw new RuntimeException("Stub!");
    }

    public Phaser(int parties) {
        throw new RuntimeException("Stub!");
    }

    public Phaser(Phaser parent) {
        throw new RuntimeException("Stub!");
    }

    public Phaser(Phaser parent, int parties) {
        throw new RuntimeException("Stub!");
    }

    public int register() {
        throw new RuntimeException("Stub!");
    }

    public int bulkRegister(int parties) {
        throw new RuntimeException("Stub!");
    }

    public int arrive() {
        throw new RuntimeException("Stub!");
    }

    public int arriveAndDeregister() {
        throw new RuntimeException("Stub!");
    }

    public int arriveAndAwaitAdvance() {
        throw new RuntimeException("Stub!");
    }

    public int awaitAdvance(int phase) {
        throw new RuntimeException("Stub!");
    }

    public int awaitAdvanceInterruptibly(int phase) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public int awaitAdvanceInterruptibly(int phase, long timeout, TimeUnit unit) throws InterruptedException, TimeoutException {
        throw new RuntimeException("Stub!");
    }

    public void forceTermination() {
        throw new RuntimeException("Stub!");
    }

    public final int getPhase() {
        throw new RuntimeException("Stub!");
    }

    public int getRegisteredParties() {
        throw new RuntimeException("Stub!");
    }

    public int getArrivedParties() {
        throw new RuntimeException("Stub!");
    }

    public int getUnarrivedParties() {
        throw new RuntimeException("Stub!");
    }

    public Phaser getParent() {
        throw new RuntimeException("Stub!");
    }

    public Phaser getRoot() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTerminated() {
        throw new RuntimeException("Stub!");
    }

    protected boolean onAdvance(int phase, int registeredParties) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
