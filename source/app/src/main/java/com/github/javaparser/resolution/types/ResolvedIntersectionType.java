package com.github.javaparser.resolution.types;

import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class ResolvedIntersectionType implements ResolvedType {
    private List<ResolvedType> elements;

    public ResolvedIntersectionType(Collection<ResolvedType> elements) {
        if (elements.size() >= 2) {
            this.elements = new LinkedList(elements);
            return;
        }
        throw new IllegalArgumentException("An intersection type should have at least two elements. This has " + elements.size());
    }

    public static boolean lambda$isAssignableBy$0(final ResolvedType other, ResolvedType e10) {
        return e10.isAssignableBy(other);
    }

    public static ResolvedType lambda$replaceTypeVariables$1(final ResolvedTypeParameterDeclaration tp, final ResolvedType replaced, final Map inferredTypes, ResolvedType e10) {
        return e10.replaceTypeVariables(tp, replaced, inferredTypes);
    }

    @Override
    public String describe() {
        return String.join(" & ", (Iterable<? extends CharSequence>) this.elements.stream().map(new c()).collect(Collectors.toList()));
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return new HashSet(this.elements).equals(new HashSet(((ResolvedIntersectionType) o10).elements));
    }

    public List<ResolvedType> getElements() {
        return this.elements;
    }

    public int hashCode() {
        return new HashSet(this.elements).hashCode();
    }

    @Override
    public boolean isAssignableBy(final ResolvedType other) {
        return this.elements.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isAssignableBy$0;
                lambda$isAssignableBy$0 = ResolvedIntersectionType.lambda$isAssignableBy$0(ResolvedType.this, (ResolvedType) obj);
                return lambda$isAssignableBy$0;
            }
        });
    }

    @Override
    public ResolvedType replaceTypeVariables(final ResolvedTypeParameterDeclaration tp, final ResolvedType replaced, final Map<ResolvedTypeParameterDeclaration, ResolvedType> inferredTypes) {
        List list = (List) this.elements.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ResolvedType lambda$replaceTypeVariables$1;
                lambda$replaceTypeVariables$1 = ResolvedIntersectionType.lambda$replaceTypeVariables$1(ResolvedTypeParameterDeclaration.this, replaced, inferredTypes, (ResolvedType) obj);
                return lambda$replaceTypeVariables$1;
            }
        }).collect(Collectors.toList());
        return list.equals(this.elements) ? this : new ResolvedIntersectionType(list);
    }
}
