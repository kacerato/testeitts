package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.concurrent.ExecutorService;

public abstract class AbstractC9050qB extends A8 {

    public static final boolean f51733d = true;

    public AbstractC9050qB(C4798y c4798y) {
        super(c4798y);
    }

    public C10209x8 a(ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Build IR processing order constraints");
        c8659ns0.b("Build call graph");
        a(executorService);
        if (!f51733d) {
            for (D00 d00 : this.f38541b.values()) {
                Iterator it = d00.f39411f.iterator();
                while (it.hasNext()) {
                    D00 d002 = (D00) it.next();
                    if (!f51733d && d00.f39410e.contains(d002)) {
                        throw new AssertionError();
                    }
                }
            }
        }
        c8659ns0.d();
        boolean z10 = f51733d;
        if (!z10) {
            a();
        }
        this.f38540a.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                AbstractC9050qB.this.a((C6678bz) obj);
            }
        });
        c8659ns0.b("Cycle elimination");
        Collection values = this.f38541b.values();
        TreeSet treeSet = new TreeSet();
        AbstractC9907vK.a(values, treeSet);
        C10631zi c10631zi = new C10631zi();
        c10631zi.a(treeSet);
        c8659ns0.d();
        c8659ns0.d();
        if (z10 || c10631zi.a(treeSet).a() == 0) {
            return new C10209x8(this.f38541b);
        }
        throw new AssertionError();
    }

    public abstract void a();

    public abstract void a(ExecutorService executorService);

    public final void a(C6678bz c6678bz) {
        D00 d00 = (D00) this.f38541b.get(c6678bz.f46924b.f42007s.f40794a);
        if (d00 != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = d00.f39409d.iterator();
            while (it.hasNext()) {
                D00 d002 = (D00) it.next();
                C5485La0 c5485La0 = c6678bz.f46924b;
                C4516j1 b10 = d002.b();
                c5485La0.getClass();
                if (c5485La0.b(b10.getReference())) {
                    arrayList.add(d002);
                }
            }
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                ((D00) obj).e(d00);
            }
        }
    }

    @Override
    public final E00 a(com.android.tools.r8.graph.H5 h52) {
        return new D00(h52);
    }
}
