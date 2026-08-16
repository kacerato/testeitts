.class public final synthetic Lcom/github/javaparser/resolution/types/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/i;->b:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/i;->b:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
