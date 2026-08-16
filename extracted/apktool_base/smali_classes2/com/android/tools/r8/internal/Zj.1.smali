.class public final Lcom/android/tools/r8/internal/Zj;
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
    .locals 7

    new-instance v0, Lcom/android/tools/r8/internal/hk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hk;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-nez v2, :cond_13

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {v0, p1, v1, p2, v4}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v4

    and-int/lit16 v5, v3, 0x200

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/tools/r8/internal/xR;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/xR;-><init>(I)V

    iput-object v5, v0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    or-int/lit16 v3, v3, 0x200

    :cond_1
    iget-object v5, v0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v5, v4}, Lcom/android/tools/r8/internal/zR;->a(Lcom/android/tools/r8/internal/m8;)V

    goto :goto_0

    :sswitch_1
    and-int/lit16 v4, v3, 0x100

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    :cond_2
    iget-object v4, v0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    sget-object v5, Lcom/android/tools/r8/internal/gk;->g:Lcom/android/tools/r8/internal/ek;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    :cond_3
    iget-object v4, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    sget-object v5, Lcom/android/tools/r8/internal/dl;->g:Lcom/android/tools/r8/internal/bl;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    iget v4, v0, Lcom/android/tools/r8/internal/hk;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Tk;->a()Lcom/android/tools/r8/internal/Sk;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    sget-object v5, Lcom/android/tools/r8/internal/Tk;->k:Lcom/android/tools/r8/internal/Rk;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Tk;

    iput-object v5, v0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Sk;->a(Lcom/android/tools/r8/internal/Tk;)Lcom/android/tools/r8/internal/Sk;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Sk;->d()Lcom/android/tools/r8/internal/Tk;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    :cond_5
    iget v4, v0, Lcom/android/tools/r8/internal/hk;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Lcom/android/tools/r8/internal/hk;->b:I

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    :cond_6
    iget-object v4, v0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    sget-object v5, Lcom/android/tools/r8/internal/Ek;->p:Lcom/android/tools/r8/internal/Ak;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :cond_7
    iget-object v4, v0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    sget-object v5, Lcom/android/tools/r8/internal/dk;->h:Lcom/android/tools/r8/internal/bk;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    :cond_8
    iget-object v4, v0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    sget-object v5, Lcom/android/tools/r8/internal/nk;->j:Lcom/android/tools/r8/internal/ik;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    :cond_9
    iget-object v4, v0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    sget-object v5, Lcom/android/tools/r8/internal/hk;->o:Lcom/android/tools/r8/internal/Zj;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_a
    iget-object v4, v0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    sget-object v5, Lcom/android/tools/r8/internal/Ek;->p:Lcom/android/tools/r8/internal/Ak;

    invoke-virtual {p1, v5, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v4

    iget v6, v0, Lcom/android/tools/r8/internal/hk;->b:I

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/tools/r8/internal/hk;->b:I

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->c:Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_a
    move v2, v5

    goto/16 :goto_0

    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    iput-object v0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw p2

    :goto_4
    iput-object v0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_b

    iget-object p2, v0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_c

    iget-object p2, v0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_d

    iget-object p2, v0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_e

    iget-object p2, v0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_f

    iget-object p2, v0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_10

    iget-object p2, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    :cond_10
    and-int/lit16 p2, v3, 0x100

    if-eqz p2, :cond_11

    iget-object p2, v0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    :cond_11
    and-int/lit16 p2, v3, 0x200

    if-eqz p2, :cond_12

    iget-object p2, v0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    :cond_12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    throw p1

    :cond_13
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_14

    iget-object p1, v0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_15

    iget-object p1, v0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_16

    iget-object p1, v0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_17

    iget-object p1, v0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_18

    iget-object p1, v0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_19

    iget-object p1, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    :cond_19
    and-int/lit16 p1, v3, 0x100

    if-eqz p1, :cond_1a

    iget-object p1, v0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v3, 0x200

    if-eqz p1, :cond_1b

    iget-object p1, v0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    :cond_1b
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
