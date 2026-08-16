package s6;

import java.util.List;

public class i {

    public final Thread f109265a;

    public final String f109266b;

    public final f f109267c = h.b("root", 0);

    public i() {
        Thread currentThread = Thread.currentThread();
        this.f109265a = currentThread;
        if (p6.d.F1()) {
            this.f109266b = "Root";
        } else {
            this.f109266b = currentThread.getName();
        }
    }

    public long a() {
        return this.f109267c.a();
    }

    public boolean b() {
        return this.f109265a == Thread.currentThread();
    }

    public boolean c(Thread thread) {
        return this.f109265a == thread;
    }

    public void d(StringBuilder builder) {
        builder.append("Thread [");
        builder.append(this.f109266b.toString());
        builder.append("]:");
        builder.append("\n");
        this.f109267c.b(builder, "-");
    }

    public f e() {
        return this.f109267c;
    }

    public Thread f() {
        return this.f109265a;
    }

    public String g() {
        return this.f109266b;
    }

    public void h(Object obj, List<String> callStack, int listIndex, long beforeNotifyUsedBytes) {
        this.f109267c.k(obj, callStack, listIndex, beforeNotifyUsedBytes);
    }

    public void i() {
        f fVar = this.f109267c;
        if (fVar != null) {
            fVar.l();
        }
    }

    public i(Thread thread) {
        this.f109265a = thread;
        if (p6.d.F1()) {
            this.f109266b = "Root";
        } else {
            this.f109266b = thread.getName();
        }
    }
}
