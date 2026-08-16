package com.github.javaparser.resolution.model;

import com.github.javaparser.resolution.declarations.ResolvedMethodLikeDeclaration;
import com.github.javaparser.resolution.types.ResolvedType;

public class LambdaArgumentTypePlaceholder implements ResolvedType {
    private SymbolReference<? extends ResolvedMethodLikeDeclaration> method;
    private int pos;

    public LambdaArgumentTypePlaceholder(int pos) {
        this.pos = pos;
    }

    @Override
    public String describe() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isArray() {
        return false;
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isReferenceType() {
        return false;
    }

    @Override
    public boolean isTypeVariable() {
        return false;
    }

    public void setMethod(SymbolReference<? extends ResolvedMethodLikeDeclaration> method) {
        this.method = method;
    }
}
