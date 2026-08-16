package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.utils.Utils;

public interface NodeWithType<N extends Node, T extends Type> {
    T getType2();

    default String getTypeAsString() {
        return getType2().asString();
    }

    N setType(T type);

    /* JADX WARN: Multi-variable type inference failed */
    default N setType(Class<?> cls) {
        tryAddImportToParentCompilationUnit(cls);
        return (N) setType((NodeWithType<N, T>) StaticJavaParser.parseType(cls.getSimpleName()));
    }

    void tryAddImportToParentCompilationUnit(Class<?> clazz);

    /* JADX WARN: Multi-variable type inference failed */
    default N setType(String str) {
        Utils.assertNonEmpty(str);
        return (N) setType((NodeWithType<N, T>) StaticJavaParser.parseType(str));
    }
}
