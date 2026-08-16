package com.github.javaparser.resolution.declarations;

import java.util.List;
import java.util.function.Predicate;
import java.util.function.Supplier;

public interface ResolvedEnumDeclaration extends ResolvedReferenceTypeDeclaration, HasAccessSpecifier {
    static boolean lambda$getEnumConstant$1(final String name, ResolvedEnumConstantDeclaration c10) {
        return c10.getName().equals(name);
    }

    static IllegalArgumentException lambda$getEnumConstant$2(final String name) {
        return new IllegalArgumentException("No constant named " + name);
    }

    static boolean lambda$hasEnumConstant$0(final String name, ResolvedEnumConstantDeclaration c10) {
        return c10.getName().equals(name);
    }

    @Override
    default ResolvedEnumDeclaration asEnum() {
        return this;
    }

    default ResolvedEnumConstantDeclaration getEnumConstant(final String name) {
        return getEnumConstants().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getEnumConstant$1;
                lambda$getEnumConstant$1 = ResolvedEnumDeclaration.lambda$getEnumConstant$1(String.this, (ResolvedEnumConstantDeclaration) obj);
                return lambda$getEnumConstant$1;
            }
        }).findFirst().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                IllegalArgumentException lambda$getEnumConstant$2;
                lambda$getEnumConstant$2 = ResolvedEnumDeclaration.lambda$getEnumConstant$2(String.this);
                return lambda$getEnumConstant$2;
            }
        });
    }

    List<ResolvedEnumConstantDeclaration> getEnumConstants();

    default boolean hasEnumConstant(final String name) {
        return getEnumConstants().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasEnumConstant$0;
                lambda$hasEnumConstant$0 = ResolvedEnumDeclaration.lambda$hasEnumConstant$0(String.this, (ResolvedEnumConstantDeclaration) obj);
                return lambda$hasEnumConstant$0;
            }
        });
    }

    @Override
    default boolean isEnum() {
        return true;
    }
}
