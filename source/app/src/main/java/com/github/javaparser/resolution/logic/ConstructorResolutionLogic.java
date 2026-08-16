package com.github.javaparser.resolution.logic;

import com.github.javaparser.resolution.MethodAmbiguityException;
import com.github.javaparser.resolution.TypeSolver;
import com.github.javaparser.resolution.declarations.ResolvedConstructorDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.logic.ConstructorResolutionLogic;
import com.github.javaparser.resolution.model.SymbolReference;
import com.github.javaparser.resolution.types.ResolvedArrayType;
import com.github.javaparser.resolution.types.ResolvedType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class ConstructorResolutionLogic {
    private static ResolvedType findCommonType(List<ResolvedType> variadicValues) {
        if (variadicValues.isEmpty()) {
            throw new IllegalArgumentException();
        }
        return variadicValues.get(0);
    }

    public static SymbolReference<ResolvedConstructorDeclaration> findMostApplicable(List<ResolvedConstructorDeclaration> constructors, List<ResolvedType> argumentsTypes, TypeSolver typeSolver) {
        SymbolReference<ResolvedConstructorDeclaration> findMostApplicable = findMostApplicable(constructors, argumentsTypes, typeSolver, false);
        return findMostApplicable.isSolved() ? findMostApplicable : findMostApplicable(constructors, argumentsTypes, typeSolver, true);
    }

    private static List<ResolvedType> groupVariadicParamValues(List<ResolvedType> argumentsTypes, int startVariadic, ResolvedType variadicType) {
        ArrayList arrayList = new ArrayList(argumentsTypes.subList(0, startVariadic));
        List<ResolvedType> subList = argumentsTypes.subList(startVariadic, argumentsTypes.size());
        if (subList.isEmpty()) {
            arrayList.add(variadicType);
        } else {
            arrayList.add(new ResolvedArrayType(findCommonType(subList)));
        }
        return arrayList;
    }

    public static boolean isApplicable(ResolvedConstructorDeclaration constructor, List<ResolvedType> argumentsTypes, TypeSolver typeSolver) {
        return isApplicable(constructor, argumentsTypes, typeSolver, false);
    }

    public static boolean lambda$findMostApplicable$0(final List argumentsTypes, final TypeSolver typeSolver, final boolean wildcardTolerance, ResolvedConstructorDeclaration m10) {
        return isApplicable(m10, argumentsTypes, typeSolver, wildcardTolerance);
    }

    private static boolean isApplicable(ResolvedConstructorDeclaration constructor, List<ResolvedType> argumentsTypes, TypeSolver typeSolver, boolean withWildcardTolerance) {
        if (constructor.hasVariadicParameter()) {
            int numberOfParams = constructor.getNumberOfParams() - 1;
            if (constructor.getNumberOfParams() == argumentsTypes.size()) {
                ResolvedType type = constructor.getLastParam().getType();
                ResolvedType resolvedType = argumentsTypes.get(numberOfParams);
                if (!type.isAssignableBy(resolvedType)) {
                    Iterator<ResolvedTypeParameterDeclaration> it = constructor.getTypeParameters().iterator();
                    while (it.hasNext()) {
                        type = MethodResolutionLogic.replaceTypeParam(type, it.next(), typeSolver);
                    }
                    if (!type.isAssignableBy(resolvedType)) {
                        if (resolvedType.isArray() && type.isAssignableBy(resolvedType.asArrayType().getComponentType())) {
                            argumentsTypes.set(numberOfParams, resolvedType.asArrayType().getComponentType());
                        } else {
                            argumentsTypes = groupVariadicParamValues(argumentsTypes, numberOfParams, constructor.getLastParam().getType());
                        }
                    }
                }
            } else {
                if (numberOfParams > argumentsTypes.size()) {
                    return false;
                }
                argumentsTypes = groupVariadicParamValues(argumentsTypes, numberOfParams, constructor.getLastParam().getType());
            }
        }
        if (constructor.getNumberOfParams() != argumentsTypes.size()) {
            return false;
        }
        HashMap hashMap = new HashMap();
        boolean z10 = false;
        for (int i10 = 0; i10 < constructor.getNumberOfParams(); i10++) {
            ResolvedType type2 = constructor.getParam(i10).getType();
            ResolvedType resolvedType2 = argumentsTypes.get(i10);
            if (type2.isTypeVariable() && !type2.isWildcard() && type2.asTypeParameter().declaredOnMethod()) {
                hashMap.put(type2.asTypeParameter().getName(), resolvedType2);
            } else {
                boolean z11 = type2.isAssignableBy(resolvedType2) || (constructor.getParam(i10).isVariadic() && new ResolvedArrayType(type2).isAssignableBy(resolvedType2));
                if (!z11 && type2.isReferenceType() && resolvedType2.isReferenceType()) {
                    z11 = MethodResolutionLogic.isAssignableMatchTypeParameters(type2.asReferenceType(), resolvedType2.asReferenceType(), (Map<String, ResolvedType>) hashMap);
                }
                if (z11) {
                    continue;
                } else {
                    Iterator<ResolvedTypeParameterDeclaration> it2 = constructor.getTypeParameters().iterator();
                    while (it2.hasNext()) {
                        type2 = MethodResolutionLogic.replaceTypeParam(type2, it2.next(), typeSolver);
                    }
                    Iterator<ResolvedTypeParameterDeclaration> it3 = constructor.declaringType().getTypeParameters().iterator();
                    while (it3.hasNext()) {
                        type2 = MethodResolutionLogic.replaceTypeParam(type2, it3.next(), typeSolver);
                    }
                    if (type2.isAssignableBy(resolvedType2)) {
                        continue;
                    } else if (resolvedType2.isWildcard() && withWildcardTolerance && !type2.isPrimitive()) {
                        z10 = true;
                    } else if (!constructor.hasVariadicParameter() || i10 != constructor.getNumberOfParams() - 1 || !new ResolvedArrayType(type2).isAssignableBy(resolvedType2)) {
                        return false;
                    }
                }
            }
        }
        return !withWildcardTolerance || z10;
    }

    public static SymbolReference<ResolvedConstructorDeclaration> findMostApplicable(List<ResolvedConstructorDeclaration> constructors, final List<ResolvedType> argumentsTypes, final TypeSolver typeSolver, final boolean wildcardTolerance) {
        List list = (List) constructors.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findMostApplicable$0;
                lambda$findMostApplicable$0 = ConstructorResolutionLogic.lambda$findMostApplicable$0(List.this, typeSolver, wildcardTolerance, (ResolvedConstructorDeclaration) obj);
                return lambda$findMostApplicable$0;
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            return SymbolReference.unsolved();
        }
        if (list.size() == 1) {
            return SymbolReference.solved((ResolvedDeclaration) list.get(0));
        }
        ResolvedConstructorDeclaration resolvedConstructorDeclaration = (ResolvedConstructorDeclaration) list.get(0);
        boolean z10 = false;
        for (int i10 = 1; i10 < list.size(); i10++) {
            ResolvedConstructorDeclaration resolvedConstructorDeclaration2 = (ResolvedConstructorDeclaration) list.get(i10);
            if (MethodResolutionLogic.isMoreSpecific(resolvedConstructorDeclaration, resolvedConstructorDeclaration2, argumentsTypes)) {
                z10 = false;
            } else if (MethodResolutionLogic.isMoreSpecific(resolvedConstructorDeclaration2, resolvedConstructorDeclaration, argumentsTypes)) {
                z10 = false;
                resolvedConstructorDeclaration = resolvedConstructorDeclaration2;
            } else if (resolvedConstructorDeclaration.declaringType().getQualifiedName().equals(resolvedConstructorDeclaration2.declaringType().getQualifiedName())) {
                z10 = true;
            }
            if (z10 && !MethodResolutionLogic.isExactMatch(resolvedConstructorDeclaration, argumentsTypes)) {
                if (!MethodResolutionLogic.isExactMatch(resolvedConstructorDeclaration2, argumentsTypes)) {
                    throw new MethodAmbiguityException("Ambiguous constructor call: cannot find a most applicable constructor: " + ((Object) resolvedConstructorDeclaration) + ", " + ((Object) resolvedConstructorDeclaration2));
                }
                resolvedConstructorDeclaration = resolvedConstructorDeclaration2;
            }
        }
        return SymbolReference.solved(resolvedConstructorDeclaration);
    }
}
