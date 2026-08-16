package Ic;

import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
public class O {

    public float f9084a;

    public int f9085b;

    public String f9086c;

    public b f9087d;

    public Thread f9088e;

    public final AtomicBoolean f9089f;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            O.this.f9087d.run();
            O.this.f9089f.set(true);
        }
    }

    public interface b {
        void a(Thread thread);

        void b();

        void c(Thread thread);

        void run();
    }

    public O(b listener) {
        this.f9084a = 5.0f;
        this.f9085b = 5;
        this.f9086c = null;
        this.f9089f = new AtomicBoolean();
        this.f9087d = listener;
    }

    public b c() {
        return this.f9087d;
    }

    public String d() {
        return this.f9086c;
    }

    public int e() {
        return this.f9085b;
    }

    public Thread f() {
        return this.f9088e;
    }

    public float g() {
        return this.f9084a;
    }

    public O h(b listener) {
        this.f9087d = listener;
        return this;
    }

    public O i(String name) {
        this.f9086c = name;
        return this;
    }

    public O j(int priority) {
        this.f9085b = priority;
        return this;
    }

    public O k(float timeOutSeconds) {
        this.f9084a = timeOutSeconds;
        return this;
    }

    public void l() {
        this.f9089f.set(false);
        Thread thread = new Thread(new a());
        this.f9088e = thread;
        this.f9087d.a(thread);
        String str = this.f9086c;
        if (str != null) {
            this.f9088e.setName(str);
        }
        this.f9088e.setPriority(this.f9085b);
        this.f9088e.start();
        long nanoTime = System.nanoTime();
        float f10 = 0.0f;
        while (!this.f9089f.get()) {
            long nanoTime2 = System.nanoTime();
            f10 += ((float) (nanoTime2 - nanoTime)) / 1.0E9f;
            if (f10 >= this.f9084a) {
                try {
                    this.f9087d.c(this.f9088e);
                    this.f9088e.getStackTrace();
                    this.f9088e.interrupt();
                    this.f9087d.b();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f9089f.set(true);
                return;
            }
            try {
                Thread.sleep(0L, 50);
            } catch (InterruptedException e11) {
                e11.printStackTrace();
            }
            nanoTime = nanoTime2;
        }
    }

    public O(float timeOutSeconds, b listener) {
        this.f9084a = 5.0f;
        this.f9085b = 5;
        this.f9086c = null;
        this.f9089f = new AtomicBoolean();
        this.f9084a = timeOutSeconds;
        this.f9087d = listener;
    }

    public O(float timeOutSeconds, int priority, b listener) {
        this.f9084a = 5.0f;
        this.f9085b = 5;
        this.f9086c = null;
        this.f9089f = new AtomicBoolean();
        this.f9084a = timeOutSeconds;
        this.f9085b = priority;
        this.f9087d = listener;
    }

    public O(float timeOutSeconds, int priority, String name, b listener) {
        this.f9084a = 5.0f;
        this.f9085b = 5;
        this.f9086c = null;
        this.f9089f = new AtomicBoolean();
        this.f9084a = timeOutSeconds;
        this.f9085b = priority;
        this.f9086c = name;
        this.f9087d = listener;
    }

    public O(int priority, String name, b listener) {
        this.f9084a = 5.0f;
        this.f9085b = 5;
        this.f9086c = null;
        this.f9089f = new AtomicBoolean();
        this.f9085b = priority;
        this.f9086c = name;
        this.f9087d = listener;
    }

    public O(int priority, b listener) {
        this.f9084a = 5.0f;
        this.f9085b = 5;
        this.f9086c = null;
        this.f9089f = new AtomicBoolean();
        this.f9085b = priority;
        this.f9087d = listener;
    }
}
