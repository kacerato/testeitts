.class public final Lcom/android/tools/r8/internal/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Q80;

.field public final b:Lcom/android/tools/r8/internal/by0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/rM;)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/tools/r8/internal/S80;->K:Lcom/android/tools/r8/internal/S80;

    new-instance v1, Lcom/android/tools/r8/internal/Q80;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Q80;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    new-instance v1, Lcom/android/tools/r8/internal/by0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/by0;-><init>(Lcom/android/tools/r8/internal/rM;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aQ;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "kmClass"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, Lcom/android/tools/r8/internal/aQ;->a:I

    sget-object v3, Lcom/android/tools/r8/internal/S80;->K:Lcom/android/tools/r8/internal/S80;

    iget v3, v3, Lcom/android/tools/r8/internal/S80;->e:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    iget-object v3, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget v5, v3, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v5, v4

    iput v5, v3, Lcom/android/tools/r8/internal/Q80;->e:I

    iput v2, v3, Lcom/android/tools/r8/internal/Q80;->f:I

    :cond_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v3, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/aQ;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I

    move-result v3

    iget v5, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/4 v7, 0x2

    or-int/2addr v5, v7

    iput v5, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->g:I

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/aQ;->k()Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/BQ;

    iget-object v9, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v9, v8}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/BQ;)Lcom/android/tools/r8/internal/R90;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/R90;->c()Lcom/android/tools/r8/internal/T90;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/T90;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v1

    :cond_2
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v8, 0x8

    and-int/2addr v3, v8

    if-eq v3, v8, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    iget-object v9, v2, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v8

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_3
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/aQ;->j()Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/yQ;

    iget-object v9, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v9, v8}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v8, 0x10

    and-int/2addr v3, v8

    if-eq v3, v8, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    iget-object v9, v2, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v8

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_5
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/aQ;->e()Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/eQ;

    iget-object v11, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    sget-object v12, Lcom/android/tools/r8/internal/V80;->j:Lcom/android/tools/r8/internal/V80;

    new-instance v12, Lcom/android/tools/r8/internal/U80;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/U80;-><init>()V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/eQ;->a()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/EQ;

    invoke-static {v11, v14}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/EQ;)Lcom/android/tools/r8/internal/Y90;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Y90;->c()Lcom/android/tools/r8/internal/Z90;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Z90;->isInitialized()Z

    move-result v15

    if-eqz v15, :cond_7

    iget v15, v12, Lcom/android/tools/r8/internal/U80;->e:I

    and-int/2addr v15, v7

    if-eq v15, v7, :cond_6

    new-instance v15, Ljava/util/ArrayList;

    iget-object v10, v12, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v15, v12, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    iget v10, v12, Lcom/android/tools/r8/internal/U80;->e:I

    or-int/2addr v10, v7

    iput v10, v12, Lcom/android/tools/r8/internal/U80;->e:I

    :cond_6
    iget-object v10, v12, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v1

    :cond_8
    iget-object v10, v8, Lcom/android/tools/r8/internal/eQ;->c:Ljava/util/ArrayList;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_a

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v16

    check-cast v7, Lcom/android/tools/r8/internal/HQ;

    invoke-static {v11, v7}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/HQ;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v7, 0x2

    goto :goto_4

    :cond_a
    iget v7, v12, Lcom/android/tools/r8/internal/U80;->e:I

    and-int/2addr v7, v9

    if-eq v7, v9, :cond_b

    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, v12, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v12, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    iget v7, v12, Lcom/android/tools/r8/internal/U80;->e:I

    or-int/2addr v7, v9

    iput v7, v12, Lcom/android/tools/r8/internal/U80;->e:I

    :cond_b
    iget-object v7, v12, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    invoke-static {v13, v7}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v7, v11, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/yW;

    check-cast v9, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/eQ;)Lcom/android/tools/r8/internal/zL;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/internal/zL;->a:Lcom/android/tools/r8/internal/OL;

    if-eqz v9, :cond_c

    sget-object v10, Lcom/android/tools/r8/internal/oM;->a:Lcom/android/tools/r8/internal/Wy;

    invoke-static {v9, v11}, Lcom/android/tools/r8/internal/JL;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/dM;

    move-result-object v9

    invoke-virtual {v12, v10, v9}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    goto :goto_5

    :cond_d
    iget v7, v8, Lcom/android/tools/r8/internal/eQ;->a:I

    sget-object v8, Lcom/android/tools/r8/internal/V80;->j:Lcom/android/tools/r8/internal/V80;

    iget v8, v8, Lcom/android/tools/r8/internal/V80;->e:I

    if-eq v7, v8, :cond_e

    iget v8, v12, Lcom/android/tools/r8/internal/U80;->e:I

    or-int/2addr v8, v4

    iput v8, v12, Lcom/android/tools/r8/internal/U80;->e:I

    iput v7, v12, Lcom/android/tools/r8/internal/U80;->f:I

    :cond_e
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/U80;->c()Lcom/android/tools/r8/internal/V80;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/V80;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    goto/16 :goto_2

    :cond_f
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v1

    :cond_10
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v7, 0x200

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_11

    new-instance v3, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v7

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_11
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v3, v1, Lcom/android/tools/r8/internal/aQ;->e:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_13

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/pQ;

    iget-object v11, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v11, v10}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/m90;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/m90;->c()Lcom/android/tools/r8/internal/n90;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/n90;->isInitialized()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v1

    :cond_13
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v7, 0x400

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_14

    new-instance v3, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v7

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_14
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v3, v1, Lcom/android/tools/r8/internal/aQ;->f:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_16

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/vQ;

    iget-object v11, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v11, v10}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/u90;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/u90;->c()Lcom/android/tools/r8/internal/v90;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/v90;->isInitialized()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v1

    :cond_16
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v7, 0x800

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_17

    new-instance v3, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v7

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_17
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v3, v1, Lcom/android/tools/r8/internal/aQ;->g:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_19

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/zQ;

    iget-object v11, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v11, v10}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/zQ;)Lcom/android/tools/r8/internal/O90;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/O90;->c()Lcom/android/tools/r8/internal/P90;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/P90;->isInitialized()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_18
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v1

    :cond_19
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v7, 0x1000

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v7

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_1a
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/aQ;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v3, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v5, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v2

    iget v5, v3, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v5, v9

    iput v5, v3, Lcom/android/tools/r8/internal/Q80;->e:I

    iput v2, v3, Lcom/android/tools/r8/internal/Q80;->h:I

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/aQ;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, "string"

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v8, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v8, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v3

    iget v5, v7, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v8, 0x40

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_1c

    new-instance v5, Ljava/util/ArrayList;

    iget-object v9, v7, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v7, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    iget v5, v7, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v5, v8

    iput v5, v7, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_1c
    iget-object v5, v7, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/aQ;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    sget-object v8, Lcom/android/tools/r8/internal/g90;->h:Lcom/android/tools/r8/internal/g90;

    new-instance v8, Lcom/android/tools/r8/internal/f90;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/f90;-><init>()V

    iget-object v9, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v9, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v3

    iget v9, v8, Lcom/android/tools/r8/internal/f90;->e:I

    or-int/2addr v9, v4

    iput v9, v8, Lcom/android/tools/r8/internal/f90;->e:I

    iput v3, v8, Lcom/android/tools/r8/internal/f90;->f:I

    iget v3, v7, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v9, 0x2000

    and-int/2addr v3, v9

    if-eq v3, v9, :cond_1e

    new-instance v3, Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v7, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    iget v3, v7, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v9

    iput v3, v7, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_1e
    iget-object v3, v7, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    new-instance v7, Lcom/android/tools/r8/internal/g90;

    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/g90;-><init>(Lcom/android/tools/r8/internal/f90;)V

    iget v9, v8, Lcom/android/tools/r8/internal/f90;->e:I

    and-int/2addr v9, v4

    if-ne v9, v4, :cond_1f

    move v9, v4

    goto :goto_b

    :cond_1f
    const/4 v9, 0x0

    :goto_b
    iget v8, v8, Lcom/android/tools/r8/internal/f90;->f:I

    iput v8, v7, Lcom/android/tools/r8/internal/g90;->e:I

    iput v9, v7, Lcom/android/tools/r8/internal/g90;->d:I

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/g90;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_20
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v1

    :cond_21
    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/aQ;->i()Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v8, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/cy0;->a(Lcom/android/tools/r8/internal/rM;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x4000

    and-int/2addr v3, v6

    if-eq v3, v6, :cond_23

    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v6

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_23
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v1, Lcom/android/tools/r8/internal/aQ;->m:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v3, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v5, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v2

    iget v5, v3, Lcom/android/tools/r8/internal/Q80;->e:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, v3, Lcom/android/tools/r8/internal/Q80;->e:I

    iput v2, v3, Lcom/android/tools/r8/internal/Q80;->u:I

    :cond_24
    iget-object v2, v1, Lcom/android/tools/r8/internal/aQ;->n:Lcom/android/tools/r8/internal/yQ;

    if-eqz v2, :cond_25

    iget-object v3, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v5, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lcom/android/tools/r8/internal/Q80;->v:Lcom/android/tools/r8/internal/M90;

    iget v2, v3, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v5, 0x10000

    or-int/2addr v2, v5

    iput v2, v3, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_25
    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v3, v1, Lcom/android/tools/r8/internal/aQ;->o:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v6, :cond_26

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/yQ;

    iget-object v9, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v9, v8}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/internal/L90;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_26
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x80

    and-int/2addr v3, v6

    if-eq v3, v6, :cond_27

    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v6

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_27
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v3, v1, Lcom/android/tools/r8/internal/aQ;->p:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_28
    :goto_e
    if-ge v7, v6, :cond_29

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/HQ;

    iget-object v9, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v9, v8}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/HQ;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_28

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_29
    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v6, 0x400000

    and-int/2addr v3, v6

    if-eq v3, v6, :cond_2a

    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    iget v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v3, v6

    iput v3, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_2a
    iget-object v2, v2, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/yW;

    iget-object v5, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    iget-object v6, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    check-cast v3, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "proto"

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "c"

    invoke-static {v6, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v3

    iget-object v7, v3, Lcom/android/tools/r8/internal/xL;->c:Ljava/lang/String;

    if-eqz v7, :cond_2c

    sget-object v8, Lcom/android/tools/r8/internal/oM;->k:Lcom/android/tools/r8/internal/Wy;

    iget-object v9, v6, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Q80;

    :cond_2c
    iget-object v7, v3, Lcom/android/tools/r8/internal/xL;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v8, :cond_30

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/vQ;

    sget-object v11, Lcom/android/tools/r8/internal/oM;->j:Lcom/android/tools/r8/internal/Wy;

    invoke-static {v6, v10}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/u90;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/u90;->c()Lcom/android/tools/r8/internal/v90;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/v90;->isInitialized()Z

    move-result v12

    if-eqz v12, :cond_2f

    iget-object v12, v11, Lcom/android/tools/r8/internal/Wy;->a:Lcom/android/tools/r8/internal/Ty;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Q80;->b()Lcom/android/tools/r8/internal/Yy;

    move-result-object v13

    if-ne v12, v13, :cond_2e

    iget-boolean v12, v5, Lcom/android/tools/r8/internal/Ry;->d:Z

    if-nez v12, :cond_2d

    iget-object v12, v5, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Jw;->clone()Lcom/android/tools/r8/internal/Jw;

    move-result-object v12

    iput-object v12, v5, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    iput-boolean v4, v5, Lcom/android/tools/r8/internal/Ry;->d:Z

    :cond_2d
    iget-object v12, v5, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    iget-object v13, v11, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/Wy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v12, v13, v10}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    goto :goto_10

    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    new-instance v1, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v1

    :cond_30
    iget-object v7, v3, Lcom/android/tools/r8/internal/xL;->b:Ljava/lang/String;

    if-eqz v7, :cond_31

    const-string v8, "main"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    sget-object v8, Lcom/android/tools/r8/internal/oM;->i:Lcom/android/tools/r8/internal/Wy;

    iget-object v6, v6, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/rM;->a(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    :cond_31
    iget v3, v3, Lcom/android/tools/r8/internal/xL;->d:I

    if-eqz v3, :cond_2b

    sget-object v6, Lcom/android/tools/r8/internal/oM;->l:Lcom/android/tools/r8/internal/Wy;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;

    goto/16 :goto_f

    :cond_32
    iget-object v1, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/by0;->b:Lcom/android/tools/r8/internal/YY;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/YY;->a()Lcom/android/tools/r8/internal/Yy;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ha0;

    if-eqz v1, :cond_33

    iget-object v2, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lcom/android/tools/r8/internal/Q80;->C:Lcom/android/tools/r8/internal/ha0;

    iget v1, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v3, 0x800000

    or-int/2addr v1, v3

    iput v1, v2, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_33
    return-void
.end method
