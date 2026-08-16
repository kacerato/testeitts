package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.BodyDeclaration;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.InitializerDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.VoidType;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public interface NodeWithMembers<N extends Node> extends NodeWithSimpleName<N> {
    static boolean lambda$getConstructorByParameterTypes$11(final String[] paramTypes, ConstructorDeclaration m10) {
        return m10.hasParametersOfType(paramTypes);
    }

    static boolean lambda$getConstructorByParameterTypes$12(final Class[] paramTypes, ConstructorDeclaration m10) {
        return m10.hasParametersOfType((Class<?>[]) paramTypes);
    }

    static boolean lambda$getConstructors$6(BodyDeclaration m10) {
        return m10 instanceof ConstructorDeclaration;
    }

    static ConstructorDeclaration lambda$getConstructors$7(BodyDeclaration m10) {
        return (ConstructorDeclaration) m10;
    }

    static boolean lambda$getDefaultConstructor$10(ConstructorDeclaration cd2) {
        return cd2.getParameters().isEmpty();
    }

    static boolean lambda$getDefaultConstructor$8(BodyDeclaration m10) {
        return m10 instanceof ConstructorDeclaration;
    }

    static ConstructorDeclaration lambda$getDefaultConstructor$9(BodyDeclaration m10) {
        return (ConstructorDeclaration) m10;
    }

    static boolean lambda$getFieldByName$13(BodyDeclaration m10) {
        return m10 instanceof FieldDeclaration;
    }

    static FieldDeclaration lambda$getFieldByName$14(BodyDeclaration f10) {
        return (FieldDeclaration) f10;
    }

    static boolean lambda$getFieldByName$16(final String name, FieldDeclaration f10) {
        return f10.getVariables().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$null$15;
                lambda$null$15 = NodeWithMembers.lambda$null$15(String.this, (VariableDeclarator) obj);
                return lambda$null$15;
            }
        });
    }

    static boolean lambda$getFields$17(BodyDeclaration m10) {
        return m10 instanceof FieldDeclaration;
    }

    static FieldDeclaration lambda$getFields$18(BodyDeclaration m10) {
        return (FieldDeclaration) m10;
    }

    static boolean lambda$getMethods$1(BodyDeclaration m10) {
        return m10 instanceof MethodDeclaration;
    }

    static MethodDeclaration lambda$getMethods$2(BodyDeclaration m10) {
        return (MethodDeclaration) m10;
    }

    static boolean lambda$getMethodsByName$0(final String name, MethodDeclaration m10) {
        return m10.getNameAsString().equals(name);
    }

    static boolean lambda$getMethodsByParameterTypes$3(final String[] paramTypes, MethodDeclaration m10) {
        return m10.hasParametersOfType(paramTypes);
    }

    static boolean lambda$getMethodsByParameterTypes$5(final Class[] paramTypes, MethodDeclaration m10) {
        return m10.hasParametersOfType((Class<?>[]) paramTypes);
    }

    static boolean lambda$getMethodsBySignature$4(final String[] paramTypes, MethodDeclaration m10) {
        return m10.hasParametersOfType(paramTypes);
    }

    static boolean lambda$null$15(final String name, VariableDeclarator var) {
        return var.getNameAsString().equals(name);
    }

    default ConstructorDeclaration addConstructor(Modifier.Keyword... modifiers) {
        ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration();
        constructorDeclaration.setModifiers(Modifier.createModifierList(modifiers));
        constructorDeclaration.setName(getName());
        getMembers().add((NodeList<BodyDeclaration<?>>) constructorDeclaration);
        return constructorDeclaration;
    }

    default FieldDeclaration addField(Class<?> typeClass, String name, Modifier.Keyword... modifiers) {
        tryAddImportToParentCompilationUnit(typeClass);
        return addField(typeClass.getSimpleName(), name, modifiers);
    }

    default FieldDeclaration addFieldWithInitializer(Class<?> typeClass, String name, Expression initializer, Modifier.Keyword... modifiers) {
        tryAddImportToParentCompilationUnit(typeClass);
        return addFieldWithInitializer(typeClass.getSimpleName(), name, initializer, modifiers);
    }

    default BlockStmt addInitializer() {
        BlockStmt blockStmt = new BlockStmt();
        getMembers().add((NodeList<BodyDeclaration<?>>) new InitializerDeclaration(false, blockStmt));
        return blockStmt;
    }

    default N addMember(BodyDeclaration<?> member) {
        getMembers().add((NodeList<BodyDeclaration<?>>) member);
        return (N) this;
    }

    default MethodDeclaration addMethod(String methodName, Modifier.Keyword... modifiers) {
        MethodDeclaration methodDeclaration = new MethodDeclaration();
        methodDeclaration.setName(methodName);
        methodDeclaration.setType((Type) new VoidType());
        methodDeclaration.setModifiers(Modifier.createModifierList(modifiers));
        getMembers().add((NodeList<BodyDeclaration<?>>) methodDeclaration);
        return methodDeclaration;
    }

    default FieldDeclaration addPrivateField(Class<?> typeClass, String name) {
        return addField(typeClass, name, Modifier.Keyword.PRIVATE);
    }

    default FieldDeclaration addProtectedField(Class<?> typeClass, String name) {
        return addField(typeClass, name, Modifier.Keyword.PROTECTED);
    }

    default FieldDeclaration addPublicField(Class<?> typeClass, String name) {
        return addField(typeClass, name, Modifier.Keyword.PUBLIC);
    }

    default BlockStmt addStaticInitializer() {
        BlockStmt blockStmt = new BlockStmt();
        getMembers().add((NodeList<BodyDeclaration<?>>) new InitializerDeclaration(true, blockStmt));
        return blockStmt;
    }

    default Optional<ConstructorDeclaration> getConstructorByParameterTypes(final String... paramTypes) {
        return getConstructors().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getConstructorByParameterTypes$11;
                lambda$getConstructorByParameterTypes$11 = NodeWithMembers.lambda$getConstructorByParameterTypes$11(paramTypes, (ConstructorDeclaration) obj);
                return lambda$getConstructorByParameterTypes$11;
            }
        }).findFirst();
    }

    default List<ConstructorDeclaration> getConstructors() {
        return Collections.unmodifiableList((List) getMembers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getConstructors$6;
                lambda$getConstructors$6 = NodeWithMembers.lambda$getConstructors$6((BodyDeclaration) obj);
                return lambda$getConstructors$6;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ConstructorDeclaration lambda$getConstructors$7;
                lambda$getConstructors$7 = NodeWithMembers.lambda$getConstructors$7((BodyDeclaration) obj);
                return lambda$getConstructors$7;
            }
        }).collect(Collectors.toList()));
    }

    default Optional<ConstructorDeclaration> getDefaultConstructor() {
        return getMembers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getDefaultConstructor$8;
                lambda$getDefaultConstructor$8 = NodeWithMembers.lambda$getDefaultConstructor$8((BodyDeclaration) obj);
                return lambda$getDefaultConstructor$8;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ConstructorDeclaration lambda$getDefaultConstructor$9;
                lambda$getDefaultConstructor$9 = NodeWithMembers.lambda$getDefaultConstructor$9((BodyDeclaration) obj);
                return lambda$getDefaultConstructor$9;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getDefaultConstructor$10;
                lambda$getDefaultConstructor$10 = NodeWithMembers.lambda$getDefaultConstructor$10((ConstructorDeclaration) obj);
                return lambda$getDefaultConstructor$10;
            }
        }).findFirst();
    }

    default Optional<FieldDeclaration> getFieldByName(final String name) {
        return getMembers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getFieldByName$13;
                lambda$getFieldByName$13 = NodeWithMembers.lambda$getFieldByName$13((BodyDeclaration) obj);
                return lambda$getFieldByName$13;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                FieldDeclaration lambda$getFieldByName$14;
                lambda$getFieldByName$14 = NodeWithMembers.lambda$getFieldByName$14((BodyDeclaration) obj);
                return lambda$getFieldByName$14;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getFieldByName$16;
                lambda$getFieldByName$16 = NodeWithMembers.lambda$getFieldByName$16(String.this, (FieldDeclaration) obj);
                return lambda$getFieldByName$16;
            }
        }).findFirst();
    }

    default List<FieldDeclaration> getFields() {
        return Collections.unmodifiableList((List) getMembers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getFields$17;
                lambda$getFields$17 = NodeWithMembers.lambda$getFields$17((BodyDeclaration) obj);
                return lambda$getFields$17;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                FieldDeclaration lambda$getFields$18;
                lambda$getFields$18 = NodeWithMembers.lambda$getFields$18((BodyDeclaration) obj);
                return lambda$getFields$18;
            }
        }).collect(Collectors.toList()));
    }

    default BodyDeclaration<?> getMember(int i10) {
        return getMembers().get(i10);
    }

    NodeList<BodyDeclaration<?>> getMembers();

    default List<MethodDeclaration> getMethods() {
        return Collections.unmodifiableList((List) getMembers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getMethods$1;
                lambda$getMethods$1 = NodeWithMembers.lambda$getMethods$1((BodyDeclaration) obj);
                return lambda$getMethods$1;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                MethodDeclaration lambda$getMethods$2;
                lambda$getMethods$2 = NodeWithMembers.lambda$getMethods$2((BodyDeclaration) obj);
                return lambda$getMethods$2;
            }
        }).collect(Collectors.toList()));
    }

    default List<MethodDeclaration> getMethodsByName(final String name) {
        return Collections.unmodifiableList((List) getMethods().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getMethodsByName$0;
                lambda$getMethodsByName$0 = NodeWithMembers.lambda$getMethodsByName$0(String.this, (MethodDeclaration) obj);
                return lambda$getMethodsByName$0;
            }
        }).collect(Collectors.toList()));
    }

    default List<MethodDeclaration> getMethodsByParameterTypes(final String... paramTypes) {
        return Collections.unmodifiableList((List) getMethods().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getMethodsByParameterTypes$3;
                lambda$getMethodsByParameterTypes$3 = NodeWithMembers.lambda$getMethodsByParameterTypes$3(paramTypes, (MethodDeclaration) obj);
                return lambda$getMethodsByParameterTypes$3;
            }
        }).collect(Collectors.toList()));
    }

    default List<MethodDeclaration> getMethodsBySignature(String name, final String... paramTypes) {
        return Collections.unmodifiableList((List) getMethodsByName(name).stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getMethodsBySignature$4;
                lambda$getMethodsBySignature$4 = NodeWithMembers.lambda$getMethodsBySignature$4(paramTypes, (MethodDeclaration) obj);
                return lambda$getMethodsBySignature$4;
            }
        }).collect(Collectors.toList()));
    }

    default boolean isEmpty() {
        return getMembers().isEmpty();
    }

    default N setMember(int i10, BodyDeclaration<?> member) {
        getMembers().set(i10, (int) member);
        return (N) this;
    }

    N setMembers(NodeList<BodyDeclaration<?>> members);

    void tryAddImportToParentCompilationUnit(Class<?> clazz);

    default FieldDeclaration addPrivateField(String type, String name) {
        return addField(type, name, Modifier.Keyword.PRIVATE);
    }

    default FieldDeclaration addProtectedField(String type, String name) {
        return addField(type, name, Modifier.Keyword.PROTECTED);
    }

    default FieldDeclaration addPublicField(String type, String name) {
        return addField(type, name, Modifier.Keyword.PUBLIC);
    }

    default FieldDeclaration addField(String type, String name, Modifier.Keyword... modifiers) {
        return addField(StaticJavaParser.parseType(type), name, modifiers);
    }

    default FieldDeclaration addFieldWithInitializer(String type, String name, Expression initializer, Modifier.Keyword... modifiers) {
        return addFieldWithInitializer(StaticJavaParser.parseType(type), name, initializer, modifiers);
    }

    default FieldDeclaration addPrivateField(Type type, String name) {
        return addField(type, name, Modifier.Keyword.PRIVATE);
    }

    default FieldDeclaration addProtectedField(Type type, String name) {
        return addField(type, name, Modifier.Keyword.PROTECTED);
    }

    default FieldDeclaration addPublicField(Type type, String name) {
        return addField(type, name, Modifier.Keyword.PUBLIC);
    }

    default FieldDeclaration addField(Type type, String name, Modifier.Keyword... modifiers) {
        FieldDeclaration fieldDeclaration = new FieldDeclaration();
        fieldDeclaration.getVariables().add((NodeList<VariableDeclarator>) new VariableDeclarator(type, name));
        fieldDeclaration.setModifiers(Modifier.createModifierList(modifiers));
        getMembers().add((NodeList<BodyDeclaration<?>>) fieldDeclaration);
        return fieldDeclaration;
    }

    default FieldDeclaration addFieldWithInitializer(Type type, String name, Expression initializer, Modifier.Keyword... modifiers) {
        FieldDeclaration addField = addField(type, name, modifiers);
        addField.getVariables().iterator().next().setInitializer(initializer);
        return addField;
    }

    default Optional<ConstructorDeclaration> getConstructorByParameterTypes(final Class<?>... paramTypes) {
        return getConstructors().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getConstructorByParameterTypes$12;
                lambda$getConstructorByParameterTypes$12 = NodeWithMembers.lambda$getConstructorByParameterTypes$12(paramTypes, (ConstructorDeclaration) obj);
                return lambda$getConstructorByParameterTypes$12;
            }
        }).findFirst();
    }

    default List<MethodDeclaration> getMethodsByParameterTypes(final Class<?>... paramTypes) {
        return Collections.unmodifiableList((List) getMethods().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getMethodsByParameterTypes$5;
                lambda$getMethodsByParameterTypes$5 = NodeWithMembers.lambda$getMethodsByParameterTypes$5(paramTypes, (MethodDeclaration) obj);
                return lambda$getMethodsByParameterTypes$5;
            }
        }).collect(Collectors.toList()));
    }
}
