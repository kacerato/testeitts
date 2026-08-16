package com.android.tools.r8.profile.art;

public interface ArtProfileMethodRuleInfo {
    boolean isHot();

    boolean isPostStartup();

    boolean isStartup();
}
