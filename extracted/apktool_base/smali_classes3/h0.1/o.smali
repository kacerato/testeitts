.class public final synthetic Lh0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/logic/InferenceVariableType;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/logic/InferenceVariableType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/o;->b:Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lh0/o;->b:Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->e(Lcom/github/javaparser/resolution/logic/InferenceVariableType;Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1
.end method
