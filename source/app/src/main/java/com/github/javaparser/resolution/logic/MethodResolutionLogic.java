package com.github.javaparser.resolution.logic;

import com.github.javaparser.resolution.MethodAmbiguityException;
import com.github.javaparser.resolution.MethodUsage;
import com.github.javaparser.resolution.TypeSolver;
import com.github.javaparser.resolution.declarations.ResolvedDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedMethodLikeDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedParameterDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedTypeDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.logic.MethodResolutionLogic;
import com.github.javaparser.resolution.model.SymbolReference;
import com.github.javaparser.resolution.model.typesystem.ReferenceTypeImpl;
import com.github.javaparser.resolution.types.ResolvedArrayType;
import com.github.javaparser.resolution.types.ResolvedPrimitiveType;
import com.github.javaparser.resolution.types.ResolvedReferenceType;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeTransformer;
import com.github.javaparser.resolution.types.ResolvedTypeVariable;
import com.github.javaparser.resolution.types.ResolvedWildcard;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class MethodResolutionLogic {
    private static String JAVA_LANG_OBJECT = Object.class.getCanonicalName();

    private static boolean areOverride(MethodUsage winningCandidate, MethodUsage other) {
        if (!winningCandidate.getName().equals(other.getName()) || winningCandidate.getNoParams() != other.getNoParams()) {
            return false;
        }
        for (int i10 = 0; i10 < winningCandidate.getNoParams(); i10++) {
            if (!winningCandidate.getParamTypes().get(i10).equals(other.getParamTypes().get(i10))) {
                return false;
            }
        }
        return true;
    }

    private static ResolvedArrayType convertToVariadicParameter(ResolvedType type) {
        return type.isArray() ? type.asArrayType() : new ResolvedArrayType(type);
    }

    private static <T> Predicate<T> distinctByKey(final Function<? super T, ?> keyExtractor) {
        final ConcurrentHashMap.KeySetView newKeySet = ConcurrentHashMap.newKeySet();
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$distinctByKey$1;
                lambda$distinctByKey$1 = MethodResolutionLogic.lambda$distinctByKey$1(Set.this, keyExtractor, obj);
                return lambda$distinctByKey$1;
            }
        };
    }

    private static ResolvedType findCommonType(List<ResolvedType> variadicValues) {
        if (variadicValues.isEmpty()) {
            throw new IllegalArgumentException();
        }
        return variadicValues.get(0);
    }

    public static SymbolReference<ResolvedMethodDeclaration> findMostApplicable(List<ResolvedMethodDeclaration> methods, String name, List<ResolvedType> argumentsTypes, TypeSolver typeSolver) {
        SymbolReference<ResolvedMethodDeclaration> findMostApplicable = findMostApplicable(methods, name, argumentsTypes, typeSolver, false);
        return findMostApplicable.isSolved() ? findMostApplicable : findMostApplicable(methods, name, argumentsTypes, typeSolver, true);
    }

    public static Optional<MethodUsage> findMostApplicableUsage(List<MethodUsage> methods, final String name, final List<ResolvedType> argumentsTypes, final TypeSolver typeSolver) {
        List list = (List) methods.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findMostApplicableUsage$4;
                lambda$findMostApplicableUsage$4 = MethodResolutionLogic.lambda$findMostApplicableUsage$4(String.this, argumentsTypes, typeSolver, (MethodUsage) obj);
                return lambda$findMostApplicableUsage$4;
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            return Optional.empty();
        }
        if (list.size() == 1) {
            return Optional.of(list.get(0));
        }
        MethodUsage methodUsage = (MethodUsage) list.get(0);
        for (int i10 = 1; i10 < list.size(); i10++) {
            MethodUsage methodUsage2 = (MethodUsage) list.get(i10);
            if (!isMoreSpecific(methodUsage, methodUsage2, argumentsTypes)) {
                if (isMoreSpecific(methodUsage2, methodUsage, argumentsTypes)) {
                    methodUsage = methodUsage2;
                } else if (methodUsage.declaringType().getQualifiedName().equals(methodUsage2.declaringType().getQualifiedName()) && !areOverride(methodUsage, methodUsage2)) {
                    throw new MethodAmbiguityException("Ambiguous method call: cannot find a most applicable method: " + ((Object) methodUsage) + ", " + ((Object) methodUsage2) + ". First declared in " + methodUsage.declaringType().getQualifiedName());
                }
            }
        }
        return Optional.of(methodUsage);
    }

    private static int getLastParameterIndex(int countOfMethodParametersDeclared) {
        return Math.max(0, countOfMethodParametersDeclared - 1);
    }

    public static ResolvedType getMethodUsageExplicitAndVariadicParameterType(MethodUsage method, int i10) {
        int noParams = method.getNoParams();
        if (i10 < noParams) {
            return method.getParamType(i10);
        }
        if (method.getDeclaration().hasVariadicParameter()) {
            return method.getParamType(noParams - 1);
        }
        return null;
    }

    public static ResolvedType getMethodsExplicitAndVariadicParameterType(ResolvedMethodLikeDeclaration method, int i10) {
        int numberOfParams = method.getNumberOfParams();
        if (i10 < numberOfParams) {
            return method.getParam(i10).getType();
        }
        if (method.hasVariadicParameter()) {
            return method.getParam(numberOfParams - 1).getType();
        }
        return null;
    }

    private static List<ResolvedType> groupTrailingArgumentsIntoArray(ResolvedMethodDeclaration methodDeclaration, List<ResolvedType> needleArgumentTypes, ResolvedType expectedVariadicParameterType) {
        int numberOfParams = methodDeclaration.getNumberOfParams();
        int lastParameterIndex = getLastParameterIndex(numberOfParams);
        int size = needleArgumentTypes.size();
        int lastParameterIndex2 = getLastParameterIndex(size);
        if (size > numberOfParams) {
            needleArgumentTypes = groupVariadicParamValues(needleArgumentTypes, lastParameterIndex, methodDeclaration.getLastParam().getType());
        }
        if (size == numberOfParams - 1) {
            return groupVariadicParamValues(needleArgumentTypes, lastParameterIndex, methodDeclaration.getLastParam().getType());
        }
        if (size != numberOfParams) {
            return needleArgumentTypes;
        }
        ResolvedType resolvedType = needleArgumentTypes.get(lastParameterIndex2);
        return (resolvedType.isArray() && expectedVariadicParameterType.isAssignableBy(resolvedType.asArrayType().getComponentType())) ? needleArgumentTypes : groupVariadicParamValues(needleArgumentTypes, lastParameterIndex, methodDeclaration.getLastParam().getType());
    }

    private static List<ResolvedType> groupVariadicParamValues(List<ResolvedType> argumentsTypes, int startVariadic, ResolvedType variadicType) {
        ArrayList arrayList = new ArrayList(argumentsTypes.subList(0, startVariadic));
        List<ResolvedType> subList = argumentsTypes.subList(startVariadic, argumentsTypes.size());
        if (subList.isEmpty()) {
            arrayList.add(variadicType);
        } else {
            arrayList.add(convertToVariadicParameter(findCommonType(subList)));
        }
        return arrayList;
    }

    public static void inferTypes(ResolvedType source, ResolvedType target, Map<ResolvedTypeParameterDeclaration, ResolvedType> mappings) {
        if (source.equals(target)) {
            return;
        }
        if (source.isReferenceType() && target.isReferenceType()) {
            ResolvedReferenceType asReferenceType = source.asReferenceType();
            ResolvedReferenceType asReferenceType2 = target.asReferenceType();
            if (!asReferenceType.getQualifiedName().equals(asReferenceType2.getQualifiedName()) || asReferenceType.isRawType() || asReferenceType2.isRawType()) {
                return;
            }
            for (int i10 = 0; i10 < asReferenceType.typeParametersValues().size(); i10++) {
                inferTypes(asReferenceType.typeParametersValues().get(i10), asReferenceType2.typeParametersValues().get(i10), mappings);
            }
            return;
        }
        if (source.isReferenceType() && target.isWildcard()) {
            if (target.asWildcard().isBounded()) {
                inferTypes(source, target.asWildcard().getBoundedType(), mappings);
                return;
            }
            return;
        }
        if (source.isWildcard() && target.isWildcard()) {
            if (source.asWildcard().isBounded() && target.asWildcard().isBounded()) {
                inferTypes(source.asWildcard().getBoundedType(), target.asWildcard().getBoundedType(), mappings);
                return;
            }
            return;
        }
        if (source.isReferenceType() && target.isTypeVariable()) {
            mappings.put(target.asTypeParameter(), source);
            return;
        }
        if (source.isWildcard() && target.isTypeVariable()) {
            mappings.put(target.asTypeParameter(), source);
            return;
        }
        if (source.isArray() && target.isArray()) {
            inferTypes(source.asArrayType().getComponentType(), target.asArrayType().getComponentType(), mappings);
            return;
        }
        if (source.isArray() && target.isWildcard()) {
            if (target.asWildcard().isBounded()) {
                inferTypes(source, target.asWildcard().getBoundedType(), mappings);
                return;
            }
            return;
        }
        if (source.isArray() && target.isTypeVariable()) {
            mappings.put(target.asTypeParameter(), source);
            return;
        }
        if (source.isWildcard() && target.isReferenceType()) {
            if (source.asWildcard().isBounded()) {
                inferTypes(source.asWildcard().getBoundedType(), target, mappings);
                return;
            }
            return;
        }
        if (source.isConstraint() && target.isReferenceType()) {
            inferTypes(source.asConstraintType().getBound(), target, mappings);
            return;
        }
        if (source.isConstraint() && target.isTypeVariable()) {
            inferTypes(source.asConstraintType().getBound(), target, mappings);
            return;
        }
        if (source.isTypeVariable() && target.isTypeVariable()) {
            mappings.put(target.asTypeParameter(), source);
            return;
        }
        if (source.isTypeVariable()) {
            inferTypes(target, source, mappings);
        } else {
            if (source.isPrimitive() || target.isPrimitive() || source.isNull() || !target.isReferenceType()) {
                return;
            }
            target.asReferenceType().isJavaLangObject();
        }
    }

    public static boolean isApplicable(ResolvedMethodDeclaration method, String name, List<ResolvedType> argumentsTypes, TypeSolver typeSolver) {
        return isApplicable(method, name, argumentsTypes, typeSolver, false);
    }

    private static boolean isArrayOfObject(ResolvedType type) {
        return type.isArray() && type.asArrayType().getComponentType().isReferenceType() && type.asArrayType().getComponentType().asReferenceType().isJavaLangObject();
    }

    public static boolean isAssignableMatchTypeParameters(ResolvedType expected, ResolvedType actual, Map<String, ResolvedType> matchedParameters) {
        if (expected.isReferenceType() && actual.isReferenceType()) {
            return isAssignableMatchTypeParameters(expected.asReferenceType(), actual.asReferenceType(), matchedParameters);
        }
        if (expected.isReferenceType() && ResolvedPrimitiveType.isBoxType(expected) && actual.isPrimitive()) {
            ResolvedPrimitiveType.byBoxTypeQName(expected.asReferenceType().getQualifiedName()).get().asPrimitive();
            return expected.isAssignableBy(actual);
        }
        if (expected.isTypeVariable()) {
            matchedParameters.put(expected.asTypeParameter().getName(), actual);
            return true;
        }
        if (expected.isArray()) {
            matchedParameters.put(expected.asArrayType().getComponentType().toString(), actual);
            return true;
        }
        throw new UnsupportedOperationException(expected.getClass().getCanonicalName() + " " + actual.getClass().getCanonicalName());
    }

    private static boolean isAssignableMatchTypeParametersMatchingQName(ResolvedReferenceType expected, ResolvedReferenceType actual, Map<String, ResolvedType> matchedParameters) {
        if (!expected.getQualifiedName().equals(actual.getQualifiedName())) {
            return false;
        }
        if (expected.typeParametersValues().size() != actual.typeParametersValues().size()) {
            throw new UnsupportedOperationException();
        }
        if (expected.typeParametersValues().size() <= 0) {
            return true;
        }
        ResolvedType resolvedType = expected.typeParametersValues().get(0);
        ResolvedType resolvedType2 = actual.typeParametersValues().get(0);
        if (resolvedType.isReferenceType() && resolvedType2.isReferenceType()) {
            return isAssignableMatchTypeParameters(resolvedType.asReferenceType(), resolvedType2.asReferenceType(), matchedParameters);
        }
        if (resolvedType.isArray() && resolvedType2.isArray()) {
            return isAssignableMatchTypeParameters(resolvedType.asArrayType().getComponentType(), resolvedType2.asArrayType().getComponentType(), matchedParameters);
        }
        if (resolvedType.isTypeVariable()) {
            String name = resolvedType.asTypeParameter().getName();
            if (resolvedType2.isTypeVariable() && resolvedType2.asTypeParameter().getName().equals(name)) {
                return true;
            }
            return matchTypeVariable(resolvedType.asTypeVariable(), resolvedType2, matchedParameters);
        }
        if (resolvedType.isReferenceType()) {
            if (resolvedType2.isTypeVariable()) {
                return matchTypeVariable(resolvedType2.asTypeVariable(), resolvedType, matchedParameters);
            }
            if (!resolvedType.equals(resolvedType2)) {
                return false;
            }
        }
        if (!resolvedType.isWildcard()) {
            throw new UnsupportedOperationException(resolvedType.describe());
        }
        if (!resolvedType.asWildcard().isExtends()) {
            return true;
        }
        if (!resolvedType2.isWildcard() || resolvedType2.asWildcard().isBounded()) {
            return resolvedType2.isTypeVariable() ? matchTypeVariable(resolvedType2.asTypeVariable(), resolvedType.asWildcard().getBoundedType(), matchedParameters) : isAssignableMatchTypeParameters(resolvedType.asWildcard().getBoundedType(), resolvedType2, matchedParameters);
        }
        return true;
    }

    public static boolean isExactMatch(ResolvedMethodLikeDeclaration method, List<ResolvedType> argumentsTypes) {
        for (int i10 = 0; i10 < method.getNumberOfParams(); i10++) {
            ResolvedType methodsExplicitAndVariadicParameterType = getMethodsExplicitAndVariadicParameterType(method, i10);
            if (methodsExplicitAndVariadicParameterType == null || i10 >= argumentsTypes.size() || !methodsExplicitAndVariadicParameterType.equals(argumentsTypes.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private static boolean isJavaLangObject(ResolvedType paramType) {
        return paramType.isReferenceType() && paramType.asReferenceType().getQualifiedName().equals("java.lang.Object");
    }

    public static boolean isMoreSpecific(ResolvedMethodLikeDeclaration methodA, ResolvedMethodLikeDeclaration methodB, List<ResolvedType> argumentTypes) {
        boolean hasVariadicParameter = methodA.hasVariadicParameter();
        boolean hasVariadicParameter2 = methodB.hasVariadicParameter();
        int numberOfParams = methodA.getNumberOfParams();
        int numberOfParams2 = methodB.getNumberOfParams();
        int size = argumentTypes.size();
        ResolvedType resolvedType = size > 0 ? argumentTypes.get(size - 1) : null;
        boolean z10 = false;
        boolean z11 = resolvedType != null && resolvedType.isArray();
        if (!hasVariadicParameter && numberOfParams == size && hasVariadicParameter2 && (numberOfParams2 != size || !z11)) {
            return true;
        }
        if (!hasVariadicParameter2 && numberOfParams2 == size && hasVariadicParameter && (numberOfParams != size || !z11)) {
            return false;
        }
        int i10 = (hasVariadicParameter && hasVariadicParameter2 && numberOfParams == numberOfParams2 && size == numberOfParams - 1) ? 1 : 0;
        int i11 = 0;
        boolean z12 = false;
        while (i11 < size + i10) {
            ResolvedType methodsExplicitAndVariadicParameterType = getMethodsExplicitAndVariadicParameterType(methodA, i11);
            ResolvedType methodsExplicitAndVariadicParameterType2 = getMethodsExplicitAndVariadicParameterType(methodB, i11);
            ResolvedType resolvedType2 = i11 < argumentTypes.size() ? argumentTypes.get(i11) : null;
            if (methodsExplicitAndVariadicParameterType == null) {
                return z10;
            }
            if (methodsExplicitAndVariadicParameterType2 == null) {
                return true;
            }
            if (resolvedType2 != null && methodsExplicitAndVariadicParameterType.isPrimitive() == resolvedType2.isPrimitive() && methodsExplicitAndVariadicParameterType2.isPrimitive() != resolvedType2.isPrimitive() && methodsExplicitAndVariadicParameterType.isAssignableBy(resolvedType2)) {
                return true;
            }
            if (resolvedType2 != null && methodsExplicitAndVariadicParameterType2.isPrimitive() == resolvedType2.isPrimitive() && methodsExplicitAndVariadicParameterType.isPrimitive() != resolvedType2.isPrimitive() && methodsExplicitAndVariadicParameterType2.isAssignableBy(resolvedType2)) {
                return false;
            }
            if (i11 < size - 1 && (isJavaLangObject(methodsExplicitAndVariadicParameterType2) || isJavaLangObject(methodsExplicitAndVariadicParameterType))) {
                z12 = z12 || isJavaLangObject(methodsExplicitAndVariadicParameterType2);
            } else {
                boolean isAssignableBy = methodsExplicitAndVariadicParameterType.isAssignableBy(methodsExplicitAndVariadicParameterType2);
                boolean isAssignableBy2 = methodsExplicitAndVariadicParameterType2.isAssignableBy(methodsExplicitAndVariadicParameterType);
                if (isAssignableBy2 && !isAssignableBy) {
                    return true;
                }
                if (isAssignableBy && !isAssignableBy2) {
                    return false;
                }
            }
            if (methodA.getNumberOfParams() > i11 && methodB.getNumberOfParams() > i11) {
                boolean isVariadic = methodA.getParam(i11).isVariadic();
                boolean isVariadic2 = methodB.getParam(i11).isVariadic();
                if (!isVariadic && isVariadic2) {
                    return true;
                }
            }
            i11++;
            z10 = false;
        }
        return (!hasVariadicParameter || hasVariadicParameter2) ? (hasVariadicParameter || !hasVariadicParameter2) ? z12 : !z11 : z11;
    }

    public static boolean lambda$distinctByKey$1(final Set seen, final Function keyExtractor, Object t10) {
        return seen.add(keyExtractor.apply(t10));
    }

    public static boolean lambda$findMostApplicable$2(final String name, ResolvedMethodDeclaration m10) {
        return m10.getName().equals(name);
    }

    public static boolean lambda$findMostApplicable$3(final String name, final List argumentsTypes, final TypeSolver typeSolver, final boolean wildcardTolerance, ResolvedMethodDeclaration m10) {
        return isApplicable(m10, name, argumentsTypes, typeSolver, wildcardTolerance);
    }

    public static boolean lambda$findMostApplicableUsage$4(final String name, final List argumentsTypes, final TypeSolver typeSolver, MethodUsage m10) {
        return isApplicable(m10, name, (List<ResolvedType>) argumentsTypes, typeSolver);
    }

    public static ResolvedType lambda$replaceTypeParam$0(final ResolvedTypeParameterDeclaration tp, final TypeSolver typeSolver, ResolvedType typeParam) {
        return replaceTypeParam(typeParam, tp, typeSolver);
    }

    private static boolean matchTypeVariable(ResolvedTypeVariable typeVariable, ResolvedType type, Map<String, ResolvedType> matchedParameters) {
        String name = typeVariable.asTypeParameter().getName();
        if (!matchedParameters.containsKey(name)) {
            matchedParameters.put(name, type);
            return true;
        }
        ResolvedType resolvedType = matchedParameters.get(name);
        if (resolvedType.isAssignableBy(type)) {
            return true;
        }
        if (!type.isAssignableBy(resolvedType)) {
            return false;
        }
        matchedParameters.put(name, type);
        return true;
    }

    public static ResolvedType replaceTypeParam(ResolvedType type, final ResolvedTypeParameterDeclaration tp, final TypeSolver typeSolver) {
        if (type.isTypeVariable() || type.isWildcard()) {
            if (!type.describe().equals(tp.getName())) {
                return type;
            }
            List<ResolvedTypeParameterDeclaration.Bound> bounds = tp.getBounds();
            if (bounds.size() <= 1) {
                return bounds.size() == 1 ? bounds.get(0).getType() : new ReferenceTypeImpl(typeSolver.solveType(JAVA_LANG_OBJECT));
            }
            throw new UnsupportedOperationException();
        }
        if (type.isPrimitive()) {
            return type;
        }
        if (type.isArray()) {
            return new ResolvedArrayType(replaceTypeParam(type.asArrayType().getComponentType(), tp, typeSolver));
        }
        if (type.isReferenceType()) {
            return type.asReferenceType().transformTypeParameters(new ResolvedTypeTransformer() {
                @Override
                public final ResolvedType transform(ResolvedType resolvedType) {
                    ResolvedType lambda$replaceTypeParam$0;
                    lambda$replaceTypeParam$0 = MethodResolutionLogic.lambda$replaceTypeParam$0(ResolvedTypeParameterDeclaration.this, typeSolver, resolvedType);
                    return lambda$replaceTypeParam$0;
                }
            }).asReferenceType();
        }
        throw new UnsupportedOperationException("Replacing " + ((Object) type) + ", param " + ((Object) tp) + " with " + type.getClass().getCanonicalName());
    }

    public static SymbolReference<ResolvedMethodDeclaration> solveMethodInType(ResolvedTypeDeclaration typeDeclaration, String name, List<ResolvedType> argumentsTypes) {
        return solveMethodInType(typeDeclaration, name, argumentsTypes, false);
    }

    private static boolean isApplicable(ResolvedMethodDeclaration methodDeclaration, String needleName, List<ResolvedType> needleArgumentTypes, TypeSolver typeSolver, boolean withWildcardTolerance) {
        if (!methodDeclaration.getName().equals(needleName)) {
            return false;
        }
        int numberOfParams = methodDeclaration.getNumberOfParams();
        int size = needleArgumentTypes.size();
        boolean hasVariadicParameter = methodDeclaration.hasVariadicParameter();
        if (!hasVariadicParameter && size != numberOfParams) {
            return false;
        }
        if (hasVariadicParameter) {
            if (size <= numberOfParams - 2) {
                return false;
            }
            ResolvedType type = methodDeclaration.getLastParam().getType();
            Iterator<ResolvedTypeParameterDeclaration> it = methodDeclaration.getTypeParameters().iterator();
            while (it.hasNext()) {
                type = replaceTypeParam(type, it.next(), typeSolver);
            }
            if (size > numberOfParams) {
                for (int i10 = numberOfParams; i10 < size; i10++) {
                    if (!type.asArrayType().getComponentType().isAssignableBy(needleArgumentTypes.get(i10))) {
                        return false;
                    }
                }
            }
            needleArgumentTypes = groupTrailingArgumentsIntoArray(methodDeclaration, needleArgumentTypes, type);
        }
        if (needleArgumentTypes.size() != numberOfParams) {
            return false;
        }
        HashMap hashMap = new HashMap();
        boolean z10 = false;
        for (int i11 = 0; i11 < numberOfParams; i11++) {
            ResolvedType type2 = methodDeclaration.getParam(i11).getType();
            ResolvedType resolvedType = needleArgumentTypes.get(i11);
            if (type2.isTypeVariable() && !type2.isWildcard() && type2.asTypeParameter().declaredOnMethod()) {
                hashMap.put(type2.asTypeParameter().getName(), resolvedType);
            } else if (!methodDeclaration.getParam(i11).isVariadic() || i11 != numberOfParams - 1 || !isArrayOfObject(type2) || !resolvedType.isArray()) {
                boolean z11 = type2.isAssignableBy(resolvedType) || (methodDeclaration.getParam(i11).isVariadic() && convertToVariadicParameter(type2).isAssignableBy(resolvedType));
                if (!z11 && type2.isReferenceType() && resolvedType.isReferenceType()) {
                    z11 = isAssignableMatchTypeParameters(type2.asReferenceType(), resolvedType.asReferenceType(), (Map<String, ResolvedType>) hashMap);
                }
                if (z11) {
                    continue;
                } else {
                    List<ResolvedTypeParameterDeclaration> typeParameters = methodDeclaration.getTypeParameters();
                    typeParameters.addAll(methodDeclaration.declaringType().getTypeParameters());
                    Iterator<ResolvedTypeParameterDeclaration> it2 = typeParameters.iterator();
                    while (it2.hasNext()) {
                        type2 = replaceTypeParam(type2, it2.next(), typeSolver);
                    }
                    if (type2.isAssignableBy(resolvedType)) {
                        continue;
                    } else if ((resolvedType.isWildcard() && withWildcardTolerance && !type2.isPrimitive()) || (resolvedType.isConstraint() && withWildcardTolerance && (resolvedType.asConstraintType().getBound().isTypeVariable() || (!resolvedType.asConstraintType().getBound().isTypeVariable() && type2.isAssignableBy(resolvedType.asConstraintType().getBound()))))) {
                        z10 = true;
                    } else if (!hasVariadicParameter || i11 != numberOfParams - 1 || !convertToVariadicParameter(type2).isAssignableBy(resolvedType)) {
                        return false;
                    }
                }
            }
        }
        return !withWildcardTolerance || z10;
    }

    public static SymbolReference<ResolvedMethodDeclaration> solveMethodInType(ResolvedTypeDeclaration typeDeclaration, String name, List<ResolvedType> argumentsTypes, boolean staticOnly) {
        if (typeDeclaration instanceof MethodResolutionCapability) {
            return ((MethodResolutionCapability) typeDeclaration).solveMethod(name, argumentsTypes, staticOnly);
        }
        throw new UnsupportedOperationException(typeDeclaration.getClass().getCanonicalName());
    }

    public static SymbolReference<ResolvedMethodDeclaration> findMostApplicable(List<ResolvedMethodDeclaration> methods, final String name, final List<ResolvedType> argumentsTypes, final TypeSolver typeSolver, final boolean wildcardTolerance) {
        List<ResolvedMethodDeclaration> list = (List) methods.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findMostApplicable$2;
                lambda$findMostApplicable$2 = MethodResolutionLogic.lambda$findMostApplicable$2(String.this, (ResolvedMethodDeclaration) obj);
                return lambda$findMostApplicable$2;
            }
        }).filter(distinctByKey(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ResolvedMethodDeclaration) obj).getQualifiedSignature();
            }
        })).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findMostApplicable$3;
                lambda$findMostApplicable$3 = MethodResolutionLogic.lambda$findMostApplicable$3(String.this, argumentsTypes, typeSolver, wildcardTolerance, (ResolvedMethodDeclaration) obj);
                return lambda$findMostApplicable$3;
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            return SymbolReference.unsolved();
        }
        if (list.size() > 1) {
            ArrayList<Integer> arrayList = new ArrayList();
            for (int i10 = 0; i10 < argumentsTypes.size(); i10++) {
                if (argumentsTypes.get(i10).isNull()) {
                    arrayList.add(Integer.valueOf(i10));
                }
            }
            if (!arrayList.isEmpty()) {
                HashSet hashSet = new HashSet();
                for (Integer num : arrayList) {
                    for (ResolvedMethodDeclaration resolvedMethodDeclaration : list) {
                        if (resolvedMethodDeclaration.getParam(num.intValue()).getType().isArray()) {
                            hashSet.add(resolvedMethodDeclaration);
                        }
                    }
                }
                if (!hashSet.isEmpty() && hashSet.size() < list.size()) {
                    list.removeAll(hashSet);
                }
            }
        }
        if (list.size() == 1) {
            return SymbolReference.solved((ResolvedDeclaration) list.get(0));
        }
        ResolvedMethodDeclaration resolvedMethodDeclaration2 = (ResolvedMethodDeclaration) list.get(0);
        ResolvedMethodDeclaration resolvedMethodDeclaration3 = null;
        boolean z10 = false;
        for (int i11 = 1; i11 < list.size(); i11++) {
            resolvedMethodDeclaration3 = (ResolvedMethodDeclaration) list.get(i11);
            if (isMoreSpecific(resolvedMethodDeclaration2, resolvedMethodDeclaration3, argumentsTypes)) {
                z10 = false;
            } else {
                if (isMoreSpecific(resolvedMethodDeclaration3, resolvedMethodDeclaration2, argumentsTypes)) {
                    z10 = false;
                } else if (!resolvedMethodDeclaration2.isGeneric() || resolvedMethodDeclaration3.isGeneric()) {
                    if ((resolvedMethodDeclaration2.isGeneric() || !resolvedMethodDeclaration3.isGeneric()) && resolvedMethodDeclaration2.declaringType().getQualifiedName().equals(resolvedMethodDeclaration3.declaringType().getQualifiedName())) {
                        z10 = true;
                    }
                }
                resolvedMethodDeclaration2 = resolvedMethodDeclaration3;
            }
        }
        if (z10 && !isExactMatch(resolvedMethodDeclaration2, argumentsTypes)) {
            if (!isExactMatch(resolvedMethodDeclaration3, argumentsTypes)) {
                throw new MethodAmbiguityException("Ambiguous method call: cannot find a most applicable method: " + ((Object) resolvedMethodDeclaration2) + ", " + ((Object) resolvedMethodDeclaration3));
            }
            resolvedMethodDeclaration2 = resolvedMethodDeclaration3;
        }
        return SymbolReference.solved(resolvedMethodDeclaration2);
    }

    public static boolean isAssignableMatchTypeParameters(ResolvedReferenceType expected, ResolvedReferenceType actual, Map<String, ResolvedType> matchedParameters) {
        if (actual.getQualifiedName().equals(expected.getQualifiedName())) {
            return isAssignableMatchTypeParametersMatchingQName(expected, actual, matchedParameters);
        }
        Iterator<ResolvedReferenceType> it = actual.getAllAncestors().iterator();
        while (it.hasNext()) {
            if (isAssignableMatchTypeParametersMatchingQName(expected, it.next(), matchedParameters)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isMoreSpecific(MethodUsage methodA, MethodUsage methodB, List<ResolvedType> argumentTypes) {
        return isMoreSpecific(methodA.getDeclaration(), methodB.getDeclaration(), argumentTypes);
    }

    public static boolean isApplicable(MethodUsage methodUsage, String needleName, List<ResolvedType> needleParameterTypes, TypeSolver typeSolver) {
        ResolvedType paramType;
        ResolvedType replaceTypeVariables;
        MethodUsage methodUsage2 = methodUsage;
        int i10 = 0;
        if (!methodUsage.getName().equals(needleName)) {
            return false;
        }
        int noParams = methodUsage.getNoParams();
        int lastParameterIndex = getLastParameterIndex(noParams);
        int size = needleParameterTypes.size();
        boolean hasVariadicParameter = methodUsage.getDeclaration().hasVariadicParameter();
        if (!hasVariadicParameter && size != noParams) {
            return false;
        }
        if (size != noParams && size < lastParameterIndex) {
            return false;
        }
        int i11 = 0;
        while (i11 < size) {
            ResolvedType resolvedType = needleParameterTypes.get(i11);
            if (hasVariadicParameter && i11 >= lastParameterIndex) {
                paramType = methodUsage2.getParamType(lastParameterIndex);
                if (size != noParams || !paramType.isAssignableBy(resolvedType)) {
                    paramType = paramType.asArrayType().getComponentType();
                }
            } else {
                paramType = methodUsage2.getParamType(i11);
            }
            List<ResolvedTypeParameterDeclaration> typeParameters = methodUsage.getDeclaration().getTypeParameters();
            typeParameters.addAll(methodUsage.declaringType().getTypeParameters());
            HashMap hashMap = new HashMap();
            for (int i12 = i10; i12 < noParams; i12++) {
                ResolvedParameterDeclaration param = methodUsage.getDeclaration().getParam(i12);
                ResolvedType type = param.getType();
                if (param.isVariadic()) {
                    if (size == i12) {
                        break;
                    }
                    type = type.asArrayType().getComponentType();
                }
                inferTypes(needleParameterTypes.get(i12), type, hashMap);
            }
            Iterator it = hashMap.entrySet().iterator();
            ResolvedType resolvedType2 = paramType;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                resolvedType2 = resolvedType2.replaceTypeVariables((ResolvedTypeParameterDeclaration) entry.getKey(), (ResolvedType) entry.getValue());
            }
            ResolvedType resolvedType3 = paramType;
            for (ResolvedTypeParameterDeclaration resolvedTypeParameterDeclaration : typeParameters) {
                if (resolvedTypeParameterDeclaration.getBounds().isEmpty()) {
                    replaceTypeVariables = resolvedType3.replaceTypeVariables(resolvedTypeParameterDeclaration, ResolvedWildcard.extendsBound(new ReferenceTypeImpl(typeSolver.solveType(JAVA_LANG_OBJECT))));
                } else if (resolvedTypeParameterDeclaration.getBounds().size() == 1) {
                    ResolvedTypeParameterDeclaration.Bound bound = resolvedTypeParameterDeclaration.getBounds().get(0);
                    if (bound.isExtends()) {
                        replaceTypeVariables = resolvedType3.replaceTypeVariables(resolvedTypeParameterDeclaration, ResolvedWildcard.extendsBound(bound.getType()));
                    } else {
                        replaceTypeVariables = resolvedType3.replaceTypeVariables(resolvedTypeParameterDeclaration, ResolvedWildcard.superBound(bound.getType()));
                    }
                } else {
                    throw new UnsupportedOperationException();
                }
                resolvedType3 = replaceTypeVariables;
            }
            ResolvedType resolvedType4 = paramType;
            for (ResolvedTypeParameterDeclaration resolvedTypeParameterDeclaration2 : typeParameters) {
                if (resolvedTypeParameterDeclaration2.getBounds().isEmpty()) {
                    resolvedType4 = resolvedType4.replaceTypeVariables(resolvedTypeParameterDeclaration2, new ReferenceTypeImpl(typeSolver.solveType(JAVA_LANG_OBJECT)));
                } else if (resolvedTypeParameterDeclaration2.getBounds().size() == 1) {
                    ResolvedTypeParameterDeclaration.Bound bound2 = resolvedTypeParameterDeclaration2.getBounds().get(0);
                    if (bound2.isExtends()) {
                        resolvedType4 = resolvedType4.replaceTypeVariables(resolvedTypeParameterDeclaration2, bound2.getType());
                    } else {
                        resolvedType4 = resolvedType4.replaceTypeVariables(resolvedTypeParameterDeclaration2, new ReferenceTypeImpl(typeSolver.solveType(JAVA_LANG_OBJECT)));
                    }
                } else {
                    throw new UnsupportedOperationException();
                }
            }
            if (!resolvedType3.isAssignableBy(resolvedType) && !resolvedType4.isAssignableBy(resolvedType) && !resolvedType2.isAssignableBy(resolvedType) && !paramType.isAssignableBy(resolvedType)) {
                return false;
            }
            i11++;
            i10 = 0;
            methodUsage2 = methodUsage;
        }
        return true;
    }
}
