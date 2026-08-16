package com.android.tools.r8.internal;

import com.android.tools.r8.profile.art.ArtProfileClassRuleInfo;
import com.android.tools.r8.profile.art.ArtProfileMethodRuleInfo;
import com.android.tools.r8.profile.art.ArtProfileRulePredicate;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;

public final class C8522n2 implements ArtProfileRulePredicate {
    @Override
    public final boolean testClassRule(ClassReference classReference, ArtProfileClassRuleInfo artProfileClassRuleInfo) {
        return true;
    }

    @Override
    public final boolean testMethodRule(MethodReference methodReference, ArtProfileMethodRuleInfo artProfileMethodRuleInfo) {
        return true;
    }
}
