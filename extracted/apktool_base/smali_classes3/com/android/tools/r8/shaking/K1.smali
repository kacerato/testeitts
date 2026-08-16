.class public abstract Lcom/android/tools/r8/shaking/K1;
.super Lcom/android/tools/r8/shaking/X1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/X1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/K1;->a:Lcom/android/tools/r8/graph/j1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/S0;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/K1;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p1

    return-object p1
.end method
