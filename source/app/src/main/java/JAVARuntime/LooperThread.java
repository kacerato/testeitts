package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:LooperThread.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:LooperThread.class
  classes.dex
 */
public class LooperThread {

    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override
        public void run() {
            java.lang.Runnable runnable;
            do {
                synchronized (LooperThread.access$000(LooperThread.this)) {
                    try {
                        runnable = !LooperThread.access$100(LooperThread.this).isEmpty() ? (java.lang.Runnable) LooperThread.access$100(LooperThread.this).remove(0) : null;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (runnable != null) {
                    runnable.run();
                }
            } while (!LooperThread.access$200(LooperThread.this).get());
            synchronized (LooperThread.access$000(LooperThread.this)) {
                LooperThread.access$302(LooperThread.this, null);
                LooperThread.access$200(LooperThread.this).set(false);
            }
        }
    }

    public void start() {
    }

    public void stop() {
    }

    public void execute(java.lang.Runnable runnable) {
    }
}
