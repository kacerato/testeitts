package com.android.tools.r8.startup;

import com.android.tools.r8.references.MethodReference;

public interface StartupMethodBuilder {
    StartupMethodBuilder setMethodReference(MethodReference methodReference);
}
