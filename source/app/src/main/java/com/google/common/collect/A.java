package com.google.common.collect;

import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b
@I2.f("Use ImmutableClassToInstanceMap or MutableClassToInstanceMap")
public interface A<B> extends Map<Class<? extends B>, B> {
    @I2.a
    @CheckForNull
    <T extends B> T a2(Class<T> cls, T t10);

    @CheckForNull
    <T extends B> T k2(Class<T> cls);
}
