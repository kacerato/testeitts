package p6;

public class l {

    public final Thread f103619a;

    public final String f103620b;

    public final j f103621c = new j(0);

    public l() {
        Thread currentThread = Thread.currentThread();
        this.f103619a = currentThread;
        if (d.F1()) {
            this.f103620b = "Root";
        } else {
            this.f103620b = currentThread.getName();
        }
    }

    public boolean a() {
        return this.f103619a == Thread.currentThread();
    }

    public boolean b(Thread thread) {
        return this.f103619a == thread;
    }

    public void c(StringBuilder builder) {
        builder.append("Thread [");
        builder.append(this.f103620b.toString());
        builder.append("]:");
        builder.append("\n");
        this.f103621c.b(builder, "---");
    }

    public j d() {
        return this.f103621c;
    }

    public Thread e() {
        return this.f103619a;
    }

    public String f() {
        return this.f103620b;
    }

    public g g(String name) {
        return this.f103621c.g(name);
    }

    public void h() {
        j jVar = this.f103621c;
        if (jVar != null) {
            jVar.h();
        }
    }

    public l(Thread thread) {
        this.f103619a = thread;
        if (d.F1()) {
            this.f103620b = "Root";
        } else {
            this.f103620b = thread.getName();
        }
    }
}
