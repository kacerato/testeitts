.class public final Lcom/android/tools/r8/internal/qd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/Yq0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Yq0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/Yq0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Yq0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/Yq0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Yq0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/Yq0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Yq0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Lcom/android/tools/r8/internal/Yq0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Yq0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/qd;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method
