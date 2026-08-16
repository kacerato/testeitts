.class public final Lcom/android/tools/r8/internal/B90;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final i:Lcom/android/tools/r8/internal/B90;

.field public static final j:Lcom/android/tools/r8/internal/y90;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/android/tools/r8/internal/A90;

.field public g:B

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/y90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/y90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/B90;->j:Lcom/android/tools/r8/internal/y90;

    new-instance v0, Lcom/android/tools/r8/internal/B90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/B90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/B90;->i:Lcom/android/tools/r8/internal/B90;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/B90;->d:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/B90;->e:I

    sget-object v1, Lcom/android/tools/r8/internal/A90;->d:Lcom/android/tools/r8/internal/A90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/B90;->f:Lcom/android/tools/r8/internal/A90;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/B90;->g:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/B90;->h:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/B90;->g:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/B90;->h:I

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/B90;->d:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/B90;->e:I

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/A90;->d:Lcom/android/tools/r8/internal/A90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/B90;->f:Lcom/android/tools/r8/internal/A90;

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 17
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    :cond_0
    :goto_0
    if-nez v0, :cond_a

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    const/16 v5, 0x10

    const/4 v6, 0x2

    if-eq v4, v5, :cond_6

    const/16 v5, 0x18

    if-eq v4, v5, :cond_1

    .line 19
    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v4

    if-nez v4, :cond_0

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

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v5

    if-eqz v5, :cond_4

    if-eq v5, v3, :cond_3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    .line 21
    :cond_2
    sget-object v6, Lcom/android/tools/r8/internal/A90;->e:Lcom/android/tools/r8/internal/A90;

    goto :goto_1

    .line 22
    :cond_3
    sget-object v6, Lcom/android/tools/r8/internal/A90;->d:Lcom/android/tools/r8/internal/A90;

    goto :goto_1

    .line 23
    :cond_4
    sget-object v6, Lcom/android/tools/r8/internal/A90;->c:Lcom/android/tools/r8/internal/A90;

    :goto_1
    if-nez v6, :cond_5

    .line 24
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 25
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto :goto_0

    .line 26
    :cond_5
    iget v4, p0, Lcom/android/tools/r8/internal/B90;->c:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/tools/r8/internal/B90;->c:I

    .line 27
    iput-object v6, p0, Lcom/android/tools/r8/internal/B90;->f:Lcom/android/tools/r8/internal/A90;

    goto :goto_0

    .line 28
    :cond_6
    iget v4, p0, Lcom/android/tools/r8/internal/B90;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/android/tools/r8/internal/B90;->c:I

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 30
    iput v4, p0, Lcom/android/tools/r8/internal/B90;->e:I

    goto :goto_0

    .line 31
    :cond_7
    iget v4, p0, Lcom/android/tools/r8/internal/B90;->c:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/B90;->c:I

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 33
    iput v4, p0, Lcom/android/tools/r8/internal/B90;->d:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_2
    move v0, v3

    goto :goto_0

    .line 34
    :goto_3
    :try_start_1
    new-instance v0, Lcom/android/tools/r8/internal/LJ;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p0, v0, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 37
    throw v0

    .line 38
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 39
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_5
    :try_start_2
    iget-object v0, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    .line 43
    throw p1

    .line 44
    :catch_2
    :cond_9
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    .line 45
    throw p1

    .line 46
    :cond_a
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_b

    .line 47
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    .line 48
    :cond_b
    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    .line 49
    throw p1

    .line 50
    :catch_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/z90;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/B90;->g:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/B90;->h:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 16
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 17
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 18
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->d:I

    .line 19
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/B90;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 21
    iget v1, p0, Lcom/android/tools/r8/internal/B90;->e:I

    .line 22
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/B90;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/B90;->f:Lcom/android/tools/r8/internal/A90;

    .line 25
    iget v1, v1, Lcom/android/tools/r8/internal/A90;->b:I

    const/4 v2, 0x3

    .line 26
    invoke-static {v2}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 28
    iput v1, p0, Lcom/android/tools/r8/internal/B90;->h:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B90;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->d:I

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->e:I

    .line 8
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/B90;->f:Lcom/android/tools/r8/internal/A90;

    .line 12
    iget v0, v0, Lcom/android/tools/r8/internal/A90;->b:I

    const/4 v1, 0x3

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/B90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/z90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/z90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/z90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/z90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/z90;->a(Lcom/android/tools/r8/internal/B90;)Lcom/android/tools/r8/internal/z90;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/B90;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/B90;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iput-byte v1, p0, Lcom/android/tools/r8/internal/B90;->g:B

    return v1

    :cond_2
    iput-byte v2, p0, Lcom/android/tools/r8/internal/B90;->g:B

    return v2
.end method
