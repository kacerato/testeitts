.class public final Lcom/android/tools/r8/internal/Ak;
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
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/Ek;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ek;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {v0, p1, v1, p2, v3}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v3

    if-nez v3, :cond_0

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
    iget v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Ek;->m:Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_2
    iget v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v3

    iput v3, v0, Lcom/android/tools/r8/internal/Ek;->j:I

    goto :goto_0

    :sswitch_3
    iget v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Jk;->b()Lcom/android/tools/r8/internal/Gk;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/android/tools/r8/internal/Jk;->m:Lcom/android/tools/r8/internal/Fk;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Jk;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Gk;->d()Lcom/android/tools/r8/internal/Jk;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_2
    iget v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/Ek;->i:Ljava/io/Serializable;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/Ek;->g:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/Dk;->a(I)Lcom/android/tools/r8/internal/Dk;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/android/tools/r8/internal/kv0;->a(II)V

    goto/16 :goto_0

    :cond_3
    iget v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    iput v3, v0, Lcom/android/tools/r8/internal/Ek;->f:I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v4

    const/4 v5, 0x4

    if-nez v4, :cond_4

    invoke-virtual {v1, v5, v3}, Lcom/android/tools/r8/internal/kv0;->a(II)V

    goto/16 :goto_0

    :cond_4
    iget v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    iput v3, v0, Lcom/android/tools/r8/internal/Ek;->e:I

    goto/16 :goto_0

    :sswitch_8
    iget v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v3

    iput v3, v0, Lcom/android/tools/r8/internal/Ek;->d:I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/Ek;->h:Ljava/io/Serializable;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v5, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/Ek;->c:Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_b
    move v2, v4

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
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x48 -> :sswitch_2
        0x52 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method
