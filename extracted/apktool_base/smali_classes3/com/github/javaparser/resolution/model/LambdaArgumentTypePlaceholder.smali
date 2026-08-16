.class public Lcom/github/javaparser/resolution/model/LambdaArgumentTypePlaceholder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private method:Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/javaparser/resolution/model/LambdaArgumentTypePlaceholder;->pos:I

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isReferenceType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMethod(Lcom/github/javaparser/resolution/model/SymbolReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/resolution/model/LambdaArgumentTypePlaceholder;->method:Lcom/github/javaparser/resolution/model/SymbolReference;

    return-void
.end method
