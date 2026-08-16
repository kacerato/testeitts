package com.android.tools.r8.internal;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface InterfaceC9168qv {
    boolean deserialize() default true;

    boolean serialize() default true;
}
