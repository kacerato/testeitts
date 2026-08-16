package p6;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class C14930a {

    public long f103537c;

    public final List<l> f103535a = new LinkedList();

    public final Map<Thread, l> f103536b = new HashMap();

    public l f103538d = null;

    public final Object f103539e = new Object();

    public C14930a(long frameID) {
        this.f103537c = frameID;
    }

    public l a(int i10) {
        return this.f103535a.get(i10);
    }

    public int b() {
        return this.f103535a.size();
    }

    public String c() {
        StringBuilder sb2 = new StringBuilder();
        int size = this.f103535a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f103535a.get(i10).c(sb2);
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
        l lVar = this.f103538d;
        if (lVar != null && lVar.b(thread)) {
            return this.f103538d;
        }
        l lVar2 = this.f103536b.get(thread);
        if (lVar2 != null) {
            this.f103538d = lVar2;
            return lVar2;
        }
        l lVar3 = new l(thread);
        this.f103535a.add(lVar3);
        this.f103536b.put(thread, lVar3);
        this.f103538d = lVar3;
        return lVar3;
    }

    public g f(String name) {
        g g10;
        synchronized (this.f103539e) {
            g10 = d().g(name);
        }
        return g10;
    }

    public void g() {
        int size = this.f103535a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f103535a.get(i10).h();
        }
    }

    public l h(int i10) {
        l lVar;
        synchronized (this.f103539e) {
            lVar = this.f103535a.get(i10);
        }
        return lVar;
    }
}
