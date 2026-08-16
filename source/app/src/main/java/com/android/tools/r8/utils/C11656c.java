package com.android.tools.r8.utils;

import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.ProgramResource;
import java.util.HashMap;
import java.util.Set;

public final class C11656c implements ClassFileResourceProvider {

    public final HashMap f58578a;

    public C11656c(HashMap hashMap) {
        this.f58578a = hashMap;
    }

    @Override
    public final Set getClassDescriptors() {
        return this.f58578a.o();
    }

    @Override
    public final ProgramResource getProgramResource(String str) {
        return (ProgramResource) this.f58578a.get(str);
    }
}
