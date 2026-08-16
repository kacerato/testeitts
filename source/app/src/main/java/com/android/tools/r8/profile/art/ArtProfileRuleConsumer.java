package com.android.tools.r8.profile.art;

import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;

public interface ArtProfileRuleConsumer {
    void acceptClassRule(ClassReference classReference, ArtProfileClassRuleInfo artProfileClassRuleInfo);

    void acceptMethodRule(MethodReference methodReference, ArtProfileMethodRuleInfo artProfileMethodRuleInfo);
}
