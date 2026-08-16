package org.openjdk.tools.javac.util;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.SOURCE)
public @interface DefinedBy {

    public enum Api {
        ANNOTATION_PROCESSING("org.openjdk.javax.annotation.processing"),
        COMPILER("org.openjdk.javax.tools"),
        COMPILER_TREE("org.openjdk.source"),
        LANGUAGE_MODEL("org.openjdk.javax.lang.model");

        public final String packageRoot;

        Api(String str) {
            this.packageRoot = str;
        }
    }

    Api value();
}
