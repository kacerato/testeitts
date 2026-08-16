.class public final Lcom/android/tools/r8/internal/Uk;
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

    new-instance v0, Lcom/android/tools/r8/internal/Wk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wk;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    const/16 v5, 0xa

    if-eq v3, v5, :cond_8

    const/16 v5, 0x12

    if-eq v3, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_6

    const/16 v5, 0x22

    if-eq v3, v5, :cond_3

    const/16 v5, 0x28

    if-eq v3, v5, :cond_2

    const/16 v5, 0x30

    if-eq v3, v5, :cond_1

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

    :cond_1
    iget v3, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Wk;->h:Z

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Wk;->g:Z

    goto :goto_0

    :cond_3
    iget v3, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/al;->a()Lcom/android/tools/r8/internal/Yk;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/android/tools/r8/internal/al;->i:Lcom/android/tools/r8/internal/Xk;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/al;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Yk;->a(Lcom/android/tools/r8/internal/al;)Lcom/android/tools/r8/internal/Yk;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Yk;->d()Lcom/android/tools/r8/internal/al;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    :cond_5
    iget v3, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v4, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/Wk;->e:Ljava/io/Serializable;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v4, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/Wk;->d:Ljava/io/Serializable;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v5, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/Wk;->c:Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
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

    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-object v0
.end method
