.class public final Lcom/android/tools/r8/internal/oR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/oR;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/oR;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->r:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 9

    move-object v0, p0

    move-object v1, p6

    move-object v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 22
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ky;Ljava/util/Deque;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 45
    invoke-static {p2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/ky;->a(I)I

    move-result p0

    .line 47
    new-instance v0, Lcom/android/tools/r8/internal/yb;

    invoke-direct {v0, p2, p0}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-interface {p1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 48
    new-instance v0, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v0, p2, p0}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/Bo1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Bo1;-><init>(Lcom/android/tools/r8/internal/oR;Lcom/android/tools/r8/internal/W9;)V

    .line 18
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/oR;->b:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v1, p2, Lcom/android/tools/r8/internal/ha;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    .line 14
    invoke-static {v1, v0, v2, p1}, Lcom/android/tools/r8/internal/kR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/oR;->a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/nR;Z)Lcom/android/tools/r8/internal/iR;
    .locals 14

    move-object v7, p0

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v0

    iget-object v1, v7, Lcom/android/tools/r8/internal/oR;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    move-object/from16 v3, p2

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/kR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    new-instance v8, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 52
    iget-object v0, v7, Lcom/android/tools/r8/internal/oR;->b:Lcom/android/tools/r8/graph/y;

    .line 53
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v9

    .line 55
    new-instance v10, Lcom/android/tools/r8/internal/Co1;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/Co1;-><init>()V

    .line 56
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v11

    iget-object v12, v7, Lcom/android/tools/r8/internal/oR;->b:Lcom/android/tools/r8/graph/y;

    new-instance v13, Lcom/android/tools/r8/internal/Do1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v8

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Do1;-><init>(Lcom/android/tools/r8/internal/oR;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/internal/nR;Z)V

    .line 57
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 58
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/iR;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    sget-boolean v2, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v2, :cond_2

    iget-object v3, v1, Lcom/android/tools/r8/internal/iR;->h:Lcom/android/tools/r8/graph/H2;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    .line 61
    iget-object v2, v1, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_4
    :goto_1
    iput-object v0, v1, Lcom/android/tools/r8/internal/iR;->h:Lcom/android/tools/r8/graph/H2;

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/nR;)Ljava/util/AbstractCollection;
    .locals 10

    .line 23
    move-object v0, p4

    check-cast v0, Lcom/android/tools/r8/internal/H00;

    .line 24
    iget v0, v0, Lcom/android/tools/r8/internal/H00;->a:I

    const v1, 0xfde8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    xor-int/lit8 v9, v0, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 25
    invoke-virtual/range {v4 .. v9}, Lcom/android/tools/r8/internal/oR;->a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/nR;Z)Lcom/android/tools/r8/internal/iR;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    move-object v1, p5

    move-object/from16 v2, p6

    .line 26
    invoke-interface {p5, v0, v2}, Lcom/android/tools/r8/internal/mR;->a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_4

    .line 28
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    .line 29
    sget-boolean v2, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v2, :cond_3

    .line 30
    iget-object v2, v0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    const/16 v2, 0xb8

    .line 33
    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 34
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 36
    :cond_4
    iget-object v1, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    .line 37
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 38
    new-instance v4, Lcom/android/tools/r8/internal/wa;

    .line 39
    iget-object v6, v0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    .line 40
    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v4, Lcom/android/tools/r8/internal/kb;

    sget-object v6, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v4, Lcom/android/tools/r8/internal/Fo1;

    move-object v6, p2

    invoke-direct {v4, p2, v2}, Lcom/android/tools/r8/internal/Fo1;-><init>(Lcom/android/tools/r8/internal/ky;Ljava/util/Deque;)V

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/O2;->forEach(Ljava/util/function/Consumer;)V

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iR;->e:Lcom/android/tools/r8/graph/A2;

    const/16 v4, 0xb7

    invoke-direct {v1, v4, v0, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object v0, p3

    .line 44
    invoke-interface {p3, v5}, Lcom/android/tools/r8/internal/QT;->a(I)V

    return-object v2
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 9

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object v1

    new-instance v8, Lcom/android/tools/r8/internal/Eo1;

    move-object v2, v8

    move-object/from16 v3, p9

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/Eo1;-><init>(Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    .line 21
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/oR;->a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/nR;)Ljava/util/AbstractCollection;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W9;

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/oR;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->l1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/oR;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/internal/nR;ZLcom/android/tools/r8/synthesis/W;)V
    .locals 9

    .line 64
    new-instance v8, Lcom/android/tools/r8/internal/iR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/oR;->b:Lcom/android/tools/r8/graph/y;

    move-object v0, v8

    move-object v1, p6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/iR;-><init>(Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/oR;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/internal/nR;Z)V

    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xba

    .line 1
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
