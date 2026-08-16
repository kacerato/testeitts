package u6;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class C15577a {

    public long f118516c;

    public final List<j> f118514a = new LinkedList();

    public final Map<Thread, j> f118515b = new HashMap();

    public j f118517d = null;

    public final Object f118518e = new Object();

    public C15577a(long frameID) {
        this.f118516c = frameID;
    }

    public j a(int i10) {
        return this.f118514a.get(i10);
    }

    public int b() {
        return this.f118514a.size();
    }

    public String c() {
        StringBuilder sb2 = new StringBuilder();
        int size = this.f118514a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f118514a.get(i10).c(sb2);
            if (i10 < size - 1) {
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    public j d() {
        return e(Thread.currentThread());
    }

    public j e(Thread thread) {
        j jVar = this.f118517d;
        if (jVar != null && jVar.b(thread)) {
            return this.f118517d;
        }
        j jVar2 = this.f118515b.get(thread);
        if (jVar2 != null) {
            this.f118517d = jVar2;
            return jVar2;
        }
        j jVar3 = new j(thread);
        this.f118514a.add(jVar3);
        this.f118515b.put(thread, jVar3);
        this.f118517d = jVar3;
        return jVar3;
    }

    public e f(String name) {
        e g10;
        synchronized (this.f118518e) {
            g10 = d().g(name);
        }
        return g10;
    }

    public void g() {
        int size = this.f118514a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f118514a.get(i10).h();
        }
    }

    public j h(int i10) {
        j jVar;
        synchronized (this.f118518e) {
            jVar = this.f118514a.get(i10);
        }
        return jVar;
    }
}
