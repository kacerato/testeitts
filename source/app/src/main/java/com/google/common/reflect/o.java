package com.google.common.reflect;

import java.util.Map;
import javax.annotation.CheckForNull;

@I2.f("Use ImmutableTypeToInstanceMap or MutableTypeToInstanceMap")
@d
public interface o<B> extends Map<p<? extends B>, B> {
    @I2.a
    @CheckForNull
    <T extends B> T Qc(p<T> pVar, T t10);

    @I2.a
    @CheckForNull
    <T extends B> T a2(Class<T> cls, T t10);

    @CheckForNull
    <T extends B> T k2(Class<T> cls);

    @CheckForNull
    <T extends B> T u6(p<T> pVar);
}
