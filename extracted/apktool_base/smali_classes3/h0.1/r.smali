.class public final synthetic Lh0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

.field public final synthetic b:Lcom/github/javaparser/resolution/TypeSolver;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/r;->a:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    iput-object p2, p0, Lh0/r;->b:Lcom/github/javaparser/resolution/TypeSolver;

    return-void
.end method


# virtual methods
.method public final transform(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2

    iget-object v0, p0, Lh0/r;->a:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    iget-object v1, p0, Lh0/r;->b:Lcom/github/javaparser/resolution/TypeSolver;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->d(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
