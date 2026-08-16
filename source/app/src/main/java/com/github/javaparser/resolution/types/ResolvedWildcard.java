package com.github.javaparser.resolution.types;

import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;

public class ResolvedWildcard implements ResolvedType {
    public static ResolvedWildcard UNBOUNDED = new ResolvedWildcard(null, null);
    private ResolvedType boundedType;
    private BoundType type;

    public enum BoundType {
        SUPER,
        EXTENDS
    }

    private ResolvedWildcard(BoundType type, ResolvedType boundedType) {
        if (type == null && boundedType != null) {
            throw new IllegalArgumentException();
        }
        if (type != null && boundedType == null) {
            throw new IllegalArgumentException();
        }
        this.type = type;
        this.boundedType = boundedType;
    }

    public static ResolvedWildcard extendsBound(ResolvedType type) {
        return new ResolvedWildcard(BoundType.EXTENDS, type);
    }

    public static ResolvedWildcard superBound(ResolvedType type) {
        return new ResolvedWildcard(BoundType.SUPER, type);
    }

    @Override
    public ResolvedWildcard asWildcard() {
        return this;
    }

    @Override
    public String describe() {
        BoundType boundType = this.type;
        if (boundType == null) {
            return "?";
        }
        if (boundType == BoundType.SUPER) {
            return "? super " + this.boundedType.describe();
        }
        if (boundType != BoundType.EXTENDS) {
            throw new UnsupportedOperationException();
        }
        return "? extends " + this.boundedType.describe();
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof ResolvedWildcard)) {
            return false;
        }
        ResolvedWildcard resolvedWildcard = (ResolvedWildcard) o10;
        ResolvedType resolvedType = this.boundedType;
        if (resolvedType == null ? resolvedWildcard.boundedType == null : resolvedType.equals(resolvedWildcard.boundedType)) {
            return this.type == resolvedWildcard.type;
        }
        return false;
    }

    @Override
    public ResolvedType erasure() {
        return this.boundedType;
    }

    public ResolvedType getBoundedType() {
        ResolvedType resolvedType = this.boundedType;
        if (resolvedType != null) {
            return resolvedType;
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        BoundType boundType = this.type;
        int hashCode = (boundType != null ? boundType.hashCode() : 0) * 31;
        ResolvedType resolvedType = this.boundedType;
        return hashCode + (resolvedType != null ? resolvedType.hashCode() : 0);
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        ResolvedType resolvedType = this.boundedType;
        if (resolvedType == null) {
            return false;
        }
        BoundType boundType = this.type;
        if (boundType == BoundType.SUPER) {
            return resolvedType.isAssignableBy(other);
        }
        if (boundType == BoundType.EXTENDS) {
            return false;
        }
        throw new RuntimeException();
    }

    public boolean isBounded() {
        return isSuper() || isExtends();
    }

    public boolean isExtends() {
        return this.type == BoundType.EXTENDS;
    }

    public boolean isLowerBounded() {
        return isSuper();
    }

    public boolean isSuper() {
        return this.type == BoundType.SUPER;
    }

    public boolean isUpperBounded() {
        return isExtends();
    }

    @Override
    public boolean isWildcard() {
        return true;
    }

    @Override
    public boolean mention(List<ResolvedTypeParameterDeclaration> typeParameters) {
        ResolvedType resolvedType = this.boundedType;
        return resolvedType != null && resolvedType.mention(typeParameters);
    }

    @Override
    public ResolvedType replaceTypeVariables(ResolvedTypeParameterDeclaration tpToReplace, ResolvedType replaced, Map<ResolvedTypeParameterDeclaration, ResolvedType> inferredTypes) {
        if (replaced == null) {
            throw new IllegalArgumentException();
        }
        ResolvedType resolvedType = this.boundedType;
        if (resolvedType == null) {
            return this;
        }
        ResolvedType replaceTypeVariables = resolvedType.replaceTypeVariables(tpToReplace, replaced, inferredTypes);
        if (replaceTypeVariables != null) {
            return replaceTypeVariables != this.boundedType ? new ResolvedWildcard(this.type, replaceTypeVariables) : this;
        }
        throw new RuntimeException();
    }

    @Override
    public ResolvedType solveGenericTypes(Context context) {
        if (!isExtends() && !isSuper()) {
            return this;
        }
        ResolvedType solveGenericTypes = getBoundedType().solveGenericTypes(context);
        return isExtends() ? extendsBound(solveGenericTypes) : superBound(solveGenericTypes);
    }

    public String toString() {
        return "WildcardUsage{type=" + ((Object) this.type) + ", boundedType=" + ((Object) this.boundedType) + JavaElement.JEM_ANNOTATION;
    }
}
