.class public final Lcom/android/tools/r8/internal/dM;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/dM;

.field public static final i:Lcom/android/tools/r8/internal/bM;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:I

.field public e:I

.field public f:B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/bM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bM;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/dM;->i:Lcom/android/tools/r8/internal/bM;

    new-instance v0, Lcom/android/tools/r8/internal/dM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dM;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/dM;->d:I

    iput v1, v0, Lcom/android/tools/r8/internal/dM;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/dM;->f:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/dM;->g:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/dM;->f:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/dM;->g:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/dM;->d:I

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/dM;->e:I

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 16
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 18
    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 19
    :cond_1
    iget v4, p0, Lcom/android/tools/r8/internal/dM;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/tools/r8/internal/dM;->c:I

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 21
    iput v4, p0, Lcom/android/tools/r8/internal/dM;->e:I

    goto :goto_0

    .line 22
    :cond_2
    iget v4, p0, Lcom/android/tools/r8/internal/dM;->c:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/dM;->c:I

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 24
    iput v4, p0, Lcom/android/tools/r8/internal/dM;->d:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    move v0, v3

    goto :goto_0

    .line 25
    :goto_2
    :try_start_1
    new-instance v0, Lcom/android/tools/r8/internal/LJ;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p0, v0, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 28
    throw v0

    .line 29
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 30
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_4
    :try_start_2
    iget-object v0, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    .line 34
    throw p1

    .line 35
    :catch_2
    :cond_4
    :goto_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    .line 36
    throw p1

    .line 37
    :cond_5
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    .line 39
    :cond_6
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    .line 40
    throw p1

    .line 41
    :catch_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/cM;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/dM;->f:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/dM;->g:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;
    .locals 1

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/cM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cM;-><init>()V

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/dM;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dM;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 13
    iget v0, p0, Lcom/android/tools/r8/internal/dM;->d:I

    .line 14
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/dM;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 16
    iget v1, p0, Lcom/android/tools/r8/internal/dM;->e:I

    .line 17
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    iput v1, p0, Lcom/android/tools/r8/internal/dM;->g:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dM;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/dM;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/dM;->d:I

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dM;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/dM;->e:I

    .line 8
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/dM;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/cM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cM;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/dM;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput-byte v1, p0, Lcom/android/tools/r8/internal/dM;->f:B

    return v1
.end method
