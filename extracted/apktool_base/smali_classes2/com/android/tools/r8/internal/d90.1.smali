.class public final Lcom/android/tools/r8/internal/d90;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final j:Lcom/android/tools/r8/internal/d90;

.field public static final k:Lcom/android/tools/r8/internal/Z80;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:Lcom/android/tools/r8/internal/b90;

.field public e:Ljava/util/List;

.field public f:Lcom/android/tools/r8/internal/k90;

.field public g:Lcom/android/tools/r8/internal/c90;

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Z80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Z80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/d90;->k:Lcom/android/tools/r8/internal/Z80;

    new-instance v0, Lcom/android/tools/r8/internal/d90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/d90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/d90;->j:Lcom/android/tools/r8/internal/d90;

    sget-object v1, Lcom/android/tools/r8/internal/b90;->c:Lcom/android/tools/r8/internal/b90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/d90;->d:Lcom/android/tools/r8/internal/b90;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/internal/k90;->m:Lcom/android/tools/r8/internal/k90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    sget-object v1, Lcom/android/tools/r8/internal/c90;->c:Lcom/android/tools/r8/internal/c90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/d90;->g:Lcom/android/tools/r8/internal/c90;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/d90;->h:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/d90;->i:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/d90;->h:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/d90;->i:I

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/b90;->c:Lcom/android/tools/r8/internal/b90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d90;->d:Lcom/android/tools/r8/internal/b90;

    .line 14
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    .line 15
    sget-object v0, Lcom/android/tools/r8/internal/k90;->m:Lcom/android/tools/r8/internal/k90;

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    .line 17
    sget-object v0, Lcom/android/tools/r8/internal/c90;->c:Lcom/android/tools/r8/internal/c90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/d90;->g:Lcom/android/tools/r8/internal/c90;

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 19
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v3, :cond_13

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v6

    if-eqz v6, :cond_10

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eq v6, v7, :cond_b

    const/16 v7, 0x12

    if-eq v6, v7, :cond_9

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_1

    .line 21
    invoke-virtual {p1, v6, v1}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

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

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    if-eqz v7, :cond_4

    if-eq v7, v2, :cond_3

    if-eq v7, v5, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    sget-object v8, Lcom/android/tools/r8/internal/c90;->e:Lcom/android/tools/r8/internal/c90;

    goto :goto_1

    .line 24
    :cond_3
    sget-object v8, Lcom/android/tools/r8/internal/c90;->d:Lcom/android/tools/r8/internal/c90;

    goto :goto_1

    .line 25
    :cond_4
    sget-object v8, Lcom/android/tools/r8/internal/c90;->c:Lcom/android/tools/r8/internal/c90;

    :goto_1
    if-nez v8, :cond_5

    .line 26
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 27
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto :goto_0

    .line 28
    :cond_5
    iget v6, p0, Lcom/android/tools/r8/internal/d90;->c:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/tools/r8/internal/d90;->c:I

    .line 29
    iput-object v8, p0, Lcom/android/tools/r8/internal/d90;->g:Lcom/android/tools/r8/internal/c90;

    goto :goto_0

    .line 30
    :cond_6
    iget v6, p0, Lcom/android/tools/r8/internal/d90;->c:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_7

    .line 31
    iget-object v6, p0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v7, Lcom/android/tools/r8/internal/i90;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/i90;-><init>()V

    .line 33
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    move-result-object v8

    .line 34
    :cond_7
    sget-object v6, Lcom/android/tools/r8/internal/k90;->n:Lcom/android/tools/r8/internal/h90;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/k90;

    iput-object v6, p0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    if-eqz v8, :cond_8

    .line 35
    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    .line 36
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/i90;->c()Lcom/android/tools/r8/internal/k90;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    .line 37
    :cond_8
    iget v6, p0, Lcom/android/tools/r8/internal/d90;->c:I

    or-int/2addr v6, v5

    iput v6, p0, Lcom/android/tools/r8/internal/d90;->c:I

    goto :goto_0

    :cond_9
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_a

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    move v4, v5

    .line 39
    :cond_a
    iget-object v6, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    sget-object v7, Lcom/android/tools/r8/internal/k90;->n:Lcom/android/tools/r8/internal/h90;

    invoke-virtual {p1, v7, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    if-eqz v7, :cond_e

    if-eq v7, v2, :cond_d

    if-eq v7, v5, :cond_c

    goto :goto_2

    .line 41
    :cond_c
    sget-object v8, Lcom/android/tools/r8/internal/b90;->e:Lcom/android/tools/r8/internal/b90;

    goto :goto_2

    .line 42
    :cond_d
    sget-object v8, Lcom/android/tools/r8/internal/b90;->d:Lcom/android/tools/r8/internal/b90;

    goto :goto_2

    .line 43
    :cond_e
    sget-object v8, Lcom/android/tools/r8/internal/b90;->c:Lcom/android/tools/r8/internal/b90;

    :goto_2
    if-nez v8, :cond_f

    .line 44
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 45
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto/16 :goto_0

    .line 46
    :cond_f
    iget v6, p0, Lcom/android/tools/r8/internal/d90;->c:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/android/tools/r8/internal/d90;->c:I

    .line 47
    iput-object v8, p0, Lcom/android/tools/r8/internal/d90;->d:Lcom/android/tools/r8/internal/b90;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_3
    move v3, v2

    goto/16 :goto_0

    .line 48
    :goto_4
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 51
    throw p2

    .line 52
    :goto_5
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 53
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_11

    .line 54
    iget-object p2, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    .line 55
    :cond_11
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_12

    .line 56
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    .line 58
    throw p1

    .line 59
    :catch_2
    :cond_12
    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    .line 60
    throw p1

    :cond_13
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_14

    .line 61
    iget-object p1, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    .line 62
    :cond_14
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_15

    .line 63
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p1

    goto :goto_9

    .line 64
    :cond_15
    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    .line 65
    throw p1

    .line 66
    :catch_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/a90;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/d90;->h:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/d90;->i:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/d90;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 18
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/d90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/d90;->d:Lcom/android/tools/r8/internal/b90;

    .line 20
    iget v0, v0, Lcom/android/tools/r8/internal/b90;->b:I

    .line 21
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/d90;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    const/4 v2, 0x3

    .line 27
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/d90;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/d90;->g:Lcom/android/tools/r8/internal/c90;

    .line 30
    iget v1, v1, Lcom/android/tools/r8/internal/c90;->b:I

    .line 31
    invoke-static {v2}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 32
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 33
    iput v1, p0, Lcom/android/tools/r8/internal/d90;->i:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/d90;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/d90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/d90;->d:Lcom/android/tools/r8/internal/b90;

    .line 4
    iget v0, v0, Lcom/android/tools/r8/internal/b90;->b:I

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_0
    move v0, v2

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p1, v3, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/d90;->c:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 11
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/d90;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/d90;->g:Lcom/android/tools/r8/internal/c90;

    .line 13
    iget v0, v0, Lcom/android/tools/r8/internal/c90;->b:I

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/a90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/a90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/a90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/a90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/a90;->a(Lcom/android/tools/r8/internal/d90;)Lcom/android/tools/r8/internal/a90;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/d90;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/k90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/k90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/d90;->h:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/d90;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/d90;->h:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/android/tools/r8/internal/d90;->h:B

    return v1
.end method
