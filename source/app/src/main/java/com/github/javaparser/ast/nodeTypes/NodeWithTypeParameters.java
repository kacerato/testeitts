package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.type.TypeParameter;

public interface NodeWithTypeParameters<N extends Node> {
    default N addTypeParameter(TypeParameter typeParameter) {
        getTypeParameters().add((NodeList<TypeParameter>) typeParameter);
        return (N) this;
    }

    default TypeParameter getTypeParameter(int i10) {
        return getTypeParameters().get(i10);
    }

    NodeList<TypeParameter> getTypeParameters();

    default boolean isGeneric() {
        return getTypeParameters().size() > 0;
    }

    default N setTypeParameter(int i10, TypeParameter typeParameter) {
        getTypeParameters().set(i10, (int) typeParameter);
        return (N) this;
    }

    N setTypeParameters(NodeList<TypeParameter> typeParameters);

    default N addTypeParameter(String typeParameter) {
        return addTypeParameter(StaticJavaParser.parseTypeParameter(typeParameter));
    }
}
