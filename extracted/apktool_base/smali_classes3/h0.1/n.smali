.class public final synthetic Lh0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/logic/InferenceVariableType;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/logic/InferenceVariableType;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/n;->b:Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    iput-object p2, p0, Lh0/n;->c:Ljava/util/Set;

    iput-object p3, p0, Lh0/n;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lh0/n;->b:Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    iget-object v1, p0, Lh0/n;->c:Ljava/util/Set;

    iget-object v2, p0, Lh0/n;->d:Ljava/util/Set;

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->d(Lcom/github/javaparser/resolution/logic/InferenceVariableType;Ljava/util/Set;Ljava/util/Set;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-void
.end method
