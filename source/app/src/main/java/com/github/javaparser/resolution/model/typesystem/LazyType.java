package com.github.javaparser.resolution.model.typesystem;

import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.types.ResolvedArrayType;
import com.github.javaparser.resolution.types.ResolvedPrimitiveType;
import com.github.javaparser.resolution.types.ResolvedReferenceType;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeVariable;
import com.github.javaparser.resolution.types.ResolvedWildcard;
import java.util.Map;
import java.util.function.Function;

public class LazyType implements ResolvedType {
    private ResolvedType concrete;
    private Function<Void, ResolvedType> provider;

    public LazyType(Function<Void, ResolvedType> provider) {
        this.provider = provider;
    }

    @Override
    public int arrayLevel() {
        return getType().arrayLevel();
    }

    @Override
    public ResolvedArrayType asArrayType() {
        return getType().asArrayType();
    }

    @Override
    public ResolvedPrimitiveType asPrimitive() {
        return getType().asPrimitive();
    }

    @Override
    public ResolvedReferenceType asReferenceType() {
        return getType().asReferenceType();
    }

    @Override
    public ResolvedTypeParameterDeclaration asTypeParameter() {
        return getType().asTypeParameter();
    }

    @Override
    public ResolvedTypeVariable asTypeVariable() {
        return getType().asTypeVariable();
    }

    @Override
    public ResolvedWildcard asWildcard() {
        return getType().asWildcard();
    }

    @Override
    public String describe() {
        return getType().describe();
    }

    public ResolvedType getType() {
        if (this.concrete == null) {
            this.concrete = this.provider.apply(null);
        }
        return this.concrete;
    }

    @Override
    public boolean isArray() {
        return getType().isArray();
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        return getType().isAssignableBy(other);
    }

    @Override
    public boolean isNull() {
        return getType().isNull();
    }

    @Override
    public boolean isPrimitive() {
        return getType().isPrimitive();
    }

    @Override
    public boolean isReference() {
        return getType().isReference();
    }

    @Override
    public boolean isReferenceType() {
        return getType().isReferenceType();
    }

    @Override
    public boolean isTypeVariable() {
        return getType().isTypeVariable();
    }

    @Override
    public boolean isVoid() {
        return getType().isVoid();
    }

    @Override
    public boolean isWildcard() {
        return getType().isWildcard();
    }

    @Override
    public ResolvedType replaceTypeVariables(ResolvedTypeParameterDeclaration tp, ResolvedType replaced, Map<ResolvedTypeParameterDeclaration, ResolvedType> inferredTypes) {
        return getType().replaceTypeVariables(tp, replaced, inferredTypes);
    }

    @Override
    public ResolvedType replaceTypeVariables(ResolvedTypeParameterDeclaration tp, ResolvedType replaced) {
        return getType().replaceTypeVariables(tp, replaced);
    }
}
