.class public abstract Lcom/android/tools/r8/internal/cq;
.super Lcom/android/tools/r8/internal/lp;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/dq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/lp;",
        "Lcom/android/tools/r8/internal/dq;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/A2;IIIII)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/android/tools/r8/internal/lp;-><init>(ILcom/android/tools/r8/graph/d4;IIIII)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/lp;-><init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method


# virtual methods
.method public final K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract O()Lcom/android/tools/r8/internal/kK;
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 6

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cq;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cq;->O()Lcom/android/tools/r8/internal/kK;

    move-result-object v3

    .line 11
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v0, p3

    move-object v4, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    .line 13
    iget-byte p3, p0, Lcom/android/tools/r8/internal/lp;->f:B

    iget-byte p4, p0, Lcom/android/tools/r8/internal/lp;->k:B

    .line 14
    iget-object p5, p2, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/kK;->l:Z

    if-nez v0, :cond_1

    .line 16
    iget v0, p5, Lcom/android/tools/r8/internal/kK;->b:I

    if-ltz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    :goto_0
    iget p5, p5, Lcom/android/tools/r8/internal/kK;->b:I

    .line 19
    invoke-static {p3, p4, p6, p5}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;I)V

    .line 20
    iget-object p2, p2, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 21
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    .line 22
    iget-byte p1, p0, Lcom/android/tools/r8/internal/lp;->j:B

    iget-byte p2, p0, Lcom/android/tools/r8/internal/lp;->i:B

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Np;->e(II)I

    move-result p1

    iget-byte p2, p0, Lcom/android/tools/r8/internal/lp;->h:B

    iget-byte p3, p0, Lcom/android/tools/r8/internal/lp;->g:B

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/Np;->e(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Np;->d(II)S

    move-result p1

    int-to-short p1, p1

    .line 23
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cq;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cq;->O()Lcom/android/tools/r8/internal/kK;

    move-result-object v3

    .line 3
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v4, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    .line 5
    iget-object p2, p2, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 6
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 7
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-interface {p3, p1}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    :cond_0
    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/dq;
    .locals 0

    return-object p0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
