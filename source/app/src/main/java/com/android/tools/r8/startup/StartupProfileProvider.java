package com.android.tools.r8.startup;

import com.android.tools.r8.Resource;

public interface StartupProfileProvider extends Resource {
    void getStartupProfile(StartupProfileBuilder startupProfileBuilder);
}
