package q6;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class C15044a {

    public long f105925c;

    public final List<l> f105923a = new LinkedList();

    public final Map<Thread, l> f105924b = new HashMap();

    public l f105926d = null;

    public final Object f105927e = new Object();

    public C15044a(long frameID) {
        this.f105925c = frameID;
    }

    public l a(int i10) {
        return this.f105923a.get(i10);
    }

    public int b() {
        return this.f105923a.size();
    }

    public String c() {
        StringBuilder sb2 = new StringBuilder();
        int size = this.f105923a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f105923a.get(i10).c(sb2);
            if (i10 < size - 1) {
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    public l d() {
        return e(Thread.currentThread());
    }

    public l e(Thread thread) {
        l lVar = this.f105926d;
        if (lVar != null && lVar.b(thread)) {
            return this.f105926d;
        }
        l lVar2 = this.f105924b.get(thread);
        if (lVar2 != null) {
            this.f105926d = lVar2;
            return lVar2;
        }
        l lVar3 = new l(thread);
        this.f105923a.add(lVar3);
        this.f105924b.put(thread, lVar3);
        this.f105926d = lVar3;
        return lVar3;
    }

    public g f(String name) {
        g g10;
        synchronized (this.f105927e) {
            g10 = d().g(name);
        }
        return g10;
    }

    public void g() {
        int size = this.f105923a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f105923a.get(i10).h();
        }
    }

    public l h(int i10) {
        l lVar;
        synchronized (this.f105927e) {
            lVar = this.f105923a.get(i10);
        }
        return lVar;
    }
}
