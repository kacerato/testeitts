package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.type.ClassOrInterfaceType;

public interface NodeWithExtends<N extends Node> {
    default N addExtendedType(ClassOrInterfaceType extend) {
        getExtendedTypes().add((NodeList<ClassOrInterfaceType>) extend);
        return (N) this;
    }

    @Deprecated
    default N addExtends(Class<?> clazz) {
        return addExtendedType(clazz);
    }

    NodeList<ClassOrInterfaceType> getExtendedTypes();

    default ClassOrInterfaceType getExtendedTypes(int i10) {
        return getExtendedTypes().get(i10);
    }

    default N setExtendedType(int i10, ClassOrInterfaceType extend) {
        getExtendedTypes().set(i10, (int) extend);
        return (N) this;
    }

    N setExtendedTypes(NodeList<ClassOrInterfaceType> extendsList);

    void tryAddImportToParentCompilationUnit(Class<?> clazz);

    @Deprecated
    default N addExtends(String name) {
        return addExtendedType(name);
    }

    default N addExtendedType(Class<?> clazz) {
        tryAddImportToParentCompilationUnit(clazz);
        return addExtendedType(clazz.getSimpleName());
    }

    default N addExtendedType(String name) {
        getExtendedTypes().add((NodeList<ClassOrInterfaceType>) StaticJavaParser.parseClassOrInterfaceType(name));
        return (N) this;
    }
}
