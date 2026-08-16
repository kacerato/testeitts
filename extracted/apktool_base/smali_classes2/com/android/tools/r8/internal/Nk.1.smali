.class public final Lcom/android/tools/r8/internal/Nk;
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

    new-instance v0, Lcom/android/tools/r8/internal/Qk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qk;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/high16 v4, 0x100000

    if-nez v2, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {v0, p1, v1, p2, v5}, Lcom/android/tools/r8/internal/iz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :sswitch_0
    and-int v5, v3, v4

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    move v3, v4

    :cond_1
    iget-object v5, v0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    sget-object v6, Lcom/android/tools/r8/internal/yl;->l:Lcom/android/tools/r8/internal/tl;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_3
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->n:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_9
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->p:Z

    goto/16 :goto_0

    :sswitch_a
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->h:Z

    goto/16 :goto_0

    :sswitch_b
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->o:Z

    goto/16 :goto_0

    :sswitch_c
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->g:Z

    goto/16 :goto_0

    :sswitch_d
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->m:Z

    goto/16 :goto_0

    :sswitch_e
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->l:Z

    goto/16 :goto_0

    :sswitch_f
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->k:Z

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_11
    iget v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Qk;->f:Z

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Pk;->a(I)Lcom/android/tools/r8/internal/Pk;

    move-result-object v6

    if-nez v6, :cond_2

    const/16 v6, 0x9

    invoke-virtual {v1, v6, v5}, Lcom/android/tools/r8/internal/kv0;->a(II)V

    goto/16 :goto_0

    :cond_2
    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput v5, v0, Lcom/android/tools/r8/internal/Qk;->i:I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v5

    iget v7, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    iput-object v5, v0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_15
    move v2, v6

    goto/16 :goto_0

    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    iput-object v0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw p2

    :goto_3
    iput-object v0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int p2, v3, v4

    if-eqz p2, :cond_3

    iget-object p2, v0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p2, v0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw;->d()V

    throw p1

    :cond_4
    and-int p1, v3, v4

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, v0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw;->d()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_14
        0x42 -> :sswitch_13
        0x48 -> :sswitch_12
        0x50 -> :sswitch_11
        0x5a -> :sswitch_10
        0x80 -> :sswitch_f
        0x88 -> :sswitch_e
        0x90 -> :sswitch_d
        0xa0 -> :sswitch_c
        0xb8 -> :sswitch_b
        0xd8 -> :sswitch_a
        0xf8 -> :sswitch_9
        0x122 -> :sswitch_8
        0x12a -> :sswitch_7
        0x13a -> :sswitch_6
        0x142 -> :sswitch_5
        0x14a -> :sswitch_4
        0x150 -> :sswitch_3
        0x162 -> :sswitch_2
        0x16a -> :sswitch_1
        0x1f3a -> :sswitch_0
    .end sparse-switch
.end method
