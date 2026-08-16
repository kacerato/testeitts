.class public final synthetic Lh0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/resolution/logic/InferenceContext;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/logic/InferenceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/j;->a:Lcom/github/javaparser/resolution/logic/InferenceContext;

    return-void
.end method


# virtual methods
.method public final transform(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lh0/j;->a:Lcom/github/javaparser/resolution/logic/InferenceContext;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->b(Lcom/github/javaparser/resolution/logic/InferenceContext;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
