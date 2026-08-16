.class public abstract Lcom/android/tools/r8/internal/HS;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/aT;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/tools/r8/internal/GS;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v3

    move-object v0, v8

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/GS;-><init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/aT;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)V

    .line 4
    iget-object p2, v8, Lcom/android/tools/r8/internal/GS;->h:Lcom/android/tools/r8/graph/proto/j;

    .line 5
    iget-object p2, p2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    const/4 p4, -0x1

    .line 6
    invoke-virtual {v8, p4}, Lcom/android/tools/r8/internal/GS;->e(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p4

    iput-object p4, v8, Lcom/android/tools/r8/internal/GS;->k:Lcom/android/tools/r8/internal/W5;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_2

    .line 8
    sget-boolean p4, Lcom/android/tools/r8/internal/GS;->s:Z

    if-nez p4, :cond_1

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {v8, p4}, Lcom/android/tools/r8/internal/GS;->d(Lcom/android/tools/r8/graph/M2;)V

    move p4, p5

    goto :goto_1

    :cond_2
    move p4, v0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    .line 11
    iget-object v2, p2, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    const v3, 0x7fffffff

    .line 12
    invoke-static {v3, v2}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    xor-int/2addr p5, v1

    add-int/2addr v2, p5

    .line 15
    iget-object p5, v8, Lcom/android/tools/r8/internal/GS;->h:Lcom/android/tools/r8/graph/proto/j;

    .line 16
    iget-object p5, p5, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 17
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    sub-int/2addr v2, p5

    move p5, v0

    :goto_2
    if-ge p4, v2, :cond_7

    .line 18
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {v8, p4, v1}, Lcom/android/tools/r8/internal/GS;->b(ILcom/android/tools/r8/graph/M2;)V

    add-int/lit8 p5, p5, 0x1

    :goto_3
    move p4, v3

    goto :goto_2

    .line 22
    :cond_3
    instance-of v3, v1, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v1

    sub-int v3, p4, p5

    .line 24
    iget-object v4, p2, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v3

    .line 25
    sget-boolean v4, Lcom/android/tools/r8/internal/GS;->s:Z

    if-nez v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-ne v3, v4, :cond_4

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 26
    :cond_5
    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {v8, p4, v1}, Lcom/android/tools/r8/internal/GS;->b(ILcom/android/tools/r8/graph/M2;)V

    goto :goto_3

    :cond_6
    sub-int v1, p4, p5

    .line 27
    iget-object v3, p2, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v1

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {v8, p4, v1}, Lcom/android/tools/r8/internal/GS;->b(ILcom/android/tools/r8/graph/M2;)V

    goto :goto_3

    .line 29
    :cond_7
    iget-object v1, v8, Lcom/android/tools/r8/internal/GS;->h:Lcom/android/tools/r8/graph/proto/j;

    .line 30
    iget-object v1, v1, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Bv;

    sub-int v3, p4, p5

    .line 32
    iget-object v4, p2, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v3

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Bv;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 35
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v2

    goto :goto_6

    :cond_8
    iget-object v2, v8, Lcom/android/tools/r8/internal/GS;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 36
    :goto_6
    iget-object v3, v8, Lcom/android/tools/r8/internal/GS;->f:Lcom/android/tools/r8/internal/aT;

    .line 37
    iget-object v4, v3, Lcom/android/tools/r8/internal/aT;->b:Lcom/android/tools/r8/internal/z10;

    .line 38
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/aT;->a(ILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 39
    invoke-virtual {v8, v0, v2}, Lcom/android/tools/r8/internal/GS;->a(ZLcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/k3;

    goto :goto_5

    :cond_9
    add-int/lit8 v2, p4, 0x1

    .line 40
    invoke-virtual {v8, p4, v3}, Lcom/android/tools/r8/internal/GS;->b(ILcom/android/tools/r8/graph/M2;)V

    move p4, v2

    goto :goto_5

    .line 41
    :cond_a
    iget p2, v8, Lcom/android/tools/r8/internal/GS;->p:I

    iget-object p4, v8, Lcom/android/tools/r8/internal/GS;->q:[Lcom/android/tools/r8/internal/SS;

    array-length p5, p4

    if-ge p2, p5, :cond_b

    add-int/lit8 p5, p2, 0x1

    .line 42
    iput p5, v8, Lcom/android/tools/r8/internal/GS;->p:I

    aget-object p2, p4, p2

    goto :goto_7

    :cond_b
    const/4 p2, 0x0

    .line 43
    :goto_7
    iput-object p2, v8, Lcom/android/tools/r8/internal/GS;->o:Lcom/android/tools/r8/internal/SS;

    .line 44
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/GS;->j()V

    .line 45
    new-instance p2, Lcom/android/tools/r8/internal/eH0;

    invoke-direct {p2, v8}, Lcom/android/tools/r8/internal/eH0;-><init>(Lcom/android/tools/r8/internal/GS;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    invoke-virtual {v8, p0, p6}, Lcom/android/tools/r8/internal/GS;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p0

    .line 47
    new-instance p1, Lcom/android/tools/r8/internal/lu0;

    .line 48
    invoke-direct {p1, p3, p0, v0}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lu0;->c()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/GS;Lcom/android/tools/r8/internal/dT;)V
    .locals 0

    .line 50
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/dT;->a(Lcom/android/tools/r8/internal/cT;)V

    return-void
.end method
