package com.github.javaparser.resolution.types;

import com.github.javaparser.ast.AccessSpecifier;
import com.github.javaparser.resolution.MethodUsage;
import com.github.javaparser.resolution.declarations.ResolvedFieldDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.model.typesystem.LazyType;
import com.github.javaparser.resolution.types.parametrization.ResolvedTypeParameterValueProvider;
import com.github.javaparser.resolution.types.parametrization.ResolvedTypeParametersMap;
import com.github.javaparser.resolution.types.parametrization.ResolvedTypeParametrized;
import com.github.javaparser.utils.Pair;
import j0.C13772d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class ResolvedReferenceType implements ResolvedType, ResolvedTypeParametrized, ResolvedTypeParameterValueProvider {
    protected static String JAVA_LANG_ENUM = Enum.class.getCanonicalName();
    protected static String JAVA_LANG_OBJECT = Object.class.getCanonicalName();
    protected static String JAVA_LANG_RECORD = "java.lang.Record";
    protected ResolvedReferenceTypeDeclaration typeDeclaration;
    protected ResolvedTypeParametersMap typeParametersMap;

    public ResolvedReferenceType(ResolvedReferenceTypeDeclaration typeDeclaration) {
        this(typeDeclaration, deriveParams(typeDeclaration));
    }

    private boolean compareConsideringVariableTypeParameters(ResolvedType referenceType, ResolvedTypeVariable typeVariable) {
        List<ResolvedTypeParameterDeclaration.Bound> bounds = typeVariable.asTypeVariable().asTypeParameter().getBounds();
        if (bounds.size() != 1) {
            return false;
        }
        ResolvedType type = bounds.get(0).getType();
        return (!type.isReferenceType() || type.asReferenceType().typeParametersMap.isEmpty()) ? type.isAssignableBy(referenceType) : compareConsideringTypeParameters(type.asReferenceType());
    }

    private static List<ResolvedType> deriveParams(ResolvedReferenceTypeDeclaration typeDeclaration) {
        if (typeDeclaration == null) {
            throw new IllegalArgumentException("TypeDeclaration is not expected to be null");
        }
        List<ResolvedTypeParameterDeclaration> typeParameters = typeDeclaration.getTypeParameters();
        if (typeParameters != null) {
            return (List) typeParameters.stream().map(new C13772d()).collect(Collectors.toList());
        }
        throw new RuntimeException("Type parameters are not expected to be null");
    }

    private List<ResolvedType> erasureOfParamaters(ResolvedTypeParametersMap typeParametersMap) {
        return new ArrayList();
    }

    private boolean isJavaObject(ResolvedType rt) {
        return rt != null && rt.isReferenceType() && rt.asReferenceType().isJavaLangObject();
    }

    public String lambda$describe$0(ResolvedTypeParameterDeclaration tp) {
        return typeParametersMap().getValue(tp).describe();
    }

    public static boolean lambda$getAllClassesAncestors$3(ResolvedReferenceType it) {
        return it.getTypeDeclaration().isPresent();
    }

    public static boolean lambda$getAllClassesAncestors$4(ResolvedReferenceType it) {
        return it.getTypeDeclaration().get().isClass();
    }

    public static boolean lambda$getAllFieldsVisibleToInheritors$7(ResolvedFieldDeclaration f10) {
        return f10.accessSpecifier() != AccessSpecifier.PRIVATE;
    }

    public static void lambda$getAllFieldsVisibleToInheritors$8(final List res, ResolvedReferenceType a10) {
        res.addAll(a10.getAllFieldsVisibleToInheritors());
    }

    public static boolean lambda$getAllInterfacesAncestors$1(ResolvedReferenceType it) {
        return it.getTypeDeclaration().isPresent();
    }

    public static boolean lambda$getAllInterfacesAncestors$2(ResolvedReferenceType it) {
        return it.getTypeDeclaration().get().isInterface();
    }

    public static void lambda$getAllMethods$6(final List allMethods, ResolvedReferenceType a10) {
        allMethods.addAll(a10.getAllMethods());
    }

    public static boolean lambda$getAllMethodsVisibleToInheritors$9(ResolvedMethodDeclaration m10) {
        return m10.accessSpecifier() != AccessSpecifier.PRIVATE;
    }

    public boolean lambda$isUnboxable$12(ResolvedPrimitiveType pt) {
        return getQualifiedName().equals(pt.getBoxTypeQName());
    }

    public boolean lambda$toUnboxedType$13(ResolvedPrimitiveType pt) {
        return asReferenceType().getQualifiedName().equals(pt.getBoxTypeQName());
    }

    public ResolvedType lambda$typeParametersValues$5(ResolvedTypeParameterDeclaration tp) {
        return this.typeParametersMap.getValue(tp);
    }

    @Override
    public ResolvedReferenceType asReferenceType() {
        return this;
    }

    public boolean compareConsideringTypeParameters(ResolvedReferenceType other) {
        if (other.equals(this)) {
            return true;
        }
        if (!getQualifiedName().equals(other.getQualifiedName())) {
            return false;
        }
        if (isRawType() || other.isRawType()) {
            return true;
        }
        List<ResolvedType> typeParametersValues = typeParametersValues();
        if (typeParametersValues.size() != other.typeParametersValues().size()) {
            throw new IllegalStateException();
        }
        for (int i10 = 0; i10 < typeParametersValues.size(); i10++) {
            ResolvedType resolvedType = typeParametersValues.get(i10);
            ResolvedType resolvedType2 = other.typeParametersValues().get(i10);
            if (!resolvedType.equals(resolvedType2)) {
                if (!(resolvedType instanceof ResolvedWildcard)) {
                    boolean z10 = resolvedType instanceof ResolvedTypeVariable;
                    if (z10 && (resolvedType2 instanceof ResolvedTypeVariable)) {
                        List list = (List) resolvedType.asTypeVariable().asTypeParameter().getBounds().stream().map(new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return ((ResolvedTypeParameterDeclaration.Bound) obj).getType();
                            }
                        }).map(new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                ResolvedType erasure;
                                erasure = ((ResolvedType) obj).erasure();
                                return erasure;
                            }
                        }).collect(Collectors.toList());
                        List list2 = (List) resolvedType2.asTypeVariable().asTypeParameter().getBounds().stream().map(new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return ((ResolvedTypeParameterDeclaration.Bound) obj).getType();
                            }
                        }).map(new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                ResolvedType erasure;
                                erasure = ((ResolvedType) obj).erasure();
                                return erasure;
                            }
                        }).collect(Collectors.toList());
                        return list.size() == list2.size() && list2.containsAll(list);
                    }
                    if (!z10 && (resolvedType2 instanceof ResolvedTypeVariable)) {
                        return compareConsideringVariableTypeParameters(resolvedType, (ResolvedTypeVariable) resolvedType2);
                    }
                    if (!z10 || (resolvedType2 instanceof ResolvedTypeVariable)) {
                        return false;
                    }
                    return compareConsideringVariableTypeParameters(resolvedType2, (ResolvedTypeVariable) resolvedType);
                }
                ResolvedWildcard resolvedWildcard = (ResolvedWildcard) resolvedType;
                if ((!resolvedWildcard.isSuper() || !resolvedType2.isAssignableBy(resolvedWildcard.getBoundedType())) && ((!resolvedWildcard.isExtends() || !resolvedWildcard.getBoundedType().isAssignableBy(resolvedType2)) && resolvedWildcard.isBounded())) {
                    return false;
                }
            }
        }
        return true;
    }

    public abstract ResolvedReferenceType create(ResolvedReferenceTypeDeclaration typeDeclaration);

    public ResolvedReferenceType create(ResolvedReferenceTypeDeclaration typeDeclaration, final ResolvedTypeParametersMap typeParametersMap) {
        Stream<ResolvedTypeParameterDeclaration> stream = typeDeclaration.getTypeParameters().stream();
        typeParametersMap.getClass();
        return create(typeDeclaration, (List<ResolvedType>) stream.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ResolvedTypeParametersMap.this.getValue((ResolvedTypeParameterDeclaration) obj);
            }
        }).collect(Collectors.toList()));
    }

    public abstract ResolvedReferenceType create(ResolvedReferenceTypeDeclaration typeDeclaration, List<ResolvedType> typeParameters);

    public abstract ResolvedReferenceType deriveTypeParameters(ResolvedTypeParametersMap typeParametersMap);

    @Override
    public String describe() {
        StringBuilder sb2 = new StringBuilder();
        if (hasName()) {
            sb2.append(this.typeDeclaration.getQualifiedName());
        } else {
            sb2.append("<anonymous class>");
        }
        if (!typeParametersMap().isEmpty()) {
            sb2.append("<");
            sb2.append(String.join(", ", (Iterable<? extends CharSequence>) this.typeDeclaration.getTypeParameters().stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    String lambda$describe$0;
                    lambda$describe$0 = ResolvedReferenceType.this.lambda$describe$0((ResolvedTypeParameterDeclaration) obj);
                    return lambda$describe$0;
                }
            }).collect(Collectors.toList())));
            sb2.append(">");
        }
        return sb2.toString();
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null) {
            return false;
        }
        if (o10 instanceof LazyType) {
            LazyType lazyType = (LazyType) o10;
            if (lazyType.isReferenceType()) {
                return equals(lazyType.asReferenceType());
            }
            return false;
        }
        if (getClass() != o10.getClass()) {
            return false;
        }
        ResolvedReferenceType resolvedReferenceType = (ResolvedReferenceType) o10;
        return this.typeDeclaration.equals(resolvedReferenceType.typeDeclaration) && this.typeParametersMap.equals(resolvedReferenceType.typeParametersMap);
    }

    @Override
    public ResolvedType erasure() {
        return !this.typeDeclaration.isGeneric() ? this : create(this.typeDeclaration, erasureOfParamaters(this.typeParametersMap));
    }

    public abstract List<ResolvedReferenceType> getAllAncestors();

    public abstract List<ResolvedReferenceType> getAllAncestors(Function<ResolvedReferenceTypeDeclaration, List<ResolvedReferenceType>> traverser);

    public final List<ResolvedReferenceType> getAllClassesAncestors() {
        return (List) getAllAncestors().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAllClassesAncestors$3;
                lambda$getAllClassesAncestors$3 = ResolvedReferenceType.lambda$getAllClassesAncestors$3((ResolvedReferenceType) obj);
                return lambda$getAllClassesAncestors$3;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAllClassesAncestors$4;
                lambda$getAllClassesAncestors$4 = ResolvedReferenceType.lambda$getAllClassesAncestors$4((ResolvedReferenceType) obj);
                return lambda$getAllClassesAncestors$4;
            }
        }).collect(Collectors.toList());
    }

    public List<ResolvedFieldDeclaration> getAllFieldsVisibleToInheritors() {
        final LinkedList linkedList = new LinkedList((Collection) getDeclaredFields().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAllFieldsVisibleToInheritors$7;
                lambda$getAllFieldsVisibleToInheritors$7 = ResolvedReferenceType.lambda$getAllFieldsVisibleToInheritors$7((ResolvedFieldDeclaration) obj);
                return lambda$getAllFieldsVisibleToInheritors$7;
            }
        }).collect(Collectors.toList()));
        getDirectAncestors().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ResolvedReferenceType.lambda$getAllFieldsVisibleToInheritors$8(List.this, (ResolvedReferenceType) obj);
            }
        });
        return linkedList;
    }

    public final List<ResolvedReferenceType> getAllInterfacesAncestors() {
        return (List) getAllAncestors().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAllInterfacesAncestors$1;
                lambda$getAllInterfacesAncestors$1 = ResolvedReferenceType.lambda$getAllInterfacesAncestors$1((ResolvedReferenceType) obj);
                return lambda$getAllInterfacesAncestors$1;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAllInterfacesAncestors$2;
                lambda$getAllInterfacesAncestors$2 = ResolvedReferenceType.lambda$getAllInterfacesAncestors$2((ResolvedReferenceType) obj);
                return lambda$getAllInterfacesAncestors$2;
            }
        }).collect(Collectors.toList());
    }

    public List<ResolvedMethodDeclaration> getAllMethods() {
        if (!getTypeDeclaration().isPresent()) {
            return new ArrayList();
        }
        final LinkedList linkedList = new LinkedList(getTypeDeclaration().get().getDeclaredMethods());
        getDirectAncestors().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ResolvedReferenceType.lambda$getAllMethods$6(List.this, (ResolvedReferenceType) obj);
            }
        });
        return linkedList;
    }

    public List<ResolvedMethodDeclaration> getAllMethodsVisibleToInheritors() {
        return (List) getAllMethods().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAllMethodsVisibleToInheritors$9;
                lambda$getAllMethodsVisibleToInheritors$9 = ResolvedReferenceType.lambda$getAllMethodsVisibleToInheritors$9((ResolvedMethodDeclaration) obj);
                return lambda$getAllMethodsVisibleToInheritors$9;
            }
        }).collect(Collectors.toList());
    }

    public abstract Set<ResolvedFieldDeclaration> getDeclaredFields();

    public abstract Set<MethodUsage> getDeclaredMethods();

    public abstract List<ResolvedReferenceType> getDirectAncestors();

    public Optional<ResolvedType> getFieldType(String name) {
        return !this.typeDeclaration.hasField(name) ? Optional.empty() : Optional.of(useThisTypeParametersOnTheGivenType(this.typeDeclaration.getField(name).getType()));
    }

    @Override
    public Optional<ResolvedType> getGenericParameterByName(String name) {
        for (ResolvedTypeParameterDeclaration resolvedTypeParameterDeclaration : this.typeDeclaration.getTypeParameters()) {
            if (resolvedTypeParameterDeclaration.getName().equals(name)) {
                return Optional.of(typeParametersMap().getValue(resolvedTypeParameterDeclaration));
            }
        }
        return Optional.empty();
    }

    public String getId() {
        return this.typeDeclaration.getId();
    }

    public String getQualifiedName() {
        return this.typeDeclaration.getQualifiedName();
    }

    public final Optional<ResolvedReferenceTypeDeclaration> getTypeDeclaration() {
        return Optional.of(this.typeDeclaration);
    }

    public List<Pair<ResolvedTypeParameterDeclaration, ResolvedType>> getTypeParametersMap() {
        ArrayList arrayList = new ArrayList();
        if (!isRawType()) {
            for (int i10 = 0; i10 < this.typeDeclaration.getTypeParameters().size(); i10++) {
                arrayList.add(new Pair(this.typeDeclaration.getTypeParameters().get(i10), typeParametersValues().get(i10)));
            }
        }
        return arrayList;
    }

    public boolean hasName() {
        return this.typeDeclaration.hasName();
    }

    public int hashCode() {
        return (this.typeDeclaration.hashCode() * 31) + this.typeParametersMap.hashCode();
    }

    @Override
    public abstract boolean isAssignableBy(ResolvedType other);

    public boolean isCorrespondingBoxingType(String typeName) {
        return getQualifiedName().equals(((ResolvedPrimitiveType) ResolvedPrimitiveType.byName(typeName)).getBoxTypeQName());
    }

    public boolean isJavaLangEnum() {
        return isReferenceType() && hasName() && getQualifiedName().equals(JAVA_LANG_ENUM);
    }

    public boolean isJavaLangObject() {
        return isReferenceType() && hasName() && getQualifiedName().equals(JAVA_LANG_OBJECT);
    }

    public boolean isJavaLangRecord() {
        return isReferenceType() && hasName() && getQualifiedName().equals(JAVA_LANG_RECORD);
    }

    public boolean isRawType() {
        return !this.typeDeclaration.getTypeParameters().isEmpty() && typeParametersMap().isEmpty();
    }

    @Override
    public final boolean isReferenceType() {
        return true;
    }

    public boolean isUnboxable() {
        return Arrays.stream(ResolvedPrimitiveType.values()).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isUnboxable$12;
                lambda$isUnboxable$12 = ResolvedReferenceType.this.lambda$isUnboxable$12((ResolvedPrimitiveType) obj);
                return lambda$isUnboxable$12;
            }
        });
    }

    public boolean isUnboxableTo(ResolvedPrimitiveType primitiveType) {
        return primitiveType.getBoxTypeQName().equals(asReferenceType().describe());
    }

    @Override
    public ResolvedType replaceTypeVariables(ResolvedTypeParameterDeclaration tpToReplace, ResolvedType replaced, Map<ResolvedTypeParameterDeclaration, ResolvedType> inferredTypes) {
        if (replaced == null) {
            throw new IllegalArgumentException();
        }
        int i10 = 0;
        ResolvedReferenceType resolvedReferenceType = this;
        for (ResolvedType resolvedType : typeParametersValues()) {
            ResolvedType replaceTypeVariables = resolvedType.replaceTypeVariables(tpToReplace, replaced, inferredTypes);
            if (resolvedType.isTypeVariable() && resolvedType.asTypeVariable().describe().equals(tpToReplace.getName())) {
                inferredTypes.put(resolvedType.asTypeParameter(), replaced);
            }
            List<ResolvedType> typeParametersValues = resolvedReferenceType.asReferenceType().typeParametersValues();
            typeParametersValues.set(i10, replaceTypeVariables);
            resolvedReferenceType = create(this.typeDeclaration, typeParametersValues);
            i10++;
        }
        List<ResolvedType> typeParametersValues2 = resolvedReferenceType.typeParametersValues();
        if (typeParametersValues2.contains(tpToReplace)) {
            typeParametersValues2.set(typeParametersValues2.indexOf(tpToReplace), replaced);
            if (resolvedReferenceType.getTypeDeclaration().isPresent()) {
                return create(resolvedReferenceType.getTypeDeclaration().get(), typeParametersValues2);
            }
        }
        return resolvedReferenceType;
    }

    @Override
    public String toDescriptor() {
        return String.format("L%s;", getQualifiedName().replace(".", "/"));
    }

    public abstract ResolvedType toRawType();

    public String toString() {
        return "ReferenceType{" + getQualifiedName() + ", typeParametersMap=" + ((Object) this.typeParametersMap) + JavaElement.JEM_ANNOTATION;
    }

    public Optional<ResolvedPrimitiveType> toUnboxedType() {
        return Arrays.stream(ResolvedPrimitiveType.values()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$toUnboxedType$13;
                lambda$toUnboxedType$13 = ResolvedReferenceType.this.lambda$toUnboxedType$13((ResolvedPrimitiveType) obj);
                return lambda$toUnboxedType$13;
            }
        }).findFirst();
    }

    public abstract ResolvedType transformTypeParameters(ResolvedTypeTransformer transformer);

    @Override
    public Optional<ResolvedType> typeParamValue(ResolvedTypeParameterDeclaration typeParameterDeclaration) {
        if (typeParameterDeclaration.declaredOnMethod()) {
            throw new IllegalArgumentException();
        }
        if (!getTypeDeclaration().isPresent()) {
            return Optional.empty();
        }
        if (getTypeDeclaration().get().getId().equals(typeParameterDeclaration.getContainerId())) {
            return Optional.of(typeParametersMap().getValue(typeParameterDeclaration));
        }
        for (ResolvedReferenceType resolvedReferenceType : getAllAncestors()) {
            if (resolvedReferenceType.getId().equals(typeParameterDeclaration.getContainerId())) {
                return Optional.of(resolvedReferenceType.typeParametersMap().getValue(typeParameterDeclaration));
            }
        }
        return Optional.empty();
    }

    @Override
    public ResolvedTypeParametersMap typeParametersMap() {
        return this.typeParametersMap;
    }

    public List<ResolvedType> typeParametersValues() {
        return this.typeParametersMap.isEmpty() ? Collections.emptyList() : (List) this.typeDeclaration.getTypeParameters().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ResolvedType lambda$typeParametersValues$5;
                lambda$typeParametersValues$5 = ResolvedReferenceType.this.lambda$typeParametersValues$5((ResolvedTypeParameterDeclaration) obj);
                return lambda$typeParametersValues$5;
            }
        }).collect(Collectors.toList());
    }

    public ResolvedReferenceType(ResolvedReferenceTypeDeclaration typeDeclaration, List<ResolvedType> typeArguments) {
        if (typeDeclaration != null) {
            if (!typeDeclaration.isTypeParameter()) {
                if (typeArguments.size() > 0 && typeArguments.size() != typeDeclaration.getTypeParameters().size()) {
                    throw new IllegalArgumentException(String.format("expected either zero type arguments or has many as defined in the declaration (%d). Found %d", Integer.valueOf(typeDeclaration.getTypeParameters().size()), Integer.valueOf(typeArguments.size())));
                }
                ResolvedTypeParametersMap.Builder builder = new ResolvedTypeParametersMap.Builder();
                for (int i10 = 0; i10 < typeArguments.size(); i10++) {
                    builder.setValue(typeDeclaration.getTypeParameters().get(i10), typeArguments.get(i10));
                }
                this.typeParametersMap = builder.build();
                this.typeDeclaration = typeDeclaration;
                return;
            }
            throw new IllegalArgumentException("You should use only Classes, Interfaces and enums");
        }
        throw new IllegalArgumentException("TypeDeclaration is not expected to be null");
    }
}
