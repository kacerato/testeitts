package o6;

public class l {

    public final Thread f98600a;

    public final String f98601b;

    public final i f98602c;

    public l() {
        this(Thread.currentThread());
    }

    public boolean a() {
        return this.f98600a == Thread.currentThread();
    }

    public boolean b(Thread thread) {
        return this.f98600a == thread;
    }

    public void c(StringBuilder builder) {
        builder.append("Thread [");
        builder.append(this.f98601b);
        builder.append("]:");
        builder.append("\n");
        this.f98602c.c(builder, "-");
    }

    public i d() {
        return this.f98602c;
    }

    public Thread e() {
        return this.f98600a;
    }

    public String f() {
        return this.f98601b;
    }

    public void g() {
        this.f98602c.l();
    }

    public l(Thread thread) {
        this.f98602c = new i("root", 0);
        this.f98600a = thread;
        this.f98601b = thread.getName();
    }
}
