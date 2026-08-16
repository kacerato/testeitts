.class public Lcom/android/tools/r8/internal/iq;
.super Lcom/android/tools/r8/internal/eq;
.source "SourceFile"


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/eq;-><init>(IILcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->b()[Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/eq;-><init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method


# virtual methods
.method public final O()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/dq;
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/iq;

    iget-char v1, p0, Lcom/android/tools/r8/internal/mp;->g:C

    iget-short v2, p0, Lcom/android/tools/r8/internal/mp;->f:S

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/iq;-><init>(IILcom/android/tools/r8/graph/A2;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eq;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 6

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eq;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-short v4, p0, Lcom/android/tools/r8/internal/mp;->f:S

    iget-char v5, p0, Lcom/android/tools/r8/internal/mp;->g:C

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;II)V

    return-void
.end method

.method public final getType()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "InvokeStaticRange"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x77

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke-static/range"

    return-object v0
.end method
