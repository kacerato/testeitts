package t6;

public class n {

    public final Thread f117179a;

    public final String f117180b;

    public final l f117181c = new l(0);

    public n() {
        Thread currentThread = Thread.currentThread();
        this.f117179a = currentThread;
        if (j.K1()) {
            this.f117180b = "Root";
        } else {
            this.f117180b = currentThread.getName();
        }
    }

    public boolean a() {
        return this.f117179a == Thread.currentThread();
    }

    public boolean b(Thread thread) {
        return this.f117179a == thread;
    }

    public void c(StringBuilder builder) {
        builder.append("Thread [");
        builder.append(this.f117180b.toString());
        builder.append("]:");
        builder.append("\n");
        this.f117181c.b(builder, "---");
    }

    public l d() {
        return this.f117181c;
    }

    public Thread e() {
        return this.f117179a;
    }

    public String f() {
        return this.f117180b;
    }

    public e g(String name) {
        return this.f117181c.g(name);
    }

    public void h() {
        l lVar = this.f117181c;
        if (lVar != null) {
            lVar.h();
        }
    }

    public n(Thread thread) {
        this.f117179a = thread;
        if (j.K1()) {
            this.f117180b = "Root";
        } else {
            this.f117180b = thread.getName();
        }
    }
}
