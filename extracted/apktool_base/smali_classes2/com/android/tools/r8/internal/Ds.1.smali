.class public Lcom/android/tools/r8/internal/Ds;
.super Lcom/android/tools/r8/internal/To;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/To;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/To;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 8
    iget-short p1, p0, Lcom/android/tools/r8/internal/To;->f:S

    const/16 p2, 0x27

    .line 9
    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 2

    .line 2
    iget-short v0, p0, Lcom/android/tools/r8/internal/To;->f:S

    .line 3
    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Or0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aB;->b()V

    return-void
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "Throw"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "throw"

    return-object v0
.end method
