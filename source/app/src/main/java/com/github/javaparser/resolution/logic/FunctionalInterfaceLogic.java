package com.github.javaparser.resolution.logic;

import com.github.javaparser.resolution.MethodUsage;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.resolution.logic.FunctionalInterfaceLogic;
import com.github.javaparser.resolution.types.ResolvedType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Parameter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public final class FunctionalInterfaceLogic {
    private static String JAVA_LANG_FUNCTIONAL_INTERFACE = FunctionalInterface.class.getCanonicalName();
    private static List<String> OBJECT_PUBLIC_METHODS_SIGNATURES = (List) Arrays.stream(Object.class.getDeclaredMethods()).filter(new Predicate() {
        @Override
        public final boolean test(Object obj) {
            boolean lambda$static$3;
            lambda$static$3 = FunctionalInterfaceLogic.lambda$static$3((Method) obj);
            return lambda$static$3;
        }
    }).map(new Function() {
        @Override
        public final Object apply(Object obj) {
            String signature;
            signature = FunctionalInterfaceLogic.getSignature((Method) obj);
            return signature;
        }
    }).collect(Collectors.toList());

    private FunctionalInterfaceLogic() {
    }

    public static Optional<MethodUsage> getFunctionalMethod(ResolvedType type) {
        Optional<ResolvedReferenceTypeDeclaration> typeDeclaration = type.asReferenceType().getTypeDeclaration();
        if (!typeDeclaration.isPresent()) {
            return Optional.empty();
        }
        ResolvedReferenceTypeDeclaration resolvedReferenceTypeDeclaration = typeDeclaration.get();
        if (type.isReferenceType() && resolvedReferenceTypeDeclaration.isInterface()) {
            return getFunctionalMethod(resolvedReferenceTypeDeclaration);
        }
        return Optional.empty();
    }

    public static String getSignature(Method m10) {
        return String.format("%s(%s)", m10.getName(), String.join(", ", (Iterable<? extends CharSequence>) Arrays.stream(m10.getParameters()).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String signature;
                signature = FunctionalInterfaceLogic.toSignature((Parameter) obj);
                return signature;
            }
        }).collect(Collectors.toList())));
    }

    public static boolean isFunctionalInterfaceType(ResolvedType type) {
        if (type.isReferenceType()) {
            Optional<ResolvedReferenceTypeDeclaration> typeDeclaration = type.asReferenceType().getTypeDeclaration();
            if (typeDeclaration.isPresent() && typeDeclaration.get().hasAnnotation(JAVA_LANG_FUNCTIONAL_INTERFACE)) {
                return true;
            }
        }
        return getFunctionalMethod(type).isPresent();
    }

    private static boolean isPublicMemberOfObject(MethodUsage m10) {
        return OBJECT_PUBLIC_METHODS_SIGNATURES.contains(m10.getDeclaration().getSignature());
    }

    public static boolean lambda$getFunctionalMethod$0(MethodUsage m10) {
        return m10.getDeclaration().isAbstract();
    }

    public static boolean lambda$getFunctionalMethod$1(MethodUsage m10) {
        return !isPublicMemberOfObject(m10);
    }

    public static boolean lambda$static$3(Method m10) {
        return Modifier.isPublic(m10.getModifiers());
    }

    public static String toSignature(Parameter p10) {
        return p10.getType().getCanonicalName();
    }

    public static Optional<MethodUsage> getFunctionalMethod(ResolvedReferenceTypeDeclaration typeDeclaration) {
        Set set = (Set) typeDeclaration.getAllMethods().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getFunctionalMethod$0;
                lambda$getFunctionalMethod$0 = FunctionalInterfaceLogic.lambda$getFunctionalMethod$0((MethodUsage) obj);
                return lambda$getFunctionalMethod$0;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getFunctionalMethod$1;
                lambda$getFunctionalMethod$1 = FunctionalInterfaceLogic.lambda$getFunctionalMethod$1((MethodUsage) obj);
                return lambda$getFunctionalMethod$1;
            }
        }).collect(Collectors.toSet());
        if (set.size() == 0) {
            return Optional.empty();
        }
        Iterator it = set.iterator();
        MethodUsage methodUsage = (MethodUsage) it.next();
        while (it.hasNext()) {
            MethodUsage methodUsage2 = (MethodUsage) it.next();
            if ((!methodUsage.isSameSignature(methodUsage2) && !methodUsage.isSubSignature(methodUsage2) && !methodUsage2.isSubSignature(methodUsage)) || !methodUsage.isReturnTypeSubstituable(methodUsage2)) {
                methodUsage = null;
                break;
            }
        }
        return Optional.ofNullable(methodUsage);
    }
}
