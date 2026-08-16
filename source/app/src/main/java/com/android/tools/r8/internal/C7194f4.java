package com.android.tools.r8.internal;

import com.android.tools.r8.profile.art.ArtProfileClassRuleBuilder;
import com.android.tools.r8.references.ClassReference;

public final class C7194f4 implements ArtProfileClassRuleBuilder {

    public ClassReference f47848a;

    @Override
    public final ArtProfileClassRuleBuilder setClassReference(ClassReference classReference) {
        this.f47848a = classReference;
        return this;
    }
}
