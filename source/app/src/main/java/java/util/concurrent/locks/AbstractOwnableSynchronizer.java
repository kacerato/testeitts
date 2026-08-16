package java.util.concurrent.locks;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/AbstractOwnableSynchronizer.class
 */
public abstract class AbstractOwnableSynchronizer implements Serializable {
    public AbstractOwnableSynchronizer() {
        throw new RuntimeException("Stub!");
    }

    public final void setExclusiveOwnerThread(Thread thread) {
        throw new RuntimeException("Stub!");
    }

    protected final Thread getExclusiveOwnerThread() {
        throw new RuntimeException("Stub!");
    }
}
