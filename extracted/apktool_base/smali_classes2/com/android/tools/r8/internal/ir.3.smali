.class public Lcom/android/tools/r8/internal/ir;
.super Lcom/android/tools/r8/internal/Wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/Wo<",
        "Lcom/android/tools/r8/graph/M2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Wo;-><init>(ILcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->c()[Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Wo;-><init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Wo;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method


# virtual methods
.method public O()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ir;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ir;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 5
    iget-short p3, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    const/16 p4, 0x22

    .line 6
    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 7
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ir;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    invoke-virtual {p4, p2, p5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Ge1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ge1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    .line 9
    iget-short v0, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ir;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    const/4 v3, 0x2

    .line 11
    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/tZ;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final k()Lcom/android/tools/r8/internal/ir;
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

    const-string v0, "NewInstance"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "new-instance"

    return-object v0
.end method
