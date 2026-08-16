package java.lang.ref;

import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.function.Function;
import jdk.internal.RequiresIdentity;
import jdk.internal.ref.CleanerImpl;

public final class Cleaner {
    final CleanerImpl impl = new CleanerImpl();

    public interface Cleanable {
        void clean();
    }

    static {
        CleanerImpl.setCleanerImplAccess(new Function<Cleaner, CleanerImpl>() {
            @Override
            public CleanerImpl apply(Cleaner cleaner) {
                return cleaner.impl;
            }
        });
    }

    private Cleaner() {
    }

    public static Cleaner create() {
        Cleaner cleaner = new Cleaner();
        cleaner.impl.start(cleaner, (ThreadFactory) null);
        return cleaner;
    }

    public static Cleaner create(ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory");
        Cleaner cleaner = new Cleaner();
        cleaner.impl.start(cleaner, threadFactory);
        return cleaner;
    }

    public Cleanable register(@RequiresIdentity Object obj, Runnable action) {
        Objects.requireNonNull(obj, "obj");
        Objects.requireNonNull(action, "action");
        return new CleanerImpl.PhantomCleanableRef(obj, this, action);
    }
}
