package org.openjdk.javax.lang.model.element;

import java.util.Locale;

public enum Modifier {
    PUBLIC,
    PROTECTED,
    PRIVATE,
    ABSTRACT,
    DEFAULT,
    STATIC,
    FINAL,
    TRANSIENT,
    VOLATILE,
    SYNCHRONIZED,
    NATIVE,
    STRICTFP;

    @Override
    public String toString() {
        return name().toLowerCase(Locale.US);
    }
}
