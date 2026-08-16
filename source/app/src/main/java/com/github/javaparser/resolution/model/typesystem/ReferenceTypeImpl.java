package com.github.javaparser.resolution.model.typesystem;

import com.github.javaparser.resolution.MethodUsage;
import com.github.javaparser.resolution.declarations.ResolvedFieldDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.logic.FunctionalInterfaceLogic;
import com.github.javaparser.resolution.model.LambdaArgumentTypePlaceholder;
import com.github.javaparser.resolution.model.typesystem.ReferenceTypeImpl;
import com.github.javaparser.resolution.types.ResolvedReferenceType;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeTransformer;
import com.github.javaparser.resolution.types.parametrization.ResolvedTypeParametersMap;
import j0.C13772d;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class ReferenceTypeImpl extends ResolvedReferenceType {
    private static final String[] ASSIGNABLE_REFERENCE_TYPE = {"java.lang.Object", "java.lang.Cloneable", "java.io.Serializable"};

    public ReferenceTypeImpl(ResolvedReferenceTypeDeclaration typeDeclaration) {
        super(typeDeclaration);
    }

    private boolean isAssignableByReferenceType(final String qname) {
        return Stream.of((Object[]) ASSIGNABLE_REFERENCE_TYPE).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isAssignableByReferenceType$1;
                lambda$isAssignableByReferenceType$1 = ReferenceTypeImpl.lambda$isAssignableByReferenceType$1(String.this, (String) obj);
                return lambda$isAssignableByReferenceType$1;
            }
        });
    }

    public ResolvedReferenceType lambda$getAllAncestors$4(ResolvedReferenceType a10) {
        return typeParametersMap().replaceAll(a10).asReferenceType();
    }

    public static void lambda$getDeclaredMethods$2(final Set methods, ResolvedReferenceTypeDeclaration referenceTypeDeclaration) {
        Iterator<ResolvedMethodDeclaration> it = referenceTypeDeclaration.getDeclaredMethods().iterator();
        while (it.hasNext()) {
            methods.add(new MethodUsage(it.next()));
        }
    }

    public ResolvedReferenceType lambda$getDirectAncestors$5(ResolvedReferenceType a10) {
        return typeParametersMap().replaceAll(a10).asReferenceType();
    }

    public Boolean lambda$isAssignableBy$0(ResolvedReferenceType ancestor) {
        return Boolean.valueOf(isAssignableBy(ancestor));
    }

    public static boolean lambda$isAssignableByReferenceType$1(final String qname, String ref) {
        return ref.equals(qname);
    }

    public static boolean lambda$mention$3(final List typeParameters, ResolvedType tp) {
        return tp.mention(typeParameters);
    }

    public static ResolvedReferenceType undeterminedParameters(ResolvedReferenceTypeDeclaration typeDeclaration) {
        return new ReferenceTypeImpl(typeDeclaration, (List) typeDeclaration.getTypeParameters().stream().map(new C13772d()).collect(Collectors.toList()));
    }

    @Override
    public ResolvedTypeParameterDeclaration asTypeParameter() {
        return this.typeDeclaration.asTypeParameter();
    }

    @Override
    public ResolvedReferenceType create(ResolvedReferenceTypeDeclaration typeDeclaration, List<ResolvedType> typeParametersCorrected) {
        return new ReferenceTypeImpl(typeDeclaration, typeParametersCorrected);
    }

    @Override
    public ResolvedReferenceType deriveTypeParameters(ResolvedTypeParametersMap typeParametersMap) {
        return create(this.typeDeclaration, typeParametersMap);
    }

    @Override
    public List<ResolvedReferenceType> getAllAncestors() {
        return getAllAncestors(ResolvedReferenceTypeDeclaration.depthFirstFunc);
    }

    @Override
    public Set<ResolvedFieldDeclaration> getDeclaredFields() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (getTypeDeclaration().isPresent()) {
            linkedHashSet.addAll(getTypeDeclaration().get().getDeclaredFields());
        }
        return linkedHashSet;
    }

    @Override
    public Set<MethodUsage> getDeclaredMethods() {
        final HashSet hashSet = new HashSet();
        getTypeDeclaration().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ReferenceTypeImpl.lambda$getDeclaredMethods$2(Set.this, (ResolvedReferenceTypeDeclaration) obj);
            }
        });
        return hashSet;
    }

    @Override
    public List<ResolvedReferenceType> getDirectAncestors() {
        List<ResolvedReferenceType> list = (List) this.typeDeclaration.getAncestors().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ResolvedReferenceType lambda$getDirectAncestors$5;
                lambda$getDirectAncestors$5 = ReferenceTypeImpl.this.lambda$getDirectAncestors$5((ResolvedReferenceType) obj);
                return lambda$getDirectAncestors$5;
            }
        }).collect(Collectors.toList());
        if (getTypeDeclaration().isPresent()) {
            ResolvedReferenceTypeDeclaration resolvedReferenceTypeDeclaration = getTypeDeclaration().get();
            if (resolvedReferenceTypeDeclaration.isClass()) {
                Optional<ResolvedReferenceType> superClass = resolvedReferenceTypeDeclaration.asClass().getSuperClass();
                boolean z10 = superClass.isPresent() && superClass.get().isJavaLangObject();
                boolean isJavaLangObject = resolvedReferenceTypeDeclaration.asClass().isJavaLangObject();
                if (z10 && !isJavaLangObject) {
                    list.add(superClass.get());
                }
            }
        }
        return list;
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        if (other instanceof NullType) {
            return !isPrimitive();
        }
        if (!other.isVoid() && isJavaLangObject()) {
            return true;
        }
        if (other.isPrimitive()) {
            if (isJavaLangObject() || isCorrespondingBoxingType(other.describe())) {
                return true;
            }
            return other.isNumericType() && isReferenceType() && asReferenceType().getQualifiedName().equals(Number.class.getCanonicalName());
        }
        if (other instanceof LambdaArgumentTypePlaceholder) {
            return FunctionalInterfaceLogic.isFunctionalInterfaceType(this);
        }
        if (other.isReferenceType()) {
            ResolvedReferenceType asReferenceType = other.asReferenceType();
            if (compareConsideringTypeParameters(asReferenceType)) {
                return true;
            }
            Iterator<ResolvedReferenceType> it = asReferenceType.getAllAncestors().iterator();
            while (it.hasNext()) {
                if (compareConsideringTypeParameters(it.next())) {
                    return true;
                }
            }
            return false;
        }
        if (other.isTypeVariable()) {
            for (ResolvedTypeParameterDeclaration.Bound bound : other.asTypeVariable().asTypeParameter().getBounds()) {
                if (bound.isExtends() && isAssignableBy(bound.getType())) {
                    return true;
                }
            }
            return false;
        }
        if (other.isConstraint()) {
            return isAssignableBy(other.asConstraintType().getBound());
        }
        if (other.isWildcard()) {
            if (isJavaLangObject()) {
                return true;
            }
            if (other.asWildcard().isExtends()) {
                return isAssignableBy(other.asWildcard().getBoundedType());
            }
            return false;
        }
        if (other.isUnionType()) {
            return ((Boolean) other.asUnionType().getCommonAncestor().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Boolean lambda$isAssignableBy$0;
                    lambda$isAssignableBy$0 = ReferenceTypeImpl.this.lambda$isAssignableBy$0((ResolvedReferenceType) obj);
                    return lambda$isAssignableBy$0;
                }
            }).orElse(Boolean.FALSE)).booleanValue();
        }
        if (other.isArray()) {
            return isAssignableByReferenceType(getQualifiedName());
        }
        return false;
    }

    @Override
    public boolean mention(final List<ResolvedTypeParameterDeclaration> typeParameters) {
        return typeParametersValues().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$mention$3;
                lambda$mention$3 = ReferenceTypeImpl.lambda$mention$3(List.this, (ResolvedType) obj);
                return lambda$mention$3;
            }
        });
    }

    @Override
    public ResolvedType toRawType() {
        return isRawType() ? this : new ReferenceTypeImpl(this.typeDeclaration, Collections.emptyList());
    }

    @Override
    public ResolvedType transformTypeParameters(ResolvedTypeTransformer transformer) {
        int i10 = 0;
        ResolvedReferenceType resolvedReferenceType = this;
        for (ResolvedType resolvedType : typeParametersValues()) {
            ResolvedType transform = transformer.transform(resolvedType);
            if (transform != resolvedType) {
                List<ResolvedType> typeParametersValues = resolvedReferenceType.asReferenceType().typeParametersValues();
                typeParametersValues.set(i10, transform);
                resolvedReferenceType = create(this.typeDeclaration, typeParametersValues);
            }
            i10++;
        }
        return resolvedReferenceType;
    }

    public ReferenceTypeImpl(ResolvedReferenceTypeDeclaration typeDeclaration, List<ResolvedType> typeArguments) {
        super(typeDeclaration, typeArguments);
    }

    @Override
    public ResolvedReferenceType create(ResolvedReferenceTypeDeclaration typeDeclaration) {
        return new ReferenceTypeImpl(typeDeclaration);
    }

    @Override
    public List<ResolvedReferenceType> getAllAncestors(Function<ResolvedReferenceTypeDeclaration, List<ResolvedReferenceType>> traverser) {
        return (List) this.typeDeclaration.getAllAncestors(traverser).stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ResolvedReferenceType lambda$getAllAncestors$4;
                lambda$getAllAncestors$4 = ReferenceTypeImpl.this.lambda$getAllAncestors$4((ResolvedReferenceType) obj);
                return lambda$getAllAncestors$4;
            }
        }).collect(Collectors.toList());
    }
}
