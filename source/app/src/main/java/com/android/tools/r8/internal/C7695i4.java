package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.profile.art.ArtProfileClassRuleBuilder;
import com.android.tools.r8.references.ClassReference;

public final class C7695i4 extends AbstractC10364y4 implements ArtProfileClassRuleBuilder, InterfaceC8519n1 {

    public static final boolean f48772c = true;

    public final C4724u1 f48773a;

    public com.android.tools.r8.graph.M2 f48774b;

    public C7695i4() {
        this.f48773a = null;
    }

    @Override
    public final InterfaceC8686o1 build() {
        return new C7860j4(this.f48774b);
    }

    @Override
    public final ArtProfileClassRuleBuilder setClassReference(ClassReference classReference) {
        if (!f48772c && this.f48773a == null) {
            throw new AssertionError();
        }
        this.f48774b = this.f48773a.d(classReference.getDescriptor());
        return this;
    }

    public C7695i4(C4724u1 c4724u1) {
        this.f48773a = c4724u1;
    }
}
