package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public interface NodeWithParameters<N extends Node> {
    static boolean lambda$getParameterByName$0(final String name, Parameter p10) {
        return p10.getNameAsString().equals(name);
    }

    static boolean lambda$getParameterByType$1(final String type, Parameter p10) {
        return p10.getType2().toString().equals(type);
    }

    static boolean lambda$getParameterByType$2(final Class type, Parameter p10) {
        return p10.getType2().toString().equals(type.getSimpleName());
    }

    static String lambda$hasParametersOfType$3(Parameter p10) {
        return p10.getType2().asString();
    }

    static String lambda$hasParametersOfType$5(final Parameter p10) {
        return (String) p10.getType2().toClassOrInterfaceType().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((ClassOrInterfaceType) obj).getNameAsString();
            }
        }).orElseGet(new Supplier() {
            @Override
            public final Object get() {
                String lambda$null$4;
                lambda$null$4 = NodeWithParameters.lambda$null$4(Parameter.this);
                return lambda$null$4;
            }
        });
    }

    static String lambda$null$4(final Parameter p10) {
        return p10.getType2().asString();
    }

    default Parameter addAndGetParameter(Type type, String name) {
        return addAndGetParameter(new Parameter(type, name));
    }

    default N addParameter(Type type, String name) {
        return addParameter(new Parameter(type, name));
    }

    default Parameter getParameter(int i10) {
        return getParameters().get(i10);
    }

    default Optional<Parameter> getParameterByName(final String name) {
        return getParameters().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getParameterByName$0;
                lambda$getParameterByName$0 = NodeWithParameters.lambda$getParameterByName$0(String.this, (Parameter) obj);
                return lambda$getParameterByName$0;
            }
        }).findFirst();
    }

    default Optional<Parameter> getParameterByType(final String type) {
        return getParameters().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getParameterByType$1;
                lambda$getParameterByType$1 = NodeWithParameters.lambda$getParameterByType$1(String.this, (Parameter) obj);
                return lambda$getParameterByType$1;
            }
        }).findFirst();
    }

    NodeList<Parameter> getParameters();

    default boolean hasParametersOfType(String... paramTypes) {
        return ((List) getParameters().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$hasParametersOfType$3;
                lambda$hasParametersOfType$3 = NodeWithParameters.lambda$hasParametersOfType$3((Parameter) obj);
                return lambda$hasParametersOfType$3;
            }
        }).collect(Collectors.toList())).equals(Arrays.asList(paramTypes));
    }

    default N setParameter(int i10, Parameter parameter) {
        getParameters().set(i10, (int) parameter);
        return (N) this;
    }

    N setParameters(NodeList<Parameter> parameters);

    void tryAddImportToParentCompilationUnit(Class<?> clazz);

    default Parameter addAndGetParameter(Class<?> paramClass, String name) {
        tryAddImportToParentCompilationUnit(paramClass);
        return addAndGetParameter(StaticJavaParser.parseType(paramClass.getSimpleName()), name);
    }

    default N addParameter(Class<?> paramClass, String name) {
        tryAddImportToParentCompilationUnit(paramClass);
        return addParameter(StaticJavaParser.parseType(paramClass.getSimpleName()), name);
    }

    default Parameter addAndGetParameter(String className, String name) {
        return addAndGetParameter(StaticJavaParser.parseType(className), name);
    }

    default N addParameter(String className, String name) {
        return addParameter(StaticJavaParser.parseType(className), name);
    }

    default Optional<Parameter> getParameterByType(final Class<?> type) {
        return getParameters().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getParameterByType$2;
                lambda$getParameterByType$2 = NodeWithParameters.lambda$getParameterByType$2(Class.this, (Parameter) obj);
                return lambda$getParameterByType$2;
            }
        }).findFirst();
    }

    default Parameter addAndGetParameter(Parameter parameter) {
        getParameters().add((NodeList<Parameter>) parameter);
        return parameter;
    }

    default N addParameter(Parameter parameter) {
        getParameters().add((NodeList<Parameter>) parameter);
        return (N) this;
    }

    default boolean hasParametersOfType(Class<?>... paramTypes) {
        return ((List) getParameters().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$hasParametersOfType$5;
                lambda$hasParametersOfType$5 = NodeWithParameters.lambda$hasParametersOfType$5((Parameter) obj);
                return lambda$hasParametersOfType$5;
            }
        }).collect(Collectors.toList())).equals(Stream.of((Object[]) paramTypes).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Class) obj).getSimpleName();
            }
        }).collect(Collectors.toList()));
    }
}
