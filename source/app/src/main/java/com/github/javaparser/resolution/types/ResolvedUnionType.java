package com.github.javaparser.resolution.types;

import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class ResolvedUnionType implements ResolvedType {
    private List<ResolvedType> elements;

    public ResolvedUnionType(List<ResolvedType> elements) {
        if (elements.size() >= 2) {
            this.elements = new LinkedList(elements);
            return;
        }
        throw new IllegalArgumentException("An union type should have at least two elements. This has " + elements.size());
    }

    public static List lambda$getCommonAncestor$0(ResolvedReferenceType rt) {
        return rt.getAllAncestors(ResolvedReferenceTypeDeclaration.breadthFirstFunc);
    }

    public static List lambda$getCommonAncestor$1(List a10, List b10) {
        ArrayList arrayList = new ArrayList(a10);
        arrayList.retainAll(b10);
        return arrayList;
    }

    public static boolean lambda$isAssignableBy$2(final ResolvedType other, ResolvedType e10) {
        return e10.isAssignableBy(other);
    }

    @Override
    public ResolvedUnionType asUnionType() {
        return this;
    }

    @Override
    public String describe() {
        return String.join(" | ", (Iterable<? extends CharSequence>) this.elements.stream().map(new c()).collect(Collectors.toList()));
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return new HashSet(this.elements).equals(new HashSet(((ResolvedUnionType) o10).elements));
    }

    public Optional<ResolvedReferenceType> getCommonAncestor() {
        return ((List) this.elements.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ResolvedType) obj).asReferenceType();
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                List lambda$getCommonAncestor$0;
                lambda$getCommonAncestor$0 = ResolvedUnionType.lambda$getCommonAncestor$0((ResolvedReferenceType) obj);
                return lambda$getCommonAncestor$0;
            }
        }).reduce(new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                List lambda$getCommonAncestor$1;
                lambda$getCommonAncestor$1 = ResolvedUnionType.lambda$getCommonAncestor$1((List) obj, (List) obj2);
                return lambda$getCommonAncestor$1;
            }
        }).orElse(new ArrayList())).stream().findFirst();
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
                boolean lambda$isAssignableBy$2;
                lambda$isAssignableBy$2 = ResolvedUnionType.lambda$isAssignableBy$2(ResolvedType.this, (ResolvedType) obj);
                return lambda$isAssignableBy$2;
            }
        });
    }

    @Override
    public boolean isUnionType() {
        return true;
    }
}
