package com.android.tools.r8.assistant.runtime;

import com.android.tools.r8.assistant.runtime.ReflectiveOracle;
import com.android.tools.r8.keepanno.annotations.KeepForApi;

@KeepForApi
public interface ReflectiveOperationReceiver {
    void onClassForName(ReflectiveOracle.Stack stack, String str);

    void onClassGetDeclaredMethod(ReflectiveOracle.Stack stack, Class<?> cls, String str, Class<?>... clsArr);

    void onClassNewInstance(ReflectiveOracle.Stack stack, Class<?> cls);

    default boolean requiresStackInformation() {
        return false;
    }
}
