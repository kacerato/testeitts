package com.github.javaparser.resolution.logic;

import com.github.javaparser.resolution.types.ResolvedType;

public class ConflictingGenericTypesException extends RuntimeException {
    public ConflictingGenericTypesException(ResolvedType formalType, ResolvedType actualType) {
        super(String.format("No matching between %s (formal) and %s (actual)", formalType, actualType));
    }
}
