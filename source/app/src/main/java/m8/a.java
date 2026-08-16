package M8;

import JAVARuntime.Runnable;

public class a {

    public Thread f14801a;

    public int f14802b;

    public class RunnableC0422a implements Runnable {

        public final b f14803b;

        public final Object f14804c;

        public class C0423a implements Runnable {

            public final Object f14806b;

            public C0423a(final Object val$result) {
                this.f14806b = val$result;
            }

            @Override
            public void run() {
                a.this.f14801a = null;
                RunnableC0422a.this.f14803b.onEngine(this.f14806b);
            }
        }

        public RunnableC0422a(final b val$listener, final Object val$userData) {
            this.f14803b = val$listener;
            this.f14804c = val$userData;
        }

        @Override
        public void run() {
            K8.a.B(new C0423a(this.f14803b.onBackground(this.f14804c)));
        }
    }

    public interface b {
        Object onBackground(Object input);

        void onEngine(Object result);
    }

    public a(b listener) {
        this.f14802b = 5;
        b(listener, null);
    }

    public final void b(b listener, Object userData) {
        Thread thread = new Thread(new RunnableC0422a(listener, userData));
        this.f14801a = thread;
        thread.setPriority(this.f14802b);
        this.f14801a.start();
    }

    public void c() {
        Thread thread = this.f14801a;
        if (thread != null) {
            try {
                thread.interrupt();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public a(int priority, b listener) {
        this.f14802b = priority;
        b(listener, null);
    }

    public a(Object userData, b listener) {
        this.f14802b = 5;
        b(listener, userData);
    }

    public a(Object userData, int priority, b listener) {
        this.f14802b = priority;
        b(listener, userData);
    }
}
