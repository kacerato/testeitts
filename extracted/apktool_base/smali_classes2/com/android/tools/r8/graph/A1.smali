.class public final Lcom/android/tools/r8/graph/A1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/internal/QC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->e1:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->h1:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v2, v3}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->f1:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->h1:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g1:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->h1:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v4, v4, v5}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/A1;->a:Lcom/android/tools/r8/graph/A2;

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0, v0, p1}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/A1;->b:Lcom/android/tools/r8/internal/QC;

    return-void
.end method
