package JAVARuntime;

import d8.m;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AsyncTask.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AsyncTask.class
  classes.dex
 */
@ClassCategory(cat = {"Async"})
public class AsyncTask {

    public class AnonymousClass1 implements Runnable {
        final AsyncRunnable val$asyncRunnable;
        final Object val$userData;

        public class C02621 implements InterfaceC14490d {
            public C02621() {
            }

            @Override
            public void run() {
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                final Object onBackground = anonymousClass1.val$asyncRunnable.onBackground(anonymousClass1.val$userData);
                Thread.runOnEngine(new Runnable() {
                    @Override
                    public void run() {
                        m.d(new InterfaceC14490d() {
                            @Override
                            public void run() {
                                C02631 c02631 = C02631.this;
                                AnonymousClass1.this.val$asyncRunnable.onEngine(onBackground);
                            }
                        });
                    }
                });
            }
        }

        public AnonymousClass1(final AsyncRunnable val$asyncRunnable, final Object val$userData) {
            this.val$asyncRunnable = val$asyncRunnable;
            this.val$userData = val$userData;
        }

        @Override
        public void run() {
            m.d(new C02621());
        }
    }

    public AsyncTask(AsyncRunnable asyncRunnable) {
    }

    public AsyncTask(Object obj, AsyncRunnable asyncRunnable) {
    }
}
