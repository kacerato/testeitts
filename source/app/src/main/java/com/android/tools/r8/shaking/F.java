package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public class F {

    public static final boolean f56446c = true;

    public final C4798y f56447a;

    public final ArrayList f56448b = new ArrayList();

    public F(C4798y c4798y) {
        this.f56447a = c4798y;
        c4798y.E();
    }

    public final ArrayList a(Collection collection, ExecutorService executorService) {
        if (!f56446c && !this.f56448b.isEmpty()) {
            throw new AssertionError();
        }
        com.android.tools.r8.J.a(this.f56447a, collection, new Consumer() {
            @Override
            public final void accept(Object obj) {
                F.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
        this.f56448b.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int b10;
                b10 = ((com.android.tools.r8.graph.D5) obj).getReference().b(((com.android.tools.r8.graph.D5) obj2).getReference());
                return b10;
            }
        });
        return this.f56448b;
    }

    public boolean b(com.android.tools.r8.graph.D5 d52) {
        return this.f56447a.r().a(d52).f57837g;
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        if (a((com.android.tools.r8.graph.D5) h22)) {
            h22.k(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    F.this.a((com.android.tools.r8.graph.G5) obj);
                }
            });
        }
    }

    public final boolean a(com.android.tools.r8.graph.D5 d52) {
        if (!b(d52)) {
            return true;
        }
        synchronized (this.f56448b) {
            this.f56448b.add(d52);
        }
        return false;
    }
}
