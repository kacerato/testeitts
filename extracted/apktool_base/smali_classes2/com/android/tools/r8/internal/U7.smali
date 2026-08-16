.class public abstract Lcom/android/tools/r8/internal/U7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/Xa0;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/TX0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/TX0;-><init>()V

    .line 3
    new-instance v2, Lcom/android/tools/r8/internal/Y60;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Y60;-><init>(Lcom/android/tools/r8/internal/V60;)V

    .line 4
    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/dex/t0;

    .line 5
    iget-object v2, v1, Lcom/android/tools/r8/dex/t0;->d:Lcom/android/tools/r8/FeatureSplit;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    sget-object v2, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    .line 7
    :goto_1
    new-instance v3, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    .line 8
    invoke-static {v3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    .line 11
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/Wa0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Wa0;-><init>()V

    .line 14
    new-instance v3, Lcom/android/tools/r8/internal/fb0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/fb0;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 15
    iput-object v3, v2, Lcom/android/tools/r8/internal/Wa0;->a:Lcom/android/tools/r8/internal/fb0;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v3

    .line 17
    iget-object v3, v3, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    .line 18
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    .line 19
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/Va0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Va0;-><init>()V

    .line 20
    :goto_2
    iput-object v3, v2, Lcom/android/tools/r8/internal/Wa0;->b:Lcom/android/tools/r8/internal/Va0;

    .line 21
    sget-boolean v3, Lcom/android/tools/r8/internal/Ya0;->c:Z

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    if-nez v3, :cond_4

    .line 23
    iget-wide v6, v5, Lcom/android/tools/r8/internal/nJ;->h:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 24
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/android/tools/r8/internal/nJ;->h:J

    sub-long/2addr v6, v8

    .line 25
    new-instance v3, Lcom/android/tools/r8/internal/Ya0;

    .line 26
    invoke-static {p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result p2

    invoke-direct {v3, p2, v6, v7}, Lcom/android/tools/r8/internal/Ya0;-><init>(IJ)V

    .line 27
    iput-object v3, v2, Lcom/android/tools/r8/internal/Wa0;->c:Lcom/android/tools/r8/internal/Ya0;

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p2

    new-instance v3, Lcom/android/tools/r8/internal/UX0;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/UX0;-><init>(Ljava/util/List;)V

    if-eqz p2, :cond_5

    .line 29
    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 30
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result p1

    new-instance p2, Lcom/android/tools/r8/internal/VX0;

    invoke-direct {p2, p0, v0}, Lcom/android/tools/r8/internal/VX0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    if-eqz p1, :cond_6

    .line 31
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 32
    :cond_6
    iget-object p1, v1, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    if-nez p1, :cond_7

    move-object p1, v4

    goto :goto_4

    .line 33
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/tb0;

    iget-object p2, v1, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/tb0;-><init>(Lcom/android/tools/r8/ResourceShrinkerConfiguration;)V

    .line 34
    :goto_4
    iput-object p1, v2, Lcom/android/tools/r8/internal/Wa0;->f:Lcom/android/tools/r8/internal/tb0;

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object p1

    .line 36
    sget-boolean p2, Lcom/android/tools/r8/internal/po0;->j:Z

    if-nez p2, :cond_9

    iget-object p2, p1, Lcom/android/tools/r8/internal/po0;->i:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz p2, :cond_9

    .line 37
    instance-of p2, p2, Lcom/android/tools/r8/internal/ob0;

    if-eqz p2, :cond_8

    goto :goto_5

    .line 38
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 39
    :cond_9
    :goto_5
    iget-object p2, p1, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    .line 40
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_6

    .line 41
    :cond_a
    new-instance v4, Lcom/android/tools/r8/internal/zb0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/zb0;-><init>(Lcom/android/tools/r8/internal/po0;)V

    .line 42
    :goto_6
    iput-object v4, v2, Lcom/android/tools/r8/internal/Wa0;->g:Lcom/android/tools/r8/internal/zb0;

    .line 43
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ab0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Ab0;

    move-result-object p0

    .line 44
    new-instance v8, Lcom/android/tools/r8/internal/Bb0;

    .line 45
    iget p1, p0, Lcom/android/tools/r8/internal/Ab0;->b:I

    mul-int/lit16 p1, p1, 0x2710

    int-to-float p1, p1

    .line 46
    iget p2, p0, Lcom/android/tools/r8/internal/Ab0;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 47
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 48
    iget v0, p0, Lcom/android/tools/r8/internal/Ab0;->c:I

    mul-int/lit16 v0, v0, 0x2710

    int-to-float v0, v0

    .line 49
    iget v1, p0, Lcom/android/tools/r8/internal/Ab0;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    .line 51
    iget v1, p0, Lcom/android/tools/r8/internal/Ab0;->d:I

    mul-int/lit16 v1, v1, 0x2710

    int-to-float v1, v1

    .line 52
    iget p0, p0, Lcom/android/tools/r8/internal/Ab0;->a:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 53
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    .line 54
    invoke-direct {v8, p1, v0, p0}, Lcom/android/tools/r8/internal/Bb0;-><init>(FFF)V

    .line 55
    new-instance p0, Lcom/android/tools/r8/internal/Xa0;

    iget-object v4, v2, Lcom/android/tools/r8/internal/Wa0;->a:Lcom/android/tools/r8/internal/fb0;

    iget-object v5, v2, Lcom/android/tools/r8/internal/Wa0;->b:Lcom/android/tools/r8/internal/Va0;

    iget-object v6, v2, Lcom/android/tools/r8/internal/Wa0;->c:Lcom/android/tools/r8/internal/Ya0;

    iget-object v7, v2, Lcom/android/tools/r8/internal/Wa0;->d:Ljava/util/List;

    iget-object v9, v2, Lcom/android/tools/r8/internal/Wa0;->e:Lcom/android/tools/r8/internal/bb0;

    iget-object v10, v2, Lcom/android/tools/r8/internal/Wa0;->f:Lcom/android/tools/r8/internal/tb0;

    iget-object v11, v2, Lcom/android/tools/r8/internal/Wa0;->g:Lcom/android/tools/r8/internal/zb0;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/tools/r8/internal/Xa0;-><init>(Lcom/android/tools/r8/internal/fb0;Lcom/android/tools/r8/internal/Va0;Lcom/android/tools/r8/internal/Ya0;Ljava/util/List;Lcom/android/tools/r8/internal/Bb0;Lcom/android/tools/r8/internal/bb0;Lcom/android/tools/r8/internal/tb0;Lcom/android/tools/r8/internal/zb0;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/internal/Wa0;)V
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/bb0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)Lcom/android/tools/r8/internal/bb0;

    move-result-object p0

    .line 58
    iput-object p0, p2, Lcom/android/tools/r8/internal/Wa0;->e:Lcom/android/tools/r8/internal/bb0;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/Wa0;)V
    .locals 0

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Wa0;->a(Ljava/util/List;)V

    return-void
.end method
