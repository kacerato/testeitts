.class public final Lcom/android/tools/r8/internal/ea0;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final l:Lcom/android/tools/r8/internal/ea0;

.field public static final m:Lcom/android/tools/r8/internal/aa0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/android/tools/r8/internal/ca0;

.field public g:I

.field public h:I

.field public i:Lcom/android/tools/r8/internal/da0;

.field public j:B

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/aa0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/aa0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ea0;->m:Lcom/android/tools/r8/internal/aa0;

    new-instance v0, Lcom/android/tools/r8/internal/ea0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ea0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ea0;->l:Lcom/android/tools/r8/internal/ea0;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/ea0;->d:I

    iput v1, v0, Lcom/android/tools/r8/internal/ea0;->e:I

    sget-object v2, Lcom/android/tools/r8/internal/ca0;->d:Lcom/android/tools/r8/internal/ca0;

    iput-object v2, v0, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    iput v1, v0, Lcom/android/tools/r8/internal/ea0;->g:I

    iput v1, v0, Lcom/android/tools/r8/internal/ea0;->h:I

    sget-object v1, Lcom/android/tools/r8/internal/da0;->c:Lcom/android/tools/r8/internal/da0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/ea0;->j:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/ea0;->k:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;)V
    .locals 10

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/ea0;->j:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/ea0;->k:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/ea0;->d:I

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/ea0;->e:I

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/ca0;->d:Lcom/android/tools/r8/internal/ca0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    .line 16
    iput v0, p0, Lcom/android/tools/r8/internal/ea0;->g:I

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/ea0;->h:I

    .line 18
    sget-object v1, Lcom/android/tools/r8/internal/da0;->c:Lcom/android/tools/r8/internal/da0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    .line 19
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 20
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    :cond_0
    :goto_0
    if-nez v0, :cond_11

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v5, 0x8

    if-eq v4, v5, :cond_e

    const/16 v6, 0x10

    const/4 v7, 0x2

    if-eq v4, v6, :cond_d

    const/16 v8, 0x18

    const/4 v9, 0x0

    if-eq v4, v8, :cond_8

    const/16 v8, 0x20

    if-eq v4, v8, :cond_7

    const/16 v5, 0x28

    if-eq v4, v5, :cond_6

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    .line 22
    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_7

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v5

    if-eqz v5, :cond_4

    if-eq v5, v3, :cond_3

    if-eq v5, v7, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    sget-object v6, Lcom/android/tools/r8/internal/da0;->e:Lcom/android/tools/r8/internal/da0;

    :goto_1
    move-object v9, v6

    goto :goto_2

    .line 25
    :cond_3
    sget-object v6, Lcom/android/tools/r8/internal/da0;->d:Lcom/android/tools/r8/internal/da0;

    goto :goto_1

    .line 26
    :cond_4
    sget-object v6, Lcom/android/tools/r8/internal/da0;->c:Lcom/android/tools/r8/internal/da0;

    goto :goto_1

    :goto_2
    if-nez v9, :cond_5

    .line 27
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 28
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto :goto_0

    .line 29
    :cond_5
    iget v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    or-int/2addr v4, v8

    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    .line 30
    iput-object v9, p0, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    goto :goto_0

    .line 31
    :cond_6
    iget v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 33
    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->h:I

    goto :goto_0

    .line 34
    :cond_7
    iget v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 36
    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->g:I

    goto :goto_0

    .line 37
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v3, :cond_a

    if-eq v5, v7, :cond_9

    goto :goto_4

    .line 38
    :cond_9
    sget-object v6, Lcom/android/tools/r8/internal/ca0;->e:Lcom/android/tools/r8/internal/ca0;

    :goto_3
    move-object v9, v6

    goto :goto_4

    .line 39
    :cond_a
    sget-object v6, Lcom/android/tools/r8/internal/ca0;->d:Lcom/android/tools/r8/internal/ca0;

    goto :goto_3

    .line 40
    :cond_b
    sget-object v6, Lcom/android/tools/r8/internal/ca0;->c:Lcom/android/tools/r8/internal/ca0;

    goto :goto_3

    :goto_4
    if-nez v9, :cond_c

    .line 41
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 42
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto/16 :goto_0

    .line 43
    :cond_c
    iget v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    .line 44
    iput-object v9, p0, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    goto/16 :goto_0

    .line 45
    :cond_d
    iget v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    or-int/2addr v4, v7

    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 47
    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->e:I

    goto/16 :goto_0

    .line 48
    :cond_e
    iget v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 50
    iput v4, p0, Lcom/android/tools/r8/internal/ea0;->d:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_5
    move v0, v3

    goto/16 :goto_0

    .line 51
    :goto_6
    :try_start_1
    new-instance v0, Lcom/android/tools/r8/internal/LJ;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p0, v0, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 54
    throw v0

    .line 55
    :goto_7
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 56
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_8
    :try_start_2
    iget-object v0, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_10

    .line 58
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception p1

    .line 59
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    .line 60
    throw p1

    .line 61
    :catch_2
    :cond_10
    :goto_9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    .line 62
    throw p1

    .line 63
    :cond_11
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_12

    .line 64
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception p1

    goto :goto_b

    .line 65
    :cond_12
    :goto_a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_b
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    .line 66
    throw p1

    .line 67
    :catch_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ba0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/ea0;->j:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/ea0;->k:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 29
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 30
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 31
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->d:I

    .line 32
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 34
    iget v1, p0, Lcom/android/tools/r8/internal/ea0;->e:I

    .line 35
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    .line 38
    iget v1, v1, Lcom/android/tools/r8/internal/ca0;->b:I

    const/4 v3, 0x3

    .line 39
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v3

    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 40
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 41
    iget v1, p0, Lcom/android/tools/r8/internal/ea0;->g:I

    .line 42
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 44
    iget v1, p0, Lcom/android/tools/r8/internal/ea0;->h:I

    const/4 v2, 0x5

    .line 45
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 47
    iget-object v1, p0, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    .line 48
    iget v1, v1, Lcom/android/tools/r8/internal/da0;->b:I

    const/4 v2, 0x6

    .line 49
    invoke-static {v2}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 50
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 51
    iput v1, p0, Lcom/android/tools/r8/internal/ea0;->k:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ea0;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->d:I

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->e:I

    .line 8
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    .line 12
    iget v0, v0, Lcom/android/tools/r8/internal/ca0;->b:I

    const/4 v3, 0x3

    .line 13
    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 15
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    .line 16
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->g:I

    .line 17
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 19
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->h:I

    const/4 v1, 0x5

    .line 21
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 23
    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/ea0;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    .line 25
    iget v0, v0, Lcom/android/tools/r8/internal/da0;->b:I

    const/4 v1, 0x6

    .line 26
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ba0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ba0;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ba0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ba0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/ba0;->a(Lcom/android/tools/r8/internal/ea0;)Lcom/android/tools/r8/internal/ba0;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/ea0;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput-byte v1, p0, Lcom/android/tools/r8/internal/ea0;->j:B

    return v1
.end method
