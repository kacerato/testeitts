.class public Lcom/android/tools/r8/internal/za;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final B()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Va;->d()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 0

    .line 6
    iget-object p2, p1, Lcom/android/tools/r8/internal/aB;->x:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lcom/android/tools/r8/internal/cj;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/cj;-><init>()V

    .line 9
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p3}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
