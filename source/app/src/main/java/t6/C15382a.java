package t6;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class C15382a {

    public long f117089c;

    public final List<n> f117087a = new LinkedList();

    public final Map<Thread, n> f117088b = new HashMap();

    public n f117090d = null;

    public final Object f117091e = new Object();

    public C15382a(long frameID) {
        this.f117089c = frameID;
    }

    public n a(int i10) {
        return this.f117087a.get(i10);
    }

    public int b() {
        return this.f117087a.size();
    }

    public String c() {
        StringBuilder sb2 = new StringBuilder();
        int size = this.f117087a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f117087a.get(i10).c(sb2);
            if (i10 < size - 1) {
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    public n d() {
        return e(Thread.currentThread());
    }

    public n e(Thread thread) {
        n nVar = this.f117090d;
        if (nVar != null && nVar.b(thread)) {
            return this.f117090d;
        }
        n nVar2 = this.f117088b.get(thread);
        if (nVar2 != null) {
            this.f117090d = nVar2;
            return nVar2;
        }
        n nVar3 = new n(thread);
        this.f117087a.add(nVar3);
        this.f117088b.put(thread, nVar3);
        this.f117090d = nVar3;
        return nVar3;
    }

    public e f(String name) {
        e g10;
        synchronized (this.f117091e) {
            g10 = d().g(name);
        }
        return g10;
    }

    public void g() {
        int size = this.f117087a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f117087a.get(i10).h();
        }
    }

    public n h(int i10) {
        n nVar;
        synchronized (this.f117091e) {
            nVar = this.f117087a.get(i10);
        }
        return nVar;
    }
}
