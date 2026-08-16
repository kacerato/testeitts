package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.inspector.ClassInspector;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;
import java.util.function.Consumer;

public final class C6779cd implements ClassInspector {

    public final com.android.tools.r8.graph.H2 f47117a;

    public ClassReference f47118b = null;

    public C6779cd(com.android.tools.r8.graph.H2 h22) {
        this.f47117a = h22;
    }

    public final void a(Consumer consumer, C4460g1 c4460g1) {
        consumer.accept(new C7503gw(this, c4460g1));
    }

    @Override
    public final void forEachField(final Consumer consumer) {
        com.android.tools.r8.graph.H2 h22 = this.f47117a;
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6779cd.this.a(consumer, (C4460g1) obj);
            }
        };
        h22.getClass();
        h22.c(consumer2, EnumC6871d70.f47286b);
    }

    @Override
    public final void forEachMethod(final Consumer consumer) {
        this.f47117a.g(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6779cd.this.a(consumer, (C4516j1) obj);
            }
        });
    }

    @Override
    public final ClassReference getClassReference() {
        if (this.f47118b == null) {
            this.f47118b = Reference.classFromDescriptor(this.f47117a.f36245e.V0());
        }
        return this.f47118b;
    }

    @Override
    public final String getSourceFile() {
        com.android.tools.r8.graph.L2 Z02 = this.f47117a.Z0();
        if (Z02 == null) {
            return null;
        }
        return Z02.toString();
    }

    public final void a(Consumer consumer, C4516j1 c4516j1) {
        consumer.accept(new LW(this, c4516j1));
    }
}
