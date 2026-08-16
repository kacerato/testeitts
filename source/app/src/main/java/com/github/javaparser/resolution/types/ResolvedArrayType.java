package com.github.javaparser.resolution.types;

import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;

public class ResolvedArrayType implements ResolvedType {
    private ResolvedType baseType;

    public ResolvedArrayType(ResolvedType baseType) {
        this.baseType = baseType;
    }

    @Override
    public ResolvedArrayType asArrayType() {
        return this;
    }

    @Override
    public String describe() {
        return this.baseType.describe() + okhttp3.v.f99450n;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        return o10 != null && getClass() == o10.getClass() && this.baseType.equals(((ResolvedArrayType) o10).baseType);
    }

    @Override
    public ResolvedType erasure() {
        return new ResolvedArrayType(this.baseType.erasure());
    }

    public ResolvedType getComponentType() {
        return this.baseType;
    }

    public int hashCode() {
        return this.baseType.hashCode();
    }

    @Override
    public boolean isArray() {
        return true;
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        if (other.isNull()) {
            return true;
        }
        if (!other.isArray()) {
            return false;
        }
        if (this.baseType.isPrimitive() && other.asArrayType().getComponentType().isPrimitive()) {
            return this.baseType.equals(other.asArrayType().getComponentType());
        }
        if ((this.baseType.isPrimitive() && other.asArrayType().getComponentType().isReferenceType()) || (this.baseType.isReferenceType() && other.asArrayType().getComponentType().isPrimitive())) {
            return false;
        }
        return this.baseType.isAssignableBy(other.asArrayType().getComponentType());
    }

    @Override
    public ResolvedType replaceTypeVariables(ResolvedTypeParameterDeclaration tpToReplace, ResolvedType replaced, Map<ResolvedTypeParameterDeclaration, ResolvedType> inferredTypes) {
        ResolvedType replaceTypeVariables = this.baseType.replaceTypeVariables(tpToReplace, replaced, inferredTypes);
        return replaceTypeVariables == this.baseType ? this : new ResolvedArrayType(replaceTypeVariables);
    }

    @Override
    public String toDescriptor() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        stringBuffer.append(this.baseType.toDescriptor());
        return stringBuffer.toString();
    }

    public String toString() {
        return "ResolvedArrayType{" + ((Object) this.baseType) + VectorFormat.DEFAULT_SUFFIX;
    }
}
