package com.android.tools.r8.internal;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface ZK {
    boolean nullSafe() default true;

    Class value();
}
