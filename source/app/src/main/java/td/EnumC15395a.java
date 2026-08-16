package td;

import java.util.concurrent.ThreadFactory;

public enum EnumC15395a implements ThreadFactory {
    INSTANCE;

    @Override
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setDaemon(true);
        return thread;
    }
}
