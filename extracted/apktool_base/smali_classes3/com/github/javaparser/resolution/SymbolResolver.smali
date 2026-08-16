.class public interface abstract Lcom/github/javaparser/resolution/SymbolResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract calculateType(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation
.end method

.method public abstract resolveDeclaration(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "resultClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract toResolvedType(Lcom/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "javaparserType",
            "resultClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/type/Type;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract toTypeDeclaration(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation
.end method
