package com.jme3.system;

import j.InterfaceC13766g;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

public class Annotations {

    @Target({ElementType.METHOD})
    @InterfaceC13766g
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Destructive {
    }

    public @interface Internal {
    }

    @Target({ElementType.FIELD, ElementType.LOCAL_VARIABLE, ElementType.TYPE, ElementType.METHOD})
    @InterfaceC13766g
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface ReadOnly {
    }
}
