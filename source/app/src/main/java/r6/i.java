package r6;

import java.util.List;

public class i {

    public final Thread f108714a;

    public final String f108715b;

    public final f f108716c = h.b("root", 0);

    public i() {
        Thread currentThread = Thread.currentThread();
        this.f108714a = currentThread;
        if (p6.d.F1()) {
            this.f108715b = "Root";
        } else {
            this.f108715b = currentThread.getName();
        }
    }

    public long a() {
        return this.f108716c.a();
    }

    public boolean b() {
        return this.f108714a == Thread.currentThread();
    }

    public boolean c(Thread thread) {
        return this.f108714a == thread;
    }

    public void d(StringBuilder builder) {
        builder.append("Thread [");
        builder.append(this.f108715b.toString());
        builder.append("]:");
        builder.append("\n");
        this.f108716c.b(builder, "-");
    }

    public f e() {
        return this.f108716c;
    }

    public Thread f() {
        return this.f108714a;
    }

    public String g() {
        return this.f108715b;
    }

    public void h(Object obj, List<String> callStack, int listIndex, long beforeNotifyUsedBytes) {
        this.f108716c.k(obj, callStack, listIndex, beforeNotifyUsedBytes);
    }

    public void i() {
        f fVar = this.f108716c;
        if (fVar != null) {
            fVar.l();
        }
    }

    public i(Thread thread) {
        this.f108714a = thread;
        if (p6.d.F1()) {
            this.f108715b = "Root";
        } else {
            this.f108715b = thread.getName();
        }
    }
}
