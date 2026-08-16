package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C9195r4;
import com.android.tools.r8.profile.art.ArtProfileMethodRuleBuilder;
import com.android.tools.r8.references.MethodReference;
import java.util.function.Consumer;

public final class C7361g4 implements ArtProfileMethodRuleBuilder {

    public MethodReference f48178a;

    public C7361g4() {
        C9195r4.b();
    }

    @Override
    public final ArtProfileMethodRuleBuilder setMethodReference(MethodReference methodReference) {
        this.f48178a = methodReference;
        return this;
    }

    @Override
    public final ArtProfileMethodRuleBuilder setMethodRuleInfo(Consumer consumer) {
        C9195r4.a a10 = C9195r4.a();
        consumer.accept(a10);
        a10.a();
        return this;
    }
}
