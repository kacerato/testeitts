.class public final Lcom/android/tools/r8/dex/l;
.super Lcom/android/tools/r8/dex/k;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/n;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/dex/k;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/n;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/dex/L;I)Lcom/android/tools/r8/dex/G;
    .locals 1

    const/4 v0, 0x2

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/L;->a(II)Lcom/android/tools/r8/dex/G;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/dex/t0;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/dex/l;->l:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/dex/t0;->f:Lcom/android/tools/r8/graph/L2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/tools/r8/dex/t0;->d:Lcom/android/tools/r8/FeatureSplit;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/ns0;IZ)Lcom/android/tools/r8/dex/G;
    .locals 8

    .line 161
    new-instance v7, Lcom/android/tools/r8/dex/L;

    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 162
    iget-object v4, p0, Lcom/android/tools/r8/dex/k;->c:Lcom/android/tools/r8/dex/r;

    move-object v0, v7

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move v6, p6

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/dex/L;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/dex/r;Lcom/android/tools/r8/dex/t0;Z)V

    .line 164
    new-instance p1, Lu/M0;

    invoke-direct {p1, v7}, Lu/M0;-><init>(Lcom/android/tools/r8/dex/L;)V

    const-string p2, "collect"

    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    .line 165
    new-instance p1, Lu/d1;

    invoke-direct {p1, v7, p5}, Lu/d1;-><init>(Lcom/android/tools/r8/dex/L;I)V

    const-string p2, "generate"

    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/dex/G;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/t0;Ljava/util/List;Lcom/android/tools/r8/graph/w5;)Lcom/android/tools/r8/internal/ns0;
    .locals 3

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 19
    iget-object v1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 20
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "Compute object offset mapping"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/y;ILcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/w5;)V

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 24
    const-string p2, "Rewrite jumbo strings"

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/t0;->c()Lcom/android/tools/r8/graph/w5;

    move-result-object p2

    .line 26
    iget-object p3, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object p3, p3, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/w5;Ljava/util/Collection;)V

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 29
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/t0;)V

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/ns0;
    .locals 0

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->c()Lcom/android/tools/r8/graph/w5;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/dex/l;->a(Lcom/android/tools/r8/dex/t0;Ljava/util/List;Lcom/android/tools/r8/graph/w5;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/t0;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/dex/t0;

    .line 6
    iget-object v4, v0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v3, v3, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 7
    iget-object v3, v3, Lcom/android/tools/r8/dex/s0;->h:Ljava/util/Set;

    .line 8
    iget-object v4, v4, Lcom/android/tools/r8/dex/s0;->h:Ljava/util/Set;

    .line 9
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/dex/k;->c(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p2, Lu/e1;

    invoke-direct {p2, p0, p3, v0}, Lu/e1;-><init>(Lcom/android/tools/r8/dex/l;Ljava/util/List;Lcom/android/tools/r8/dex/t0;)V

    iget-object p3, p0, Lcom/android/tools/r8/dex/k;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p3

    .line 14
    invoke-static {v1, p2, p3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p1

    .line 15
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Ljava/util/List;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/ns0;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 31
    const-string v0, "Write files"

    .line 32
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v1

    move-object/from16 v2, p4

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object v9

    .line 33
    sget-boolean v0, Lcom/android/tools/r8/dex/l;->l:Z

    if-nez v0, :cond_1

    iget-object v1, v7, Lcom/android/tools/r8/dex/k;->j:Lcom/android/tools/r8/internal/iJ;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 34
    iget-object v0, v7, Lcom/android/tools/r8/dex/k;->i:Lcom/android/tools/r8/n;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_3
    :goto_1
    new-instance v0, Lu/f1;

    invoke-direct {v0}, Lu/f1;-><init>()V

    invoke-interface {v8, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 36
    iget-object v0, v7, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 38
    move-object v10, v0

    check-cast v10, Lcom/android/tools/r8/DexIndexedConsumer;

    .line 39
    new-instance v11, Lcom/android/tools/r8/dex/y;

    invoke-direct {v11, v10}, Lcom/android/tools/r8/dex/y;-><init>(Lcom/android/tools/r8/ByteBufferProvider;)V

    const/4 v12, 0x0

    .line 40
    new-array v0, v12, [B

    .line 41
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    move v5, v12

    move v6, v5

    .line 43
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v6, v0, :cond_12

    .line 44
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/dex/t0;

    .line 45
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VirtualFile "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v4

    .line 46
    sget-boolean v0, Lcom/android/tools/r8/dex/l;->l:Z

    if-nez v0, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_5
    :goto_3
    iget-object v2, v3, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v2, v2, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v18, v6

    goto/16 :goto_b

    .line 48
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v6, v2, :cond_7

    move/from16 v16, v1

    goto :goto_4

    :cond_7
    move/from16 v16, v12

    :goto_4
    if-nez v0, :cond_9

    .line 49
    iget-object v1, v3, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 50
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    .line 51
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_5
    const/4 v2, 0x4

    if-nez v0, :cond_b

    .line 52
    invoke-static {v2, v5}, Lcom/android/tools/r8/internal/P6;->a(II)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_b
    :goto_6
    invoke-virtual {v7, v3}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/dex/t0;)V

    .line 54
    const-string v0, "Reindex for lazy strings"

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 55
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/t0;->c()Lcom/android/tools/r8/graph/w5;

    move-result-object v1

    move-object/from16 v0, p3

    .line 56
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/w5;->a(Ljava/util/List;)V

    .line 57
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 58
    const-string v2, "Write bytes"

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v0, p0

    const/4 v12, 0x4

    move-object v2, v11

    move-object/from16 p1, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v6, v16

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/dex/l;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/ns0;IZ)Lcom/android/tools/r8/dex/G;

    move-result-object v0

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 61
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 62
    invoke-virtual {v11}, Lcom/android/tools/r8/dex/y;->a()[B

    move-result-object v1

    move/from16 v3, v17

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_e

    .line 63
    sget-boolean v4, Lcom/android/tools/r8/dex/l;->l:Z

    if-nez v4, :cond_d

    aget-byte v4, v15, v2

    aget-byte v5, v1, v2

    if-ne v4, v5, :cond_c

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 64
    :cond_e
    iget-object v2, v0, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 65
    iget v2, v2, Lcom/android/tools/r8/dex/H;->w:I

    .line 66
    new-array v15, v2, [B

    const/4 v2, 0x0

    .line 67
    :goto_9
    iget-object v3, v0, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 68
    iget v3, v3, Lcom/android/tools/r8/dex/H;->w:I

    if-ge v2, v3, :cond_f

    .line 69
    aget-byte v3, v1, v2

    aput-byte v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 70
    :cond_f
    iget-object v1, v0, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 71
    iget v5, v1, Lcom/android/tools/r8/dex/H;->w:I

    .line 72
    sget-boolean v1, Lcom/android/tools/r8/dex/l;->l:Z

    if-nez v1, :cond_11

    invoke-static {v12, v5}, Lcom/android/tools/r8/internal/P6;->a(II)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_a

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_11
    :goto_a
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v0, p1

    .line 75
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v6, v18, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 76
    :cond_12
    invoke-virtual {v9, v13}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 77
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/ls0;->a()V

    .line 78
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_16

    .line 79
    :cond_13
    invoke-static {v14}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/G;

    .line 80
    iget-object v2, v0, Lcom/android/tools/r8/dex/G;->a:Lcom/android/tools/r8/dex/L;

    .line 81
    iget-object v2, v2, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 82
    iget-object v2, v2, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    .line 83
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 84
    check-cast v2, Lcom/android/tools/r8/internal/bd0;

    .line 85
    iget-object v2, v2, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    .line 86
    iget v2, v2, Lcom/android/tools/r8/internal/gd0;->l:I

    .line 87
    iget-object v3, v0, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 88
    iget v4, v3, Lcom/android/tools/r8/dex/H;->b:I

    .line 89
    iget v3, v3, Lcom/android/tools/r8/dex/H;->w:I

    .line 90
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_21

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lcom/android/tools/r8/dex/G;

    .line 91
    iget-object v9, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 92
    iget v9, v9, Lcom/android/tools/r8/dex/H;->a:I

    add-int/lit8 v9, v9, 0x70

    invoke-virtual {v11, v9}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 93
    invoke-virtual {v11, v3}, Lcom/android/tools/r8/dex/y;->f(I)V

    if-eq v8, v0, :cond_1a

    .line 94
    iget-object v9, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 95
    iget v9, v9, Lcom/android/tools/r8/dex/H;->a:I

    add-int/lit8 v9, v9, 0x38

    invoke-virtual {v11, v9}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 96
    invoke-virtual {v11, v2}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 97
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 98
    iget-object v9, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 99
    iget v9, v9, Lcom/android/tools/r8/dex/H;->v:I

    .line 100
    invoke-virtual {v11, v9}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 101
    iget-object v15, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 102
    iget-object v9, v8, Lcom/android/tools/r8/dex/G;->a:Lcom/android/tools/r8/dex/L;

    .line 103
    iget v12, v15, Lcom/android/tools/r8/dex/H;->a:I

    .line 104
    iget-object v13, v0, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 105
    sget-boolean v16, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v16, :cond_15

    iget v1, v13, Lcom/android/tools/r8/dex/H;->o:I

    move/from16 p2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    move/from16 p2, v3

    .line 106
    :goto_d
    iget v1, v13, Lcom/android/tools/r8/dex/H;->o:I

    move-object/from16 v16, v9

    move/from16 v17, v12

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v1

    .line 107
    invoke-virtual/range {v15 .. v20}, Lcom/android/tools/r8/dex/H;->a(Lcom/android/tools/r8/dex/L;IIII)Ljava/util/ArrayList;

    move-result-object v1

    .line 108
    iget-object v3, v11, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v3}, Lcom/android/tools/r8/dex/s;->c()I

    move-result v3

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    if-ge v12, v9, :cond_17

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v12, v12, 0x1

    check-cast v15, Lcom/android/tools/r8/dex/I;

    move-object/from16 p3, v1

    .line 110
    iget v1, v15, Lcom/android/tools/r8/dex/I;->c:I

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_f

    .line 111
    :cond_16
    iget v1, v15, Lcom/android/tools/r8/dex/I;->a:I

    int-to-short v1, v1

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/dex/y;->a(S)V

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v11, v1}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 113
    iget v1, v15, Lcom/android/tools/r8/dex/I;->c:I

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 114
    iget v1, v15, Lcom/android/tools/r8/dex/I;->b:I

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    const/4 v1, 0x1

    :goto_f
    add-int/2addr v13, v1

    move-object/from16 v1, p3

    goto :goto_e

    .line 115
    :cond_17
    sget-boolean v1, Lcom/android/tools/r8/dex/l;->l:Z

    if-nez v1, :cond_19

    if-ne v3, v13, :cond_18

    goto :goto_10

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_19
    :goto_10
    iget-object v1, v8, Lcom/android/tools/r8/dex/G;->a:Lcom/android/tools/r8/dex/L;

    .line 117
    iget-object v3, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v11}, Lcom/android/tools/r8/dex/L;->b(Lcom/android/tools/r8/dex/H;Lcom/android/tools/r8/dex/y;)V

    .line 119
    iget-object v1, v8, Lcom/android/tools/r8/dex/G;->a:Lcom/android/tools/r8/dex/L;

    .line 120
    iget-object v3, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v11}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/dex/H;Lcom/android/tools/r8/dex/y;)V

    move-object/from16 p3, v0

    goto/16 :goto_15

    :cond_1a
    move/from16 p2, v3

    .line 122
    iget-object v1, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 123
    iget v1, v1, Lcom/android/tools/r8/dex/H;->v:I

    .line 124
    invoke-virtual {v11, v1}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 125
    iget-object v15, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 126
    iget-object v1, v8, Lcom/android/tools/r8/dex/G;->a:Lcom/android/tools/r8/dex/L;

    .line 127
    iget v3, v15, Lcom/android/tools/r8/dex/H;->a:I

    .line 128
    iget-object v9, v0, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 129
    sget-boolean v12, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v12, :cond_1c

    iget v12, v9, Lcom/android/tools/r8/dex/H;->o:I

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v12

    if-eqz v12, :cond_1b

    goto :goto_11

    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_1c
    :goto_11
    iget v9, v9, Lcom/android/tools/r8/dex/H;->o:I

    move-object/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v9

    .line 131
    invoke-virtual/range {v15 .. v20}, Lcom/android/tools/r8/dex/H;->a(Lcom/android/tools/r8/dex/L;IIII)Ljava/util/ArrayList;

    move-result-object v1

    .line 132
    iget-object v3, v11, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v3}, Lcom/android/tools/r8/dex/s;->c()I

    move-result v3

    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    if-ge v12, v9, :cond_1e

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v12, v12, 0x1

    check-cast v15, Lcom/android/tools/r8/dex/I;

    move-object/from16 p3, v0

    .line 134
    iget v0, v15, Lcom/android/tools/r8/dex/I;->c:I

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_13

    .line 135
    :cond_1d
    iget v0, v15, Lcom/android/tools/r8/dex/I;->a:I

    int-to-short v0, v0

    invoke-virtual {v11, v0}, Lcom/android/tools/r8/dex/y;->a(S)V

    const/4 v0, 0x0

    .line 136
    invoke-virtual {v11, v0}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 137
    iget v0, v15, Lcom/android/tools/r8/dex/I;->c:I

    invoke-virtual {v11, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 138
    iget v0, v15, Lcom/android/tools/r8/dex/I;->b:I

    invoke-virtual {v11, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    const/4 v0, 0x1

    :goto_13
    add-int/2addr v13, v0

    move-object/from16 v0, p3

    goto :goto_12

    :cond_1e
    move-object/from16 p3, v0

    .line 139
    sget-boolean v0, Lcom/android/tools/r8/dex/l;->l:Z

    if-nez v0, :cond_20

    if-ne v3, v13, :cond_1f

    goto :goto_14

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_20
    :goto_14
    iget-object v0, v8, Lcom/android/tools/r8/dex/G;->a:Lcom/android/tools/r8/dex/L;

    .line 141
    iget-object v1, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v11}, Lcom/android/tools/r8/dex/L;->b(Lcom/android/tools/r8/dex/H;Lcom/android/tools/r8/dex/y;)V

    .line 143
    iget-object v0, v8, Lcom/android/tools/r8/dex/G;->a:Lcom/android/tools/r8/dex/L;

    .line 144
    iget-object v1, v8, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v11}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/dex/H;Lcom/android/tools/r8/dex/y;)V

    :goto_15
    move/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v1, 0x1

    goto/16 :goto_c

    .line 146
    :cond_21
    iget-object v0, v11, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    const/4 v1, 0x0

    .line 147
    iput-object v1, v11, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    const/4 v1, 0x1

    .line 148
    invoke-static {v14, v1}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    .line 149
    check-cast v1, Lcom/android/tools/r8/dex/G;

    .line 150
    iget-object v1, v1, Lcom/android/tools/r8/dex/G;->c:Lcom/android/tools/r8/dex/H;

    .line 151
    iget v1, v1, Lcom/android/tools/r8/dex/H;->w:I

    .line 152
    new-instance v2, Lcom/android/tools/r8/ByteDataView;

    .line 153
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 155
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 157
    invoke-direct {v2, v3, v0, v1}, Lcom/android/tools/r8/ByteDataView;-><init>([BII)V

    .line 158
    instance-of v0, v10, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v0, :cond_23

    .line 159
    sget-boolean v0, Lcom/android/tools/r8/dex/l;->l:Z

    if-eqz v0, :cond_22

    :goto_16
    return-void

    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_23
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, v7, Lcom/android/tools/r8/dex/k;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const/4 v3, 0x0

    invoke-interface {v10, v3, v2, v0, v1}, Lcom/android/tools/r8/DexIndexedConsumer;->accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
