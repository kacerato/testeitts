package com.android.tools.r8.internal;

import com.android.tools.r8.profile.art.ArtProfileClassRuleBuilder;
import com.android.tools.r8.references.ClassReference;

public final class C9696u4 implements ArtProfileClassRuleBuilder {

    public final C10030w4 f52776a;

    public C9696u4(C10030w4 c10030w4) {
        this.f52776a = c10030w4;
    }

    @Override
    public final ArtProfileClassRuleBuilder setClassReference(ClassReference classReference) {
        AbstractC10197x4.a(this.f52776a.f53411a, C6186Xd.a(classReference));
        return this;
    }
}
