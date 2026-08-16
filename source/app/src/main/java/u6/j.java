package u6;

public class j {

    public final Thread f118559a;

    public final String f118560b;

    public final h f118561c = new h(0);

    public j() {
        Thread currentThread = Thread.currentThread();
        this.f118559a = currentThread;
        if (l.F1()) {
            this.f118560b = "Root";
        } else {
            this.f118560b = currentThread.getName();
        }
    }

    public boolean a() {
        return this.f118559a == Thread.currentThread();
    }

    public boolean b(Thread thread) {
        return this.f118559a == thread;
    }

    public void c(StringBuilder builder) {
        builder.append("Thread [");
        builder.append(this.f118560b.toString());
        builder.append("]:");
        builder.append("\n");
        this.f118561c.b(builder, "---");
    }

    public h d() {
        return this.f118561c;
    }

    public Thread e() {
        return this.f118559a;
    }

    public String f() {
        return this.f118560b;
    }

    public e g(String name) {
        return this.f118561c.g(name);
    }

    public void h() {
        h hVar = this.f118561c;
        if (hVar != null) {
            hVar.h();
        }
    }

    public j(Thread thread) {
        this.f118559a = thread;
        if (l.F1()) {
            this.f118560b = "Root";
        } else {
            this.f118560b = thread.getName();
        }
    }
}
