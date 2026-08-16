.class public final synthetic Lcom/github/javaparser/resolution/types/parametrization/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/parametrization/a;->a:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;

    return-void
.end method


# virtual methods
.method public final transform(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/a;->a:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->useThisTypeParametersOnTheGivenType(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
