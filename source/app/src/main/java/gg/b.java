package Gg;

public abstract class b implements Runnable {

    public final String f7797b;

    public b(String str, Object... objArr) {
        this.f7797b = c.s(str, objArr);
    }

    public abstract void m();

    @Override
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f7797b);
        try {
            m();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
