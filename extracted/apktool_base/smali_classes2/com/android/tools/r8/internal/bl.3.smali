.class public final Lcom/android/tools/r8/internal/bl;
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

    new-instance v0, Lcom/android/tools/r8/internal/dl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dl;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    invoke-virtual {v0, p1, v1, p2, v3}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_1
    iget v3, v0, Lcom/android/tools/r8/internal/dl;->b:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/tools/r8/internal/dl;->d:Lcom/android/tools/r8/internal/gl;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/gl;->a()Lcom/android/tools/r8/internal/fl;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/android/tools/r8/internal/gl;->f:Lcom/android/tools/r8/internal/el;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/gl;

    iput-object v4, v0, Lcom/android/tools/r8/internal/dl;->d:Lcom/android/tools/r8/internal/gl;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fl;->d()Lcom/android/tools/r8/internal/gl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/dl;->d:Lcom/android/tools/r8/internal/gl;

    :cond_3
    iget v3, v0, Lcom/android/tools/r8/internal/dl;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/android/tools/r8/internal/dl;->b:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v3

    iget v5, v0, Lcom/android/tools/r8/internal/dl;->b:I

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/tools/r8/internal/dl;->b:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/dl;->c:Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_2
    move v2, v4

    goto :goto_0

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

    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-object v0
.end method
