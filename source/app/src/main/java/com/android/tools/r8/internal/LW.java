package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.inspector.MethodInspector;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.Function;

public final class LW implements MethodInspector {

    public final C6779cd f41969a;

    public final C4516j1 f41970b;

    public MethodReference f41971c;

    public LW(C6779cd c6779cd, C4516j1 c4516j1) {
        this.f41969a = c6779cd;
        this.f41970b = c4516j1;
    }

    @Override
    public final MethodReference getMethodReference() {
        if (this.f41971c == null) {
            this.f41971c = Reference.method(this.f41969a.getClassReference(), this.f41970b.getReference().f38298g.toString(), AT.a((Collection) Arrays.asList(this.f41970b.getReference().f36127i.f36441f.f36675b), new Function() {
                @Override
                public final Object apply(Object obj) {
                    TypeReference typeFromDescriptor;
                    typeFromDescriptor = Reference.typeFromDescriptor(((com.android.tools.r8.graph.M2) obj).V0());
                    return typeFromDescriptor;
                }
            }), this.f41970b.getReference().f36127i.f36440e.S0() ? null : Reference.typeFromDescriptor(this.f41970b.getReference().f36127i.f36440e.V0()));
        }
        return this.f41971c;
    }
}
