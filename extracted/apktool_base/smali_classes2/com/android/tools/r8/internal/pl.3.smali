.class public final Lcom/android/tools/r8/internal/pl;
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
    .locals 10

    new-instance v0, Lcom/android/tools/r8/internal/rl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rl;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    const/16 v5, 0x10

    if-nez v3, :cond_13

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_f

    const/16 v8, 0x8

    if-eq v6, v8, :cond_d

    const/16 v8, 0xa

    if-eq v6, v8, :cond_a

    if-eq v6, v5, :cond_8

    const/16 v9, 0x12

    if-eq v6, v9, :cond_5

    const/16 v9, 0x1a

    if-eq v6, v9, :cond_4

    const/16 v9, 0x22

    if-eq v6, v9, :cond_3

    const/16 v9, 0x32

    if-eq v6, v9, :cond_1

    invoke-virtual {v0, p1, v1, p2, v6}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

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

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v6

    and-int/lit8 v7, v4, 0x10

    if-nez v7, :cond_2

    new-instance v7, Lcom/android/tools/r8/internal/xR;

    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/xR;-><init>(I)V

    iput-object v7, v0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    or-int/lit8 v4, v4, 0x10

    :cond_2
    iget-object v7, v0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v7, v6}, Lcom/android/tools/r8/internal/zR;->a(Lcom/android/tools/r8/internal/m8;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v6

    iget v7, v0, Lcom/android/tools/r8/internal/rl;->b:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v0, Lcom/android/tools/r8/internal/rl;->b:I

    iput-object v6, v0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v6

    iget v8, v0, Lcom/android/tools/r8/internal/rl;->b:I

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/tools/r8/internal/rl;->b:I

    iput-object v6, v0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->l()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/Be;->d(I)I

    move-result v6

    and-int/lit8 v7, v4, 0x2

    if-nez v7, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v7

    if-lez v7, :cond_6

    invoke-static {}, Lcom/android/tools/r8/internal/wz;->newIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    or-int/lit8 v4, v4, 0x2

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, v0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v8

    check-cast v7, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/DH;->j(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/Be;->c(I)V

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_9

    invoke-static {}, Lcom/android/tools/r8/internal/wz;->newIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v6

    iput-object v6, v0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    or-int/lit8 v4, v4, 0x2

    :cond_9
    iget-object v6, v0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v7

    check-cast v6, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/DH;->j(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->l()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/Be;->d(I)I

    move-result v6

    and-int/lit8 v7, v4, 0x1

    if-nez v7, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v7

    if-lez v7, :cond_b

    invoke-static {}, Lcom/android/tools/r8/internal/wz;->newIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    or-int/lit8 v4, v4, 0x1

    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v7

    if-lez v7, :cond_c

    iget-object v7, v0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v8

    check-cast v7, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/DH;->j(I)V

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/Be;->c(I)V

    goto/16 :goto_0

    :cond_d
    and-int/lit8 v6, v4, 0x1

    if-nez v6, :cond_e

    invoke-static {}, Lcom/android/tools/r8/internal/wz;->newIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v6

    iput-object v6, v0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    or-int/lit8 v4, v4, 0x1

    :cond_e
    iget-object v6, v0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v7

    check-cast v6, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/DH;->j(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_3
    move v3, v7

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
    and-int/lit8 p2, v4, 0x1

    if-eqz p2, :cond_10

    iget-object p2, v0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    check-cast p2, Lcom/android/tools/r8/internal/s1;

    iput-boolean v2, p2, Lcom/android/tools/r8/internal/s1;->b:Z

    :cond_10
    and-int/lit8 p2, v4, 0x2

    if-eqz p2, :cond_11

    iget-object p2, v0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    check-cast p2, Lcom/android/tools/r8/internal/s1;

    iput-boolean v2, p2, Lcom/android/tools/r8/internal/s1;->b:Z

    :cond_11
    and-int/lit8 p2, v4, 0x10

    if-eqz p2, :cond_12

    iget-object p2, v0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    :cond_12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    throw p1

    :cond_13
    and-int/lit8 p1, v4, 0x1

    if-eqz p1, :cond_14

    iget-object p1, v0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    check-cast p1, Lcom/android/tools/r8/internal/s1;

    iput-boolean v2, p1, Lcom/android/tools/r8/internal/s1;->b:Z

    :cond_14
    and-int/lit8 p1, v4, 0x2

    if-eqz p1, :cond_15

    iget-object p1, v0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    check-cast p1, Lcom/android/tools/r8/internal/s1;

    iput-boolean v2, p1, Lcom/android/tools/r8/internal/s1;->b:Z

    :cond_15
    and-int/lit8 p1, v4, 0x10

    if-eqz p1, :cond_16

    iget-object p1, v0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    :cond_16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-object v0
.end method
