package com.github.javaparser.resolution.declarations;

import com.github.javaparser.ast.AccessSpecifier;
import com.github.javaparser.resolution.MethodUsage;
import com.github.javaparser.resolution.UnsolvedSymbolException;
import com.github.javaparser.resolution.types.ResolvedReferenceType;
import com.github.javaparser.resolution.types.ResolvedType;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Deque;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public interface ResolvedReferenceTypeDeclaration extends ResolvedTypeDeclaration, ResolvedTypeParametrizable {
    public static final String JAVA_LANG_RECORD = "java.lang.Record";
    public static final String JAVA_LANG_ENUM = Enum.class.getCanonicalName();
    public static final String JAVA_LANG_COMPARABLE = Comparable.class.getCanonicalName();
    public static final String JAVA_IO_SERIALIZABLE = Serializable.class.getCanonicalName();
    public static final String JAVA_LANG_OBJECT = Object.class.getCanonicalName();
    public static final Function<ResolvedReferenceTypeDeclaration, List<ResolvedReferenceType>> depthFirstFunc = new Function() {
        @Override
        public final Object apply(Object obj) {
            List lambda$static$0;
            lambda$static$0 = ResolvedReferenceTypeDeclaration.lambda$static$0((ResolvedReferenceTypeDeclaration) obj);
            return lambda$static$0;
        }
    };
    public static final Function<ResolvedReferenceTypeDeclaration, List<ResolvedReferenceType>> breadthFirstFunc = new Function() {
        @Override
        public final Object apply(Object obj) {
            List lambda$static$3;
            lambda$static$3 = ResolvedReferenceTypeDeclaration.lambda$static$3((ResolvedReferenceTypeDeclaration) obj);
            return lambda$static$3;
        }
    };

    static boolean lambda$getAllNonStaticFields$9(ResolvedFieldDeclaration it) {
        return !it.isStatic();
    }

    static boolean lambda$getDeclaredAnnotation$16(final String name, ResolvedAnnotationDeclaration annotation) {
        return annotation.getQualifiedName().endsWith(name);
    }

    default boolean lambda$getDeclaredFields$11(ResolvedFieldDeclaration it) {
        return it.declaringType().getQualifiedName().equals(getQualifiedName());
    }

    static boolean lambda$getField$4(final String name, ResolvedFieldDeclaration f10) {
        return f10.getName().equals(name);
    }

    static boolean lambda$getVisibleField$5(final String name, ResolvedFieldDeclaration f10) {
        return f10.getName().equals(name);
    }

    default boolean lambda$getVisibleFields$8(ResolvedFieldDeclaration f10) {
        return f10.declaringType().equals(this) || f10.accessSpecifier() != AccessSpecifier.PRIVATE;
    }

    static boolean lambda$hasAnnotation$12(ResolvedReferenceType it) {
        return it.asReferenceType().getTypeDeclaration().isPresent();
    }

    static boolean lambda$hasAnnotation$13(ResolvedReferenceType it) {
        return it.asReferenceType().getTypeDeclaration().get().isClass();
    }

    static ResolvedReferenceTypeDeclaration lambda$hasAnnotation$14(ResolvedReferenceType it) {
        return it.asReferenceType().getTypeDeclaration().get();
    }

    static boolean lambda$hasAnnotation$15(final String qualifiedName, ResolvedReferenceTypeDeclaration rrtd) {
        return rrtd.hasDirectlyAnnotation(qualifiedName) && rrtd.isInheritedAnnotation(qualifiedName);
    }

    static boolean lambda$hasField$6(final String name, ResolvedFieldDeclaration f10) {
        return f10.getName().equals(name);
    }

    static boolean lambda$hasVisibleField$7(final String name, ResolvedFieldDeclaration f10) {
        return f10.getName().equals(name);
    }

    static void lambda$null$1(final Deque queuedAncestors, final List ancestors, ResolvedReferenceType ancestor) {
        queuedAncestors.add(ancestor);
        if (ancestors.contains(ancestor)) {
            return;
        }
        ancestors.add(ancestor);
    }

    static void lambda$null$2(final ResolvedReferenceType queuedAncestor, final Deque queuedAncestors, final List ancestors, ResolvedReferenceTypeDeclaration rtd) {
        new LinkedHashSet(queuedAncestor.getDirectAncestors()).stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ResolvedReferenceTypeDeclaration.lambda$null$1(Deque.this, ancestors, (ResolvedReferenceType) obj);
            }
        });
    }

    static List lambda$static$0(ResolvedReferenceTypeDeclaration rrtd) {
        ArrayList arrayList = new ArrayList();
        if (!rrtd.isJavaLangObject()) {
            for (ResolvedReferenceType resolvedReferenceType : rrtd.getAncestors()) {
                arrayList.add(resolvedReferenceType);
                for (ResolvedReferenceType resolvedReferenceType2 : resolvedReferenceType.getAllAncestors()) {
                    if (!arrayList.contains(resolvedReferenceType2)) {
                        arrayList.add(resolvedReferenceType2);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static List lambda$static$3(ResolvedReferenceTypeDeclaration rrtd) {
        final ArrayList arrayList = new ArrayList();
        if (!rrtd.isJavaLangObject()) {
            final LinkedList linkedList = new LinkedList(rrtd.getAncestors());
            arrayList.addAll(linkedList);
            while (!linkedList.isEmpty()) {
                final ResolvedReferenceType resolvedReferenceType = (ResolvedReferenceType) linkedList.removeFirst();
                resolvedReferenceType.getTypeDeclaration().ifPresent(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ResolvedReferenceTypeDeclaration.lambda$null$2(ResolvedReferenceType.this, linkedList, arrayList, (ResolvedReferenceTypeDeclaration) obj);
                    }
                });
            }
        }
        return arrayList;
    }

    @Override
    default ResolvedReferenceTypeDeclaration asReferenceType() {
        return this;
    }

    default boolean canBeAssignedTo(ResolvedReferenceTypeDeclaration other) {
        return other.isAssignableBy(this);
    }

    @Override
    default Optional<ResolvedTypeParameterDeclaration> findTypeParameter(String name) {
        for (ResolvedTypeParameterDeclaration resolvedTypeParameterDeclaration : getTypeParameters()) {
            if (resolvedTypeParameterDeclaration.getName().equals(name)) {
                return Optional.of(resolvedTypeParameterDeclaration);
            }
        }
        return containerType().isPresent() ? containerType().get().findTypeParameter(name) : Optional.empty();
    }

    default List<ResolvedReferenceType> getAllAncestors() {
        return getAllAncestors(depthFirstFunc);
    }

    List<ResolvedFieldDeclaration> getAllFields();

    Set<MethodUsage> getAllMethods();

    default List<ResolvedFieldDeclaration> getAllNonStaticFields() {
        return (List) getAllFields().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAllNonStaticFields$9;
                lambda$getAllNonStaticFields$9 = ResolvedReferenceTypeDeclaration.lambda$getAllNonStaticFields$9((ResolvedFieldDeclaration) obj);
                return lambda$getAllNonStaticFields$9;
            }
        }).collect(Collectors.toList());
    }

    default List<ResolvedFieldDeclaration> getAllStaticFields() {
        return (List) getAllFields().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean isStatic;
                isStatic = ((ResolvedFieldDeclaration) obj).isStatic();
                return isStatic;
            }
        }).collect(Collectors.toList());
    }

    default List<ResolvedReferenceType> getAncestors() {
        return getAncestors(false);
    }

    List<ResolvedReferenceType> getAncestors(boolean acceptIncompleteList);

    List<ResolvedConstructorDeclaration> getConstructors();

    default Optional<ResolvedAnnotationDeclaration> getDeclaredAnnotation(final String name) {
        return getDeclaredAnnotations().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getDeclaredAnnotation$16;
                lambda$getDeclaredAnnotation$16 = ResolvedReferenceTypeDeclaration.lambda$getDeclaredAnnotation$16(String.this, (ResolvedAnnotationDeclaration) obj);
                return lambda$getDeclaredAnnotation$16;
            }
        }).findFirst();
    }

    default Set<ResolvedAnnotationDeclaration> getDeclaredAnnotations() {
        throw new UnsupportedOperationException("Getting declared annotation is not supproted on this type " + getName());
    }

    default List<ResolvedFieldDeclaration> getDeclaredFields() {
        return (List) getAllFields().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getDeclaredFields$11;
                lambda$getDeclaredFields$11 = ResolvedReferenceTypeDeclaration.this.lambda$getDeclaredFields$11((ResolvedFieldDeclaration) obj);
                return lambda$getDeclaredFields$11;
            }
        }).collect(Collectors.toList());
    }

    Set<ResolvedMethodDeclaration> getDeclaredMethods();

    default ResolvedFieldDeclaration getField(final String name) {
        Optional<ResolvedFieldDeclaration> findFirst = getAllFields().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getField$4;
                lambda$getField$4 = ResolvedReferenceTypeDeclaration.lambda$getField$4(String.this, (ResolvedFieldDeclaration) obj);
                return lambda$getField$4;
            }
        }).findFirst();
        if (findFirst.isPresent()) {
            return findFirst.get();
        }
        throw new UnsolvedSymbolException("Field not found: " + name);
    }

    default ResolvedFieldDeclaration getVisibleField(final String name) {
        Optional<ResolvedFieldDeclaration> findFirst = getVisibleFields().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getVisibleField$5;
                lambda$getVisibleField$5 = ResolvedReferenceTypeDeclaration.lambda$getVisibleField$5(String.this, (ResolvedFieldDeclaration) obj);
                return lambda$getVisibleField$5;
            }
        }).findFirst();
        if (findFirst.isPresent()) {
            return findFirst.get();
        }
        throw new IllegalArgumentException();
    }

    default List<ResolvedFieldDeclaration> getVisibleFields() {
        return (List) getAllFields().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getVisibleFields$8;
                lambda$getVisibleFields$8 = ResolvedReferenceTypeDeclaration.this.lambda$getVisibleFields$8((ResolvedFieldDeclaration) obj);
                return lambda$getVisibleFields$8;
            }
        }).collect(Collectors.toList());
    }

    default boolean hasAnnotation(final String qualifiedName) {
        if (hasDirectlyAnnotation(qualifiedName)) {
            return true;
        }
        return isClass() && getAllAncestors().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasAnnotation$12;
                lambda$hasAnnotation$12 = ResolvedReferenceTypeDeclaration.lambda$hasAnnotation$12((ResolvedReferenceType) obj);
                return lambda$hasAnnotation$12;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasAnnotation$13;
                lambda$hasAnnotation$13 = ResolvedReferenceTypeDeclaration.lambda$hasAnnotation$13((ResolvedReferenceType) obj);
                return lambda$hasAnnotation$13;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ResolvedReferenceTypeDeclaration lambda$hasAnnotation$14;
                lambda$hasAnnotation$14 = ResolvedReferenceTypeDeclaration.lambda$hasAnnotation$14((ResolvedReferenceType) obj);
                return lambda$hasAnnotation$14;
            }
        }).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasAnnotation$15;
                lambda$hasAnnotation$15 = ResolvedReferenceTypeDeclaration.lambda$hasAnnotation$15(String.this, (ResolvedReferenceTypeDeclaration) obj);
                return lambda$hasAnnotation$15;
            }
        });
    }

    boolean hasDirectlyAnnotation(String qualifiedName);

    default boolean hasField(final String name) {
        return getAllFields().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasField$6;
                lambda$hasField$6 = ResolvedReferenceTypeDeclaration.lambda$hasField$6(String.this, (ResolvedFieldDeclaration) obj);
                return lambda$hasField$6;
            }
        });
    }

    default boolean hasVisibleField(final String name) {
        return getVisibleFields().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasVisibleField$7;
                lambda$hasVisibleField$7 = ResolvedReferenceTypeDeclaration.lambda$hasVisibleField$7(String.this, (ResolvedFieldDeclaration) obj);
                return lambda$hasVisibleField$7;
            }
        });
    }

    boolean isAssignableBy(ResolvedReferenceTypeDeclaration other);

    boolean isAssignableBy(ResolvedType type);

    boolean isFunctionalInterface();

    default boolean isInheritedAnnotation(String name) {
        Optional<ResolvedAnnotationDeclaration> declaredAnnotation = getDeclaredAnnotation(name);
        return declaredAnnotation.isPresent() && declaredAnnotation.get().isInheritable();
    }

    default boolean isJavaLangEnum() {
        return isEnum() && JAVA_LANG_ENUM.equals(getQualifiedName());
    }

    default boolean isJavaLangObject() {
        return isClass() && !isAnonymousClass() && hasName() && JAVA_LANG_OBJECT.equals(getQualifiedName());
    }

    default boolean isJavaLangRecord() {
        return isRecord() && "java.lang.Record".equals(getQualifiedName());
    }

    @Override
    default boolean isReferenceType() {
        return true;
    }

    default List<ResolvedReferenceType> getAllAncestors(Function<ResolvedReferenceTypeDeclaration, List<ResolvedReferenceType>> traverser) {
        return traverser.apply(this);
    }
}
