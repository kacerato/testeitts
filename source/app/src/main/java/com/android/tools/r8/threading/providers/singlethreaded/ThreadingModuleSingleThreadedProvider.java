package com.android.tools.r8.threading.providers.singlethreaded;

import com.android.tools.r8.internal.C5582Mr0;
import com.android.tools.r8.threading.ThreadingModule;
import com.android.tools.r8.threading.ThreadingModuleProvider;

public class ThreadingModuleSingleThreadedProvider implements ThreadingModuleProvider {
    @Override
    public final ThreadingModule create() {
        return new C5582Mr0();
    }
}
