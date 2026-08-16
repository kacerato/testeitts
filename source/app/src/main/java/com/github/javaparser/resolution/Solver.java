package com.github.javaparser.resolution;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.resolution.declarations.ResolvedTypeDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedValueDeclaration;
import com.github.javaparser.resolution.model.SymbolReference;
import com.github.javaparser.resolution.model.Value;
import com.github.javaparser.resolution.types.ResolvedType;
import java.util.List;
import java.util.Optional;

public interface Solver {
    ResolvedType classToResolvedType(Class<?> clazz);

    MethodUsage solveMethod(String methodName, List<ResolvedType> argumentsTypes, Node node);

    MethodUsage solveMethod(String methodName, List<ResolvedType> argumentsTypes, Context context);

    SymbolReference<? extends ResolvedValueDeclaration> solveSymbol(String name, Node node);

    SymbolReference<? extends ResolvedValueDeclaration> solveSymbol(String name, Context context);

    Optional<Value> solveSymbolAsValue(String name, Node node);

    Optional<Value> solveSymbolAsValue(String name, Context context);

    SymbolReference<? extends ResolvedValueDeclaration> solveSymbolInType(ResolvedTypeDeclaration typeDeclaration, String name);

    ResolvedTypeDeclaration solveType(Type type);

    SymbolReference<? extends ResolvedTypeDeclaration> solveType(String name, Node node);

    SymbolReference<? extends ResolvedTypeDeclaration> solveType(String name, Context context);

    SymbolReference<ResolvedTypeDeclaration> solveTypeInType(ResolvedTypeDeclaration typeDeclaration, String name);

    ResolvedType solveTypeUsage(String name, Context context);
}
