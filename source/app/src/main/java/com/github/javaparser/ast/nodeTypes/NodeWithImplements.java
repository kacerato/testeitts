package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.type.ClassOrInterfaceType;

public interface NodeWithImplements<N extends Node> {
    default N addImplementedType(ClassOrInterfaceType implement) {
        getImplementedTypes().add((NodeList<ClassOrInterfaceType>) implement);
        return (N) this;
    }

    default N addImplements(String name) {
        return addImplementedType(name);
    }

    NodeList<ClassOrInterfaceType> getImplementedTypes();

    default ClassOrInterfaceType getImplementedTypes(int i10) {
        return getImplementedTypes().get(i10);
    }

    default N setImplementedType(int i10, ClassOrInterfaceType implement) {
        getImplementedTypes().set(i10, (int) implement);
        return (N) this;
    }

    N setImplementedTypes(NodeList<ClassOrInterfaceType> implementsList);

    void tryAddImportToParentCompilationUnit(Class<?> clazz);

    default N addImplements(Class<?> clazz) {
        return addImplementedType(clazz);
    }

    default N addImplementedType(String name) {
        getImplementedTypes().add((NodeList<ClassOrInterfaceType>) StaticJavaParser.parseClassOrInterfaceType(name));
        return (N) this;
    }

    default N addImplementedType(Class<?> clazz) {
        tryAddImportToParentCompilationUnit(clazz);
        return addImplementedType(clazz.getSimpleName());
    }
}
