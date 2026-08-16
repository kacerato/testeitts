package com.github.javaparser.resolution.types;

public class ResolvedVoidType implements ResolvedType {
    public static final ResolvedType INSTANCE = new ResolvedVoidType();

    private ResolvedVoidType() {
    }

    @Override
    public String describe() {
        return "void";
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        return false;
    }

    @Override
    public boolean isVoid() {
        return true;
    }

    @Override
    public String toDescriptor() {
        return "V";
    }
}
