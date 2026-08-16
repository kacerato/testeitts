.class public final Lcom/android/tools/r8/graph/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->N0:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->Q0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->N0:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->c1:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/z1;->a:Lcom/android/tools/r8/graph/A2;

    return-void
.end method
