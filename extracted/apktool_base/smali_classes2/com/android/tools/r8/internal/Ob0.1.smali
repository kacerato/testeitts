.class public abstract Lcom/android/tools/r8/internal/Ob0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)I
    .locals 8

    .line 534
    sget-object v0, Lcom/android/tools/r8/internal/yx;->b:Lcom/android/tools/r8/internal/vx;

    .line 535
    iget v1, v0, Lcom/android/tools/r8/internal/xx;->a:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 536
    :goto_0
    sget-object v4, Lcom/android/tools/r8/internal/yx;->c:Lcom/android/tools/r8/internal/wx;

    invoke-virtual {v4, p0}, Lcom/android/tools/r8/internal/wx;->a(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/ia0;

    sget-object v6, Lcom/android/tools/r8/internal/yx;->d:Lcom/android/tools/r8/internal/wx;

    invoke-virtual {v6, p0}, Lcom/android/tools/r8/internal/wx;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/p90;

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    if-eqz p0, :cond_2

    if-eqz v1, :cond_1

    .line 537
    iget v0, v0, Lcom/android/tools/r8/internal/xx;->a:I

    shl-int v3, v2, v0

    .line 538
    :cond_1
    iget p0, p0, Lcom/android/tools/r8/internal/p90;->b:I

    .line 539
    iget v0, v6, Lcom/android/tools/r8/internal/xx;->a:I

    shl-int/2addr p0, v0

    or-int/2addr p0, v3

    .line 540
    iget v0, v5, Lcom/android/tools/r8/internal/ia0;->b:I

    .line 541
    iget v1, v4, Lcom/android/tools/r8/internal/xx;->a:I

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 542
    sget-object v0, Lcom/android/tools/r8/internal/yx;->J:Lcom/android/tools/r8/internal/vx;

    .line 543
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/tools/r8/internal/yx;->K:Lcom/android/tools/r8/internal/vx;

    .line 544
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/tools/r8/internal/yx;->L:Lcom/android/tools/r8/internal/vx;

    .line 545
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return p0

    :cond_2
    const/16 p0, 0xb

    .line 546
    invoke-static {p0}, Lcom/android/tools/r8/internal/yx;->a(I)V

    throw v7

    :cond_3
    const/16 p0, 0xa

    invoke-static {p0}, Lcom/android/tools/r8/internal/yx;->a(I)V

    throw v7
.end method

.method public static final a(Lcom/android/tools/r8/internal/T90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/BQ;
    .locals 7

    .line 547
    iget-object v0, p0, Lcom/android/tools/r8/internal/T90;->h:Lcom/android/tools/r8/internal/S90;

    if-eqz v0, :cond_9

    .line 548
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 549
    sget-object v0, Lcom/android/tools/r8/internal/FQ;->b:Lcom/android/tools/r8/internal/FQ;

    goto :goto_0

    .line 550
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p0

    .line 551
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/FQ;->d:Lcom/android/tools/r8/internal/FQ;

    goto :goto_0

    .line 552
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/FQ;->c:Lcom/android/tools/r8/internal/FQ;

    .line 553
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/BQ;

    .line 554
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/T90;->g:Z

    .line 555
    iget v3, p0, Lcom/android/tools/r8/internal/T90;->f:I

    .line 556
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 557
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 558
    iget v4, p0, Lcom/android/tools/r8/internal/T90;->e:I

    .line 559
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/tools/r8/internal/BQ;-><init>(ILjava/lang/String;ILcom/android/tools/r8/internal/FQ;)V

    .line 560
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 561
    const-string v2, "typeTable"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    .line 563
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    .line 564
    iget-object v2, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 565
    const-string v3, "getUpperBoundIdList(...)"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 568
    check-cast v4, Ljava/lang/Integer;

    .line 569
    invoke-static {v4}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 570
    iget-object v5, v0, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/M90;

    .line 571
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 572
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BQ;->c()Ljava/util/List;

    move-result-object v0

    .line 573
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 574
    check-cast v3, Lcom/android/tools/r8/internal/M90;

    .line 575
    invoke-static {v3, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v3

    .line 576
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 577
    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    .line 578
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yW;

    .line 579
    check-cast v2, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    sget-object v2, Lcom/android/tools/r8/internal/tM;->b:Lcom/android/tools/r8/internal/nQ;

    .line 581
    const-string v3, "type"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iget-object v3, v1, Lcom/android/tools/r8/internal/BQ;->f:Ljava/util/ArrayList;

    .line 583
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/tv;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/nQ;)Lcom/android/tools/r8/internal/mQ;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/CQ;

    .line 584
    check-cast v2, Lcom/android/tools/r8/internal/tM;

    .line 585
    sget-object v3, Lcom/android/tools/r8/internal/oM;->h:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O80;

    .line 586
    iget-object v5, v2, Lcom/android/tools/r8/internal/tM;->a:Ljava/util/ArrayList;

    .line 587
    invoke-static {v4}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    .line 588
    iget-object v6, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 589
    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/O80;Lcom/android/tools/r8/internal/VL;)Lcom/android/tools/r8/internal/GP;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-object v1

    .line 590
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/Z90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/EQ;
    .locals 6

    .line 338
    new-instance v0, Lcom/android/tools/r8/internal/EQ;

    .line 339
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->e:I

    .line 340
    iget v2, p0, Lcom/android/tools/r8/internal/Z90;->f:I

    .line 341
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 342
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/EQ;-><init>(ILjava/lang/String;)V

    .line 344
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 345
    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/Qa0;->a(Lcom/android/tools/r8/internal/Z90;Lcom/android/tools/r8/internal/Bu0;)Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    .line 346
    iput-object v1, v0, Lcom/android/tools/r8/internal/EQ;->c:Lcom/android/tools/r8/internal/yQ;

    .line 347
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 348
    const-string v2, "typeTable"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget v2, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    and-int/lit8 v3, v2, 0x10

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    .line 350
    iget-object p0, p0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    goto :goto_0

    :cond_0
    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 351
    iget p0, p0, Lcom/android/tools/r8/internal/Z90;->j:I

    .line 352
    iget-object v1, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/M90;

    goto :goto_0

    :cond_1
    move-object p0, v4

    :goto_0
    if-eqz p0, :cond_2

    .line 353
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v4

    .line 354
    :cond_2
    iput-object v4, v0, Lcom/android/tools/r8/internal/EQ;->d:Lcom/android/tools/r8/internal/yQ;

    .line 355
    iget-object p0, p1, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    .line 356
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/yW;

    .line 357
    check-cast p1, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static final a(ILcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/HQ;
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 442
    new-instance v2, Lcom/android/tools/r8/internal/HQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/HQ;-><init>()V

    .line 443
    iget-object v3, v1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 444
    iget-object v4, v1, Lcom/android/tools/r8/internal/Kb0;->c:Lcom/android/tools/r8/internal/Zw0;

    .line 445
    const-string v5, "nameResolver"

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "table"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iget-object v4, v4, Lcom/android/tools/r8/internal/Zw0;->a:Ljava/util/List;

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-ltz v0, :cond_0

    .line 447
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    .line 448
    :goto_0
    check-cast v0, Lcom/android/tools/r8/internal/ea0;

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v0, :cond_1

    move-object v3, v5

    goto/16 :goto_8

    .line 449
    :cond_1
    iget v8, v0, Lcom/android/tools/r8/internal/ea0;->c:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_2

    .line 450
    iget v8, v0, Lcom/android/tools/r8/internal/ea0;->d:I

    .line 451
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v5

    .line 452
    :goto_1
    iget v9, v0, Lcom/android/tools/r8/internal/ea0;->c:I

    and-int/2addr v9, v6

    if-ne v9, v6, :cond_3

    .line 453
    iget v9, v0, Lcom/android/tools/r8/internal/ea0;->e:I

    .line 454
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object v9, v5

    :goto_2
    const/16 v10, 0x10

    const/16 v11, 0x8

    if-eqz v9, :cond_4

    .line 455
    new-instance v8, Lcom/android/tools/r8/internal/Xw0;

    .line 456
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    .line 457
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shr-int/2addr v13, v11

    and-int/lit16 v13, v13, 0xff

    .line 458
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    .line 459
    invoke-direct {v8, v12, v13, v9}, Lcom/android/tools/r8/internal/Xw0;-><init>(III)V

    :goto_3
    move-object v13, v8

    goto :goto_4

    :cond_4
    if-eqz v8, :cond_5

    .line 460
    new-instance v9, Lcom/android/tools/r8/internal/Xw0;

    .line 461
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    and-int/lit8 v12, v12, 0x7

    .line 462
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shr-int/2addr v13, v4

    and-int/lit8 v13, v13, 0xf

    .line 463
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shr-int/lit8 v8, v8, 0x7

    and-int/lit8 v8, v8, 0x7f

    .line 464
    invoke-direct {v9, v12, v13, v8}, Lcom/android/tools/r8/internal/Xw0;-><init>(III)V

    move-object v13, v9

    goto :goto_4

    .line 465
    :cond_5
    sget-object v8, Lcom/android/tools/r8/internal/Xw0;->d:Lcom/android/tools/r8/internal/Xw0;

    goto :goto_3

    .line 466
    :goto_4
    iget-object v8, v0, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    .line 467
    invoke-static {v8}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_8

    if-eq v8, v7, :cond_7

    if-ne v8, v6, :cond_6

    move v15, v4

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw v0

    :cond_7
    move v15, v6

    goto :goto_5

    :cond_8
    move v15, v7

    .line 468
    :goto_5
    iget v8, v0, Lcom/android/tools/r8/internal/ea0;->c:I

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_9

    .line 469
    iget v8, v0, Lcom/android/tools/r8/internal/ea0;->g:I

    .line 470
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v16, v8

    goto :goto_6

    :cond_9
    move-object/from16 v16, v5

    .line 471
    :goto_6
    iget v8, v0, Lcom/android/tools/r8/internal/ea0;->c:I

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_a

    .line 472
    iget v8, v0, Lcom/android/tools/r8/internal/ea0;->h:I

    .line 473
    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_7

    :cond_a
    move-object/from16 v17, v5

    .line 474
    :goto_7
    new-instance v3, Lcom/android/tools/r8/internal/Yw0;

    .line 475
    iget-object v14, v0, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    .line 476
    const-string v0, "getVersionKind(...)"

    invoke-static {v14, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lcom/android/tools/r8/internal/Yw0;-><init>(Lcom/android/tools/r8/internal/Xw0;Lcom/android/tools/r8/internal/da0;ILjava/lang/Integer;Ljava/lang/String;)V

    :goto_8
    if-nez v3, :cond_c

    .line 477
    iget-boolean v0, v1, Lcom/android/tools/r8/internal/Kb0;->d:Z

    if-eqz v0, :cond_b

    goto :goto_9

    .line 478
    :cond_b
    new-instance v0, Lcom/android/tools/r8/internal/lD;

    const-string v1, "No VersionRequirement with the given id in the table"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_9
    if-eqz v3, :cond_d

    .line 479
    iget-object v0, v3, Lcom/android/tools/r8/internal/Yw0;->b:Lcom/android/tools/r8/internal/da0;

    goto :goto_a

    :cond_d
    move-object v0, v5

    :goto_a
    const/4 v1, -0x1

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_b

    .line 480
    :cond_e
    sget-object v8, Lcom/android/tools/r8/internal/Nb0;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v8, v0

    :goto_b
    if-eq v0, v1, :cond_12

    if-eq v0, v7, :cond_11

    if-eq v0, v6, :cond_10

    if-ne v0, v4, :cond_f

    move v0, v4

    goto :goto_c

    :cond_f
    new-instance v0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw v0

    :cond_10
    move v0, v6

    goto :goto_c

    :cond_11
    move v0, v7

    goto :goto_c

    :cond_12
    const/4 v0, 0x4

    :goto_c
    if-eqz v3, :cond_13

    .line 481
    iget v8, v3, Lcom/android/tools/r8/internal/Yw0;->c:I

    goto :goto_d

    :cond_13
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_14

    move v8, v1

    goto :goto_e

    .line 482
    :cond_14
    sget-object v9, Lcom/android/tools/r8/internal/Nb0;->b:[I

    invoke-static {v8}, Lcom/android/tools/r8/c;->b(I)I

    move-result v8

    aget v8, v9, v8

    :goto_e
    if-eq v8, v1, :cond_18

    if-eq v8, v7, :cond_17

    if-eq v8, v6, :cond_16

    if-ne v8, v4, :cond_15

    goto :goto_f

    :cond_15
    new-instance v0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw v0

    :cond_16
    move v4, v6

    goto :goto_f

    :cond_17
    move v4, v7

    .line 483
    :cond_18
    :goto_f
    iput v0, v2, Lcom/android/tools/r8/internal/HQ;->a:I

    .line 484
    iput v4, v2, Lcom/android/tools/r8/internal/HQ;->b:I

    if-eqz v3, :cond_19

    .line 485
    iget-object v0, v3, Lcom/android/tools/r8/internal/Yw0;->d:Ljava/lang/Integer;

    goto :goto_10

    :cond_19
    move-object v0, v5

    .line 486
    :goto_10
    iput-object v0, v2, Lcom/android/tools/r8/internal/HQ;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_1a

    .line 487
    iget-object v5, v3, Lcom/android/tools/r8/internal/Yw0;->e:Ljava/lang/String;

    .line 488
    :cond_1a
    iput-object v5, v2, Lcom/android/tools/r8/internal/HQ;->d:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 489
    iget-object v0, v3, Lcom/android/tools/r8/internal/Yw0;->a:Lcom/android/tools/r8/internal/Xw0;

    if-nez v0, :cond_1c

    .line 490
    :cond_1b
    sget-object v0, Lcom/android/tools/r8/internal/Xw0;->d:Lcom/android/tools/r8/internal/Xw0;

    .line 491
    :cond_1c
    iget v1, v0, Lcom/android/tools/r8/internal/Xw0;->a:I

    .line 492
    iget v3, v0, Lcom/android/tools/r8/internal/Xw0;->b:I

    .line 493
    iget v0, v0, Lcom/android/tools/r8/internal/Xw0;->c:I

    .line 494
    new-instance v4, Lcom/android/tools/r8/internal/GQ;

    invoke-direct {v4, v1, v3, v0}, Lcom/android/tools/r8/internal/GQ;-><init>(III)V

    .line 495
    iput-object v4, v2, Lcom/android/tools/r8/internal/HQ;->e:Lcom/android/tools/r8/internal/GQ;

    return-object v2
.end method

.method public static final a(Lcom/android/tools/r8/internal/k90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/jQ;
    .locals 6

    .line 496
    new-instance v0, Lcom/android/tools/r8/internal/jQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jQ;-><init>()V

    .line 497
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->d:I

    .line 498
    iput v1, v0, Lcom/android/tools/r8/internal/jQ;->a:I

    .line 499
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 500
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->e:I

    .line 501
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 502
    :goto_0
    iput-object v1, v0, Lcom/android/tools/r8/internal/jQ;->b:Ljava/lang/Integer;

    .line 503
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    .line 504
    new-instance v1, Lcom/android/tools/r8/internal/dQ;

    .line 505
    iget-object v4, p0, Lcom/android/tools/r8/internal/k90;->f:Lcom/android/tools/r8/internal/j90;

    if-eqz v4, :cond_4

    .line 506
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    if-ne v4, v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p0

    .line 507
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 508
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 509
    :goto_1
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dQ;-><init>(Ljava/lang/Boolean;)V

    .line 510
    iput-object v1, v0, Lcom/android/tools/r8/internal/jQ;->c:Lcom/android/tools/r8/internal/dQ;

    goto :goto_2

    .line 511
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 512
    :cond_5
    :goto_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 513
    const-string v2, "typeTable"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    iget v2, p0, Lcom/android/tools/r8/internal/k90;->c:I

    and-int/lit8 v4, v2, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 515
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    goto :goto_3

    :cond_6
    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 516
    iget v2, p0, Lcom/android/tools/r8/internal/k90;->h:I

    .line 517
    iget-object v1, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/M90;

    goto :goto_3

    :cond_7
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_8

    .line 518
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v3

    .line 519
    :cond_8
    iput-object v3, v0, Lcom/android/tools/r8/internal/jQ;->d:Lcom/android/tools/r8/internal/yQ;

    .line 520
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    .line 521
    const-string v2, "getAndArgumentList(...)"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    iget-object v2, v0, Lcom/android/tools/r8/internal/jQ;->e:Ljava/util/ArrayList;

    .line 523
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 524
    check-cast v3, Lcom/android/tools/r8/internal/k90;

    .line 525
    invoke-static {v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/k90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/jQ;

    move-result-object v3

    .line 526
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 527
    :cond_9
    iget-object p0, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    .line 528
    const-string v1, "getOrArgumentList(...)"

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object v1, v0, Lcom/android/tools/r8/internal/jQ;->f:Ljava/util/ArrayList;

    .line 530
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 531
    check-cast v2, Lcom/android/tools/r8/internal/k90;

    .line 532
    invoke-static {v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/k90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/jQ;

    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    return-object v0
.end method

.method public static final a(Lcom/android/tools/r8/internal/n90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/pQ;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 69
    new-instance v2, Lcom/android/tools/r8/internal/pQ;

    .line 70
    iget v3, v0, Lcom/android/tools/r8/internal/n90;->e:I

    .line 71
    iget v4, v0, Lcom/android/tools/r8/internal/n90;->g:I

    .line 72
    iget-object v5, v1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 73
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/pQ;-><init>(ILjava/lang/String;)V

    .line 75
    iget-object v3, v0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    .line 76
    const-string v4, "getTypeParameterList(...)"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Kb0;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/Kb0;

    move-result-object v1

    .line 77
    iget-object v3, v0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    .line 78
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pQ;->d()Ljava/util/List;

    move-result-object v4

    .line 79
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 80
    check-cast v5, Lcom/android/tools/r8/internal/T90;

    .line 81
    invoke-static {v5}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/T90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/BQ;

    move-result-object v5

    .line 82
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_0
    iget-object v3, v1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 84
    const-string v4, "typeTable"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget v5, v0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/lit8 v6, v5, 0x20

    const/16 v7, 0x40

    const/16 v8, 0x20

    if-ne v6, v8, :cond_1

    .line 86
    iget-object v3, v0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    goto :goto_1

    :cond_1
    and-int/2addr v5, v7

    if-ne v5, v7, :cond_2

    .line 87
    iget v5, v0, Lcom/android/tools/r8/internal/n90;->l:I

    .line 88
    iget-object v3, v3, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 89
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 90
    :goto_2
    iput-object v3, v2, Lcom/android/tools/r8/internal/pQ;->d:Lcom/android/tools/r8/internal/yQ;

    .line 91
    iget-object v3, v1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 92
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v5, v0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    .line 94
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_6

    .line 95
    iget-object v5, v0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 96
    const-string v6, "getContextReceiverTypeIdList(...)"

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 99
    check-cast v10, Ljava/lang/Integer;

    .line 100
    invoke-static {v10}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 101
    iget-object v11, v3, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/M90;

    .line 102
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object v5, v6

    .line 103
    :cond_6
    iget-object v3, v2, Lcom/android/tools/r8/internal/pQ;->e:Ljava/util/ArrayList;

    .line 104
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 105
    check-cast v6, Lcom/android/tools/r8/internal/M90;

    .line 106
    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v6

    .line 107
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 108
    :cond_7
    iget-object v3, v0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    .line 109
    const-string v5, "getValueParameterList(...)"

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pQ;->e()Ljava/util/List;

    move-result-object v6

    .line 110
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 111
    check-cast v10, Lcom/android/tools/r8/internal/Z90;

    .line 112
    invoke-static {v10}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v10, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/Z90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/EQ;

    move-result-object v10

    .line 113
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 114
    :cond_8
    iget-object v3, v1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 115
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget v6, v0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/lit8 v10, v6, 0x8

    const-string v11, "No returnType in ProtoBuf.Function"

    const-string v12, "getReturnType(...)"

    const/16 v13, 0x10

    const/16 v14, 0x8

    if-ne v10, v14, :cond_9

    .line 117
    iget-object v3, v0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    .line 118
    invoke-static {v3, v12}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    and-int/2addr v6, v13

    if-ne v6, v13, :cond_28

    .line 119
    iget v6, v0, Lcom/android/tools/r8/internal/n90;->i:I

    .line 120
    iget-object v3, v3, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    .line 121
    :goto_7
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v3

    .line 122
    iput-object v3, v2, Lcom/android/tools/r8/internal/pQ;->g:Lcom/android/tools/r8/internal/yQ;

    .line 123
    iget v3, v0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v6, 0x100

    and-int/2addr v3, v6

    const/4 v10, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-ne v3, v6, :cond_17

    .line 124
    iget-object v3, v0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    .line 125
    const-string v6, "getContract(...)"

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v6, Lcom/android/tools/r8/internal/gQ;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/gQ;-><init>()V

    .line 127
    iget-object v3, v3, Lcom/android/tools/r8/internal/Y80;->c:Ljava/util/List;

    .line 128
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lcom/android/tools/r8/internal/d90;

    .line 129
    iget v13, v9, Lcom/android/tools/r8/internal/d90;->c:I

    and-int/2addr v13, v15

    if-ne v13, v15, :cond_15

    .line 130
    iget-object v13, v9, Lcom/android/tools/r8/internal/d90;->d:Lcom/android/tools/r8/internal/b90;

    const-string v14, "Required value was null."

    if-eqz v13, :cond_14

    .line 131
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/16 v18, 0x3

    if-eqz v13, :cond_c

    if-eq v13, v15, :cond_b

    if-ne v13, v10, :cond_a

    move/from16 v13, v18

    goto :goto_9

    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw v0

    :cond_b
    move v13, v10

    goto :goto_9

    :cond_c
    move v13, v15

    .line 132
    :goto_9
    iget v7, v9, Lcom/android/tools/r8/internal/d90;->c:I

    const/4 v8, 0x4

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_11

    .line 133
    iget-object v7, v9, Lcom/android/tools/r8/internal/d90;->g:Lcom/android/tools/r8/internal/c90;

    if-eqz v7, :cond_10

    .line 134
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_f

    if-eq v7, v15, :cond_e

    if-ne v7, v10, :cond_d

    move/from16 v7, v18

    goto :goto_a

    :cond_d
    new-instance v0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw v0

    :cond_e
    move v7, v10

    goto :goto_a

    :cond_f
    move v7, v15

    goto :goto_a

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move/from16 v7, v16

    .line 135
    :goto_a
    iget-object v8, v6, Lcom/android/tools/r8/internal/gQ;->a:Ljava/util/ArrayList;

    .line 136
    new-instance v14, Lcom/android/tools/r8/internal/iQ;

    invoke-direct {v14, v13, v7}, Lcom/android/tools/r8/internal/iQ;-><init>(II)V

    .line 137
    iget-object v7, v9, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    .line 138
    const-string v13, "getEffectConstructorArgumentList(...)"

    invoke-static {v7, v13}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v13, v14, Lcom/android/tools/r8/internal/iQ;->c:Ljava/util/ArrayList;

    .line 140
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 141
    move-object/from16 v15, v18

    check-cast v15, Lcom/android/tools/r8/internal/k90;

    .line 142
    invoke-static {v15}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v15, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/k90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/jQ;

    move-result-object v15

    .line 143
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_b

    .line 144
    :cond_12
    iget v7, v9, Lcom/android/tools/r8/internal/d90;->c:I

    and-int/2addr v7, v10

    if-ne v7, v10, :cond_13

    .line 145
    iget-object v7, v9, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    .line 146
    const-string v9, "getConclusionOfConditionalEffect(...)"

    invoke-static {v7, v9}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/k90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/jQ;

    move-result-object v7

    .line 147
    iput-object v7, v14, Lcom/android/tools/r8/internal/iQ;->d:Lcom/android/tools/r8/internal/jQ;

    .line 148
    :cond_13
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x40

    const/16 v8, 0x20

    const/16 v13, 0x10

    const/16 v14, 0x8

    const/4 v15, 0x1

    goto/16 :goto_8

    .line 149
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v13, 0x10

    goto/16 :goto_8

    .line 150
    :cond_16
    iput-object v6, v2, Lcom/android/tools/r8/internal/pQ;->i:Lcom/android/tools/r8/internal/gQ;

    .line 151
    :cond_17
    iget-object v3, v0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 152
    const-string v6, "getVersionRequirementList(...)"

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v6, v2, Lcom/android/tools/r8/internal/pQ;->h:Ljava/util/ArrayList;

    .line 154
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 155
    check-cast v7, Ljava/lang/Integer;

    .line 156
    invoke-static {v7}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/tools/r8/internal/Ob0;->a(ILcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/HQ;

    move-result-object v7

    .line 157
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 158
    :cond_18
    iget-object v3, v1, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    .line 159
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/yW;

    .line 160
    check-cast v6, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-static {v2}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/EL;

    move-result-object v6

    .line 162
    sget-object v7, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    .line 163
    iget-object v7, v1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 164
    iget-object v8, v1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 165
    const-string v9, "nameResolver"

    invoke-static {v7, v9}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v9, Lcom/android/tools/r8/internal/oM;->b:Lcom/android/tools/r8/internal/Wy;

    const-string v13, "methodSignature"

    invoke-static {v9, v13}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/dM;

    if-eqz v9, :cond_19

    .line 167
    iget v13, v9, Lcom/android/tools/r8/internal/dM;->c:I

    const/4 v14, 0x1

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_1a

    .line 168
    iget v13, v9, Lcom/android/tools/r8/internal/dM;->d:I

    goto :goto_e

    :cond_19
    const/4 v14, 0x1

    .line 169
    :cond_1a
    iget v13, v0, Lcom/android/tools/r8/internal/n90;->g:I

    :goto_e
    if-eqz v9, :cond_1b

    .line 170
    iget v15, v9, Lcom/android/tools/r8/internal/dM;->c:I

    and-int/2addr v15, v10

    if-ne v15, v10, :cond_1b

    .line 171
    iget v8, v9, Lcom/android/tools/r8/internal/dM;->e:I

    .line 172
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v25, v3

    const/16 v10, 0x10

    const/16 v14, 0x8

    goto/16 :goto_15

    .line 173
    :cond_1b
    iget v9, v0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/lit8 v15, v9, 0x20

    const/16 v10, 0x20

    if-ne v15, v10, :cond_1c

    .line 174
    iget-object v9, v0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    const/16 v15, 0x40

    goto :goto_f

    :cond_1c
    and-int/lit8 v9, v9, 0x40

    const/16 v15, 0x40

    if-ne v9, v15, :cond_1d

    .line 175
    iget v9, v0, Lcom/android/tools/r8/internal/n90;->l:I

    .line 176
    iget-object v10, v8, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/M90;

    goto :goto_f

    :cond_1d
    const/4 v9, 0x0

    :goto_f
    if-eqz v9, :cond_1e

    .line 177
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v10, "singletonList(...)"

    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    .line 178
    :cond_1e
    sget-object v9, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    .line 179
    :goto_10
    iget-object v10, v0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    .line 180
    invoke-static {v10, v5}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 183
    check-cast v15, Lcom/android/tools/r8/internal/Z90;

    .line 184
    invoke-static {v15}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v15, v8}, Lcom/android/tools/r8/internal/Qa0;->a(Lcom/android/tools/r8/internal/Z90;Lcom/android/tools/r8/internal/Bu0;)Lcom/android/tools/r8/internal/M90;

    move-result-object v15

    .line 185
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 186
    :cond_1f
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int v15, v19, v15

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v14

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v15, v16

    :goto_12
    if-ge v15, v14, :cond_21

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v25, v3

    .line 191
    move-object/from16 v3, v19

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    .line 192
    invoke-static {v3, v7}, Lcom/android/tools/r8/internal/pM;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/VL;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    const/16 v10, 0x10

    const/16 v14, 0x8

    goto :goto_14

    .line 193
    :cond_20
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v25

    goto :goto_12

    :cond_21
    move-object/from16 v25, v3

    .line 194
    iget v3, v0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/lit8 v10, v3, 0x8

    const/16 v14, 0x8

    if-ne v10, v14, :cond_22

    .line 195
    iget-object v3, v0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    .line 196
    invoke-static {v3, v12}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x10

    goto :goto_13

    :cond_22
    and-int/lit8 v3, v3, 0x10

    const/16 v10, 0x10

    if-ne v3, v10, :cond_26

    .line 197
    iget v3, v0, Lcom/android/tools/r8/internal/n90;->i:I

    .line 198
    iget-object v8, v8, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    .line 199
    :goto_13
    invoke-static {v3, v7}, Lcom/android/tools/r8/internal/pM;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/VL;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    :goto_14
    const/4 v3, 0x0

    goto :goto_16

    .line 200
    :cond_23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x38

    const-string v20, ""

    const-string v21, "("

    const-string v22, ")"

    move-object/from16 v19, v9

    invoke-static/range {v19 .. v24}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/ny;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 201
    :goto_15
    new-instance v3, Lcom/android/tools/r8/internal/GL;

    invoke-virtual {v7, v13}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v8}, Lcom/android/tools/r8/internal/GL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    if-eqz v3, :cond_24

    .line 202
    new-instance v7, Lcom/android/tools/r8/internal/OL;

    .line 203
    iget-object v8, v3, Lcom/android/tools/r8/internal/GL;->a:Ljava/lang/String;

    .line 204
    iget-object v3, v3, Lcom/android/tools/r8/internal/GL;->b:Ljava/lang/String;

    .line 205
    invoke-direct {v7, v8, v3}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_24
    const/4 v7, 0x0

    .line 206
    :goto_17
    iput-object v7, v6, Lcom/android/tools/r8/internal/EL;->a:Lcom/android/tools/r8/internal/OL;

    .line 207
    sget-object v3, Lcom/android/tools/r8/internal/oM;->c:Lcom/android/tools/r8/internal/Wy;

    const-string v7, "lambdaClassOriginName"

    invoke-static {v3, v7}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_25

    .line 208
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 209
    iget-object v7, v1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    iput-object v3, v6, Lcom/android/tools/r8/internal/EL;->b:Ljava/lang/String;

    :cond_25
    move-object/from16 v3, v25

    const/4 v10, 0x2

    goto/16 :goto_d

    .line 211
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 212
    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-object v2

    .line 213
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 214
    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Lcom/android/tools/r8/internal/v90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/vQ;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/android/tools/r8/internal/vQ;

    .line 216
    iget v1, p0, Lcom/android/tools/r8/internal/v90;->e:I

    .line 217
    iget v2, p0, Lcom/android/tools/r8/internal/v90;->g:I

    .line 218
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    iget v3, p0, Lcom/android/tools/r8/internal/v90;->d:I

    const/16 v4, 0x100

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 220
    iget v3, p0, Lcom/android/tools/r8/internal/v90;->q:I

    goto :goto_0

    .line 221
    :cond_0
    iget v3, p0, Lcom/android/tools/r8/internal/v90;->e:I

    .line 222
    invoke-static {v3}, Lcom/android/tools/r8/internal/Ob0;->a(I)I

    move-result v3

    .line 223
    :goto_0
    iget v4, p0, Lcom/android/tools/r8/internal/v90;->d:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 224
    iget v4, p0, Lcom/android/tools/r8/internal/v90;->r:I

    goto :goto_1

    .line 225
    :cond_1
    iget v4, p0, Lcom/android/tools/r8/internal/v90;->e:I

    .line 226
    invoke-static {v4}, Lcom/android/tools/r8/internal/Ob0;->a(I)I

    move-result v4

    .line 227
    :goto_1
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/tools/r8/internal/vQ;-><init>(IIILjava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/tools/r8/internal/v90;->j:Ljava/util/List;

    .line 229
    const-string v2, "getTypeParameterList(...)"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Kb0;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/Kb0;

    move-result-object p1

    .line 230
    iget-object v1, p0, Lcom/android/tools/r8/internal/v90;->j:Ljava/util/List;

    .line 231
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v2, v0, Lcom/android/tools/r8/internal/vQ;->f:Ljava/util/ArrayList;

    .line 233
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 234
    check-cast v3, Lcom/android/tools/r8/internal/T90;

    .line 235
    invoke-static {v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/T90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/BQ;

    move-result-object v3

    .line 236
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 237
    :cond_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 238
    const-string v2, "typeTable"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget v3, p0, Lcom/android/tools/r8/internal/v90;->d:I

    and-int/lit8 v4, v3, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    .line 240
    iget-object v1, p0, Lcom/android/tools/r8/internal/v90;->k:Lcom/android/tools/r8/internal/M90;

    goto :goto_3

    :cond_3
    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 241
    iget v3, p0, Lcom/android/tools/r8/internal/v90;->l:I

    .line 242
    iget-object v1, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/M90;

    goto :goto_3

    :cond_4
    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 243
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v6

    .line 244
    :goto_4
    iput-object v1, v0, Lcom/android/tools/r8/internal/vQ;->g:Lcom/android/tools/r8/internal/yQ;

    .line 245
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 246
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/android/tools/r8/internal/v90;->m:Ljava/util/List;

    .line 248
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, v6

    :goto_5
    if-nez v3, :cond_8

    .line 249
    iget-object v3, p0, Lcom/android/tools/r8/internal/v90;->n:Ljava/util/List;

    .line 250
    const-string v4, "getContextReceiverTypeIdList(...)"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 253
    check-cast v5, Ljava/lang/Integer;

    .line 254
    invoke-static {v5}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 255
    iget-object v7, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/M90;

    .line 256
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move-object v3, v4

    .line 257
    :cond_8
    iget-object v1, v0, Lcom/android/tools/r8/internal/vQ;->h:Ljava/util/ArrayList;

    .line 258
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 259
    check-cast v4, Lcom/android/tools/r8/internal/M90;

    .line 260
    invoke-static {v4, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v4

    .line 261
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 262
    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/v90;->d:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    .line 263
    iget-object v1, p0, Lcom/android/tools/r8/internal/v90;->p:Lcom/android/tools/r8/internal/Z90;

    .line 264
    const-string v3, "getSetterValueParameter(...)"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/Z90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/EQ;

    move-result-object v1

    .line 265
    iput-object v1, v0, Lcom/android/tools/r8/internal/vQ;->i:Lcom/android/tools/r8/internal/EQ;

    .line 266
    :cond_a
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 267
    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/Qa0;->a(Lcom/android/tools/r8/internal/v90;Lcom/android/tools/r8/internal/Bu0;)Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    .line 268
    iput-object v1, v0, Lcom/android/tools/r8/internal/vQ;->j:Lcom/android/tools/r8/internal/yQ;

    .line 269
    iget-object v1, p0, Lcom/android/tools/r8/internal/v90;->s:Ljava/util/List;

    .line 270
    const-string v3, "getVersionRequirementList(...)"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v3, v0, Lcom/android/tools/r8/internal/vQ;->k:Ljava/util/ArrayList;

    .line 272
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 273
    check-cast v4, Ljava/lang/Integer;

    .line 274
    invoke-static {v4}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, p1}, Lcom/android/tools/r8/internal/Ob0;->a(ILcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/HQ;

    move-result-object v4

    .line 275
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 276
    :cond_b
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    .line 277
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/yW;

    .line 278
    check-cast v3, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    invoke-static {v0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object v3

    .line 280
    sget-object v4, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    .line 281
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 282
    iget-object v5, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 283
    const-string v7, "nameResolver"

    invoke-static {v4, v7}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    sget-object v7, Lcom/android/tools/r8/internal/oM;->d:Lcom/android/tools/r8/internal/Wy;

    const-string v8, "propertySignature"

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/gM;

    const/4 v9, 0x2

    if-nez v8, :cond_c

    goto :goto_c

    .line 285
    :cond_c
    iget v10, v8, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v11, 0x1

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_d

    .line 286
    iget-object v8, v8, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    goto :goto_a

    :cond_d
    move-object v8, v6

    :goto_a
    if-nez v8, :cond_e

    goto :goto_c

    .line 287
    :cond_e
    iget v10, v8, Lcom/android/tools/r8/internal/aM;->c:I

    and-int/lit8 v12, v10, 0x1

    if-ne v12, v11, :cond_f

    .line 288
    iget v11, v8, Lcom/android/tools/r8/internal/aM;->d:I

    goto :goto_b

    .line 289
    :cond_f
    iget v11, p0, Lcom/android/tools/r8/internal/v90;->g:I

    :goto_b
    and-int/lit8 v10, v10, 0x2

    if-ne v10, v9, :cond_10

    .line 290
    iget v5, v8, Lcom/android/tools/r8/internal/aM;->e:I

    .line 291
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    .line 292
    :cond_10
    invoke-static {p0, v5}, Lcom/android/tools/r8/internal/Qa0;->a(Lcom/android/tools/r8/internal/v90;Lcom/android/tools/r8/internal/Bu0;)Lcom/android/tools/r8/internal/M90;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/pM;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/VL;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    :goto_c
    move-object v8, v6

    goto :goto_e

    .line 293
    :cond_11
    :goto_d
    new-instance v8, Lcom/android/tools/r8/internal/FL;

    invoke-virtual {v4, v11}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4, v5}, Lcom/android/tools/r8/internal/FL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_e
    invoke-static {p0, v7}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/gM;

    if-eqz v4, :cond_12

    .line 295
    iget v5, v4, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v7, 0x4

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_12

    .line 296
    iget-object v5, v4, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    goto :goto_f

    :cond_12
    move-object v5, v6

    :goto_f
    if-eqz v4, :cond_13

    .line 297
    iget v7, v4, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v10, 0x8

    and-int/2addr v7, v10

    if-ne v7, v10, :cond_13

    .line 298
    iget-object v7, v4, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    goto :goto_10

    :cond_13
    move-object v7, v6

    .line 299
    :goto_10
    sget-object v10, Lcom/android/tools/r8/internal/oM;->e:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {p0, v10}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 300
    iput v10, v3, Lcom/android/tools/r8/internal/XL;->a:I

    if-eqz v8, :cond_14

    .line 301
    new-instance v10, Lcom/android/tools/r8/internal/CL;

    .line 302
    iget-object v11, v8, Lcom/android/tools/r8/internal/FL;->a:Ljava/lang/String;

    .line 303
    iget-object v8, v8, Lcom/android/tools/r8/internal/FL;->b:Ljava/lang/String;

    .line 304
    invoke-direct {v10, v11, v8}, Lcom/android/tools/r8/internal/CL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_14
    move-object v10, v6

    .line 305
    :goto_11
    iput-object v10, v3, Lcom/android/tools/r8/internal/XL;->b:Lcom/android/tools/r8/internal/CL;

    if-eqz v5, :cond_15

    .line 306
    new-instance v8, Lcom/android/tools/r8/internal/OL;

    .line 307
    iget v10, v5, Lcom/android/tools/r8/internal/dM;->d:I

    .line 308
    iget-object v11, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 309
    iget v5, v5, Lcom/android/tools/r8/internal/dM;->e:I

    .line 310
    iget-object v11, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v11, v5}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-direct {v8, v10, v5}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_15
    move-object v8, v6

    .line 312
    :goto_12
    iput-object v8, v3, Lcom/android/tools/r8/internal/XL;->c:Lcom/android/tools/r8/internal/OL;

    if-eqz v7, :cond_16

    .line 313
    new-instance v5, Lcom/android/tools/r8/internal/OL;

    .line 314
    iget v8, v7, Lcom/android/tools/r8/internal/dM;->d:I

    .line 315
    iget-object v10, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 316
    iget v7, v7, Lcom/android/tools/r8/internal/dM;->e:I

    .line 317
    iget-object v10, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v10, v7}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-direct {v5, v8, v7}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_16
    move-object v5, v6

    .line 319
    :goto_13
    iput-object v5, v3, Lcom/android/tools/r8/internal/XL;->d:Lcom/android/tools/r8/internal/OL;

    if-eqz v4, :cond_17

    .line 320
    iget v5, v4, Lcom/android/tools/r8/internal/gM;->c:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_17

    .line 321
    iget-object v5, v4, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    goto :goto_14

    :cond_17
    move-object v5, v6

    :goto_14
    if-eqz v5, :cond_18

    .line 322
    new-instance v7, Lcom/android/tools/r8/internal/OL;

    .line 323
    iget v8, v5, Lcom/android/tools/r8/internal/dM;->d:I

    .line 324
    iget-object v9, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 325
    iget v5, v5, Lcom/android/tools/r8/internal/dM;->e:I

    .line 326
    iget-object v9, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v9, v5}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 327
    invoke-direct {v7, v8, v5}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_18
    move-object v7, v6

    .line 328
    :goto_15
    iput-object v7, v3, Lcom/android/tools/r8/internal/XL;->e:Lcom/android/tools/r8/internal/OL;

    if-eqz v4, :cond_19

    .line 329
    iget v5, v4, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v7, 0x10

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_19

    .line 330
    iget-object v4, v4, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    goto :goto_16

    :cond_19
    move-object v4, v6

    :goto_16
    if-eqz v4, :cond_1a

    .line 331
    new-instance v5, Lcom/android/tools/r8/internal/OL;

    .line 332
    iget v7, v4, Lcom/android/tools/r8/internal/dM;->d:I

    .line 333
    iget-object v8, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v7

    .line 334
    iget v4, v4, Lcom/android/tools/r8/internal/dM;->e:I

    .line 335
    iget-object v8, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-direct {v5, v7, v4}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_1a
    move-object v5, v6

    .line 337
    :goto_17
    iput-object v5, v3, Lcom/android/tools/r8/internal/XL;->f:Lcom/android/tools/r8/internal/OL;

    goto/16 :goto_9

    :cond_1b
    return-object v0
.end method

.method public static final a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;
    .locals 11

    .line 358
    new-instance v0, Lcom/android/tools/r8/internal/yQ;

    .line 359
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/M90;->f:Z

    .line 360
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->r:I

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 361
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/yQ;-><init>(I)V

    .line 362
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_0

    .line 363
    new-instance v1, Lcom/android/tools/r8/internal/cQ$a;

    .line 364
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->j:I

    .line 365
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 366
    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/VL;I)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/cQ$a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_1

    .line 368
    new-instance v1, Lcom/android/tools/r8/internal/cQ$b;

    .line 369
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->m:I

    .line 370
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 371
    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/VL;I)Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/cQ$b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_2

    .line 373
    new-instance v1, Lcom/android/tools/r8/internal/cQ$c;

    .line 374
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->k:I

    .line 375
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/cQ$c;-><init>(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1a

    .line 376
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->l:I

    .line 377
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Kb0;->a(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 378
    new-instance v2, Lcom/android/tools/r8/internal/cQ$c;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/cQ$c;-><init>(I)V

    move-object v1, v2

    .line 379
    :goto_0
    iput-object v1, v0, Lcom/android/tools/r8/internal/yQ;->b:Lcom/android/tools/r8/internal/cQ;

    .line 380
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    .line 381
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x4

    const-string v5, "typeTable"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/K90;

    .line 382
    iget-object v8, v2, Lcom/android/tools/r8/internal/K90;->d:Lcom/android/tools/r8/internal/J90;

    if-eqz v8, :cond_b

    .line 383
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_6

    if-eq v8, v3, :cond_5

    if-eq v8, v6, :cond_4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    move-object v8, v7

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p0

    .line 384
    :cond_4
    sget-object v8, Lcom/android/tools/r8/internal/FQ;->b:Lcom/android/tools/r8/internal/FQ;

    goto :goto_2

    .line 385
    :cond_5
    sget-object v8, Lcom/android/tools/r8/internal/FQ;->d:Lcom/android/tools/r8/internal/FQ;

    goto :goto_2

    .line 386
    :cond_6
    sget-object v8, Lcom/android/tools/r8/internal/FQ;->c:Lcom/android/tools/r8/internal/FQ;

    :goto_2
    if-eqz v8, :cond_a

    .line 387
    iget-object v9, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 388
    invoke-static {v9, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget v5, v2, Lcom/android/tools/r8/internal/K90;->c:I

    and-int/lit8 v10, v5, 0x2

    if-ne v10, v6, :cond_7

    .line 390
    iget-object v7, v2, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    goto :goto_3

    :cond_7
    and-int/lit8 v5, v5, 0x4

    if-ne v5, v4, :cond_8

    .line 391
    iget v2, v2, Lcom/android/tools/r8/internal/K90;->f:I

    .line 392
    iget-object v4, v9, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/tools/r8/internal/M90;

    :cond_8
    :goto_3
    if-eqz v7, :cond_9

    .line 393
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yQ;->b()Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/android/tools/r8/internal/DQ;

    invoke-static {v7, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lcom/android/tools/r8/internal/DQ;-><init>(Lcom/android/tools/r8/internal/FQ;Lcom/android/tools/r8/internal/yQ;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/lD;

    const-string p1, "No type argument for non-STAR projection in Type"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/String;)V

    throw p0

    .line 395
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yQ;->b()Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/android/tools/r8/internal/DQ;->c:Lcom/android/tools/r8/internal/DQ;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 396
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 397
    :cond_c
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 398
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/lit16 v3, v2, 0x400

    const/16 v8, 0x400

    if-ne v3, v8, :cond_d

    .line 400
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    goto :goto_4

    :cond_d
    const/16 v3, 0x800

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_e

    .line 401
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->q:I

    .line 402
    iget-object v1, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/M90;

    goto :goto_4

    :cond_e
    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_f

    .line 403
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    goto :goto_5

    :cond_f
    move-object v1, v7

    .line 404
    :goto_5
    iput-object v1, v0, Lcom/android/tools/r8/internal/yQ;->d:Lcom/android/tools/r8/internal/yQ;

    .line 405
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 406
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/lit16 v3, v2, 0x100

    const/16 v8, 0x100

    if-ne v3, v8, :cond_10

    .line 408
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    goto :goto_6

    :cond_10
    const/16 v3, 0x200

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_11

    .line 409
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->o:I

    .line 410
    iget-object v1, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/M90;

    goto :goto_6

    :cond_11
    move-object v1, v7

    :goto_6
    if-eqz v1, :cond_12

    .line 411
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    goto :goto_7

    :cond_12
    move-object v1, v7

    .line 412
    :goto_7
    iput-object v1, v0, Lcom/android/tools/r8/internal/yQ;->e:Lcom/android/tools/r8/internal/yQ;

    .line 413
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 414
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/lit8 v3, v2, 0x4

    if-ne v3, v4, :cond_13

    .line 416
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    goto :goto_8

    :cond_13
    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_14

    .line 417
    iget v2, p0, Lcom/android/tools/r8/internal/M90;->i:I

    .line 418
    iget-object v1, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/M90;

    goto :goto_8

    :cond_14
    move-object v1, v7

    :goto_8
    if-eqz v1, :cond_16

    .line 419
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    .line 420
    new-instance v2, Lcom/android/tools/r8/internal/oQ;

    .line 421
    iget v3, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_15

    .line 422
    iget v3, p0, Lcom/android/tools/r8/internal/M90;->g:I

    .line 423
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v7

    .line 424
    :cond_15
    invoke-direct {v2, v1, v7}, Lcom/android/tools/r8/internal/oQ;-><init>(Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    move-object v7, v2

    .line 425
    :cond_16
    iput-object v7, v0, Lcom/android/tools/r8/internal/yQ;->f:Lcom/android/tools/r8/internal/oQ;

    .line 426
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    .line 427
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yW;

    .line 428
    check-cast v2, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    invoke-static {v0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/sM;

    move-result-object v2

    .line 430
    sget-object v3, Lcom/android/tools/r8/internal/oM;->g:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 431
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/sM;->a:Z

    .line 432
    sget-object v3, Lcom/android/tools/r8/internal/oM;->f:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O80;

    .line 433
    iget-object v5, v2, Lcom/android/tools/r8/internal/sM;->b:Ljava/util/ArrayList;

    .line 434
    invoke-static {v4}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    .line 435
    iget-object v6, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 436
    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/O80;Lcom/android/tools/r8/internal/VL;)Lcom/android/tools/r8/internal/GP;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_18
    return-object v0

    .line 437
    :cond_19
    new-instance v0, Lcom/android/tools/r8/internal/lD;

    .line 438
    iget p0, p0, Lcom/android/tools/r8/internal/M90;->l:I

    .line 439
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 440
    const-string p1, "No type parameter id for "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1a
    new-instance p0, Lcom/android/tools/r8/internal/lD;

    const-string p1, "No classifier (class, type alias or type parameter) recorded for Type"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/hQ;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/Kb0;)V
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/internal/hQ;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/android/tools/r8/internal/n90;

    .line 4
    invoke-static {v1, p4}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/n90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/pQ;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/hQ;->b()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/tools/r8/internal/v90;

    .line 9
    invoke-static {v0, p4}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/v90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/vQ;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/internal/hQ;->c()Ljava/util/List;

    move-result-object p0

    .line 12
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 13
    check-cast p2, Lcom/android/tools/r8/internal/P90;

    .line 14
    new-instance p3, Lcom/android/tools/r8/internal/zQ;

    .line 15
    iget v0, p2, Lcom/android/tools/r8/internal/P90;->e:I

    .line 16
    iget v1, p2, Lcom/android/tools/r8/internal/P90;->f:I

    .line 17
    iget-object v2, p4, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 18
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-direct {p3, v0, v1}, Lcom/android/tools/r8/internal/zQ;-><init>(ILjava/lang/String;)V

    .line 20
    iget-object v0, p2, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    .line 21
    const-string v1, "getTypeParameterList(...)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/Kb0;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/Kb0;

    move-result-object v0

    .line 22
    iget-object v2, p2, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    .line 23
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zQ;->c()Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/tools/r8/internal/T90;

    .line 26
    invoke-static {v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/T90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/BQ;

    move-result-object v3

    .line 27
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 29
    const-string v2, "typeTable"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v3, p2, Lcom/android/tools/r8/internal/P90;->d:I

    and-int/lit8 v4, v3, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 31
    iget-object v1, p2, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    .line 32
    const-string v3, "getUnderlyingType(...)"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    .line 33
    iget v3, p2, Lcom/android/tools/r8/internal/P90;->i:I

    .line 34
    iget-object v1, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/M90;

    .line 35
    :goto_4
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    .line 36
    iput-object v1, p3, Lcom/android/tools/r8/internal/zQ;->d:Lcom/android/tools/r8/internal/yQ;

    .line 37
    iget-object v1, v0, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 38
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget v2, p2, Lcom/android/tools/r8/internal/P90;->d:I

    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 40
    iget-object v1, p2, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    .line 41
    const-string v2, "getExpandedType(...)"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_8

    .line 42
    iget v2, p2, Lcom/android/tools/r8/internal/P90;->k:I

    .line 43
    iget-object v1, v1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/M90;

    .line 44
    :goto_5
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v1

    .line 45
    iput-object v1, p3, Lcom/android/tools/r8/internal/zQ;->e:Lcom/android/tools/r8/internal/yQ;

    .line 46
    iget-object v1, p2, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    .line 47
    const-string v2, "getAnnotationList(...)"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zQ;->a()Ljava/util/List;

    move-result-object v2

    .line 48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/tools/r8/internal/O80;

    .line 50
    invoke-static {v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v4, v0, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 52
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/O80;Lcom/android/tools/r8/internal/VL;)Lcom/android/tools/r8/internal/GP;

    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 54
    :cond_5
    iget-object p2, p2, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 55
    const-string v1, "getVersionRequirementList(...)"

    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v1, p3, Lcom/android/tools/r8/internal/zQ;->g:Ljava/util/ArrayList;

    .line 57
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Integer;

    .line 59
    invoke-static {v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Ob0;->a(ILcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/HQ;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 61
    :cond_6
    iget-object p2, v0, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    .line 62
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/yW;

    .line 63
    check-cast v0, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    .line 64
    :cond_7
    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 65
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 66
    const-string p1, "No expandedType in ProtoBuf.TypeAlias"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    const-string p1, "No underlyingType in ProtoBuf.TypeAlias"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    return-void
.end method
