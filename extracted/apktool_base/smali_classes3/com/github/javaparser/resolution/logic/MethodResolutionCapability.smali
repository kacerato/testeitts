.class public interface abstract Lcom/github/javaparser/resolution/logic/MethodResolutionCapability;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract solveMethod(Ljava/lang/String;Ljava/util/List;Z)Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "argumentsTypes",
            "staticOnly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;Z)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation
.end method
