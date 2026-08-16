package com.github.javaparser.resolution.types;

import org.eclipse.jdt.internal.core.JavaElement;

public class ResolvedLambdaConstraintType implements ResolvedType {
    private ResolvedType bound;

    private ResolvedLambdaConstraintType(ResolvedType bound) {
        this.bound = bound;
    }

    public static ResolvedLambdaConstraintType bound(ResolvedType bound) {
        return new ResolvedLambdaConstraintType(bound);
    }

    @Override
    public ResolvedLambdaConstraintType asConstraintType() {
        return this;
    }

    @Override
    public String describe() {
        return "? super " + this.bound.describe();
    }

    public ResolvedType getBound() {
        return this.bound;
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        return this.bound.isAssignableBy(other);
    }

    @Override
    public boolean isConstraint() {
        return true;
    }

    public String toString() {
        return "LambdaConstraintType{bound=" + ((Object) this.bound) + JavaElement.JEM_ANNOTATION;
    }
}
