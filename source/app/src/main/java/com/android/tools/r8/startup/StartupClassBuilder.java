package com.android.tools.r8.startup;

import com.android.tools.r8.references.ClassReference;

public interface StartupClassBuilder {
    StartupClassBuilder setClassReference(ClassReference classReference);
}
