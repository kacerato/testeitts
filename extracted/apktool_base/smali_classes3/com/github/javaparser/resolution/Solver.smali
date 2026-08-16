.class public interface abstract Lcom/github/javaparser/resolution/Solver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract classToResolvedType(Ljava/lang/Class;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/github/javaparser/resolution/types/ResolvedType;"
        }
    .end annotation
.end method

.method public abstract solveMethod(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/resolution/MethodUsage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodName",
            "argumentsTypes",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Lcom/github/javaparser/resolution/MethodUsage;"
        }
    .end annotation
.end method

.method public abstract solveMethod(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/MethodUsage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodName",
            "argumentsTypes",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/Context;",
            ")",
            "Lcom/github/javaparser/resolution/MethodUsage;"
        }
    .end annotation
.end method

.method public abstract solveSymbol(Ljava/lang/String;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract solveSymbol(Ljava/lang/String;Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/Context;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract solveSymbolAsValue(Ljava/lang/String;Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/model/Value;",
            ">;"
        }
    .end annotation
.end method

.method public abstract solveSymbolAsValue(Ljava/lang/String;Lcom/github/javaparser/resolution/Context;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/Context;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/model/Value;",
            ">;"
        }
    .end annotation
.end method

.method public abstract solveSymbolInType(Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract solveType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract solveType(Ljava/lang/String;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract solveType(Ljava/lang/String;Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/Context;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract solveTypeInType(Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract solveTypeUsage(Ljava/lang/String;Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "context"
        }
    .end annotation
.end method
