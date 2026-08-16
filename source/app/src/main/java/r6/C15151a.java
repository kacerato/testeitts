package r6;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class C15151a {

    public long f108666c;

    public long f108669f;

    public final List<i> f108664a = new LinkedList();

    public final Map<Thread, i> f108665b = new HashMap();

    public i f108667d = null;

    public final Object f108668e = new Object();

    public C15151a(long frameID) {
        this.f108666c = frameID;
    }

    public void a() {
        this.f108669f = 0L;
        int size = this.f108664a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f108669f += this.f108664a.get(i10).a();
        }
    }

    public i b(int i10) {
        return this.f108664a.get(i10);
    }

    public int c() {
        return this.f108664a.size();
    }

    public String d() {
        StringBuilder sb2 = new StringBuilder();
        int size = this.f108664a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f108664a.get(i10).d(sb2);
            if (i10 < size - 1) {
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    public i e() {
        return f(Thread.currentThread());
    }

    public i f(Thread thread) {
        i iVar = this.f108667d;
        if (iVar != null && iVar.c(thread)) {
            return this.f108667d;
        }
        i iVar2 = this.f108665b.get(thread);
        if (iVar2 != null) {
            this.f108667d = iVar2;
            return iVar2;
        }
        i iVar3 = new i(thread);
        this.f108664a.add(iVar3);
        this.f108665b.put(thread, iVar3);
        this.f108667d = iVar3;
        return iVar3;
    }

    public long g() {
        return this.f108669f;
    }

    public void h(Object obj, List<String> callStack, long beforeNotifyUsedBytes) {
        synchronized (this.f108668e) {
            e().h(obj, callStack, 0, beforeNotifyUsedBytes);
        }
    }

    public void i() {
        int size = this.f108664a.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f108664a.get(i10).i();
        }
    }

    public i j(int i10) {
        i iVar;
        synchronized (this.f108668e) {
            iVar = this.f108664a.get(i10);
        }
        return iVar;
    }
}
