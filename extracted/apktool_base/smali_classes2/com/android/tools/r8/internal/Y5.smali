.class public Lcom/android/tools/r8/internal/Y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/EE;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public b:Lcom/android/tools/r8/internal/zE;

.field public c:Lcom/android/tools/r8/internal/zE;

.field public final d:Lcom/android/tools/r8/internal/W5;

.field public final e:Lcom/android/tools/r8/internal/CE;

.field public f:Lcom/android/tools/r8/internal/B60;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/W5;I)V
    .locals 1

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/CE;->j(I)Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;
    .locals 4

    .line 483
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v0

    .line 485
    new-instance v1, Lcom/android/tools/r8/internal/W5;

    .line 486
    iget-object v2, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 487
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 488
    iget-object v2, p0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v2

    .line 489
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 490
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/yk0;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/yk0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/yk0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 491
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 492
    iget-object v3, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 493
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    .line 494
    new-instance v2, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    .line 495
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    const/4 p1, 0x0

    .line 496
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 497
    iget-object p0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/List;)Lcom/android/tools/r8/internal/Y5;
    .locals 10

    .line 437
    new-instance v0, Lcom/android/tools/r8/internal/j31;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j31;-><init>()V

    .line 438
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 439
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 440
    new-instance v0, Lcom/android/tools/r8/internal/k31;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/k31;-><init>(Lcom/android/tools/r8/internal/fB;)V

    .line 441
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p2

    .line 442
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 443
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    .line 444
    new-instance p1, Lcom/android/tools/r8/internal/l31;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/l31;-><init>()V

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 445
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-object p0

    .line 446
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/W5;

    .line 447
    iget-object v3, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 448
    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 449
    iget-object v3, p1, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v3

    .line 450
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 451
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 452
    new-instance p0, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yk0;-><init>()V

    goto/16 :goto_3

    .line 453
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 455
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v5

    .line 456
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 457
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_3

    .line 458
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 459
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    goto :goto_2

    .line 460
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/f60;

    iget-object v3, p1, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    .line 461
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v4

    .line 462
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v6

    sget-object v8, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    .line 463
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/f60;->a(Ljava/util/List;)V

    .line 464
    new-instance v3, Lcom/android/tools/r8/internal/lu0;

    .line 465
    invoke-direct {v3, p0, p1, v2}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    .line 466
    sget p0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 467
    new-instance p0, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 468
    invoke-virtual {v3, p0, v2}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    move-object p0, v1

    .line 469
    :goto_2
    new-instance v1, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/yk0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    move-object p0, v1

    .line 470
    :goto_3
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 471
    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 472
    invoke-virtual {v0, p0, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    .line 473
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    .line 474
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 475
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 476
    sget-boolean v4, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 477
    :cond_7
    :goto_5
    new-instance v3, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    .line 478
    invoke-interface {v2, v3, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 479
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    goto :goto_4

    .line 480
    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 481
    iget-object p0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Ljava/util/ListIterator;)V
    .locals 6

    .line 237
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_f

    .line 238
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 239
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 240
    :cond_1
    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/dR0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/dR0;-><init>()V

    .line 241
    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 242
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 243
    invoke-interface {v0, p1, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-nez v1, :cond_3

    .line 244
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_2
    if-nez v1, :cond_5

    .line 245
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p3, v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 246
    :cond_5
    :goto_3
    invoke-interface {p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    if-nez v1, :cond_8

    if-ne v2, v0, :cond_6

    goto :goto_4

    .line 247
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    move-object v0, v3

    .line 248
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {p3, p1, p4, p2, v2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/nJ;)V

    if-eqz v0, :cond_b

    .line 249
    invoke-interface {p4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/W5;

    if-nez v1, :cond_a

    if-ne p3, v0, :cond_9

    goto :goto_5

    .line 250
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 251
    :cond_a
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    goto :goto_6

    :cond_b
    move-object p3, v3

    :goto_6
    move-object v5, v0

    move-object v0, p3

    move-object p3, v5

    goto/16 :goto_0

    :cond_c
    if-nez v1, :cond_e

    .line 252
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_d

    goto :goto_7

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_e
    :goto_7
    move-object p3, v3

    move-object v0, p3

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/xw0;)V
    .locals 3

    .line 253
    sget-boolean v0, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 254
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_3

    .line 255
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 256
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 257
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne v0, p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 258
    :cond_7
    :goto_3
    invoke-interface {p0}, Lcom/android/tools/r8/internal/EE;->remove()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/W5;)V
    .locals 1

    .line 211
    invoke-interface {p0, p6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->E3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0, p5}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 213
    new-instance p1, Lcom/android/tools/r8/internal/dt;

    const/4 p5, 0x2

    invoke-direct {p1, p2, p5}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    .line 214
    invoke-virtual {p3, p6, p1, p4}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/ir/optimize/a;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;
    .locals 4

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    .line 9
    :cond_2
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    if-ne v3, v1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 13
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    move-result-object v2

    .line 14
    invoke-virtual {p0, p1, p2, p4, v2}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, p0

    .line 16
    :cond_7
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 18
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 19
    invoke-interface {v2, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 21
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v1, :cond_9

    goto :goto_6

    .line 22
    :cond_9
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    move-result-object v3

    .line 23
    invoke-virtual {v2, p1, p2, p4, v3}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 25
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    .line 26
    :cond_a
    :goto_4
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    .line 27
    invoke-interface {p0, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    move-object v2, p0

    .line 28
    :cond_c
    :goto_6
    sget-boolean p1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez p1, :cond_e

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    if-ne p1, v0, :cond_d

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_7
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/VJ;
    .locals 2

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    .line 55
    sget-boolean v1, Lcom/android/tools/r8/internal/mK;->o:Z

    .line 56
    new-instance v1, Lcom/android/tools/r8/internal/lK;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lK;-><init>()V

    .line 57
    iput-object p1, v1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 58
    invoke-virtual {v1, p4}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lK;

    .line 59
    iput-object p5, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 62
    iget-object p4, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 63
    invoke-interface {p0, p2, p3, v0, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/W5;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 259
    sget-boolean v9, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v9, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 260
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    .line 261
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    .line 262
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v13

    const/4 v14, 0x0

    if-eq v12, v13, :cond_b

    .line 263
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/j1;

    .line 264
    iget-object v12, v12, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 265
    sget-object v13, Lcom/android/tools/r8/graph/k1;->g:Lcom/android/tools/r8/graph/k1;

    if-ne v12, v13, :cond_b

    if-nez v9, :cond_3

    .line 266
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 267
    invoke-static {v9, v11, v1}, Lcom/android/tools/r8/ir/optimize/g0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 268
    :cond_3
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v9

    .line 269
    sget-boolean v11, Lcom/android/tools/r8/ir/optimize/g0;->a:Z

    if-nez v11, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v12

    if-eq v11, v12, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 270
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 271
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    .line 272
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 273
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v11

    .line 274
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    iget-object v13, v12, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1, v13}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v13

    .line 277
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 278
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v15

    if-nez v15, :cond_5

    .line 279
    sget-boolean v15, Lcom/android/tools/r8/ir/optimize/g0;->a:Z

    if-nez v15, :cond_7

    .line 280
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 281
    iget-object v13, v13, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_3

    .line 282
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 283
    :cond_7
    :goto_3
    iget-boolean v13, v11, Lcom/android/tools/r8/internal/QJ;->o:Z

    if-eqz v13, :cond_8

    .line 284
    new-instance v13, Lcom/android/tools/r8/internal/TJ;

    .line 285
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    .line 286
    iget-object v11, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 287
    invoke-direct {v13, v12, v15, v11}, Lcom/android/tools/r8/internal/TJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 288
    invoke-interface {v9, v13, v14}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_2

    .line 289
    :cond_8
    new-instance v13, Lcom/android/tools/r8/internal/mK;

    .line 290
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    .line 291
    iget-object v11, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 292
    invoke-direct {v13, v12, v15, v11}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 293
    invoke-interface {v9, v13, v14}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_2

    .line 294
    :cond_9
    instance-of v12, v11, Lcom/android/tools/r8/internal/TJ;

    if-nez v12, :cond_a

    .line 295
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 296
    :cond_a
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v11

    .line 297
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 298
    iget-object v13, v12, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    if-ne v13, v15, :cond_5

    .line 299
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    iget-object v13, v12, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1, v13}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v13

    .line 301
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 302
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 303
    iget-object v13, v13, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 304
    new-instance v13, Lcom/android/tools/r8/internal/QJ;

    .line 305
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    .line 306
    iget-object v11, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v7

    invoke-direct {v13, v12, v15, v11, v7}, Lcom/android/tools/r8/internal/QJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    .line 308
    invoke-interface {v9, v13, v14}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_2

    .line 309
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->o()Lcom/android/tools/r8/internal/AE;

    move-result-object v7

    .line 310
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 311
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v9

    if-eqz v9, :cond_c

    move v7, v8

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    .line 312
    :goto_4
    invoke-virtual {v0, v2, v8, v4}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    .line 313
    sget-boolean v10, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v10, :cond_f

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v11

    if-ne v11, v6, :cond_e

    goto :goto_5

    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    :goto_5
    if-nez v10, :cond_11

    .line 314
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_6

    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 315
    :cond_11
    :goto_6
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v11

    .line 316
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/W5;

    .line 317
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/W5;

    .line 318
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v13

    .line 319
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->d()Ljava/util/List;

    move-result-object v8

    if-nez v10, :cond_13

    .line 320
    iget-object v6, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ne v6, v14, :cond_12

    goto :goto_7

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 322
    :cond_13
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    if-nez v10, :cond_15

    if-eqz p6, :cond_15

    const/4 v14, 0x0

    .line 323
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/android/tools/r8/internal/xw0;

    .line 324
    iget-boolean v14, v14, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v14, :cond_14

    goto :goto_8

    .line 325
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_15
    :goto_8
    if-eqz p6, :cond_19

    const/4 v14, 0x0

    .line 326
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v18, v15

    .line 327
    iget-object v15, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 328
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    .line 329
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-static {v14, v5, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 330
    new-instance v14, Lcom/android/tools/r8/internal/Qk0;

    move/from16 v19, v7

    const/4 v7, 0x0

    .line 331
    invoke-interface {v2, v5, v7}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 332
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-direct {v14, v5, v15, v7}, Lcom/android/tools/r8/internal/Qk0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    .line 333
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 334
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 335
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    .line 336
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 337
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    if-nez v10, :cond_17

    .line 338
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_16

    goto :goto_9

    :cond_16
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_17
    :goto_9
    move-object v6, v5

    :goto_a
    const/4 v5, 0x0

    goto :goto_b

    .line 339
    :cond_18
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 340
    invoke-interface {v7, v14}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_a

    .line 341
    :goto_b
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 342
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 343
    iget-object v5, v14, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v10, v5}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 344
    invoke-static {v7, v10}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/xw0;)V

    const/4 v5, 0x1

    goto :goto_c

    :cond_19
    move/from16 v19, v7

    move-object/from16 v18, v15

    .line 345
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    const/4 v5, 0x0

    .line 346
    :goto_c
    iget-object v10, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 347
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_1c

    .line 348
    sget-boolean v10, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v10, :cond_1b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_d

    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 349
    :cond_1b
    :goto_d
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 350
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 351
    iget-object v14, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v10, v14}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 353
    invoke-static {v7, v10}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/xw0;)V

    const/4 v10, 0x1

    add-int/2addr v5, v10

    goto :goto_c

    .line 354
    :cond_1c
    sget-boolean v5, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v5, :cond_1e

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_e

    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 355
    :cond_1e
    :goto_e
    new-instance v6, Lcom/android/tools/r8/internal/lu0;

    const/4 v7, 0x0

    .line 356
    invoke-direct {v6, v1, v2, v7}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 v7, 0x3

    .line 357
    invoke-virtual {v6, v13, v7}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    .line 359
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->f()Ljava/util/List;

    move-result-object v7

    .line 360
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_26

    .line 361
    invoke-static {v1, v3, v7}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/List;)Lcom/android/tools/r8/internal/Y5;

    move-result-object v8

    if-nez v5, :cond_20

    .line 362
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v10

    if-eqz v10, :cond_1f

    goto :goto_f

    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 363
    :cond_20
    :goto_f
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    if-eqz v10, :cond_21

    .line 364
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v10

    .line 365
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v13

    .line 366
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 367
    new-instance v11, Lcom/android/tools/r8/internal/lu0;

    const/4 v14, 0x0

    .line 368
    invoke-direct {v11, v1, v2, v14}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 v15, 0x1

    .line 369
    iput-boolean v15, v11, Lcom/android/tools/r8/internal/lu0;->b:Z

    .line 370
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    sget v16, Lcom/android/tools/r8/internal/hC;->c:I

    .line 371
    new-instance v15, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v15, v13}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 p6, v7

    const/4 v13, 0x2

    .line 372
    new-array v7, v13, [Ljava/lang/Iterable;

    aput-object v15, v7, v14

    const/4 v13, 0x1

    aput-object v10, v7, v13

    invoke-static {v7}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v7

    .line 373
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v10

    invoke-virtual {v11, v7, v10}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_10

    :cond_21
    move-object/from16 p6, v7

    .line 374
    :goto_10
    invoke-interface {v8, v3}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    .line 375
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->S()Lcom/android/tools/r8/internal/W5;

    move-result-object v14

    .line 376
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v8

    .line 377
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 378
    invoke-interface {v8}, Lcom/android/tools/r8/internal/EE;->remove()V

    if-nez v5, :cond_23

    .line 379
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_22

    goto :goto_11

    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 380
    :cond_23
    :goto_11
    iget-object v8, v3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->S()Lcom/android/tools/r8/internal/W5;

    .line 382
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 383
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 384
    invoke-interface {v7}, Lcom/android/tools/r8/internal/EE;->remove()V

    if-nez v5, :cond_25

    .line 385
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v7

    if-eqz v7, :cond_24

    goto :goto_12

    :cond_24
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_25
    :goto_12
    move-object v15, v9

    goto :goto_13

    :cond_26
    move-object/from16 p6, v7

    move-object/from16 v15, v18

    const/4 v14, 0x0

    .line 386
    :goto_13
    invoke-virtual {v12, v6}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    if-eqz v14, :cond_27

    .line 387
    invoke-virtual {v14, v15}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    :cond_27
    if-nez v4, :cond_28

    .line 388
    iget-object v4, v2, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 389
    new-instance v7, Lcom/android/tools/r8/internal/Z5;

    invoke-direct {v7, v2, v4}, Lcom/android/tools/r8/internal/Z5;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    move-object v4, v7

    goto :goto_14

    .line 390
    :cond_28
    invoke-interface/range {p4 .. p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 391
    invoke-interface/range {p4 .. p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :goto_14
    if-nez v5, :cond_2a

    .line 392
    invoke-static {v4}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_29

    goto :goto_15

    :cond_29
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 393
    :cond_2a
    :goto_15
    iget-object v5, v0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    .line 394
    iget-object v5, v5, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    .line 395
    iget-object v6, v6, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    .line 396
    iget-wide v7, v5, Lcom/android/tools/r8/internal/mB;->b:J

    .line 397
    iget-wide v10, v6, Lcom/android/tools/r8/internal/mB;->b:J

    or-long/2addr v7, v10

    iput-wide v7, v5, Lcom/android/tools/r8/internal/mB;->b:J

    .line 398
    iget-wide v7, v5, Lcom/android/tools/r8/internal/mB;->c:J

    iget-wide v10, v6, Lcom/android/tools/r8/internal/mB;->c:J

    or-long v6, v7, v10

    iput-wide v6, v5, Lcom/android/tools/r8/internal/mB;->c:J

    .line 399
    iget-object v6, v3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 400
    iget-object v8, v2, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v8

    .line 401
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 402
    invoke-interface {v4, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 403
    iput-object v5, v7, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    goto :goto_16

    .line 404
    :cond_2b
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v5

    if-eqz v5, :cond_32

    const/4 v13, 0x0

    .line 405
    :goto_17
    iget-object v5, v3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v13, v5, :cond_2c

    .line 406
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 v5, 0x1

    add-int/2addr v13, v5

    goto :goto_17

    .line 407
    :cond_2c
    sget-boolean v5, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v5, :cond_2e

    invoke-static {v4}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    if-ne v5, v6, :cond_2d

    goto :goto_18

    :cond_2d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 408
    :cond_2e
    :goto_18
    iget-object v5, v3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 409
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 410
    sget-boolean v8, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v8, :cond_30

    if-ne v6, v7, :cond_2f

    goto :goto_1a

    :cond_2f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 411
    :cond_30
    :goto_1a
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-virtual {v6, v2, v4, v9, v7}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/nJ;)V

    goto :goto_19

    .line 413
    :cond_31
    invoke-static {v1, v2, v9, v6, v4}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Ljava/util/ListIterator;)V

    goto :goto_19

    .line 414
    :cond_32
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 415
    sget-boolean v5, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v5, :cond_34

    if-eqz v19, :cond_33

    goto :goto_1b

    :cond_33
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 416
    :cond_34
    :goto_1b
    new-instance v5, Lcom/android/tools/r8/internal/dt;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    .line 417
    new-instance v6, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v6}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 418
    invoke-virtual {v12, v9, v5, v6}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/ir/optimize/a;)Ljava/util/Set;

    move-result-object v5

    move-object/from16 v7, p5

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 419
    new-instance v5, Lcom/android/tools/r8/internal/lu0;

    const/4 v7, 0x0

    .line 420
    invoke-direct {v5, v1, v2, v7}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 v1, 0x1

    .line 421
    iput-boolean v1, v5, Lcom/android/tools/r8/internal/lu0;->b:Z

    .line 422
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_1c

    :cond_35
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 423
    :goto_1c
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 424
    sget-boolean v5, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v5, :cond_37

    invoke-static {v4}, Lcom/android/tools/r8/internal/xK;->b(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v9, :cond_36

    goto :goto_1d

    :cond_36
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_37
    :goto_1d
    if-nez v5, :cond_3e

    if-eq v15, v9, :cond_3e

    .line 425
    new-instance v5, Lcom/android/tools/r8/internal/i31;

    invoke-direct {v5, v15}, Lcom/android/tools/r8/internal/i31;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 426
    invoke-static {v4}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v6

    .line 427
    :cond_38
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 428
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 429
    invoke-interface {v5, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    move v7, v1

    .line 430
    :cond_39
    :goto_1e
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v6, :cond_3a

    goto :goto_1e

    .line 431
    :cond_3a
    sget-boolean v1, Lcom/android/tools/r8/internal/xK;->a:Z

    if-nez v1, :cond_3c

    invoke-static {v4}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_3b

    goto :goto_1f

    :cond_3b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3c
    :goto_1f
    if-eqz v7, :cond_3d

    goto :goto_20

    .line 432
    :cond_3d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 433
    :cond_3e
    :goto_20
    iget-object v1, v2, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    iget-object v2, v3, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 434
    iget-wide v3, v1, Lcom/android/tools/r8/internal/mB;->b:J

    .line 435
    iget-wide v5, v2, Lcom/android/tools/r8/internal/mB;->b:J

    or-long/2addr v3, v5

    iput-wide v3, v1, Lcom/android/tools/r8/internal/mB;->b:J

    .line 436
    iget-wide v3, v1, Lcom/android/tools/r8/internal/mB;->c:J

    iget-wide v5, v2, Lcom/android/tools/r8/internal/mB;->c:J

    or-long v2, v3, v5

    iput-wide v2, v1, Lcom/android/tools/r8/internal/mB;->c:J

    return-object v15
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;
    .locals 3

    .line 227
    invoke-interface {p0, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 228
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/android/tools/r8/internal/xK;->b(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 229
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    .line 230
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    :cond_2
    invoke-interface {v1, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;
    .locals 2

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 233
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 234
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/nJ;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 236
    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Z5;->a(Lcom/android/tools/r8/internal/W5;)V

    :cond_3
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;
    .locals 3

    .line 215
    sget-boolean v0, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/tools/r8/internal/xK;->b(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 216
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    .line 217
    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 218
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/tools/r8/internal/W5;->a(IZLcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/W5;

    move-result-object p3

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    .line 221
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-nez p2, :cond_2

    .line 222
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 223
    iget-object p2, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p3

    .line 224
    :cond_2
    invoke-interface {p2, p3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 225
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 226
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;
    .locals 2

    .line 498
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 500
    new-instance v0, Lcom/android/tools/r8/internal/vh;

    invoke-direct {v0, p2, p3}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    .line 501
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    .line 502
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 504
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    if-eqz p2, :cond_1

    move-object p1, p2

    .line 505
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 506
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 507
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
    .locals 0

    .line 44
    invoke-virtual {p1, p3, p4, p5}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 46
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 47
    :goto_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    if-eqz p4, :cond_1

    move-object p3, p4

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p4

    if-nez p4, :cond_3

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p2, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 51
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/zE;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_2

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iterator invalidated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 119
    new-instance p2, Lcom/android/tools/r8/internal/vh;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    .line 120
    invoke-virtual {p0, p2, p4}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/pu0;->a:Z

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v1, v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 104
    invoke-virtual {p2, p1, p4}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 105
    new-instance p2, Lcom/android/tools/r8/internal/jh;

    const/4 p4, 0x0

    .line 106
    invoke-direct {p2, p1, p3, p4}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    .line 107
    invoke-virtual {p0, p2, p5}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 138
    new-instance p2, Lcom/android/tools/r8/internal/Mo0;

    invoke-direct {p2, p3, p1}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 139
    invoke-virtual {p0, p2, p4}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 7

    .line 141
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_b

    .line 142
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 143
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 144
    sget-boolean v2, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v2, :cond_1

    invoke-interface {p5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 146
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    .line 147
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v3

    if-nez v3, :cond_4

    .line 148
    invoke-interface {p0, p2, p3, p1, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;

    goto :goto_2

    .line 150
    :cond_4
    invoke-interface {p0, p2, p3, p1, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-object p1, v1

    .line 151
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object p3

    new-instance v3, Lcom/android/tools/r8/internal/dt;

    const/4 v6, 0x2

    invoke-direct {v3, p2, v6}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    .line 152
    invoke-virtual {p1, p3, v3, p6}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/ir/optimize/a;)Ljava/util/Set;

    move-result-object p2

    .line 153
    invoke-interface {p5, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-ne p1, v1, :cond_5

    .line 154
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    .line 155
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-object p1, p0

    goto :goto_3

    .line 156
    :cond_5
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    :goto_3
    if-nez v2, :cond_7

    .line 157
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 158
    :cond_7
    :goto_4
    sget-boolean p2, Lcom/android/tools/r8/internal/Or0;->l:Z

    .line 159
    new-instance p2, Lcom/android/tools/r8/internal/Nr0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Nr0;-><init>()V

    .line 160
    iput-object p4, p2, Lcom/android/tools/r8/internal/Nr0;->d:Lcom/android/tools/r8/internal/xw0;

    .line 161
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 162
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p3

    if-nez p3, :cond_8

    .line 163
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    goto :goto_5

    .line 164
    :cond_8
    sget-object p3, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 165
    :goto_5
    iget-object p4, p0, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    if-eqz p4, :cond_9

    move-object p3, p4

    .line 166
    :cond_9
    iput-object p3, p2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 167
    new-instance p3, Lcom/android/tools/r8/internal/Or0;

    iget-object p4, p2, Lcom/android/tools/r8/internal/Nr0;->d:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 168
    iget-object p2, p2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p2, :cond_a

    .line 169
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 170
    :cond_a
    invoke-interface {p1, p3, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    .line 171
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 172
    iget-object v11, v0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v11, :cond_f

    .line 173
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    .line 174
    sget-boolean v13, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v13, :cond_1

    invoke-interface {v9, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v13, :cond_3

    if-eqz v10, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 176
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    .line 177
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-nez v1, :cond_4

    .line 178
    invoke-virtual {v0, v7, v8, v2}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    invoke-interface {v2, v7, v8}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-object v14, v1

    goto :goto_2

    .line 180
    :cond_4
    invoke-virtual {v0, v7, v8, v2}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Z)Lcom/android/tools/r8/internal/W5;

    move-object v14, v12

    :goto_2
    if-nez v13, :cond_6

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Y5;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    .line 183
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/dt;

    const/4 v3, 0x2

    invoke-direct {v2, v7, v3}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    .line 184
    invoke-virtual {v14, v1, v2, v10}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/ir/optimize/a;)Ljava/util/Set;

    move-result-object v1

    .line 185
    invoke-interface {v9, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-ne v14, v12, :cond_7

    move-object v15, v0

    goto :goto_4

    .line 186
    :cond_7
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 187
    iget-object v2, v0, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    .line 188
    iput-object v2, v1, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    move-object v15, v1

    .line 189
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 190
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v6

    const-wide/16 v4, 0x0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 191
    invoke-interface {v15}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    if-nez v13, :cond_9

    .line 192
    invoke-interface {v15}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 193
    :cond_9
    :goto_5
    sget-boolean v2, Lcom/android/tools/r8/internal/Or0;->l:Z

    .line 194
    new-instance v2, Lcom/android/tools/r8/internal/Nr0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Nr0;-><init>()V

    .line 195
    iput-object v1, v2, Lcom/android/tools/r8/internal/Nr0;->d:Lcom/android/tools/r8/internal/xw0;

    .line 196
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v1

    if-nez v1, :cond_a

    .line 198
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    goto :goto_6

    .line 199
    :cond_a
    sget-object v1, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 200
    :goto_6
    iget-object v3, v0, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    if-eqz v3, :cond_b

    move-object v1, v3

    .line 201
    :cond_b
    iput-object v1, v2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 202
    new-instance v1, Lcom/android/tools/r8/internal/Or0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/Nr0;->d:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 203
    iget-object v2, v2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v2, :cond_c

    .line 204
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_c
    const/4 v2, 0x0

    .line 205
    invoke-interface {v15, v1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 206
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v12, v14, :cond_d

    .line 207
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v8

    .line 208
    new-instance v11, Lcom/android/tools/r8/internal/h31;

    move-object v1, v11

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v12

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/h31;-><init>(Ljava/util/Set;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-virtual {v8, v11}, Lcom/android/tools/r8/internal/N8;->a(Ljava/util/function/BiConsumer;)V

    return-void

    .line 209
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v14, v7, v8, v12, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/nJ;)V

    :cond_e
    return-void

    .line 210
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_4

    .line 123
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 127
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    .line 128
    sget-boolean v0, Lcom/android/tools/r8/internal/mK;->o:Z

    .line 129
    new-instance v0, Lcom/android/tools/r8/internal/lK;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lK;-><init>()V

    .line 130
    iput-object p1, v0, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 131
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lK;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    const/4 p2, 0x0

    .line 132
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    .line 133
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;I)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_2

    .line 110
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    const/4 p2, 0x0

    .line 114
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_1

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 42
    iput-object p1, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    return-void

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v1, :cond_1

    .line 31
    iget-object v2, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-ne v1, v2, :cond_0

    .line 34
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    .line 35
    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    .line 65
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J1()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    return v2

    .line 68
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 72
    :cond_5
    sget-object v1, Lcom/android/tools/r8/internal/yE;->e:Lcom/android/tools/r8/internal/wE;

    .line 73
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v3

    .line 74
    invoke-virtual {v0, p1, p2, v3, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v2

    .line 75
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J1()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 76
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->X()Lcom/android/tools/r8/internal/WD;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/WD;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    goto :goto_2

    .line 77
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 78
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 79
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    return v1

    .line 80
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V

    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    .line 82
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 83
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->h2()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 84
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    return v2

    .line 85
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 86
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v3

    .line 87
    sget-object v4, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 88
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    return v4

    .line 89
    :cond_5
    sget-object v3, Lcom/android/tools/r8/internal/yE;->b:Lcom/android/tools/r8/internal/tE;

    .line 90
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v5

    .line 91
    invoke-virtual {v0, p1, v1, v5, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 92
    :cond_6
    invoke-virtual {p3, p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 93
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    return v4

    .line 94
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->i()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 95
    :cond_8
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 96
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p3

    const/4 v0, 0x0

    .line 97
    invoke-interface {p2, p3, v0}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 98
    new-instance p3, Lcom/android/tools/r8/internal/sD;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/sD;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    .line 99
    invoke-interface {p0, p3, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 100
    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return v4
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/zE;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-ne v0, v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final f(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final h()Lcom/android/tools/r8/internal/zE;
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iterator invalidated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final n()Lcom/android/tools/r8/internal/zE;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iterator invalidated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final previous()Lcom/android/tools/r8/internal/zE;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/Y5;->g:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iterator invalidated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 6
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/tools/r8/internal/CE;->f:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->U0()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Y5;->b:Lcom/android/tools/r8/internal/zE;

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Y5;->c:Lcom/android/tools/r8/internal/zE;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
