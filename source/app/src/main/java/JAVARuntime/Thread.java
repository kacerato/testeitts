package JAVARuntime;

import d8.m;
import java.lang.Thread;
import o8.InterfaceC14490d;
import ob.b;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Thread.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Thread.class
  classes.dex
 */
@ClassCategory(cat = {"Thread"})
public class Thread {
    private transient boolean interruptCalled = false;

    public class AnonymousClass1 implements Runnable {
        final Runnable val$runnable;

        public AnonymousClass1(final Runnable val$runnable) {
            this.val$runnable = val$runnable;
        }

        @Override
        public void run() {
            m.e(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass1.this.val$runnable.run();
                }
            });
        }
    }

    public class AnonymousClass10 implements java.lang.Runnable {
        public AnonymousClass10() {
        }

        @Override
        public void run() {
            m.e(new b(Thread.this));
        }
    }

    public class AnonymousClass11 implements java.lang.Runnable {
        public AnonymousClass11() {
        }

        @Override
        public void run() {
            m.e(new b(Thread.this));
        }
    }

    public class AnonymousClass12 implements Thread.UncaughtExceptionHandler {
        final UncaughtExceptionHandler val$eh;

        public AnonymousClass12(final UncaughtExceptionHandler val$eh) {
            this.val$eh = val$eh;
        }

        @Override
        public void uncaughtException(java.lang.Thread t10, Throwable e10) {
            this.val$eh.uncaughtException(t10, e10);
        }
    }

    public class AnonymousClass2 implements b.a {
        final Runnable val$runnable;

        public AnonymousClass2(final Runnable val$runnable) {
            this.val$runnable = val$runnable;
        }

        @Override
        public boolean run() {
            m.e(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass2.this.val$runnable.run();
                }
            });
            return false;
        }
    }

    public class AnonymousClass3 implements Runnable {
        final Runnable val$runnable;

        public AnonymousClass3(final Runnable val$runnable) {
            this.val$runnable = val$runnable;
        }

        @Override
        public void run() {
            m.e(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass3.this.val$runnable.run();
                }
            });
        }
    }

    public class AnonymousClass4 implements java.lang.Runnable {
        public AnonymousClass4() {
        }

        @Override
        public void run() {
            m.e(new b(Thread.this));
        }
    }

    public class AnonymousClass5 implements java.lang.Runnable {
        public AnonymousClass5() {
        }

        @Override
        public void run() {
            m.e(new b(Thread.this));
        }
    }

    public class AnonymousClass6 implements java.lang.Runnable {
        public AnonymousClass6() {
        }

        @Override
        public void run() {
            m.e(new b(Thread.this));
        }
    }

    public class AnonymousClass7 implements java.lang.Runnable {
        public AnonymousClass7() {
        }

        @Override
        public void run() {
            m.e(new b(Thread.this));
        }
    }

    public class AnonymousClass8 implements java.lang.Runnable {
        public AnonymousClass8() {
        }

        @Override
        public void run() {
            m.e(new b(Thread.this));
        }
    }

    public class AnonymousClass9 implements java.lang.Runnable {
        public AnonymousClass9() {
        }

        @Override
        public void run() {
            m.e(new b(Thread.this));
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Thread$State.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Thread$State.class
  classes.dex
 */
    public enum State {
        NEW,
        RUNNABLE,
        BLOCKED,
        WAITING,
        TIMED_WAITING,
        TERMINATED;

        public static State[] valuesCustom() {
            State[] valuesCustom = values();
            int length = valuesCustom.length;
            State[] stateArr = new State[length];
            java.lang.System.arraycopy(valuesCustom, 0, stateArr, 0, length);
            return stateArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Thread$UncaughtExceptionHandler.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Thread$UncaughtExceptionHandler.class
  classes.dex
 */
    public interface UncaughtExceptionHandler {
        void uncaughtException(java.lang.Thread thread, Throwable th2);
    }

    public static void runOnEngine(Runnable runnable) {
    }

    public static void runOnEngine(float f10, Runnable runnable) {
    }

    public static void runOnUIThread(Runnable runnable) {
    }

    public Thread() {
    }

    public Thread(Runnable runnable) {
    }

    public Thread(ThreadGroup threadGroup, Runnable runnable) {
    }

    public Thread(String str) {
    }

    public Thread(ThreadGroup threadGroup, String str) {
    }

    public Thread(Runnable runnable, String str) {
    }

    public Thread(ThreadGroup threadGroup, Runnable runnable, String str) {
    }

    public Thread(ThreadGroup threadGroup, Runnable runnable, String str, long j10) {
    }

    public void start() {
    }

    public void run() {
    }

    public boolean isInterruptCalled() {
        return this.interruptCalled;
    }

    public void interrupt() {
    }

    public boolean isInterrupted() {
        return false;
    }

    public String toString() {
        return null;
    }

    public ClassLoader getContextClassLoader() {
        return null;
    }

    public void setContextClassLoader(ClassLoader classLoader) {
    }

    public StackTraceElement[] getStackTrace() {
        return null;
    }

    public long getId() {
        return 0L;
    }

    public State getState() {
        return null;
    }

    public UncaughtExceptionHandler getUncaughtExceptionHandler() {
        return null;
    }

    public void setUncaughtExceptionHandler(UncaughtExceptionHandler uncaughtExceptionHandler) {
    }

    public void join() throws InterruptedException {
    }

    public void join(long j10) throws InterruptedException {
    }

    public void join(long j10, int i10) throws InterruptedException {
    }

    public boolean isAlive() {
        return false;
    }

    public void setPriority(int i10) {
    }

    public int getPriority() {
        return 0;
    }

    public void setName(String str) {
    }

    public String getName() {
        return null;
    }

    public ThreadGroup getThreadGroup() {
        return null;
    }

    public static void sleep(long j10) {
    }

    public static void sleep(long j10, int i10) {
    }

    public static void dumpStack() {
    }
}
