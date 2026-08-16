package com.github.javaparser.resolution.model;

import com.github.javaparser.resolution.declarations.ResolvedValueDeclaration;
import com.github.javaparser.resolution.types.ResolvedType;
import org.eclipse.jdt.internal.core.JavaElement;

public class Value {
    private String name;
    private ResolvedType type;

    public Value(ResolvedType type, String name) {
        this.type = type;
        this.name = name;
    }

    public static Value from(ResolvedValueDeclaration decl) {
        return new Value(decl.getType(), decl.getName());
    }

    public String getName() {
        return this.name;
    }

    public ResolvedType getType() {
        return this.type;
    }

    public String toString() {
        return "Value{type=" + ((Object) this.type) + ", name='" + this.name + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
    }
}
