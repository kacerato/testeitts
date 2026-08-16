.class public final Lcom/android/tools/r8/internal/Fk;
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

    new-instance v0, Lcom/android/tools/r8/internal/Jk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jk;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/16 v4, 0x40

    if-nez v2, :cond_d

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    const/16 v7, 0x8

    if-eq v5, v7, :cond_9

    const/16 v8, 0x10

    if-eq v5, v8, :cond_8

    const/16 v9, 0x18

    if-eq v5, v9, :cond_7

    const/16 v8, 0x28

    if-eq v5, v8, :cond_6

    const/16 v7, 0x30

    if-eq v5, v7, :cond_4

    const/16 v7, 0x50

    if-eq v5, v7, :cond_3

    const/16 v7, 0x1f3a

    if-eq v5, v7, :cond_1

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

    :cond_1
    and-int/lit8 v5, v3, 0x40

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    move v3, v4

    :cond_2
    iget-object v5, v0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    sget-object v6, Lcom/android/tools/r8/internal/yl;->l:Lcom/android/tools/r8/internal/tl;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget v5, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Jk;->i:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Ik;->a(I)Lcom/android/tools/r8/internal/Ik;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v6, 0x6

    invoke-virtual {v1, v6, v5}, Lcom/android/tools/r8/internal/kv0;->a(II)V

    goto :goto_0

    :cond_5
    iget v6, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    iput v5, v0, Lcom/android/tools/r8/internal/Jk;->f:I

    goto :goto_0

    :cond_6
    iget v5, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    or-int/2addr v5, v7

    iput v5, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Jk;->g:Z

    goto/16 :goto_0

    :cond_7
    iget v5, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    or-int/2addr v5, v8

    iput v5, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Jk;->h:Z

    goto/16 :goto_0

    :cond_8
    iget v5, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/Jk;->e:Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Hk;->a(I)Lcom/android/tools/r8/internal/Hk;

    move-result-object v7

    if-nez v7, :cond_a

    invoke-virtual {v1, v6, v5}, Lcom/android/tools/r8/internal/kv0;->a(II)V

    goto/16 :goto_0

    :cond_a
    iget v7, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    iput v5, v0, Lcom/android/tools/r8/internal/Jk;->d:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
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
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_c

    iget-object p2, v0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p2, v0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw;->d()V

    throw p1

    :cond_d
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_e

    iget-object p1, v0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    :cond_e
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, v0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw;->d()V

    return-object v0
.end method
