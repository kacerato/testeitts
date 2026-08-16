package com.android.tools.r8.profile.art;

public interface ArtProfileMethodRuleInfoBuilder {
    ArtProfileMethodRuleInfoBuilder setIsHot(boolean z10);

    ArtProfileMethodRuleInfoBuilder setIsPostStartup(boolean z10);

    ArtProfileMethodRuleInfoBuilder setIsStartup(boolean z10);
}
