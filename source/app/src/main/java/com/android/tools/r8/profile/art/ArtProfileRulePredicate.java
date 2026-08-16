package com.android.tools.r8.profile.art;

import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;

public interface ArtProfileRulePredicate {
    boolean testClassRule(ClassReference classReference, ArtProfileClassRuleInfo artProfileClassRuleInfo);

    boolean testMethodRule(MethodReference methodReference, ArtProfileMethodRuleInfo artProfileMethodRuleInfo);
}
