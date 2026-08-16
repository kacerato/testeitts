package com.github.javaparser.resolution.model.typesystem;

import com.github.javaparser.resolution.types.ResolvedType;

public class NullType implements ResolvedType {
    public static final NullType INSTANCE = new NullType();

    private NullType() {
    }

    @Override
    public String describe() {
        return "null";
    }

    @Override
    public boolean isArray() {
        return false;
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        throw new UnsupportedOperationException("It does not make sense to assign a value to null, it can only be assigned");
    }

    @Override
    public boolean isNull() {
        return true;
    }

    @Override
    public boolean isReferenceType() {
        return false;
    }

    @Override
    public boolean isTypeVariable() {
        return false;
    }
}
