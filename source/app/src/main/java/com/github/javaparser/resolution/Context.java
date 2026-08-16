package com.github.javaparser.resolution;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.expr.TypePatternExpr;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.declarations.ResolvedConstructorDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedFieldDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedTypeDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedValueDeclaration;
import com.github.javaparser.resolution.model.SymbolReference;
import com.github.javaparser.resolution.model.Value;
import com.github.javaparser.resolution.types.ResolvedType;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;

public interface Context {
    static boolean lambda$fieldDeclarationInScope$3(final String name, ResolvedFieldDeclaration vd2) {
        return vd2.getName().equals(name);
    }

    static boolean lambda$localVariableDeclarationInScope$0(final String name, VariableDeclarator vd2) {
        return vd2.getNameAsString().equals(name);
    }

    static boolean lambda$parameterDeclarationInScope$1(final String name, Parameter vd2) {
        return vd2.getNameAsString().equals(name);
    }

    static boolean lambda$typePatternExprInScope$2(final String name, TypePatternExpr vd2) {
        return vd2.getNameAsString().equals(name);
    }

    default Optional<ResolvedFieldDeclaration> fieldDeclarationInScope(final String name) {
        if (!getParent().isPresent()) {
            return Optional.empty();
        }
        Context context = getParent().get();
        Optional<ResolvedFieldDeclaration> findFirst = context.fieldsExposedToChild(getWrappedNode()).stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$fieldDeclarationInScope$3;
                lambda$fieldDeclarationInScope$3 = Context.lambda$fieldDeclarationInScope$3(String.this, (ResolvedFieldDeclaration) obj);
                return lambda$fieldDeclarationInScope$3;
            }
        }).findFirst();
        return findFirst.isPresent() ? findFirst : context.fieldDeclarationInScope(name);
    }

    default List<ResolvedFieldDeclaration> fieldsExposedToChild(Node child) {
        return Collections.emptyList();
    }

    Optional<Context> getParent();

    <N extends Node> N getWrappedNode();

    default Optional<VariableDeclarator> localVariableDeclarationInScope(final String name) {
        if (!getParent().isPresent()) {
            return Optional.empty();
        }
        Node wrappedNode = getWrappedNode();
        Context context = getParent().get();
        Optional<VariableDeclarator> findFirst = context.localVariablesExposedToChild(wrappedNode).stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$localVariableDeclarationInScope$0;
                lambda$localVariableDeclarationInScope$0 = Context.lambda$localVariableDeclarationInScope$0(String.this, (VariableDeclarator) obj);
                return lambda$localVariableDeclarationInScope$0;
            }
        }).findFirst();
        return findFirst.isPresent() ? findFirst : context.localVariableDeclarationInScope(name);
    }

    default List<VariableDeclarator> localVariablesExposedToChild(Node child) {
        return Collections.emptyList();
    }

    default List<TypePatternExpr> negatedTypePatternExprsExposedFromChildren() {
        return Collections.emptyList();
    }

    default Optional<Parameter> parameterDeclarationInScope(final String name) {
        if (!getParent().isPresent()) {
            return Optional.empty();
        }
        Node wrappedNode = getWrappedNode();
        Context context = getParent().get();
        Optional<Parameter> findFirst = context.parametersExposedToChild(wrappedNode).stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$parameterDeclarationInScope$1;
                lambda$parameterDeclarationInScope$1 = Context.lambda$parameterDeclarationInScope$1(String.this, (Parameter) obj);
                return lambda$parameterDeclarationInScope$1;
            }
        }).findFirst();
        return findFirst.isPresent() ? findFirst : context.parameterDeclarationInScope(name);
    }

    default List<Parameter> parametersExposedToChild(Node child) {
        return Collections.emptyList();
    }

    default SymbolReference<ResolvedConstructorDeclaration> solveConstructor(List<ResolvedType> argumentsTypes) {
        throw new IllegalArgumentException("Constructor resolution is available only on Class Context");
    }

    default Optional<ResolvedType> solveGenericType(String name) {
        return solveGenericTypeInParentContext(name);
    }

    default Optional<ResolvedType> solveGenericTypeInParentContext(String name) {
        Optional<Context> parent = getParent();
        return !parent.isPresent() ? Optional.empty() : parent.get().solveGenericType(name);
    }

    default SymbolReference<ResolvedMethodDeclaration> solveMethod(String name, List<ResolvedType> argumentsTypes, boolean staticOnly) {
        return solveMethodInParentContext(name, argumentsTypes, staticOnly);
    }

    Optional<MethodUsage> solveMethodAsUsage(String name, List<ResolvedType> argumentsTypes);

    default SymbolReference<ResolvedMethodDeclaration> solveMethodInParentContext(String name, List<ResolvedType> argumentsTypes, boolean staticOnly) {
        Optional<Context> parent = getParent();
        return !parent.isPresent() ? SymbolReference.unsolved() : parent.get().solveMethod(name, argumentsTypes, staticOnly);
    }

    default SymbolReference<? extends ResolvedValueDeclaration> solveSymbol(String name) {
        return solveSymbolInParentContext(name);
    }

    default Optional<Value> solveSymbolAsValue(String name) {
        SymbolReference<? extends ResolvedValueDeclaration> solveSymbol = solveSymbol(name);
        return !solveSymbol.isSolved() ? Optional.empty() : Optional.of(Value.from(solveSymbol.getCorrespondingDeclaration()));
    }

    default Optional<Value> solveSymbolAsValueInParentContext(String name) {
        SymbolReference<? extends ResolvedValueDeclaration> solveSymbolInParentContext = solveSymbolInParentContext(name);
        return !solveSymbolInParentContext.isSolved() ? Optional.empty() : Optional.of(Value.from(solveSymbolInParentContext.getCorrespondingDeclaration()));
    }

    default SymbolReference<? extends ResolvedValueDeclaration> solveSymbolInParentContext(String name) {
        Optional<Context> parent = getParent();
        return !parent.isPresent() ? SymbolReference.unsolved() : parent.get().solveSymbol(name);
    }

    @Deprecated
    default SymbolReference<ResolvedTypeDeclaration> solveType(String name) {
        return solveType(name, null);
    }

    @Deprecated
    default SymbolReference<ResolvedTypeDeclaration> solveTypeInParentContext(String name) {
        return solveTypeInParentContext(name, null);
    }

    default Optional<TypePatternExpr> typePatternExprInScope(final String name) {
        if (!getParent().isPresent()) {
            return Optional.empty();
        }
        Context context = getParent().get();
        Optional<TypePatternExpr> findFirst = context.typePatternExprsExposedToChild(getWrappedNode()).stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$typePatternExprInScope$2;
                lambda$typePatternExprInScope$2 = Context.lambda$typePatternExprInScope$2(String.this, (TypePatternExpr) obj);
                return lambda$typePatternExprInScope$2;
            }
        }).findFirst();
        return findFirst.isPresent() ? findFirst : context.typePatternExprInScope(name);
    }

    default List<TypePatternExpr> typePatternExprsExposedFromChildren() {
        return Collections.emptyList();
    }

    default List<TypePatternExpr> typePatternExprsExposedToChild(Node child) {
        return Collections.emptyList();
    }

    default SymbolReference<ResolvedTypeDeclaration> solveType(String name, List<ResolvedType> typeArguments) {
        return solveTypeInParentContext(name, typeArguments);
    }

    default SymbolReference<ResolvedTypeDeclaration> solveTypeInParentContext(String name, List<ResolvedType> typeArguments) {
        Optional<Context> parent = getParent();
        if (!parent.isPresent()) {
            return SymbolReference.unsolved();
        }
        return parent.get().solveType(name, typeArguments);
    }
}
