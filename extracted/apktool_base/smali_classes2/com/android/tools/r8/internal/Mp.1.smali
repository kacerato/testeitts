.class public Lcom/android/tools/r8/internal/Mp;
.super Lcom/android/tools/r8/internal/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/bp;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/bp;-><init>(IILcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->c()[Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/bp;-><init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method


# virtual methods
.method public O()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mp;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->c(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mp;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 11
    iget-byte p3, p0, Lcom/android/tools/r8/internal/bp;->g:B

    iget-byte p4, p0, Lcom/android/tools/r8/internal/bp;->f:B

    const/16 p5, 0x20

    .line 12
    invoke-static {p3, p4, p6, p5}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;I)V

    .line 13
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mp;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    invoke-virtual {p4, p2, p5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 5

    .line 4
    iget-byte v0, p0, Lcom/android/tools/r8/internal/bp;->f:B

    iget-byte v1, p0, Lcom/android/tools/r8/internal/bp;->g:B

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mp;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    .line 6
    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v4, v3}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 8
    new-instance v3, Lcom/android/tools/r8/internal/mE;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/mE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final i()Lcom/android/tools/r8/internal/Mp;
    .locals 0

    return-object p0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "InstanceOf"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "instance-of"

    return-object v0
.end method
