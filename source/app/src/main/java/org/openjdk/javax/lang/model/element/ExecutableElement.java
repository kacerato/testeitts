package org.openjdk.javax.lang.model.element;

import java.util.List;
import org.openjdk.javax.lang.model.type.TypeMirror;

public interface ExecutableElement extends Element, Parameterizable {
    AnnotationValue getDefaultValue();

    List<? extends VariableElement> getParameters();

    TypeMirror getReceiverType();

    TypeMirror getReturnType();

    @Override
    Name getSimpleName();

    List<? extends TypeMirror> getThrownTypes();

    @Override
    List<? extends TypeParameterElement> getTypeParameters();

    boolean isDefault();

    boolean isVarArgs();
}
