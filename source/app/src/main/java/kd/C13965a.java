package kd;

import android.os.Handler;

@Deprecated
public class C13965a {

    public class RunnableC1843a implements Runnable {

        public final InterfaceC13966b f95064b;

        public RunnableC1843a(final InterfaceC13966b val$listener) {
            this.f95064b = val$listener;
        }

        @Override
        public void run() {
            InterfaceC13966b interfaceC13966b = this.f95064b;
            if (interfaceC13966b != null) {
                interfaceC13966b.run();
            }
        }
    }

    @Deprecated
    public void a(int delayMillis, InterfaceC13966b listener) {
        new Handler().postDelayed(new RunnableC1843a(listener), delayMillis);
    }
}
