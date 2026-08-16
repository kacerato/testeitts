package com.github.javaparser.resolution.logic;

import com.github.javaparser.resolution.TypeSolver;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.logic.InferenceVariableType;
import com.github.javaparser.resolution.model.typesystem.ReferenceTypeImpl;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeVariable;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.eclipse.jdt.internal.core.JavaElement;

public class InferenceVariableType implements ResolvedType {
    private ResolvedTypeParameterDeclaration correspondingTp;

    private int f59788id;
    private TypeSolver typeSolver;
    private Set<ResolvedType> equivalentTypes = new HashSet();
    private Set<ResolvedType> superTypes = new HashSet();

    public InferenceVariableType(int id2, TypeSolver typeSolver) {
        this.f59788id = id2;
        this.typeSolver = typeSolver;
    }

    private Set<ResolvedType> concreteEquivalentTypesAlsoIndirectly(final Set<InferenceVariableType> considered, InferenceVariableType inferenceVariableType) {
        considered.add(inferenceVariableType);
        final HashSet hashSet = new HashSet();
        hashSet.addAll((Collection) inferenceVariableType.equivalentTypes.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$concreteEquivalentTypesAlsoIndirectly$0;
                lambda$concreteEquivalentTypesAlsoIndirectly$0 = InferenceVariableType.lambda$concreteEquivalentTypesAlsoIndirectly$0((ResolvedType) obj);
                return lambda$concreteEquivalentTypesAlsoIndirectly$0;
            }
        }).collect(Collectors.toSet()));
        inferenceVariableType.equivalentTypes.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$concreteEquivalentTypesAlsoIndirectly$1;
                lambda$concreteEquivalentTypesAlsoIndirectly$1 = InferenceVariableType.lambda$concreteEquivalentTypesAlsoIndirectly$1((ResolvedType) obj);
                return lambda$concreteEquivalentTypesAlsoIndirectly$1;
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InferenceVariableType.this.lambda$concreteEquivalentTypesAlsoIndirectly$2(considered, hashSet, (ResolvedType) obj);
            }
        });
        return hashSet;
    }

    private boolean hasInferenceVariables(ResolvedType type) {
        if (type instanceof InferenceVariableType) {
            return true;
        }
        if (!type.isReferenceType()) {
            if (type.isWildcard()) {
                return hasInferenceVariables(type.asWildcard().getBoundedType());
            }
            return false;
        }
        Iterator<ResolvedType> it = type.asReferenceType().typeParametersValues().iterator();
        while (it.hasNext()) {
            if (hasInferenceVariables(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean lambda$concreteEquivalentTypesAlsoIndirectly$0(ResolvedType t10) {
        return (t10.isTypeVariable() || (t10 instanceof InferenceVariableType)) ? false : true;
    }

    public static boolean lambda$concreteEquivalentTypesAlsoIndirectly$1(ResolvedType t10) {
        return t10 instanceof InferenceVariableType;
    }

    public void lambda$concreteEquivalentTypesAlsoIndirectly$2(final Set considered, final Set result, ResolvedType t10) {
        InferenceVariableType inferenceVariableType = (InferenceVariableType) t10;
        if (considered.contains(inferenceVariableType)) {
            return;
        }
        result.addAll(concreteEquivalentTypesAlsoIndirectly(considered, inferenceVariableType));
    }

    public boolean lambda$equivalentType$3(ResolvedType t10) {
        return (t10.isTypeVariable() || hasInferenceVariables(t10)) ? false : true;
    }

    @Override
    public String describe() {
        return "InferenceVariable_" + this.f59788id;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        return (o10 instanceof InferenceVariableType) && this.f59788id == ((InferenceVariableType) o10).f59788id;
    }

    public ResolvedType equivalentType() {
        Set<ResolvedType> concreteEquivalentTypesAlsoIndirectly = concreteEquivalentTypesAlsoIndirectly(new HashSet(), this);
        if (concreteEquivalentTypesAlsoIndirectly.isEmpty()) {
            ResolvedTypeParameterDeclaration resolvedTypeParameterDeclaration = this.correspondingTp;
            return resolvedTypeParameterDeclaration == null ? new ReferenceTypeImpl(this.typeSolver.getSolvedJavaLangObject()) : new ResolvedTypeVariable(resolvedTypeParameterDeclaration);
        }
        if (concreteEquivalentTypesAlsoIndirectly.size() == 1) {
            return concreteEquivalentTypesAlsoIndirectly.iterator().next();
        }
        Set set = (Set) this.equivalentTypes.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$equivalentType$3;
                lambda$equivalentType$3 = InferenceVariableType.this.lambda$equivalentType$3((ResolvedType) obj);
                return lambda$equivalentType$3;
            }
        }).collect(Collectors.toSet());
        if (set.size() == 1) {
            return (ResolvedType) set.iterator().next();
        }
        if (set.size() != 0 || this.superTypes.isEmpty()) {
            throw new IllegalStateException("Equivalent types are: " + ((Object) this.equivalentTypes));
        }
        if (this.superTypes.size() == 1) {
            return this.superTypes.iterator().next();
        }
        throw new IllegalStateException("Super types are: " + ((Object) this.superTypes));
    }

    public int hashCode() {
        return this.f59788id;
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        throw new UnsupportedOperationException();
    }

    public void registerEquivalentType(ResolvedType type) {
        this.equivalentTypes.add(type);
    }

    public void setCorrespondingTp(ResolvedTypeParameterDeclaration correspondingTp) {
        this.correspondingTp = correspondingTp;
    }

    public String toString() {
        return "InferenceVariableType{id=" + this.f59788id + JavaElement.JEM_ANNOTATION;
    }
}
