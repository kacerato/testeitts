package org.jetbrains.annotations;

import bn.d;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public final class Debug {

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.CLASS)
    public @interface Renderer {
        @d(prefix = "class Renderer{Object[] $childrenArray(){return ", suffix = ";}}", value = SuffixConstants.EXTENSION_JAVA)
        @NonNls
        String childrenArray() default "";

        @d(prefix = "class Renderer{boolean $hasChildren(){return ", suffix = ";}}", value = SuffixConstants.EXTENSION_JAVA)
        @NonNls
        String hasChildren() default "";

        @d(prefix = "class Renderer{String $text(){return ", suffix = ";}}", value = SuffixConstants.EXTENSION_JAVA)
        @NonNls
        String text() default "";
    }

    private Debug() {
        throw new AssertionError((Object) "Debug should not be instantiated");
    }
}
