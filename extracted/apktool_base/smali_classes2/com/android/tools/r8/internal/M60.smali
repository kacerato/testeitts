.class public abstract Lcom/android/tools/r8/internal/M60;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/j1;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object p1

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->b2:Lcom/android/tools/r8/SourceFileProvider;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/tools/r8/SourceFileProvider;->allowDiscardingSourceFile()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length p1, p0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v3, p0, v1

    instance-of v3, v3, Lcom/android/tools/r8/graph/O0$b;

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    return v2

    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W9;

    instance-of p1, p1, Lcom/android/tools/r8/internal/Ma;

    if-eqz p1, :cond_7

    return v2

    :cond_8
    return v0
.end method
