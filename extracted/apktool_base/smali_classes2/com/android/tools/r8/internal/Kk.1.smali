.class public final Lcom/android/tools/r8/internal/Kk;
.super Lcom/android/tools/r8/internal/k1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/k1;-><init>()V

    return-void
.end method


# virtual methods
.method public final parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lcom/android/tools/r8/internal/Mk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Mk;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    if-nez v3, :cond_17

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {v0, p1, v1, p2, v5}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->l()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/Be;->d(I)I

    move-result v5

    and-int/lit8 v6, v4, 0x10

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v6

    if-lez v6, :cond_1

    invoke-static {}, Lcom/android/tools/r8/internal/wz;->newIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v6

    iput-object v6, v0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    or-int/lit8 v4, v4, 0x10

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, v0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v7

    check-cast v6, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/DH;->j(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/Be;->c(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/tools/r8/internal/wz;->newIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v5

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    or-int/lit8 v4, v4, 0x10

    :cond_3
    iget-object v5, v0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v6

    check-cast v5, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/DH;->j(I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->l()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/Be;->d(I)I

    move-result v5

    and-int/lit8 v6, v4, 0x8

    if-nez v6, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {}, Lcom/android/tools/r8/internal/wz;->newIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v6

    iput-object v6, v0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    or-int/lit8 v4, v4, 0x8

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, v0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v7

    check-cast v6, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/DH;->j(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/Be;->c(I)V

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/tools/r8/internal/wz;->newIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v5

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    or-int/lit8 v4, v4, 0x8

    :cond_6
    iget-object v5, v0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v6

    check-cast v5, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/DH;->j(I)V

    goto/16 :goto_0

    :sswitch_5
    iget v5, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/sl;->a()Lcom/android/tools/r8/internal/ol;

    move-result-object v7

    :cond_7
    sget-object v5, Lcom/android/tools/r8/internal/sl;->e:Lcom/android/tools/r8/internal/nl;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/sl;

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    if-eqz v7, :cond_8

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/ol;->a(Lcom/android/tools/r8/internal/sl;)Lcom/android/tools/r8/internal/ol;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ol;->b()Lcom/android/tools/r8/internal/sl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    :cond_8
    iget v5, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    goto/16 :goto_0

    :sswitch_6
    iget v5, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Qk;->a()Lcom/android/tools/r8/internal/Ok;

    move-result-object v7

    :cond_9
    sget-object v5, Lcom/android/tools/r8/internal/Qk;->A:Lcom/android/tools/r8/internal/Nk;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Qk;

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-eqz v7, :cond_a

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Ok;->d()Lcom/android/tools/r8/internal/Qk;

    move-result-object v5

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    :cond_a
    iget v5, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v5, v4, 0x100

    if-nez v5, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_b
    iget-object v5, v0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    sget-object v6, Lcom/android/tools/r8/internal/Ek;->p:Lcom/android/tools/r8/internal/Ak;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    or-int/lit16 v4, v4, 0x80

    :cond_c
    iget-object v5, v0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    sget-object v6, Lcom/android/tools/r8/internal/jl;->h:Lcom/android/tools/r8/internal/hl;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    or-int/lit8 v4, v4, 0x40

    :cond_d
    iget-object v5, v0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    sget-object v6, Lcom/android/tools/r8/internal/nk;->j:Lcom/android/tools/r8/internal/ik;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_e

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    :cond_e
    iget-object v5, v0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    sget-object v6, Lcom/android/tools/r8/internal/hk;->o:Lcom/android/tools/r8/internal/Zj;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    and-int/lit8 v6, v4, 0x4

    if-nez v6, :cond_f

    new-instance v6, Lcom/android/tools/r8/internal/xR;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/xR;-><init>(I)V

    iput-object v6, v0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    or-int/lit8 v4, v4, 0x4

    :cond_f
    iget-object v6, v0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v6, v5}, Lcom/android/tools/r8/internal/zR;->a(Lcom/android/tools/r8/internal/m8;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->d:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v7, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->c:Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_e
    move v3, v6

    goto/16 :goto_0

    :goto_4
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    iput-object v0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw p2

    :goto_5
    iput-object v0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 p2, v4, 0x4

    if-eqz p2, :cond_10

    iget-object p2, v0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    :cond_10
    and-int/lit8 p2, v4, 0x20

    if-eqz p2, :cond_11

    iget-object p2, v0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v4, 0x40

    if-eqz p2, :cond_12

    iget-object p2, v0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    :cond_12
    and-int/lit16 p2, v4, 0x80

    if-eqz p2, :cond_13

    iget-object p2, v0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    :cond_13
    and-int/lit16 p2, v4, 0x100

    if-eqz p2, :cond_14

    iget-object p2, v0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v4, 0x8

    if-eqz p2, :cond_15

    iget-object p2, v0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    check-cast p2, Lcom/android/tools/r8/internal/s1;

    iput-boolean v2, p2, Lcom/android/tools/r8/internal/s1;->b:Z

    :cond_15
    and-int/lit8 p2, v4, 0x10

    if-eqz p2, :cond_16

    iget-object p2, v0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    check-cast p2, Lcom/android/tools/r8/internal/s1;

    iput-boolean v2, p2, Lcom/android/tools/r8/internal/s1;->b:Z

    :cond_16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    throw p1

    :cond_17
    and-int/lit8 p1, v4, 0x4

    if-eqz p1, :cond_18

    iget-object p1, v0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    :cond_18
    and-int/lit8 p1, v4, 0x20

    if-eqz p1, :cond_19

    iget-object p1, v0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v4, 0x40

    if-eqz p1, :cond_1a

    iget-object p1, v0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v4, 0x80

    if-eqz p1, :cond_1b

    iget-object p1, v0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    :cond_1b
    and-int/lit16 p1, v4, 0x100

    if-eqz p1, :cond_1c

    iget-object p1, v0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v4, 0x8

    if-eqz p1, :cond_1d

    iget-object p1, v0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    check-cast p1, Lcom/android/tools/r8/internal/s1;

    iput-boolean v2, p1, Lcom/android/tools/r8/internal/s1;->b:Z

    :cond_1d
    and-int/lit8 p1, v4, 0x10

    if-eqz p1, :cond_1e

    iget-object p1, v0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    check-cast p1, Lcom/android/tools/r8/internal/s1;

    iput-boolean v2, p1, Lcom/android/tools/r8/internal/s1;->b:Z

    :cond_1e
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method
