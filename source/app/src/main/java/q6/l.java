package q6;

public class l {

    public final Thread f106006a;

    public final String f106007b;

    public final j f106008c = new j(0);

    public l() {
        Thread currentThread = Thread.currentThread();
        this.f106006a = currentThread;
        if (f.I1()) {
            this.f106007b = "Root";
        } else {
            this.f106007b = currentThread.getName();
        }
    }

    public boolean a() {
        return this.f106006a == Thread.currentThread();
    }

    public boolean b(Thread thread) {
        return this.f106006a == thread;
    }

    public void c(StringBuilder builder) {
        builder.append("Thread [");
        builder.append(this.f106007b.toString());
        builder.append("]:");
        builder.append("\n");
        this.f106008c.b(builder, "---");
    }

    public j d() {
        return this.f106008c;
    }

    public Thread e() {
        return this.f106006a;
    }

    public String f() {
        return this.f106007b;
    }

    public g g(String name) {
        return this.f106008c.g(name);
    }

    public void h() {
        j jVar = this.f106008c;
        if (jVar != null) {
            jVar.h();
        }
    }

    public l(Thread thread) {
        this.f106006a = thread;
        if (f.I1()) {
            this.f106007b = "Root";
        } else {
            this.f106007b = thread.getName();
        }
    }
}
