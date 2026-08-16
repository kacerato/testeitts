package com.android.tools.r8.threading.providers.blocking;

import com.android.tools.r8.internal.C5524Lr0;
import com.android.tools.r8.threading.ThreadingModule;
import com.android.tools.r8.threading.ThreadingModuleProvider;

public class ThreadingModuleBlockingProvider implements ThreadingModuleProvider {
    @Override
    public final ThreadingModule create() {
        return new C5524Lr0();
    }
}
