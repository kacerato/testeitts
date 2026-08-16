package org.eclipse.jdt.internal.compiler.env;

public interface IBinaryAnnotation {
    IBinaryElementValuePair[] getElementValuePairs();

    char[] getTypeName();

    default boolean isDeprecatedAnnotation() {
        return false;
    }

    default boolean isExternalAnnotation() {
        return false;
    }
}
