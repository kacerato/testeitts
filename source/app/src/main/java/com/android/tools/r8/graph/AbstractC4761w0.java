package com.android.tools.r8.graph;

import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.naming.C10912b;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class AbstractC4761w0 {

    public static final boolean f38315g = true;

    public final ArrayList f38316a;

    public final ArrayList f38317b;

    public final C8570nJ f38318c;

    public C10912b f38319d;

    public final C8659ns0 f38320e;

    public C4818z0 f38321f;

    public AbstractC4761w0(C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        this.f38316a = new ArrayList();
        this.f38317b = new ArrayList();
        this.f38318c = c8570nJ;
        C4724u1 c4724u1 = c8570nJ.f50660a;
        this.f38320e = c8659ns0;
    }

    public C4462g3.a a() {
        return null;
    }

    public abstract void a(H2 h22);

    public abstract AbstractC4780x0 b();

    public abstract AbstractC4761w0 c();

    public final synchronized void a(C10912b c10912b) {
        try {
            if (!f38315g && this.f38319d != null) {
                throw new AssertionError();
            }
            this.f38319d = c10912b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized AbstractC4761w0 a(Predicate predicate) {
        this.f38316a.removeIf(predicate);
        return c();
    }

    public final synchronized AbstractC4761w0 a(AbstractCollection abstractCollection) {
        try {
            if (!f38315g && abstractCollection == null) {
                throw new AssertionError();
            }
            this.f38316a.clear();
            this.f38316a.addAll(abstractCollection);
            final C4799y0 c4799y0 = new C4799y0();
            C4818z0 c4818z0 = this.f38321f;
            c4799y0.f38434a = c4818z0.f38452a;
            c4799y0.f38435b = c4818z0.f38453b;
            this.f38316a.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC4761w0.this.a(c4799y0, (H2) obj);
                }
            });
            this.f38321f = new C4818z0(c4799y0.f38434a, c4799y0.f38435b, c4799y0.f38436c.a(), c4799y0.f38437d.a(), c4799y0.f38438e.a());
        } catch (Throwable th2) {
            throw th2;
        }
        return c();
    }

    public AbstractC4761w0(AbstractC4780x0 abstractC4780x0) {
        ArrayList arrayList = new ArrayList();
        this.f38316a = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f38317b = arrayList2;
        this.f38321f = abstractC4780x0.f38368f;
        arrayList.addAll(abstractC4780x0.h());
        arrayList2.addAll(abstractC4780x0.f38363a);
        this.f38319d = abstractC4780x0.g();
        this.f38320e = abstractC4780x0.f38365c;
        this.f38318c = abstractC4780x0.f38366d;
    }

    public final void a(C4799y0 c4799y0, H2 h22) {
        M2 type = h22.getType();
        if (this.f38321f.f38454c.contains(type)) {
            synchronized (c4799y0.f38436c) {
                c4799y0.f38436c.a(type);
            }
        }
        if (this.f38321f.f38455d.contains(type)) {
            c4799y0.b(type);
        }
        if (this.f38321f.f38456e.contains(type)) {
            c4799y0.a(type);
        }
    }

    public final synchronized void a(DataResourceProvider dataResourceProvider) {
        this.f38317b.add(dataResourceProvider);
    }
}
