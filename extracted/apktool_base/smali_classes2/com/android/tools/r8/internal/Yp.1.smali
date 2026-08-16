.class public Lcom/android/tools/r8/internal/Yp;
.super Lcom/android/tools/r8/internal/cq;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/A2;IIIII)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/android/tools/r8/internal/cq;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->b()[Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/cq;-><init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method


# virtual methods
.method public final O()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/dq;
    .locals 9

    .line 5
    new-instance v8, Lcom/android/tools/r8/internal/Yp;

    iget-byte v1, p0, Lcom/android/tools/r8/internal/lp;->f:B

    iget-byte v3, p0, Lcom/android/tools/r8/internal/lp;->g:B

    iget-byte v4, p0, Lcom/android/tools/r8/internal/lp;->h:B

    iget-byte v5, p0, Lcom/android/tools/r8/internal/lp;->i:B

    iget-byte v6, p0, Lcom/android/tools/r8/internal/lp;->j:B

    iget-byte v7, p0, Lcom/android/tools/r8/internal/lp;->k:B

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/Yp;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    invoke-virtual {v8, p1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    return-object v8
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cq;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 8

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cq;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-byte v4, p0, Lcom/android/tools/r8/internal/lp;->f:B

    iget-byte v0, p0, Lcom/android/tools/r8/internal/lp;->g:B

    iget-byte v3, p0, Lcom/android/tools/r8/internal/lp;->h:B

    iget-byte v5, p0, Lcom/android/tools/r8/internal/lp;->i:B

    iget-byte v6, p0, Lcom/android/tools/r8/internal/lp;->j:B

    iget-byte v7, p0, Lcom/android/tools/r8/internal/lp;->k:B

    filled-new-array {v0, v3, v5, v6, v7}, [I

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;I[I)V

    return-void
.end method

.method public final getType()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "InvokeDirect"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke-direct"

    return-object v0
.end method
