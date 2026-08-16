package org.openjdk.javax.lang.model.type;

import java.util.List;
import org.openjdk.javax.lang.model.element.Element;

public interface DeclaredType extends ReferenceType {
    Element asElement();

    TypeMirror getEnclosingType();

    List<? extends TypeMirror> getTypeArguments();
}
