package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import java.util.Collection;
import java.util.function.Consumer;

public abstract class i {

    public final C7051eC f36004a;

    public i() {
        int i10 = AbstractC7552hC.f48487c;
        this.f36004a = new C7051eC();
    }

    public abstract i a();

    public final i a(DefinitionContext definitionContext) {
        this.f36004a.a(definitionContext);
        return a();
    }

    public final i a(Collection collection) {
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                i.this.a((DefinitionContext) obj);
            }
        });
        return a();
    }
}
