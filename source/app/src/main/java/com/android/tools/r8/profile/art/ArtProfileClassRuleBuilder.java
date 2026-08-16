package com.android.tools.r8.profile.art;

import com.android.tools.r8.references.ClassReference;

public interface ArtProfileClassRuleBuilder {
    ArtProfileClassRuleBuilder setClassReference(ClassReference classReference);
}
