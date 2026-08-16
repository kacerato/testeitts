package com.github.javaparser.resolution.types;

import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;

public class ResolvedTypeVariable implements ResolvedType {
    private ResolvedTypeParameterDeclaration typeParameter;

    public ResolvedTypeVariable(ResolvedTypeParameterDeclaration typeParameter) {
        this.typeParameter = typeParameter;
    }

    @Override
    public ResolvedTypeParameterDeclaration asTypeParameter() {
        return this.typeParameter;
    }

    @Override
    public ResolvedTypeVariable asTypeVariable() {
        return this;
    }

    @Override
    public String describe() {
        return this.typeParameter.getName();
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        ResolvedTypeVariable resolvedTypeVariable = (ResolvedTypeVariable) o10;
        return this.typeParameter.getName().equals(resolvedTypeVariable.typeParameter.getName()) && this.typeParameter.declaredOnType() == resolvedTypeVariable.typeParameter.declaredOnType() && this.typeParameter.declaredOnMethod() == resolvedTypeVariable.typeParameter.declaredOnMethod();
    }

    @Override
    public ResolvedType erasure() {
        return this.typeParameter.isBounded() ? this.typeParameter.getBounds().get(0).getType() : this.typeParameter.object();
    }

    public int hashCode() {
        return this.typeParameter.hashCode();
    }

    @Override
    public boolean isArray() {
        return false;
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        if (other.isTypeVariable()) {
            return (this.typeParameter.hasBound() && other.asTypeVariable().asTypeParameter().hasBound()) ? this.typeParameter.getBounds().get(0).getType().isAssignableBy(other.asTypeVariable().asTypeParameter().getBounds().get(0).getType()) : describe().equals(other.describe());
        }
        return true;
    }

    @Override
    public boolean isReferenceType() {
        return false;
    }

    @Override
    public boolean isTypeVariable() {
        return true;
    }

    @Override
    public boolean mention(List<ResolvedTypeParameterDeclaration> typeParameters) {
        return typeParameters.contains(this.typeParameter);
    }

    public String qualifiedName() {
        return this.typeParameter.getQualifiedName();
    }

    @Override
    public ResolvedType replaceTypeVariables(ResolvedTypeParameterDeclaration tpToBeReplaced, ResolvedType replaced, Map<ResolvedTypeParameterDeclaration, ResolvedType> inferredTypes) {
        if (!tpToBeReplaced.getName().equals(this.typeParameter.getName())) {
            return this;
        }
        inferredTypes.put(asTypeParameter(), replaced);
        return replaced;
    }

    @Override
    public ResolvedType solveGenericTypes(Context context) {
        return context.solveGenericType(describe()).orElse(this);
    }

    @Override
    public String toDescriptor() {
        return String.format("L%s;", qualifiedName());
    }

    public String toString() {
        return "TypeVariable {" + this.typeParameter.toString() + VectorFormat.DEFAULT_SUFFIX;
    }
}
