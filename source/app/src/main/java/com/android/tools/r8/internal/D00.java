package com.android.tools.r8.internal;

import com.bumptech.glide.load.engine.GlideException;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

public class D00 extends E00<D00> implements Comparable<D00>, InterfaceC5100Ei {

    public static final boolean f39407h = true;

    public int f39408c;

    public final TreeSet f39409d;

    public final TreeSet f39410e;

    public final TreeSet f39411f;

    public final TreeSet f39412g;

    public D00(com.android.tools.r8.graph.H5 h52) {
        super(h52);
        this.f39408c = 0;
        this.f39409d = new TreeSet();
        this.f39410e = new TreeSet();
        this.f39411f = new TreeSet();
        this.f39412g = new TreeSet();
    }

    @Override
    public final boolean c(InterfaceC5100Ei interfaceC5100Ei) {
        return this.f39412g.contains((D00) interfaceC5100Ei);
    }

    @Override
    public final int compareTo(D00 d00) {
        return a().getReference().compareTo(d00.a().getReference());
    }

    @Override
    public final void d(InterfaceC5100Ei interfaceC5100Ei) {
        D00 d00 = (D00) interfaceC5100Ei;
        boolean remove = this.f39411f.remove(d00);
        boolean z10 = f39407h;
        if (!z10 && !remove) {
            throw new AssertionError();
        }
        boolean remove2 = d00.f39412g.remove(this);
        if (!z10 && !remove2) {
            throw new AssertionError();
        }
        if (!z10 && this.f39410e.contains(d00)) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean f(InterfaceC5100Ei interfaceC5100Ei) {
        return this.f39411f.contains((D00) interfaceC5100Ei);
    }

    public boolean g() {
        return this.f39409d.isEmpty() && this.f39412g.isEmpty();
    }

    public final boolean h() {
        return this.f39410e.isEmpty() && this.f39411f.isEmpty();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MethodNode for: ");
        sb2.append(a().r());
        sb2.append(" (");
        sb2.append(this.f39409d.size());
        sb2.append(" callees, ");
        sb2.append(this.f39410e.size());
        sb2.append(" callers, invoke count ");
        sb2.append(this.f39408c);
        sb2.append(").");
        sb2.append(System.lineSeparator());
        if (this.f39409d.size() > 0) {
            sb2.append("Callees:");
            sb2.append(System.lineSeparator());
            Iterator it = this.f39409d.iterator();
            while (it.hasNext()) {
                D00 d00 = (D00) it.next();
                sb2.append(GlideException.a.f59088e);
                sb2.append(d00.a().r());
                sb2.append(System.lineSeparator());
            }
        }
        if (this.f39410e.size() > 0) {
            sb2.append("Callers:");
            sb2.append(System.lineSeparator());
            Iterator it2 = this.f39410e.iterator();
            while (it2.hasNext()) {
                D00 d002 = (D00) it2.next();
                sb2.append(GlideException.a.f59088e);
                sb2.append(d002.a().r());
                sb2.append(System.lineSeparator());
            }
        }
        return sb2.toString();
    }

    @Override
    public final void a(E00 e00) {
        boolean add;
        D00 d00 = (D00) e00;
        if (d00 != this) {
            synchronized (this.f39410e) {
                try {
                    if (this.f39410e.contains(d00)) {
                        return;
                    }
                    synchronized (this.f39411f) {
                        add = this.f39411f.add(d00);
                    }
                    if (add) {
                        synchronized (d00.f39412g) {
                            d00.f39412g.add(this);
                        }
                    }
                } finally {
                }
            }
        }
    }

    @Override
    public boolean b(D00 d00) {
        return this.f39409d.contains(d00);
    }

    public final void e() {
        boolean z10 = f39407h;
        if (!z10 && !this.f39410e.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f39411f.isEmpty()) {
            throw new AssertionError();
        }
        Iterator it = this.f39409d.iterator();
        while (it.hasNext()) {
            boolean remove = ((D00) it.next()).f39410e.remove(this);
            if (!f39407h && !remove) {
                throw new AssertionError();
            }
        }
        Iterator it2 = this.f39412g.iterator();
        while (it2.hasNext()) {
            boolean remove2 = ((D00) it2.next()).f39411f.remove(this);
            if (!f39407h && !remove2) {
                throw new AssertionError();
            }
        }
    }

    @Override
    public final void e(D00 d00) {
        boolean remove = this.f39410e.remove(d00);
        boolean z10 = f39407h;
        if (!z10 && !remove) {
            throw new AssertionError();
        }
        boolean remove2 = d00.f39409d.remove(this);
        if (!z10 && !remove2) {
            throw new AssertionError();
        }
        if (!z10 && this.f39411f.contains(d00)) {
            throw new AssertionError();
        }
    }

    public final void f() {
        boolean z10 = f39407h;
        if (!z10 && !this.f39409d.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f39412g.isEmpty()) {
            throw new AssertionError();
        }
        Iterator it = this.f39410e.iterator();
        while (it.hasNext()) {
            boolean remove = ((D00) it.next()).f39409d.remove(this);
            if (!f39407h && !remove) {
                throw new AssertionError();
            }
        }
        Iterator it2 = this.f39411f.iterator();
        while (it2.hasNext()) {
            boolean remove2 = ((D00) it2.next()).f39412g.remove(this);
            if (!f39407h && !remove2) {
                throw new AssertionError();
            }
        }
    }

    public final void d(D00 d00) {
        synchronized (this.f39411f) {
            this.f39411f.remove(d00);
        }
        synchronized (d00.f39412g) {
            d00.f39412g.remove(this);
        }
    }

    @Override
    public final TreeSet c() {
        return this.f39409d;
    }

    @Override
    public final boolean a(InterfaceC5100Ei interfaceC5100Ei) {
        return this.f39410e.contains((D00) interfaceC5100Ei);
    }

    @Override
    public final Set d() {
        return this.f39412g;
    }

    public void a(D00 d00) {
        a(d00, false);
    }

    @Override
    public final void a(D00 d00, boolean z10) {
        boolean add;
        if (d00 != this && !z10) {
            synchronized (this.f39410e) {
                add = this.f39410e.add(d00);
                this.f39408c++;
            }
            if (add) {
                synchronized (d00.f39409d) {
                    d00.f39409d.add(this);
                }
                d(d00);
                return;
            }
            return;
        }
        synchronized (this.f39410e) {
            this.f39408c++;
        }
    }
}
