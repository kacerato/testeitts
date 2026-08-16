package com.github.javaparser.resolution.logic;

import com.github.javaparser.resolution.TypeSolver;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.logic.InferenceContext;
import com.github.javaparser.resolution.model.typesystem.ReferenceTypeImpl;
import com.github.javaparser.resolution.types.ResolvedArrayType;
import com.github.javaparser.resolution.types.ResolvedLambdaConstraintType;
import com.github.javaparser.resolution.types.ResolvedReferenceType;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeTransformer;
import com.github.javaparser.resolution.types.ResolvedWildcard;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class InferenceContext {
    private TypeSolver typeSolver;
    private int nextInferenceVariableId = 0;
    private List<InferenceVariableType> inferenceVariableTypes = new ArrayList();
    private Map<String, InferenceVariableType> inferenceVariableTypeMap = new HashMap();

    public InferenceContext(TypeSolver typeSolver) {
        this.typeSolver = typeSolver;
    }

    private InferenceVariableType inferenceVariableTypeForTp(ResolvedTypeParameterDeclaration tp) {
        if (!this.inferenceVariableTypeMap.containsKey(tp.getName())) {
            int i10 = this.nextInferenceVariableId;
            this.nextInferenceVariableId = i10 + 1;
            InferenceVariableType inferenceVariableType = new InferenceVariableType(i10, this.typeSolver);
            this.inferenceVariableTypes.add(inferenceVariableType);
            inferenceVariableType.setCorrespondingTp(tp);
            this.inferenceVariableTypeMap.put(tp.getName(), inferenceVariableType);
        }
        return this.inferenceVariableTypeMap.get(tp.getName());
    }

    public static boolean lambda$registerCorrespondance$1(final String formalParamTypeQName, ResolvedReferenceType a10) {
        return a10.getQualifiedName().equals(formalParamTypeQName);
    }

    public static boolean lambda$registerCorrespondance$2(final String actualParamTypeQname, ResolvedReferenceType a10) {
        return a10.getQualifiedName().equals(actualParamTypeQname);
    }

    public ResolvedType lambda$placeInferenceVariables$3(ResolvedType type) {
        if (type.isWildcard()) {
            return type.asWildcard().isExtends() ? ResolvedWildcard.extendsBound(lambda$placeInferenceVariables$3(type.asWildcard().getBoundedType())) : type.asWildcard().isSuper() ? ResolvedWildcard.superBound(lambda$placeInferenceVariables$3(type.asWildcard().getBoundedType())) : type;
        }
        if (type.isTypeVariable()) {
            return inferenceVariableTypeForTp(type.asTypeParameter());
        }
        if (type.isReferenceType()) {
            return type.asReferenceType().transformTypeParameters(new ResolvedTypeTransformer() {
                @Override
                public final ResolvedType transform(ResolvedType resolvedType) {
                    ResolvedType lambda$placeInferenceVariables$3;
                    lambda$placeInferenceVariables$3 = InferenceContext.this.lambda$placeInferenceVariables$3(resolvedType);
                    return lambda$placeInferenceVariables$3;
                }
            });
        }
        if (type.isArray()) {
            return new ResolvedArrayType(lambda$placeInferenceVariables$3(type.asArrayType().getComponentType()));
        }
        if (type.isNull() || type.isPrimitive() || type.isVoid()) {
            return type;
        }
        if (type.isConstraint()) {
            return ResolvedLambdaConstraintType.bound(lambda$placeInferenceVariables$3(type.asConstraintType().getBound()));
        }
        if (type instanceof InferenceVariableType) {
            return type;
        }
        throw new UnsupportedOperationException(type.describe());
    }

    private void registerCorrespondance(ResolvedType formalType, ResolvedType actualType) {
        int i10 = 0;
        if (formalType.isReferenceType() && actualType.isReferenceType()) {
            ResolvedReferenceType asReferenceType = formalType.asReferenceType();
            ResolvedReferenceType asReferenceType2 = actualType.asReferenceType();
            if (!asReferenceType.getQualifiedName().equals(asReferenceType2.getQualifiedName())) {
                List<ResolvedReferenceType> allAncestors = asReferenceType2.getAllAncestors();
                final String qualifiedName = asReferenceType.getQualifiedName();
                List list = "java.lang.Object".equals(qualifiedName) ? (List) Stream.concat(new ArrayList(Arrays.asList(actualType)).stream(), ((List) allAncestors.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        ResolvedReferenceType asReferenceType3;
                        asReferenceType3 = ((ResolvedReferenceType) obj).asReferenceType();
                        return asReferenceType3;
                    }
                }).collect(Collectors.toList())).stream()).collect(Collectors.toList()) : (List) allAncestors.stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$registerCorrespondance$1;
                        lambda$registerCorrespondance$1 = InferenceContext.lambda$registerCorrespondance$1(String.this, (ResolvedReferenceType) obj);
                        return lambda$registerCorrespondance$1;
                    }
                }).collect(Collectors.toList());
                if (list.isEmpty()) {
                    List<ResolvedReferenceType> allAncestors2 = asReferenceType.getAllAncestors();
                    final String qualifiedName2 = asReferenceType2.getQualifiedName();
                    list = (List) allAncestors2.stream().filter(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            boolean lambda$registerCorrespondance$2;
                            lambda$registerCorrespondance$2 = InferenceContext.lambda$registerCorrespondance$2(String.this, (ResolvedReferenceType) obj);
                            return lambda$registerCorrespondance$2;
                        }
                    }).collect(Collectors.toList());
                    if (list.isEmpty()) {
                        throw new ConflictingGenericTypesException(formalType, actualType);
                    }
                }
                asReferenceType2 = ((ResolvedType) list.get(0)).asReferenceType();
            }
            if (!asReferenceType.getQualifiedName().equals(asReferenceType2.getQualifiedName()) || asReferenceType.typeParametersValues().isEmpty() || asReferenceType2.isRawType()) {
                return;
            }
            Iterator<ResolvedType> it = asReferenceType.typeParametersValues().iterator();
            while (it.hasNext()) {
                registerCorrespondance(it.next(), asReferenceType2.typeParametersValues().get(i10));
                i10++;
            }
            return;
        }
        boolean z10 = formalType instanceof InferenceVariableType;
        if (z10 && !actualType.isPrimitive()) {
            ((InferenceVariableType) formalType).registerEquivalentType(actualType);
            if (actualType instanceof InferenceVariableType) {
                ((InferenceVariableType) actualType).registerEquivalentType(formalType);
                return;
            }
            return;
        }
        if (actualType.isNull() || actualType.equals(formalType)) {
            return;
        }
        if (actualType.isArray() && formalType.isArray()) {
            registerCorrespondance(formalType.asArrayType().getComponentType(), actualType.asArrayType().getComponentType());
            return;
        }
        if (formalType.isWildcard()) {
            if ((actualType instanceof InferenceVariableType) && formalType.asWildcard().isBounded()) {
                ((InferenceVariableType) actualType).registerEquivalentType(formalType.asWildcard().getBoundedType());
                if (formalType.asWildcard().getBoundedType() instanceof InferenceVariableType) {
                    ((InferenceVariableType) formalType.asWildcard().getBoundedType()).registerEquivalentType(actualType);
                }
            }
            if (actualType.isWildcard()) {
                ResolvedWildcard asWildcard = formalType.asWildcard();
                ResolvedWildcard asWildcard2 = actualType.asWildcard();
                if (asWildcard.isBounded() && (asWildcard.getBoundedType() instanceof InferenceVariableType)) {
                    if (asWildcard.isSuper() && asWildcard2.isSuper()) {
                        ((InferenceVariableType) formalType.asWildcard().getBoundedType()).registerEquivalentType(asWildcard2.getBoundedType());
                    } else if (asWildcard.isExtends() && asWildcard2.isExtends()) {
                        ((InferenceVariableType) formalType.asWildcard().getBoundedType()).registerEquivalentType(asWildcard2.getBoundedType());
                    }
                }
            }
            if (actualType.isReferenceType() && formalType.asWildcard().isBounded()) {
                registerCorrespondance(formalType.asWildcard().getBoundedType(), actualType);
                return;
            }
            return;
        }
        if (actualType instanceof InferenceVariableType) {
            if (formalType instanceof ResolvedReferenceType) {
                ((InferenceVariableType) actualType).registerEquivalentType(formalType);
                return;
            } else {
                if (z10) {
                    ((InferenceVariableType) actualType).registerEquivalentType(formalType);
                    return;
                }
                return;
            }
        }
        if (actualType.isConstraint()) {
            ResolvedLambdaConstraintType asConstraintType = actualType.asConstraintType();
            if (asConstraintType.getBound() instanceof InferenceVariableType) {
                ((InferenceVariableType) asConstraintType.getBound()).registerEquivalentType(formalType);
                return;
            }
            return;
        }
        if (actualType.isPrimitive()) {
            if (formalType.isPrimitive()) {
                return;
            }
            registerCorrespondance(formalType, new ReferenceTypeImpl(this.typeSolver.solveType(actualType.asPrimitive().getBoxTypeQName())));
            return;
        }
        if (actualType.isReferenceType()) {
            if (formalType.isPrimitive() && formalType.asPrimitive().getBoxTypeQName().equals(actualType.describe())) {
                registerCorrespondance(new ReferenceTypeImpl(this.typeSolver.solveType(formalType.asPrimitive().getBoxTypeQName())), actualType);
                return;
            }
            return;
        }
        if (!formalType.isReferenceType()) {
            throw new UnsupportedOperationException(formalType.describe() + " " + actualType.describe());
        }
        if (formalType.asReferenceType().isJavaLangObject()) {
            return;
        }
        throw new UnsupportedOperationException(formalType.describe() + " " + actualType.describe());
    }

    public ResolvedType addPair(ResolvedType target, ResolvedType actual) {
        ResolvedType lambda$placeInferenceVariables$3 = lambda$placeInferenceVariables$3(target);
        registerCorrespondance(lambda$placeInferenceVariables$3, lambda$placeInferenceVariables$3(actual));
        return lambda$placeInferenceVariables$3;
    }

    public ResolvedType addSingle(ResolvedType actual) {
        return lambda$placeInferenceVariables$3(actual);
    }

    public ResolvedType lambda$resolve$4(ResolvedType type) {
        if (type instanceof InferenceVariableType) {
            return ((InferenceVariableType) type).equivalentType();
        }
        if (type.isReferenceType()) {
            return type.asReferenceType().transformTypeParameters(new ResolvedTypeTransformer() {
                @Override
                public final ResolvedType transform(ResolvedType resolvedType) {
                    ResolvedType lambda$resolve$4;
                    lambda$resolve$4 = InferenceContext.this.lambda$resolve$4(resolvedType);
                    return lambda$resolve$4;
                }
            });
        }
        if (type.isNull() || type.isPrimitive() || type.isVoid()) {
            return type;
        }
        if (type.isArray()) {
            return new ResolvedArrayType(lambda$resolve$4(type.asArrayType().getComponentType()));
        }
        if (type.isWildcard()) {
            return type.asWildcard().isExtends() ? ResolvedWildcard.extendsBound(lambda$resolve$4(type.asWildcard().getBoundedType())) : type.asWildcard().isSuper() ? ResolvedWildcard.superBound(lambda$resolve$4(type.asWildcard().getBoundedType())) : type;
        }
        throw new UnsupportedOperationException(type.describe());
    }
}
