.class public final Lcom/android/tools/r8/shaking/Q1;
.super Lcom/android/tools/r8/shaking/X1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/X1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Q1;->a:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/S0;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Q1;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/Dz$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Dz$a;->n:Lcom/android/tools/r8/internal/Dz$a;

    return-object v0
.end method
