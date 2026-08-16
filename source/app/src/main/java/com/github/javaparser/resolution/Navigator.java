package com.github.javaparser.resolution;

import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.BodyDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.expr.MethodCallExpr;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.stmt.ReturnStmt;
import com.github.javaparser.ast.stmt.SwitchStmt;
import com.github.javaparser.resolution.Navigator;
import g0.C13270f;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class Navigator {
    private Navigator() {
    }

    public static ClassOrInterfaceDeclaration demandClass(CompilationUnit cu, String qualifiedName) {
        ClassOrInterfaceDeclaration demandClassOrInterface = demandClassOrInterface(cu, qualifiedName);
        if (demandClassOrInterface.isInterface()) {
            throw new IllegalStateException("Type is not a class");
        }
        return demandClassOrInterface;
    }

    public static ClassOrInterfaceDeclaration demandClassOrInterface(CompilationUnit compilationUnit, final String qualifiedName) {
        return (ClassOrInterfaceDeclaration) findType(compilationUnit, qualifiedName).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ClassOrInterfaceDeclaration lambda$demandClassOrInterface$1;
                lambda$demandClassOrInterface$1 = Navigator.lambda$demandClassOrInterface$1((TypeDeclaration) obj);
                return lambda$demandClassOrInterface$1;
            }
        }).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                IllegalStateException lambda$demandClassOrInterface$2;
                lambda$demandClassOrInterface$2 = Navigator.lambda$demandClassOrInterface$2(String.this);
                return lambda$demandClassOrInterface$2;
            }
        });
    }

    public static ConstructorDeclaration demandConstructor(TypeDeclaration<?> td2, int index) {
        ConstructorDeclaration constructorDeclaration;
        Iterator<BodyDeclaration<?>> it = td2.getMembers().iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                constructorDeclaration = null;
                break;
            }
            BodyDeclaration<?> next = it.next();
            if (next instanceof ConstructorDeclaration) {
                constructorDeclaration = (ConstructorDeclaration) next;
                if (i10 == index) {
                    break;
                }
                i10++;
            }
        }
        if (constructorDeclaration != null) {
            return constructorDeclaration;
        }
        throw new IllegalStateException("No constructor with index " + index);
    }

    public static EnumDeclaration demandEnum(CompilationUnit cu, String qualifiedName) {
        Optional<TypeDeclaration<?>> findType = findType(cu, qualifiedName);
        if (!findType.isPresent()) {
            throw new IllegalStateException("No type found");
        }
        if (findType.get() instanceof EnumDeclaration) {
            return (EnumDeclaration) findType.get();
        }
        throw new IllegalStateException("Type is not an enum");
    }

    public static VariableDeclarator demandField(ClassOrInterfaceDeclaration cd2, String name) {
        Iterator<BodyDeclaration<?>> it = cd2.getMembers().iterator();
        while (it.hasNext()) {
            BodyDeclaration<?> next = it.next();
            if (next instanceof FieldDeclaration) {
                Iterator<VariableDeclarator> it2 = ((FieldDeclaration) next).getVariables().iterator();
                while (it2.hasNext()) {
                    VariableDeclarator next2 = it2.next();
                    if (next2.getName().getId().equals(name)) {
                        return next2;
                    }
                }
            }
        }
        throw new IllegalStateException("No field with given name");
    }

    public static ClassOrInterfaceDeclaration demandInterface(CompilationUnit cu, String qualifiedName) {
        ClassOrInterfaceDeclaration demandClassOrInterface = demandClassOrInterface(cu, qualifiedName);
        if (demandClassOrInterface.isInterface()) {
            return demandClassOrInterface;
        }
        throw new IllegalStateException("Type is not an interface");
    }

    public static MethodDeclaration demandMethod(TypeDeclaration<?> cd2, String name) {
        Iterator<BodyDeclaration<?>> it = cd2.getMembers().iterator();
        MethodDeclaration methodDeclaration = null;
        while (it.hasNext()) {
            BodyDeclaration<?> next = it.next();
            if (next instanceof MethodDeclaration) {
                MethodDeclaration methodDeclaration2 = (MethodDeclaration) next;
                if (!methodDeclaration2.getNameAsString().equals(name)) {
                    continue;
                } else {
                    if (methodDeclaration != null) {
                        throw new IllegalStateException("Ambiguous getName");
                    }
                    methodDeclaration = methodDeclaration2;
                }
            }
        }
        if (methodDeclaration != null) {
            return methodDeclaration;
        }
        throw new IllegalStateException("No method called " + name);
    }

    public static <N extends Node> N demandNodeOfGivenClass(Node node, Class<N> clazz) {
        return node.findFirst(clazz).orElseThrow(new C13270f());
    }

    public static Node demandParentNode(Node node) {
        return node.getParentNode().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                IllegalStateException lambda$demandParentNode$3;
                lambda$demandParentNode$3 = Navigator.lambda$demandParentNode$3();
                return lambda$demandParentNode$3;
            }
        });
    }

    public static ReturnStmt demandReturnStmt(MethodDeclaration method) {
        return (ReturnStmt) demandNodeOfGivenClass(method, ReturnStmt.class);
    }

    public static SwitchStmt demandSwitch(Node node) {
        return findSwitchHelper(node).orElseThrow(new C13270f());
    }

    public static Optional<VariableDeclarator> demandVariableDeclaration(Node node, final String name) {
        return node.findFirst(VariableDeclarator.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$demandVariableDeclaration$4;
                lambda$demandVariableDeclaration$4 = Navigator.lambda$demandVariableDeclaration$4(String.this, (VariableDeclarator) obj);
                return lambda$demandVariableDeclaration$4;
            }
        });
    }

    public static Optional<MethodCallExpr> findMethodCall(Node node, final String methodName) {
        return node.findFirst(MethodCallExpr.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findMethodCall$5;
                lambda$findMethodCall$5 = Navigator.lambda$findMethodCall$5(String.this, (MethodCallExpr) obj);
                return lambda$findMethodCall$5;
            }
        });
    }

    public static Optional<NameExpr> findNameExpression(Node node, final String name) {
        return node.findFirst(NameExpr.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findNameExpression$6;
                lambda$findNameExpression$6 = Navigator.lambda$findNameExpression$6(String.this, (NameExpr) obj);
                return lambda$findNameExpression$6;
            }
        });
    }

    @Deprecated
    public static <N extends Node> N findNodeOfGivenClass(Node node, Class<N> cls) {
        return (N) demandNodeOfGivenClass(node, cls);
    }

    @Deprecated
    public static ReturnStmt findReturnStmt(MethodDeclaration method) {
        return demandReturnStmt(method);
    }

    public static Optional<SimpleName> findSimpleName(Node node, final String name) {
        return node.findFirst(SimpleName.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findSimpleName$7;
                lambda$findSimpleName$7 = Navigator.lambda$findSimpleName$7(String.this, (SimpleName) obj);
                return lambda$findSimpleName$7;
            }
        });
    }

    @Deprecated
    public static SwitchStmt findSwitch(Node node) {
        return demandSwitch(node);
    }

    private static Optional<SwitchStmt> findSwitchHelper(Node node) {
        return node instanceof SwitchStmt ? Optional.of((SwitchStmt) node) : node.findFirst(SwitchStmt.class);
    }

    public static Optional<TypeDeclaration<?>> findType(CompilationUnit cu, String qualifiedName) {
        if (cu.getTypes().isEmpty()) {
            return Optional.empty();
        }
        final String outerTypeName = getOuterTypeName(qualifiedName);
        Optional<TypeDeclaration<?>> findFirst = cu.getTypes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$findType$8;
                lambda$findType$8 = Navigator.lambda$findType$8(String.this, (TypeDeclaration) obj);
                return lambda$findType$8;
            }
        }).findFirst();
        String innerTypeName = getInnerTypeName(qualifiedName);
        return (!findFirst.isPresent() || innerTypeName.isEmpty()) ? findFirst : findType(findFirst.get(), innerTypeName);
    }

    private static String getInnerTypeName(String qualifiedName) {
        return qualifiedName.contains(".") ? qualifiedName.split("\\.", 2)[1] : "";
    }

    private static String getOuterTypeName(String qualifiedName) {
        return qualifiedName.split("\\.", 2)[0];
    }

    public static ClassOrInterfaceDeclaration lambda$demandClassOrInterface$1(final TypeDeclaration res) {
        return res.toClassOrInterfaceDeclaration().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                IllegalStateException lambda$null$0;
                lambda$null$0 = Navigator.lambda$null$0(TypeDeclaration.this);
                return lambda$null$0;
            }
        });
    }

    public static IllegalStateException lambda$demandClassOrInterface$2(final String qualifiedName) {
        return new IllegalStateException("No type named '" + qualifiedName + "'found");
    }

    public static IllegalStateException lambda$demandParentNode$3() {
        return new IllegalStateException("Parent not found, the node does not appear to be inserted in a correct AST");
    }

    public static boolean lambda$demandVariableDeclaration$4(final String name, VariableDeclarator n10) {
        return n10.getNameAsString().equals(name);
    }

    public static boolean lambda$findMethodCall$5(final String methodName, MethodCallExpr n10) {
        return n10.getNameAsString().equals(methodName);
    }

    public static boolean lambda$findNameExpression$6(final String name, NameExpr n10) {
        return n10.getNameAsString().equals(name);
    }

    public static boolean lambda$findSimpleName$7(final String name, SimpleName n10) {
        return n10.asString().equals(name);
    }

    public static boolean lambda$findType$8(final String typeName, TypeDeclaration t10) {
        return t10.getName().getId().equals(typeName);
    }

    public static IllegalStateException lambda$null$0(final TypeDeclaration res) {
        return new IllegalStateException("Type is not a class or an interface, it is " + res.getClass().getCanonicalName());
    }

    @Deprecated
    public static Node requireParentNode(Node node) {
        return demandParentNode(node);
    }

    public static Node demandParentNode(Node node, Predicate<Node> isAcceptedParentNode) {
        do {
            node = demandParentNode(node);
        } while (!isAcceptedParentNode.test(node));
        return node;
    }

    public static Optional<TypeDeclaration<?>> findType(TypeDeclaration<?> td2, String qualifiedName) {
        String outerTypeName = getOuterTypeName(qualifiedName);
        Optional<TypeDeclaration<?>> empty = Optional.empty();
        Iterator<BodyDeclaration<?>> it = td2.getMembers().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            BodyDeclaration<?> next = it.next();
            if (next instanceof TypeDeclaration) {
                TypeDeclaration typeDeclaration = (TypeDeclaration) next;
                if (typeDeclaration.getName().getId().equals(outerTypeName)) {
                    empty = Optional.of(typeDeclaration);
                    break;
                }
            }
        }
        String innerTypeName = getInnerTypeName(qualifiedName);
        return (!empty.isPresent() || innerTypeName.isEmpty()) ? empty : findType(empty.get(), innerTypeName);
    }
}
