.class public final Lcom/android/tools/r8/internal/K7;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/uJ;Lcom/android/tools/r8/internal/I7;Lcom/android/tools/r8/internal/I7;)I
    .locals 2

    .line 249
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/I7;->a(Lcom/android/tools/r8/internal/uJ;)J

    move-result-wide v0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/I7;->a(Lcom/android/tools/r8/internal/uJ;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V
    .locals 1

    .line 109
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    .line 110
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 111
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V
    .locals 1

    .line 130
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->T()V

    .line 131
    sget-boolean p3, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 132
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    if-nez p3, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez p3, :cond_5

    .line 134
    invoke-static {p0}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    if-ne p0, p2, :cond_4

    goto :goto_2

    .line 135
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/tI;)V
    .locals 3

    .line 1
    iget v0, p2, Lcom/android/tools/r8/internal/ar0;->m:I

    .line 2
    iget-object v1, p2, Lcom/android/tools/r8/internal/ar0;->l:[I

    const/4 v2, 0x0

    .line 3
    aget v1, v1, v2

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/W5;->a(II)V

    .line 5
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 6
    new-instance p0, Lcom/android/tools/r8/internal/EB;

    sget-object v0, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    .line 7
    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 8
    invoke-direct {p0, v0, p2}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object p0

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 14
    sget-boolean v1, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez v1, :cond_3

    if-ne v0, p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/EB;

    sget-object v1, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    .line 16
    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Ljava/util/List;)V

    move-object p0, v0

    .line 18
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/tI;Ljava/util/List;Lcom/android/tools/r8/internal/CH;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 291
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    .line 292
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/tI;->w2()Lcom/android/tools/r8/internal/wH;

    move-result-object v8

    .line 293
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    .line 294
    new-instance v10, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v10, v2, v3}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    .line 295
    invoke-interface {v10, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    .line 296
    sget-boolean v11, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez v11, :cond_1

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v11, :cond_3

    .line 297
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v10

    if-ne v10, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v11, :cond_5

    .line 298
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 299
    :cond_5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 300
    invoke-interface/range {p1 .. p1}, Ljava/util/ListIterator;->remove()V

    .line 301
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->f()V

    .line 302
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->S()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    if-nez v11, :cond_7

    .line 303
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    if-nez v11, :cond_9

    .line 304
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    if-nez v11, :cond_b

    if-ne v10, v2, :cond_a

    goto :goto_5

    .line 305
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :cond_b
    :goto_5
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 307
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    :goto_6
    if-ltz v11, :cond_d

    .line 308
    new-instance v12, Lcom/android/tools/r8/internal/J7;

    invoke-direct {v12, v7}, Lcom/android/tools/r8/internal/J7;-><init>(Lcom/android/tools/r8/internal/B60;)V

    .line 309
    iget-object v13, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    .line 310
    iput-object v13, v12, Lcom/android/tools/r8/internal/J7;->c:Lcom/android/tools/r8/internal/xw0;

    move-object/from16 v13, p4

    .line 311
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/TH;

    move v15, v5

    .line 312
    :goto_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_c

    .line 313
    invoke-interface {v14, v15}, Lcom/android/tools/r8/internal/TH;->c(I)I

    move-result v5

    .line 314
    move-object v6, v8

    check-cast v6, Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 315
    iget-object v13, v12, Lcom/android/tools/r8/internal/J7;->d:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v13, v5, v6}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    add-int/2addr v15, v5

    move-object/from16 v13, p4

    move v6, v5

    goto :goto_7

    .line 316
    :cond_c
    iput-object v9, v12, Lcom/android/tools/r8/internal/J7;->e:Lcom/android/tools/r8/internal/W5;

    .line 317
    iget-object v5, v0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 318
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v5

    .line 319
    iput v5, v12, Lcom/android/tools/r8/internal/H7;->a:I

    .line 320
    iget-object v5, v0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 321
    invoke-virtual {v12, v5}, Lcom/android/tools/r8/internal/J7;->a(Lcom/android/tools/r8/internal/mB;)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    .line 322
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_6

    .line 323
    :cond_d
    iget v5, v4, Lcom/android/tools/r8/internal/CH;->c:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_8
    if-ltz v5, :cond_13

    .line 324
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v6

    .line 325
    move-object v11, v8

    check-cast v11, Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v11, v6}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    .line 326
    iget-object v12, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 327
    iget-object v13, v0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 328
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v13

    .line 329
    sget-boolean v14, Lcom/android/tools/r8/internal/G7;->c:Z

    if-nez v14, :cond_f

    if-eqz v11, :cond_e

    goto :goto_9

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_9
    if-nez v14, :cond_11

    if-eqz v9, :cond_10

    goto :goto_a

    .line 330
    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_a
    const/4 v14, 0x0

    if-eqz v6, :cond_12

    .line 331
    invoke-virtual {v0, v6, v14}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v6

    .line 332
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 333
    new-instance v15, Lcom/android/tools/r8/internal/EB;

    sget-object v14, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    .line 334
    iget-object v3, v6, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 335
    invoke-static {v12, v3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-direct {v15, v14, v3}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Ljava/util/List;)V

    .line 336
    iget-object v3, v0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/4 v14, 0x1

    .line 337
    new-array v12, v14, [Lcom/android/tools/r8/internal/zE;

    const/16 v16, 0x0

    aput-object v6, v12, v16

    .line 338
    new-instance v6, Lcom/android/tools/r8/internal/W5;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 339
    aget-object v12, v12, v16

    .line 340
    invoke-virtual {v6, v12, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    .line 341
    invoke-virtual {v6, v15, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    const/4 v3, 0x0

    .line 342
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 343
    invoke-virtual {v6, v13}, Lcom/android/tools/r8/internal/W5;->d(I)V

    move-object v12, v6

    goto :goto_b

    :cond_12
    move-object v3, v14

    const/4 v14, 0x1

    const/16 v16, 0x0

    .line 344
    new-instance v15, Lcom/android/tools/r8/internal/EB;

    sget-object v6, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v15, v6, v12}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    .line 345
    iget-object v6, v0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 346
    new-instance v12, Lcom/android/tools/r8/internal/W5;

    invoke-direct {v12, v6}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 347
    invoke-virtual {v12, v15, v6}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    .line 348
    invoke-virtual {v12, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 349
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 350
    :goto_b
    invoke-virtual {v15, v7}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 351
    invoke-virtual {v12, v11}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 352
    invoke-virtual {v12, v9}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 353
    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v3, p3

    move-object v9, v12

    goto/16 :goto_8

    .line 354
    :cond_13
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 355
    new-instance v0, Lcom/android/tools/r8/internal/rK0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/rK0;-><init>(Ljava/util/ListIterator;)V

    invoke-interface {v10, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 6

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 117
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/qh;->y2()Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qh;->z2()Z

    move-result v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    return v1

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    instance-of v2, v0, Lcom/android/tools/r8/internal/hj;

    if-eqz v2, :cond_7

    .line 122
    sget-boolean v2, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 123
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/W5;

    .line 124
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    .line 125
    iget-object p0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    new-instance v4, Lcom/android/tools/r8/internal/Y5;

    iget-object p0, p0, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-direct {v4, p0, v2}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    const/4 p0, 0x0

    .line 127
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Y5;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    .line 128
    instance-of v2, p0, Lcom/android/tools/r8/internal/hj;

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p0, :cond_7

    .line 129
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    if-ne p0, v0, :cond_7

    return v1

    :cond_7
    return v3
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/TH;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 271
    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/internal/EB;->m:Z

    .line 272
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 273
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v5

    mul-int/2addr v5, v2

    .line 274
    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v2

    const/4 v6, 0x4

    if-eqz v2, :cond_1

    .line 275
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/2addr v2, v6

    add-int/2addr v5, v2

    .line 276
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_2

    .line 277
    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v8

    int-to-long v9, v7

    sget-boolean v7, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 278
    sget-object v11, Lcom/android/tools/r8/internal/uJ;->d:Lcom/android/tools/r8/internal/uJ;

    const/4 v12, 0x1

    const/4 v13, 0x5

    const-wide/16 v14, 0x0

    if-eq v8, v11, :cond_e

    .line 279
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const-wide/32 v16, 0x7fffffff

    const-wide/32 v18, -0x80000000

    if-eq v1, v8, :cond_9

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, v8, :cond_3

    goto :goto_3

    :cond_3
    if-nez v7, :cond_5

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 282
    :cond_5
    :goto_2
    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/P10;->a(J)Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_5

    :cond_6
    const-wide v7, 0xffffffffffffL

    and-long/2addr v7, v9

    cmp-long v7, v7, v14

    if-nez v7, :cond_7

    goto/16 :goto_5

    :cond_7
    cmp-long v7, v18, v9

    if-gtz v7, :cond_8

    cmp-long v7, v9, v16

    if-gtz v7, :cond_8

    goto/16 :goto_6

    :cond_8
    move v12, v13

    goto/16 :goto_7

    :cond_9
    :goto_3
    if-nez v7, :cond_b

    cmp-long v7, v18, v9

    if-gtz v7, :cond_a

    cmp-long v7, v9, v16

    if-gtz v7, :cond_a

    goto :goto_4

    .line 283
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_b
    :goto_4
    const-wide/16 v7, -0x8

    cmp-long v7, v7, v9

    if-gtz v7, :cond_c

    const-wide/16 v7, 0x7

    cmp-long v7, v9, v7

    if-gtz v7, :cond_c

    goto/16 :goto_7

    .line 284
    :cond_c
    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/P10;->a(J)Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_5

    :cond_d
    const-wide/32 v7, 0xffff

    and-long/2addr v7, v9

    cmp-long v7, v7, v14

    if-nez v7, :cond_17

    goto/16 :goto_5

    .line 285
    :cond_e
    sget-object v7, Lcom/android/tools/r8/internal/oh;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v12, :cond_15

    const-wide/16 v16, 0x1

    if-eq v7, v3, :cond_14

    if-eq v7, v4, :cond_12

    if-eq v7, v6, :cond_10

    if-ne v7, v13, :cond_f

    goto/16 :goto_7

    .line 286
    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Not a constant number"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    cmp-long v7, v9, v14

    if-eqz v7, :cond_11

    cmp-long v7, v9, v16

    if-nez v7, :cond_17

    :cond_11
    long-to-double v7, v9

    .line 287
    sget-boolean v9, Lcom/android/tools/r8/internal/z9;->e:Z

    .line 288
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_18

    goto :goto_5

    :cond_12
    cmp-long v7, v9, v14

    if-eqz v7, :cond_13

    cmp-long v7, v9, v16

    if-eqz v7, :cond_13

    const-wide/16 v7, 0x2

    cmp-long v7, v9, v7

    if-nez v7, :cond_17

    :cond_13
    long-to-float v7, v9

    .line 289
    sget-boolean v8, Lcom/android/tools/r8/internal/z9;->e:Z

    .line 290
    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    const/high16 v8, -0x80000000

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    if-ne v7, v8, :cond_18

    goto :goto_5

    :cond_14
    cmp-long v7, v9, v14

    if-eqz v7, :cond_18

    cmp-long v7, v9, v16

    if-nez v7, :cond_17

    goto :goto_7

    :cond_15
    const-wide/16 v7, -0x1

    cmp-long v7, v7, v9

    if-gtz v7, :cond_16

    const-wide/16 v7, 0x5

    cmp-long v7, v9, v7

    if-gtz v7, :cond_16

    goto :goto_7

    :cond_16
    const-wide/16 v7, -0x80

    cmp-long v7, v7, v9

    if-gtz v7, :cond_17

    const-wide/16 v7, 0x7f

    cmp-long v7, v9, v7

    if-gtz v7, :cond_17

    :goto_5
    move v12, v3

    goto :goto_7

    :cond_17
    :goto_6
    move v12, v4

    :cond_18
    :goto_7
    add-int/2addr v5, v12

    goto/16 :goto_1

    :cond_19
    return v5
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/I7;Lcom/android/tools/r8/internal/I7;)Lcom/android/tools/r8/internal/I7;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p2, :cond_1

    .line 252
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 253
    :cond_1
    new-instance v4, Lcom/android/tools/r8/internal/I7;

    iget-object v5, p2, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    iget-object v6, p3, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/android/tools/r8/internal/TH;

    aput-object v5, v7, v1

    aput-object v6, v7, v0

    invoke-direct {v4, v7}, Lcom/android/tools/r8/internal/I7;-><init>([Lcom/android/tools/r8/internal/TH;)V

    .line 254
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/I7;->a(Lcom/android/tools/r8/internal/uJ;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    .line 255
    iget-object p2, p2, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/CH;->a([I)[I

    move-result-object p2

    .line 257
    invoke-static {v2, p2}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;[I)J

    move-result-wide v7

    iget-object p2, p3, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    .line 258
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/CH;->a([I)[I

    move-result-object p2

    .line 259
    invoke-static {v2, p2}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;[I)J

    move-result-wide v1

    add-long/2addr v1, v7

    int-to-long v7, v3

    sub-long/2addr v1, v7

    cmp-long p2, v5, v1

    if-gez p2, :cond_2

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 261
    :cond_3
    :goto_1
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "BranchSimplifier"

    return-object v0
.end method

.method public final a(Ljava/util/HashSet;Ljava/util/PriorityQueue;Lcom/android/tools/r8/internal/I7;)V
    .locals 4

    .line 262
    sget-boolean v0, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 263
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/I7;->a(Lcom/android/tools/r8/internal/uJ;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 265
    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 267
    :cond_3
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/I7;

    iget-object v3, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/I7;->a(Lcom/android/tools/r8/internal/uJ;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 268
    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;)Z
    .locals 11

    .line 19
    iget-object v0, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    .line 24
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 26
    :goto_0
    invoke-static {p2, p3, p1, v0}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    return v5

    .line 27
    :cond_1
    new-instance v6, Lcom/android/tools/r8/internal/oK0;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/oK0;-><init>()V

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/android/tools/r8/internal/oK0;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/oK0;-><init>()V

    .line 28
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 29
    sget-boolean p1, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez p1, :cond_3

    .line 30
    iget-object p1, p3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 31
    sget-object v0, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_3
    :goto_1
    invoke-virtual {p3, v5}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-ne p1, v0, :cond_4

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 34
    :goto_2
    invoke-static {p2, p3, p1, v0}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    return v5

    .line 35
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 36
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 37
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    .line 38
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/EB;->a(Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 39
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 40
    :goto_3
    invoke-static {p2, p3, p1, v0}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    return v5

    .line 41
    :cond_7
    iget-object v2, p3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 42
    sget-object v4, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v2, v4, :cond_8

    sget-object v6, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v2, v6, :cond_9

    .line 43
    :cond_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    .line 44
    sget-object v7, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 45
    iget-object v6, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    .line 46
    invoke-virtual {v3, v6, v8, v7}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v6

    .line 47
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->Y()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 48
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/F1;->Y()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 49
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->G()Lcom/android/tools/r8/internal/Bh;

    move-result-object v2

    .line 50
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/F1;->G()Lcom/android/tools/r8/internal/Bh;

    move-result-object v6

    .line 51
    invoke-interface {v2, v6}, Lcom/android/tools/r8/internal/Bh;->a(Lcom/android/tools/r8/internal/Bh;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 52
    invoke-static {p2, p3, v5}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    return v5

    .line 53
    :cond_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->G()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->G()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->v()Lcom/android/tools/r8/internal/kU;

    move-result-object v2

    .line 55
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->v()Lcom/android/tools/r8/internal/kU;

    move-result-object v6

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iget-wide v7, v6, Lcom/android/tools/r8/internal/kU;->b:J

    iget-wide v9, v2, Lcom/android/tools/r8/internal/kU;->a:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_c

    iget-wide v7, v2, Lcom/android/tools/r8/internal/kU;->b:J

    iget-wide v9, v6, Lcom/android/tools/r8/internal/kU;->a:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_c

    .line 58
    sget-object v7, Lcom/android/tools/r8/internal/E7;->a:[I

    .line 59
    iget-object v8, p3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 60
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_b

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_a

    const/4 v8, 0x4

    if-eq v7, v8, :cond_a

    goto :goto_4

    .line 61
    :cond_a
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kU;->a()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-nez v2, :cond_d

    .line 62
    invoke-static {p2, p3, v1}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    return v5

    .line 63
    :cond_b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/kU;->a()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-nez v2, :cond_d

    .line 64
    invoke-static {p2, p3, v1}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    return v5

    .line 65
    :cond_c
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v0

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    .line 66
    invoke-static {p2, p3, p1}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    return v5

    .line 67
    :cond_d
    :goto_4
    iget-object v2, p3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-eq v2, v4, :cond_e

    .line 68
    sget-object v4, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v2, v4, :cond_13

    .line 69
    :cond_e
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 70
    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 71
    sget-object v4, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {v0, v2, p1, v4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    instance-of v2, v0, Lcom/android/tools/r8/internal/Am0;

    if-eqz v2, :cond_11

    .line 74
    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 75
    invoke-virtual {v3, v2, p1, v4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    instance-of v2, p1, Lcom/android/tools/r8/internal/Am0;

    if-eqz v2, :cond_10

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->K()Lcom/android/tools/r8/internal/Am0;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->K()Lcom/android/tools/r8/internal/Am0;

    move-result-object p1

    .line 80
    iget-object v0, v0, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    if-eq v0, p1, :cond_f

    move v1, v5

    .line 81
    :cond_f
    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p1

    .line 82
    invoke-static {p2, p3, p1}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    return v5

    :cond_10
    return v1

    .line 83
    :cond_11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 84
    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 85
    invoke-virtual {v3, v2, p1, v4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 87
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p1

    .line 89
    iget-object v2, v0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    if-ne v2, v3, :cond_12

    .line 90
    invoke-static {p2, p3, v1}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    return v5

    .line 91
    :cond_12
    iget-object v3, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 93
    iget-object v0, v0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 94
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 95
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->N0()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 97
    iget-object v2, p1, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 100
    iget-object p1, p1, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 101
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->N0()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 103
    invoke-static {p2, p3, v5}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    return v5

    :cond_13
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/tI;)Z
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    const/4 v1, 0x0

    .line 136
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 137
    invoke-static {v3, v5, v4}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/tI;)V

    return v7

    :cond_0
    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 138
    iget-object v6, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v6

    .line 139
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/tI;->x2()[I

    move-result-object v8

    .line 140
    new-instance v9, Ljava/util/PriorityQueue;

    new-instance v10, Lcom/android/tools/r8/internal/qK0;

    invoke-direct {v10, v6}, Lcom/android/tools/r8/internal/qK0;-><init>(Lcom/android/tools/r8/internal/uJ;)V

    invoke-direct {v9, v10}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 141
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 142
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 143
    aget v12, v8, v1

    .line 144
    new-instance v13, Lcom/android/tools/r8/internal/CH;

    const/16 v14, 0x10

    .line 145
    invoke-direct {v13, v14}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 146
    invoke-virtual {v13, v12}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    move v2, v7

    const/4 v15, 0x0

    .line 147
    :goto_0
    array-length v14, v8

    if-ge v2, v14, :cond_3

    .line 148
    aget v14, v8, v2

    move/from16 v16, v2

    int-to-long v1, v14

    move-object/from16 v18, v8

    int-to-long v7, v12

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x1

    cmp-long v1, v1, v7

    if-lez v1, :cond_2

    .line 149
    new-instance v1, Lcom/android/tools/r8/internal/I7;

    const/4 v2, 0x1

    new-array v7, v2, [Lcom/android/tools/r8/internal/TH;

    const/4 v2, 0x0

    aput-object v13, v7, v2

    invoke-direct {v1, v7}, Lcom/android/tools/r8/internal/I7;-><init>([Lcom/android/tools/r8/internal/TH;)V

    .line 150
    invoke-virtual {v0, v11, v15, v1}, Lcom/android/tools/r8/internal/K7;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/I7;Lcom/android/tools/r8/internal/I7;)Lcom/android/tools/r8/internal/I7;

    move-result-object v2

    if-eq v2, v1, :cond_1

    .line 151
    invoke-virtual {v10, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v10, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v9, v15}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    invoke-virtual {v0, v10, v9, v2}, Lcom/android/tools/r8/internal/K7;->a(Ljava/util/HashSet;Ljava/util/PriorityQueue;Lcom/android/tools/r8/internal/I7;)V

    .line 155
    new-instance v1, Lcom/android/tools/r8/internal/CH;

    const/16 v7, 0x10

    .line 156
    invoke-direct {v1, v7}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    move-object v13, v1

    move-object v15, v2

    .line 157
    :cond_2
    invoke-virtual {v13, v14}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    const/4 v1, 0x1

    add-int/lit8 v2, v16, 0x1

    move v7, v1

    move v12, v14

    move-object/from16 v8, v18

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v7

    .line 158
    new-instance v2, Lcom/android/tools/r8/internal/I7;

    new-array v7, v1, [Lcom/android/tools/r8/internal/TH;

    const/4 v1, 0x0

    aput-object v13, v7, v1

    invoke-direct {v2, v7}, Lcom/android/tools/r8/internal/I7;-><init>([Lcom/android/tools/r8/internal/TH;)V

    .line 159
    invoke-virtual {v0, v11, v15, v2}, Lcom/android/tools/r8/internal/K7;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/I7;Lcom/android/tools/r8/internal/I7;)Lcom/android/tools/r8/internal/I7;

    move-result-object v1

    if-eq v1, v2, :cond_4

    .line 160
    invoke-virtual {v10, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    invoke-virtual {v10, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v9, v15}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 163
    :cond_4
    invoke-virtual {v0, v10, v9, v1}, Lcom/android/tools/r8/internal/K7;->a(Ljava/util/HashSet;Ljava/util/PriorityQueue;Lcom/android/tools/r8/internal/I7;)V

    .line 164
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 165
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 166
    invoke-virtual {v9}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 167
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 168
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 169
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/I7;

    .line 170
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 171
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    .line 172
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v9

    :goto_2
    const/4 v9, 0x1

    goto :goto_4

    .line 173
    :cond_7
    sget-boolean v12, Lcom/android/tools/r8/internal/I7;->b:Z

    if-nez v12, :cond_9

    .line 174
    iget-object v12, v7, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    .line 175
    iget v13, v12, Lcom/android/tools/r8/internal/CH;->c:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 176
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v12

    .line 177
    iget-object v13, v9, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    const/4 v14, 0x0

    .line 178
    invoke-virtual {v13, v14}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v13

    if-ge v12, v13, :cond_8

    goto :goto_3

    .line 179
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 180
    :cond_9
    :goto_3
    iget-object v12, v7, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    iget-object v9, v9, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    .line 181
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    move-result v13

    .line 182
    invoke-virtual {v12, v13, v9}, Lcom/android/tools/r8/internal/a0;->a(ILcom/android/tools/r8/internal/TH;)Z

    goto :goto_2

    :goto_4
    add-int/2addr v8, v9

    goto :goto_1

    .line 183
    :cond_a
    new-instance v7, Lcom/android/tools/r8/internal/CH;

    const/16 v8, 0x10

    .line 184
    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 185
    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ$p;->h0:Z

    if-eqz v8, :cond_20

    .line 186
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 187
    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v12

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_1f

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v16

    check-cast v9, Lcom/android/tools/r8/internal/I7;

    .line 189
    iget-object v10, v9, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    const/4 v11, 0x0

    .line 190
    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/CH;->a([I)[I

    move-result-object v10

    .line 191
    invoke-static {v12, v10}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;[I)J

    move-result-wide v10

    .line 192
    iget-object v2, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 193
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 194
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    iget-object v3, v9, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/TH;)I

    move-result v2

    .line 195
    iget-object v3, v9, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    .line 196
    iget v3, v3, Lcom/android/tools/r8/internal/CH;->c:I

    const/16 v5, 0xa

    if-gt v3, v5, :cond_c

    move-object v3, v6

    int-to-long v5, v2

    move/from16 v20, v13

    .line 197
    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v13

    move-object/from16 v21, v12

    if-eqz v13, :cond_b

    const/4 v13, 0x3

    goto :goto_6

    :cond_b
    const/4 v13, 0x1

    :goto_6
    int-to-long v12, v13

    sub-long v12, v10, v12

    cmp-long v5, v5, v12

    if-gez v5, :cond_d

    add-int/2addr v14, v2

    .line 198
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, v9, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    .line 200
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CH;->size()I

    move-result v5

    invoke-virtual {v7, v5, v2}, Lcom/android/tools/r8/internal/CH;->a(ILcom/android/tools/r8/internal/TH;)Z

    move-object/from16 v5, p3

    move-object v6, v3

    move/from16 v13, v20

    move-object/from16 v12, v21

    const/16 v2, 0xa

    move-object/from16 v3, p1

    goto :goto_5

    :cond_c
    move-object v3, v6

    move-object/from16 v21, v12

    move/from16 v20, v13

    .line 201
    :cond_d
    iget-object v2, v9, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    const-wide v5, 0x7fffffffffffffffL

    const/4 v9, -0x1

    const/4 v12, 0x0

    .line 202
    :goto_7
    iget v13, v2, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v12, v13, :cond_f

    .line 203
    invoke-virtual {v2, v12}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v13

    move/from16 v22, v14

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v23, v13, v5

    if-gez v23, :cond_e

    move v9, v12

    move-wide v5, v13

    :cond_e
    const/4 v13, 0x1

    add-int/2addr v12, v13

    move/from16 v14, v22

    goto :goto_7

    :cond_f
    move/from16 v22, v14

    .line 204
    new-instance v5, Lcom/android/tools/r8/internal/CH;

    const/16 v6, 0x10

    .line 205
    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 206
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 207
    iget-object v12, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 208
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v12

    invoke-virtual {v0, v12, v5}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/TH;)I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v10, v12

    .line 209
    iget v14, v2, Lcom/android/tools/r8/internal/CH;->c:I

    iget v6, v5, Lcom/android/tools/r8/internal/CH;->c:I

    sub-int/2addr v14, v6

    move v6, v15

    int-to-long v14, v14

    .line 210
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v23

    const-wide/16 v24, 0x2

    const-wide/16 v26, 0x4

    const-wide/16 v28, 0x8

    if-eqz v23, :cond_10

    mul-long v14, v14, v28

    goto :goto_8

    :cond_10
    mul-long v14, v14, v26

    add-long v14, v14, v24

    .line 211
    :goto_8
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v23

    const/16 v30, 0xc

    if-eqz v23, :cond_11

    move/from16 v23, v6

    move-object/from16 v31, v7

    move/from16 v6, v30

    goto :goto_9

    :cond_11
    move/from16 v23, v6

    move-object/from16 v31, v7

    const/4 v6, 0x3

    :goto_9
    int-to-long v6, v6

    add-long/2addr v14, v6

    sub-long/2addr v12, v14

    const/4 v6, 0x1

    add-int/lit8 v7, v9, -0x1

    add-int/2addr v9, v6

    const-wide/16 v14, 0x0

    .line 212
    :goto_a
    iget v6, v5, Lcom/android/tools/r8/internal/CH;->c:I

    move-object/from16 v32, v3

    const/16 v3, 0xa

    if-ge v6, v3, :cond_17

    cmp-long v19, v12, v14

    if-lez v19, :cond_17

    if-ltz v7, :cond_13

    .line 213
    iget v3, v2, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v9, v3, :cond_13

    .line 214
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v3

    int-to-long v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 215
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-wide/from16 v33, v12

    int-to-long v12, v3

    cmp-long v3, v12, v14

    if-gtz v3, :cond_12

    const/4 v3, 0x1

    add-int/lit8 v6, v9, 0x1

    .line 216
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    :goto_b
    move v9, v6

    goto :goto_d

    :cond_12
    const/4 v3, -0x1

    add-int/lit8 v6, v7, -0x1

    .line 217
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    :goto_c
    move v7, v6

    goto :goto_d

    :cond_13
    move-wide/from16 v33, v12

    const/4 v3, -0x1

    if-ltz v7, :cond_14

    add-int/lit8 v6, v7, -0x1

    .line 218
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_c

    .line 219
    :cond_14
    iget v3, v2, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v9, v3, :cond_18

    const/4 v3, 0x1

    add-int/lit8 v6, v9, 0x1

    .line 220
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    goto :goto_b

    .line 221
    :goto_d
    iget-object v3, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 222
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/TH;)I

    move-result v3

    int-to-long v12, v3

    sub-long v12, v10, v12

    .line 223
    iget v3, v2, Lcom/android/tools/r8/internal/CH;->c:I

    iget v6, v5, Lcom/android/tools/r8/internal/CH;->c:I

    sub-int/2addr v3, v6

    int-to-long v14, v3

    .line 224
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v3

    if-eqz v3, :cond_15

    mul-long v14, v14, v28

    goto :goto_e

    :cond_15
    mul-long v14, v14, v26

    add-long v14, v14, v24

    .line 225
    :goto_e
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v3

    move/from16 v35, v7

    if-eqz v3, :cond_16

    move/from16 v3, v30

    goto :goto_f

    :cond_16
    const/4 v3, 0x3

    :goto_f
    int-to-long v6, v3

    add-long/2addr v14, v6

    sub-long/2addr v12, v14

    move-object/from16 v3, v32

    move-wide/from16 v14, v33

    move/from16 v7, v35

    goto/16 :goto_a

    :cond_17
    move-wide/from16 v33, v12

    :cond_18
    cmp-long v3, v14, v33

    if-ltz v3, :cond_1a

    const/4 v3, 0x1

    sub-int/2addr v6, v3

    .line 226
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v6

    .line 227
    iget v12, v5, Lcom/android/tools/r8/internal/CH;->c:I

    sub-int/2addr v12, v3

    .line 228
    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/CH;->i(I)I

    add-int/lit8 v12, v7, 0x1

    .line 229
    invoke-virtual {v2, v12}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v13

    if-ne v6, v13, :cond_19

    move v7, v12

    :goto_10
    const/4 v6, -0x1

    goto :goto_11

    :cond_19
    const/4 v6, -0x1

    add-int/2addr v9, v6

    goto :goto_11

    :cond_1a
    const/4 v3, 0x1

    goto :goto_10

    :goto_11
    add-int/2addr v7, v3

    add-int/2addr v9, v6

    .line 230
    iget v3, v5, Lcom/android/tools/r8/internal/CH;->c:I

    if-lez v3, :cond_1e

    .line 231
    iget-object v3, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 232
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/TH;)I

    move-result v3

    .line 233
    iget v12, v2, Lcom/android/tools/r8/internal/CH;->c:I

    iget v13, v5, Lcom/android/tools/r8/internal/CH;->c:I

    sub-int/2addr v12, v13

    int-to-long v12, v12

    .line 234
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v14

    if-eqz v14, :cond_1b

    mul-long v12, v12, v28

    goto :goto_12

    :cond_1b
    mul-long v12, v12, v26

    add-long v12, v12, v24

    .line 235
    :goto_12
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v14

    if-eqz v14, :cond_1c

    move/from16 v14, v30

    goto :goto_13

    :cond_1c
    const/4 v14, 0x3

    :goto_13
    int-to-long v14, v14

    add-long/2addr v12, v14

    int-to-long v14, v3

    add-long/2addr v12, v14

    .line 236
    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v14

    if-eqz v14, :cond_1d

    const/4 v14, 0x3

    goto :goto_14

    :cond_1d
    const/4 v14, 0x1

    :goto_14
    int-to-long v14, v14

    add-long/2addr v12, v14

    cmp-long v10, v12, v10

    if-gez v10, :cond_1e

    .line 237
    invoke-virtual {v2, v7, v9}, Lcom/android/tools/r8/internal/CH;->a(II)V

    .line 238
    invoke-virtual/range {v31 .. v31}, Lcom/android/tools/r8/internal/CH;->size()I

    move-result v2

    move-object/from16 v7, v31

    invoke-virtual {v7, v2, v5}, Lcom/android/tools/r8/internal/CH;->a(ILcom/android/tools/r8/internal/TH;)Z

    add-int v14, v22, v3

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v13, v20

    move-object/from16 v12, v21

    :goto_15
    move/from16 v15, v23

    move-object/from16 v6, v32

    const/16 v2, 0xa

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v7, v31

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v13, v20

    move-object/from16 v12, v21

    move/from16 v14, v22

    goto :goto_15

    :cond_1f
    move-object/from16 v32, v6

    move/from16 v22, v14

    .line 239
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move/from16 v2, v22

    goto :goto_16

    :cond_20
    move-object/from16 v32, v6

    const/4 v2, 0x0

    .line 240
    :goto_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    :goto_17
    if-ge v6, v3, :cond_21

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v11, 0x1

    add-int/2addr v6, v11

    check-cast v8, Lcom/android/tools/r8/internal/I7;

    .line 242
    iget-object v11, v8, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    const/4 v12, 0x0

    .line 243
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/CH;->a([I)[I

    move-result-object v11

    move-object/from16 v13, v32

    .line 244
    invoke-static {v13, v11}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;[I)J

    move-result-wide v14

    add-long/2addr v9, v14

    .line 245
    iget-object v8, v8, Lcom/android/tools/r8/internal/I7;->a:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_21
    move-object/from16 v13, v32

    .line 246
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/tI;->x2()[I

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;[I)J

    move-result-wide v11

    int-to-long v1, v2

    add-long/2addr v9, v1

    .line 247
    iget-object v1, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->w()Lcom/android/tools/r8/internal/uJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/uJ;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    goto :goto_18

    :cond_22
    const/4 v2, 0x1

    :goto_18
    int-to-long v1, v2

    add-long/2addr v9, v1

    cmp-long v1, v9, v11

    if-gez v1, :cond_23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v7

    .line 248
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/tI;Ljava/util/List;Lcom/android/tools/r8/internal/CH;)V

    const/4 v1, 0x1

    return v1

    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 105
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x19

    .line 106
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 107
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 108
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mB;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/we;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/F7;->h:Lcom/android/tools/r8/internal/F7;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 24
    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 25
    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ;->Z:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_22

    .line 26
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_22

    .line 27
    iget-object v2, v1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mB;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    sget-object v2, Lcom/android/tools/r8/internal/F7;->h:Lcom/android/tools/r8/internal/F7;

    move v4, v5

    goto/16 :goto_12

    .line 30
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v2

    move v3, v5

    move v6, v3

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 32
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 33
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->l2()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 34
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->Q0()Lcom/android/tools/r8/internal/ar0;

    move-result-object v8

    .line 35
    iget-object v9, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v9, v9, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v9, v9, Lcom/android/tools/r8/internal/nJ$p;->Z:Z

    if-eqz v9, :cond_1b

    .line 36
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    .line 37
    new-instance v10, Lcom/android/tools/r8/internal/cr0;

    invoke-direct {v10, v8}, Lcom/android/tools/r8/internal/cr0;-><init>(Lcom/android/tools/r8/internal/ar0;)V

    .line 38
    new-instance v15, Lcom/android/tools/r8/internal/X5;

    iget-object v11, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v15, v11, v1}, Lcom/android/tools/r8/internal/X5;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 39
    iget-object v11, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 40
    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v13

    .line 41
    sget-object v14, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 42
    invoke-virtual {v11, v12, v13, v14}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v14

    move v13, v5

    move/from16 v17, v13

    .line 43
    :goto_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v11

    if-ge v13, v11, :cond_4

    .line 44
    invoke-virtual {v8, v13}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    .line 45
    invoke-static {v8, v13}, Lcom/android/tools/r8/internal/br0;->a(Lcom/android/tools/r8/internal/ar0;I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 46
    sget-boolean v9, Lcom/android/tools/r8/internal/cr0;->h:Z

    if-nez v9, :cond_3

    iget v9, v10, Lcom/android/tools/r8/internal/cr0;->c:I

    if-gez v9, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 47
    :cond_3
    :goto_2
    iput v13, v10, Lcom/android/tools/r8/internal/cr0;->c:I

    .line 48
    iget-object v9, v10, Lcom/android/tools/r8/internal/cr0;->b:Lcom/android/tools/r8/internal/ar0;

    invoke-virtual {v9, v13}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    iput-object v9, v10, Lcom/android/tools/r8/internal/cr0;->d:Lcom/android/tools/r8/internal/W5;

    .line 49
    iput-boolean v5, v10, Lcom/android/tools/r8/internal/cr0;->e:Z

    :cond_4
    move-object/from16 v21, v14

    goto :goto_4

    .line 50
    :cond_5
    invoke-static {v8, v14, v13}, Lcom/android/tools/r8/internal/br0;->a(Lcom/android/tools/r8/internal/ar0;Lcom/android/tools/r8/internal/F1;I)Z

    move-result v12

    const/16 v4, 0x10

    if-eqz v12, :cond_7

    .line 51
    iget-object v11, v10, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-nez v11, :cond_6

    .line 52
    new-instance v11, Lcom/android/tools/r8/internal/dI;

    .line 53
    invoke-direct {v11, v4}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 54
    iput-object v11, v10, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    .line 55
    :cond_6
    iget-object v4, v10, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v4, v13}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    move v5, v13

    move-object/from16 v21, v14

    move-object/from16 v18, v15

    goto :goto_3

    .line 56
    :cond_7
    iget-object v12, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 57
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v16

    .line 58
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v18

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v19

    const/16 v20, 0x0

    move-object v11, v15

    move v5, v13

    move-object/from16 v13, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    .line 59
    invoke-virtual/range {v11 .. v16}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/AE;Ljava/util/Set;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 60
    iget-object v11, v10, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-nez v11, :cond_8

    .line 61
    new-instance v11, Lcom/android/tools/r8/internal/dI;

    .line 62
    invoke-direct {v11, v4}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 63
    iput-object v11, v10, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    .line 64
    :cond_8
    iget-object v4, v10, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    const/16 v17, 0x1

    :cond_9
    :goto_3
    add-int/lit8 v13, v5, 0x1

    move-object/from16 v15, v18

    move-object/from16 v14, v21

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 65
    :goto_4
    iget-boolean v4, v10, Lcom/android/tools/r8/internal/cr0;->e:Z

    if-eqz v4, :cond_10

    if-nez v17, :cond_10

    .line 66
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 67
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v4

    .line 68
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/F1;->Y()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 69
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/internal/F1;->G()Lcom/android/tools/r8/internal/Bh;

    move-result-object v5

    .line 70
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/tI;->x2()[I

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/tools/r8/internal/Bh;->a([I)Lcom/android/tools/r8/internal/t40;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v4

    goto :goto_6

    .line 72
    :cond_a
    sget-boolean v4, Lcom/android/tools/r8/internal/br0;->a:Z

    if-nez v4, :cond_c

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->k2()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_c
    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_10

    .line 73
    sget-boolean v4, Lcom/android/tools/r8/internal/cr0;->h:Z

    if-nez v4, :cond_e

    .line 74
    iget v4, v10, Lcom/android/tools/r8/internal/cr0;->c:I

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_f

    :cond_e
    const/4 v4, 0x0

    goto :goto_8

    .line 75
    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 76
    :goto_8
    iput-boolean v4, v10, Lcom/android/tools/r8/internal/cr0;->e:Z

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    .line 77
    :goto_9
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/cr0;->b()V

    .line 78
    sget-boolean v5, Lcom/android/tools/r8/internal/cr0;->h:Z

    if-nez v5, :cond_12

    iget-object v5, v10, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dI;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_a

    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 79
    :cond_12
    :goto_a
    iget-object v5, v10, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-nez v5, :cond_15

    .line 80
    iget v5, v10, Lcom/android/tools/r8/internal/cr0;->c:I

    if-ltz v5, :cond_13

    goto :goto_b

    .line 81
    :cond_13
    iget-boolean v5, v10, Lcom/android/tools/r8/internal/cr0;->e:Z

    if-nez v5, :cond_14

    goto :goto_b

    :cond_14
    move v5, v4

    goto :goto_c

    :cond_15
    :goto_b
    const/4 v5, 0x1

    :goto_c
    or-int/2addr v6, v5

    .line 82
    iget-boolean v5, v10, Lcom/android/tools/r8/internal/cr0;->f:Z

    if-eqz v5, :cond_16

    const/4 v3, 0x1

    .line 83
    :cond_16
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    :goto_d
    move v5, v4

    goto/16 :goto_0

    .line 84
    :cond_18
    sget-boolean v5, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez v5, :cond_1a

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->l2()Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_e

    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 85
    :cond_1a
    :goto_e
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->Q0()Lcom/android/tools/r8/internal/ar0;

    move-result-object v8

    goto :goto_f

    :cond_1b
    move v4, v5

    .line 86
    :goto_f
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 87
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v7, v5}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/tI;)Z

    move-result v5

    or-int/2addr v6, v5

    goto :goto_d

    :cond_1c
    move v4, v5

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->z()V

    if-eqz v3, :cond_1d

    .line 89
    new-instance v2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 90
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    goto :goto_10

    .line 91
    :cond_1d
    sget-object v2, Lcom/android/tools/r8/ir/optimize/a;->c:Lcom/android/tools/r8/ir/optimize/a;

    .line 92
    :goto_10
    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 95
    iget-object v2, v2, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 96
    sget-boolean v2, Lcom/android/tools/r8/internal/F7;->i:Z

    if-nez v2, :cond_1f

    if-eqz v6, :cond_1e

    goto :goto_11

    :cond_1e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 97
    :cond_1f
    :goto_11
    sget-object v2, Lcom/android/tools/r8/internal/F7;->f:Lcom/android/tools/r8/internal/F7;

    goto :goto_12

    :cond_20
    if-eqz v6, :cond_21

    .line 98
    sget-object v2, Lcom/android/tools/r8/internal/F7;->g:Lcom/android/tools/r8/internal/F7;

    goto :goto_12

    :cond_21
    sget-object v2, Lcom/android/tools/r8/internal/F7;->h:Lcom/android/tools/r8/internal/F7;

    goto :goto_12

    :cond_22
    move v4, v5

    .line 99
    sget-object v2, Lcom/android/tools/r8/internal/F7;->h:Lcom/android/tools/r8/internal/F7;

    .line 100
    :goto_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/K7;->c(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/F7;

    move-result-object v3

    .line 101
    iget-boolean v5, v2, Lcom/android/tools/r8/internal/F7;->d:Z

    if-nez v5, :cond_24

    .line 102
    iget-boolean v5, v3, Lcom/android/tools/r8/internal/F7;->d:Z

    if-eqz v5, :cond_23

    goto :goto_13

    :cond_23
    move v5, v4

    goto :goto_14

    :cond_24
    :goto_13
    const/4 v5, 0x1

    :goto_14
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/F7;->e:Z

    if-nez v2, :cond_25

    iget-boolean v2, v3, Lcom/android/tools/r8/internal/F7;->e:Z

    if-eqz v2, :cond_26

    :cond_25
    const/4 v4, 0x1

    :cond_26
    if-eqz v5, :cond_29

    .line 103
    sget-boolean v2, Lcom/android/tools/r8/internal/F7;->i:Z

    if-nez v2, :cond_28

    if-eqz v4, :cond_27

    goto :goto_15

    :cond_27
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 104
    :cond_28
    :goto_15
    sget-object v2, Lcom/android/tools/r8/internal/F7;->f:Lcom/android/tools/r8/internal/F7;

    goto :goto_16

    :cond_29
    if-eqz v4, :cond_2a

    .line 105
    sget-object v2, Lcom/android/tools/r8/internal/F7;->g:Lcom/android/tools/r8/internal/F7;

    goto :goto_16

    :cond_2a
    sget-object v2, Lcom/android/tools/r8/internal/F7;->h:Lcom/android/tools/r8/internal/F7;

    .line 106
    :goto_16
    iget-boolean v3, v2, Lcom/android/tools/r8/internal/F7;->d:Z

    if-eqz v3, :cond_2b

    .line 107
    new-instance v3, Lcom/android/tools/r8/internal/it0;

    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/it0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 108
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual {v3, v1, v5, v6, v4}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    :cond_2b
    return-object v2
.end method

.method public final b(Lcom/android/tools/r8/internal/W5;)Z
    .locals 6

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v3, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v1, v3, :cond_2

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 8
    new-instance v3, Lcom/android/tools/r8/internal/pK0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/pK0;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/j2;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 12
    new-instance v3, Lcom/android/tools/r8/internal/EB;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v0

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 16
    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    .line 17
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    return v5

    .line 18
    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/j2;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    new-instance v3, Lcom/android/tools/r8/internal/EB;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 22
    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    .line 23
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    return v5

    :cond_2
    return v2
.end method

.method public final c(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/F7;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v8, Lcom/android/tools/r8/internal/X5;

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v8, v2, v1}, Lcom/android/tools/r8/internal/X5;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    iget-object v2, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move v2, v10

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v22, v8

    move-object/from16 v19, v9

    move-object v8, v0

    goto/16 :goto_24

    :cond_1
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    sget-boolean v6, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez v6, :cond_3

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->F()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->F()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    iget-object v7, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/tools/r8/internal/EB;

    iget-object v3, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v3

    invoke-direct {v12, v3, v7}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    sget-boolean v3, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v3, :cond_6

    if-eq v4, v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    :goto_2
    iget-object v7, v11, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v7, v11, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-nez v3, :cond_8

    if-ltz v4, :cond_7

    if-ltz v5, :cond_7

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    :goto_3
    invoke-virtual {v11, v4, v5}, Lcom/android/tools/r8/internal/W5;->a(II)V

    :cond_9
    :goto_4
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_7

    :cond_a
    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v2, Lcom/android/tools/r8/internal/EB;

    iget-object v3, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/tools/r8/internal/MB;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    const-string v2, "Unknown if condition type."

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v3, Lcom/android/tools/r8/internal/NB;->d:Lcom/android/tools/r8/internal/NB;

    goto :goto_5

    :pswitch_1
    sget-object v3, Lcom/android/tools/r8/internal/NB;->c:Lcom/android/tools/r8/internal/NB;

    goto :goto_5

    :pswitch_2
    sget-object v3, Lcom/android/tools/r8/internal/NB;->f:Lcom/android/tools/r8/internal/NB;

    goto :goto_5

    :pswitch_3
    sget-object v3, Lcom/android/tools/r8/internal/NB;->e:Lcom/android/tools/r8/internal/NB;

    :goto_5
    :pswitch_4
    invoke-direct {v2, v3, v5}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v11, v2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    if-nez v6, :cond_f

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    if-ne v3, v2, :cond_c

    goto :goto_6

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_d
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v2, Lcom/android/tools/r8/internal/EB;

    iget-object v3, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v11, v2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    if-nez v6, :cond_f

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    if-ne v3, v2, :cond_e

    goto :goto_6

    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    :goto_6
    const/4 v2, 0x1

    :cond_10
    :goto_7
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/K7;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v3

    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_20

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    invoke-static {v5}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-static {v7}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_20

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_20

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    if-nez v14, :cond_12

    const/4 v15, 0x1

    goto :goto_8

    :cond_12
    move v15, v10

    :goto_8
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v6, v10

    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lcom/android/tools/r8/internal/f60;

    iget-object v10, v12, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    move/from16 v18, v2

    iget-object v2, v12, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v19

    if-eqz v19, :cond_1c

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v19

    if-eqz v19, :cond_1c

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    move-object/from16 v19, v9

    iget-object v9, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    move/from16 v20, v14

    sget-object v14, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-ne v9, v14, :cond_14

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/qh;->z2()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->y2()Z

    move-result v9

    if-nez v9, :cond_13

    goto :goto_a

    :cond_13
    move/from16 v21, v15

    goto :goto_b

    :cond_14
    :goto_a
    iget-object v9, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    move/from16 v21, v15

    sget-object v15, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v9, v15, :cond_15

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/qh;->y2()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->z2()Z

    move-result v9

    if-eqz v9, :cond_15

    :goto_b
    invoke-virtual {v12, v4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v18

    move-object/from16 v9, v19

    move/from16 v14, v20

    move/from16 v15, v21

    :goto_c
    const/4 v10, 0x0

    goto :goto_9

    :cond_15
    iget-object v9, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-ne v9, v15, :cond_16

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/qh;->z2()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->y2()Z

    move-result v9

    if-nez v9, :cond_17

    :cond_16
    iget-object v9, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-ne v9, v14, :cond_1b

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/qh;->y2()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->z2()Z

    move-result v9

    if-eqz v9, :cond_1b

    :cond_17
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/qh;->y2()Z

    move-result v14

    if-eqz v14, :cond_18

    goto :goto_d

    :cond_18
    move-object v10, v2

    :goto_d
    iget-object v2, v12, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v14

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v15

    move-object/from16 v22, v8

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    if-eq v8, v5, :cond_19

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    if-ne v8, v7, :cond_1a

    :cond_19
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/android/tools/r8/internal/qh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v2, v10, v15}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    :cond_1a
    invoke-virtual {v12, v9}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    new-instance v10, Lcom/android/tools/r8/internal/fy0;

    invoke-direct {v10, v0, v9, v4, v8}, Lcom/android/tools/r8/internal/fy0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/u6;->x2()V

    invoke-virtual {v10, v14}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v2, v10, v15}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    add-int/lit8 v6, v6, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v2, v18

    move-object/from16 v9, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v8, v22

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v22, v8

    goto :goto_e

    :cond_1c
    move-object/from16 v22, v8

    move-object/from16 v19, v9

    move/from16 v20, v14

    move/from16 v21, v15

    goto :goto_e

    :cond_1d
    move/from16 v18, v2

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v6, v0, :cond_1e

    invoke-static {v11, v3, v5, v7}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    goto :goto_f

    :cond_1e
    if-lez v6, :cond_21

    :goto_f
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v2, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    :goto_10
    move-object/from16 v9, v19

    move-object/from16 v8, v22

    goto/16 :goto_0

    :cond_1f
    const/16 v18, 0x1

    goto :goto_11

    :cond_20
    move/from16 v18, v2

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    :cond_21
    :goto_11
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v3, :cond_23

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_12

    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    :goto_12
    if-nez v3, :cond_25

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/EB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/NB;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_13

    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_25
    :goto_13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    if-ne v2, v3, :cond_26

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    goto :goto_14

    :cond_26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    :goto_14
    invoke-static {v11, v0, v2, v3}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_23

    :cond_27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v4

    if-eqz v4, :cond_31

    sget-boolean v4, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez v4, :cond_28

    iget-object v4, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    sget-object v5, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v4, v5, :cond_28

    sget-object v5, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v4, v5, :cond_29

    :cond_28
    move-object/from16 v8, p0

    goto :goto_15

    :cond_29
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :goto_15
    iget-object v4, v8, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-boolean v2, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v2, :cond_2b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_16

    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2b
    :goto_16
    if-nez v2, :cond_2d

    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_17

    :cond_2c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2d
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    if-ne v2, v3, :cond_2e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    goto :goto_18

    :cond_2e
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    :goto_18
    invoke-static {v11, v0, v2, v3}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    :goto_19
    const/4 v9, 0x1

    :goto_1a
    const/4 v10, 0x0

    goto/16 :goto_23

    :cond_2f
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->z2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    if-ne v2, v3, :cond_30

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    goto :goto_1b

    :cond_30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    :goto_1b
    invoke-static {v11, v0, v2, v3}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    goto :goto_19

    :cond_31
    move-object/from16 v8, p0

    :cond_32
    iget-object v4, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    sget-object v5, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v4, v5, :cond_34

    sget-object v5, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v4, v5, :cond_33

    goto :goto_1c

    :cond_33
    const/4 v9, 0x1

    goto/16 :goto_1f

    :cond_34
    :goto_1c
    iget-object v4, v8, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F1;->Y()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F1;->G()Lcom/android/tools/r8/internal/Bh;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/Bh;->a(I)Z

    move-result v4

    if-nez v4, :cond_36

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    if-ne v2, v3, :cond_35

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    goto :goto_1d

    :cond_35
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    :goto_1d
    invoke-static {v11, v0, v2, v3}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    goto :goto_1a

    :cond_36
    const/4 v9, 0x1

    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v4, Lcom/android/tools/r8/internal/fy0;

    if-eqz v4, :cond_39

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->T0()Lcom/android/tools/r8/internal/fy0;

    move-result-object v3

    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v5

    const-wide/16 v12, 0x1

    if-eqz v5, :cond_37

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-nez v4, :cond_37

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    goto :goto_1e

    :cond_37
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-nez v4, :cond_38

    iget-object v3, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    :cond_38
    :goto_1e
    if-eqz v6, :cond_39

    new-instance v2, Lcom/android/tools/r8/internal/EB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v0

    invoke-direct {v2, v0, v6}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v11, v2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    goto/16 :goto_1a

    :cond_39
    :goto_1f
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->G()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->v()Lcom/android/tools/r8/internal/kU;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/tools/r8/internal/kU;->a:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3b

    iget-wide v3, v2, Lcom/android/tools/r8/internal/kU;->b:J

    cmp-long v3, v5, v3

    if-gtz v3, :cond_3b

    sget-object v3, Lcom/android/tools/r8/internal/E7;->a:[I

    iget-object v4, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_21

    :pswitch_5
    sget-boolean v3, Lcom/android/tools/r8/internal/K7;->e:Z

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kU;->c()Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_21

    :cond_3a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_6
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kU;->a()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_3d

    const/4 v3, 0x0

    invoke-static {v11, v0, v3}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    :goto_20
    move v10, v3

    goto :goto_23

    :pswitch_7
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-nez v2, :cond_3d

    invoke-static {v11, v0, v3}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    goto :goto_20

    :cond_3b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result v2

    invoke-static {v11, v0, v2}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;I)V

    goto/16 :goto_1a

    :cond_3c
    const/4 v9, 0x1

    move-object/from16 v8, p0

    invoke-virtual {v8, v1, v11, v0}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto/16 :goto_1a

    :cond_3d
    :goto_21
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v7

    const/4 v12, 0x0

    move-object/from16 v2, v22

    move-object v5, v6

    move-object v6, v7

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/AE;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    if-ne v2, v3, :cond_3e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    goto :goto_22

    :cond_3e
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    :goto_22
    invoke-static {v11, v0, v2, v3}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    :goto_23
    move-object v0, v8

    move v2, v9

    goto/16 :goto_10

    :cond_3f
    move-object v0, v8

    move/from16 v2, v18

    goto/16 :goto_10

    :goto_24
    move-object v0, v8

    goto/16 :goto_10

    :cond_40
    move-object v8, v0

    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    iget-object v3, v8, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    sget-boolean v0, Lcom/android/tools/r8/internal/F7;->i:Z

    if-nez v0, :cond_42

    if-eqz v2, :cond_41

    goto :goto_25

    :cond_41
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_42
    :goto_25
    sget-object v0, Lcom/android/tools/r8/internal/F7;->f:Lcom/android/tools/r8/internal/F7;

    return-object v0

    :cond_43
    if-eqz v2, :cond_44

    sget-object v0, Lcom/android/tools/r8/internal/F7;->g:Lcom/android/tools/r8/internal/F7;

    return-object v0

    :cond_44
    sget-object v0, Lcom/android/tools/r8/internal/F7;->h:Lcom/android/tools/r8/internal/F7;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
