package org.openjdk.javax.lang.model.type;

import java.util.List;

public interface ExecutableType extends TypeMirror {
    List<? extends TypeMirror> getParameterTypes();

    TypeMirror getReceiverType();

    TypeMirror getReturnType();

    List<? extends TypeMirror> getThrownTypes();

    List<? extends TypeVariable> getTypeVariables();
}
