package org.openjdk.javax.lang.model.type;

import org.openjdk.javax.lang.model.AnnotatedConstruct;

public interface TypeMirror extends AnnotatedConstruct {
    <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10);

    boolean equals(Object obj);

    TypeKind getKind();

    int hashCode();

    String toString();
}
