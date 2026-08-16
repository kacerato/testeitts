package com.github.javaparser.resolution.declarations;

import com.github.javaparser.resolution.UnsolvedSymbolException;
import java.util.Optional;
import java.util.Set;
import java.util.function.Predicate;
import java.util.function.Supplier;

public interface ResolvedTypeDeclaration extends ResolvedDeclaration {
    static boolean lambda$getInternalType$0(final String name, ResolvedReferenceTypeDeclaration f10) {
        return f10.getName().equals(name);
    }

    static UnsolvedSymbolException lambda$getInternalType$1(final String name) {
        return new UnsolvedSymbolException("Internal type not found: " + name);
    }

    static boolean lambda$hasInternalType$2(final String name, ResolvedReferenceTypeDeclaration f10) {
        return f10.getName().equals(name);
    }

    default ResolvedAnnotationDeclaration asAnnotation() {
        throw new UnsupportedOperationException(String.format("%s is not an annotation", this));
    }

    default ResolvedClassDeclaration asClass() {
        throw new UnsupportedOperationException(String.format("%s is not a class", this));
    }

    default ResolvedEnumDeclaration asEnum() {
        throw new UnsupportedOperationException(String.format("%s is not an enum", this));
    }

    default ResolvedInterfaceDeclaration asInterface() {
        throw new UnsupportedOperationException(String.format("%s is not an interface", this));
    }

    default ResolvedRecordDeclaration asRecord() {
        throw new UnsupportedOperationException(String.format("%s is not a record", this));
    }

    default ResolvedReferenceTypeDeclaration asReferenceType() {
        throw new UnsupportedOperationException(String.format("%s is not a reference type", this));
    }

    @Override
    default ResolvedTypeDeclaration asType() {
        return this;
    }

    default ResolvedTypeParameterDeclaration asTypeParameter() {
        throw new UnsupportedOperationException(String.format("%s is not a type parameter", this));
    }

    Optional<ResolvedReferenceTypeDeclaration> containerType();

    String getClassName();

    default String getId() {
        String qualifiedName = getQualifiedName();
        return qualifiedName == null ? String.format("<localClass>:%s", getName()) : qualifiedName;
    }

    default ResolvedReferenceTypeDeclaration getInternalType(final String name) {
        return internalTypes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getInternalType$0;
                lambda$getInternalType$0 = ResolvedTypeDeclaration.lambda$getInternalType$0(String.this, (ResolvedReferenceTypeDeclaration) obj);
                return lambda$getInternalType$0;
            }
        }).findFirst().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                UnsolvedSymbolException lambda$getInternalType$1;
                lambda$getInternalType$1 = ResolvedTypeDeclaration.lambda$getInternalType$1(String.this);
                return lambda$getInternalType$1;
            }
        });
    }

    String getPackageName();

    String getQualifiedName();

    default boolean hasInternalType(final String name) {
        return internalTypes().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasInternalType$2;
                lambda$hasInternalType$2 = ResolvedTypeDeclaration.lambda$hasInternalType$2(String.this, (ResolvedReferenceTypeDeclaration) obj);
                return lambda$hasInternalType$2;
            }
        });
    }

    default Set<ResolvedReferenceTypeDeclaration> internalTypes() {
        throw new UnsupportedOperationException("InternalTypes not available for " + getClass().getCanonicalName());
    }

    default boolean isAnnotation() {
        return false;
    }

    default boolean isAnonymousClass() {
        return false;
    }

    default boolean isClass() {
        return false;
    }

    default boolean isEnum() {
        return false;
    }

    default boolean isInterface() {
        return false;
    }

    default boolean isRecord() {
        return false;
    }

    default boolean isReferenceType() {
        return false;
    }

    @Override
    default boolean isType() {
        return true;
    }

    default boolean isTypeParameter() {
        return false;
    }
}
