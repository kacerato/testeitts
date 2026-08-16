.class public final Lcom/android/tools/r8/internal/M80;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/M80;

.field public static final i:Lcom/android/tools/r8/internal/G80;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:I

.field public e:Lcom/android/tools/r8/internal/L80;

.field public f:B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/G80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/G80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/M80;->i:Lcom/android/tools/r8/internal/G80;

    new-instance v0, Lcom/android/tools/r8/internal/M80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/M80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/M80;->h:Lcom/android/tools/r8/internal/M80;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/M80;->d:I

    sget-object v1, Lcom/android/tools/r8/internal/L80;->q:Lcom/android/tools/r8/internal/L80;

    iput-object v1, v0, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/M80;->f:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/M80;->g:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/M80;->f:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/M80;->g:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/M80;->d:I

    .line 14
    sget-object v1, Lcom/android/tools/r8/internal/L80;->q:Lcom/android/tools/r8/internal/L80;

    .line 15
    iput-object v1, p0, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

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
    if-nez v0, :cond_7

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12

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
    iget v4, p0, Lcom/android/tools/r8/internal/M80;->c:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 21
    iget-object v4, p0, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v6, Lcom/android/tools/r8/internal/J80;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/J80;-><init>()V

    .line 23
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/J80;->a(Lcom/android/tools/r8/internal/L80;)Lcom/android/tools/r8/internal/J80;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 24
    :goto_1
    sget-object v6, Lcom/android/tools/r8/internal/L80;->r:Lcom/android/tools/r8/internal/I80;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/L80;

    iput-object v6, p0, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

    if-eqz v4, :cond_3

    .line 25
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/J80;->a(Lcom/android/tools/r8/internal/L80;)Lcom/android/tools/r8/internal/J80;

    .line 26
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/J80;->c()Lcom/android/tools/r8/internal/L80;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

    .line 27
    :cond_3
    iget v4, p0, Lcom/android/tools/r8/internal/M80;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/tools/r8/internal/M80;->c:I

    goto :goto_0

    .line 28
    :cond_4
    iget v4, p0, Lcom/android/tools/r8/internal/M80;->c:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/M80;->c:I

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 30
    iput v4, p0, Lcom/android/tools/r8/internal/M80;->d:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_2
    move v0, v3

    goto :goto_0

    .line 31
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 34
    throw p2

    .line 35
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 36
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_5
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_6

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    .line 40
    throw p1

    .line 41
    :catch_2
    :cond_6
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    .line 42
    throw p1

    .line 43
    :cond_7
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_8

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    .line 45
    :cond_8
    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    .line 46
    throw p1

    .line 47
    :catch_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/H80;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/M80;->f:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/M80;->g:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/M80;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/M80;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/M80;->d:I

    .line 12
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/M80;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

    .line 15
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    iput v1, p0, Lcom/android/tools/r8/internal/M80;->g:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M80;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/M80;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/M80;->d:I

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/M80;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M80;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/H80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/H80;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/H80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/H80;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/H80;->a(Lcom/android/tools/r8/internal/M80;)Lcom/android/tools/r8/internal/H80;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/M80;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/M80;->c:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_4

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/M80;->e:Lcom/android/tools/r8/internal/L80;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L80;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/M80;->f:B

    return v2

    :cond_2
    iput-byte v1, p0, Lcom/android/tools/r8/internal/M80;->f:B

    return v1

    :cond_3
    iput-byte v2, p0, Lcom/android/tools/r8/internal/M80;->f:B

    return v2

    :cond_4
    iput-byte v2, p0, Lcom/android/tools/r8/internal/M80;->f:B

    return v2
.end method
