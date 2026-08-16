package org.openjdk.javax.lang.model.element;

public interface Name extends CharSequence {
    boolean contentEquals(CharSequence charSequence);

    boolean equals(Object obj);

    int hashCode();
}
