.class public final Lcom/android/tools/r8/internal/g90;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/g90;

.field public static final i:Lcom/android/tools/r8/internal/e90;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:I

.field public f:B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/e90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/e90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/g90;->i:Lcom/android/tools/r8/internal/e90;

    new-instance v0, Lcom/android/tools/r8/internal/g90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/g90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/g90;->h:Lcom/android/tools/r8/internal/g90;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/g90;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/g90;->f:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/g90;->g:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/g90;->f:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/g90;->g:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/g90;->e:I

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 15
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 17
    invoke-virtual {p0, p1, v2, p2, v4}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

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

    .line 18
    :cond_1
    iget v4, p0, Lcom/android/tools/r8/internal/g90;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/g90;->d:I

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 20
    iput v4, p0, Lcom/android/tools/r8/internal/g90;->e:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v3

    goto :goto_0

    .line 21
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 24
    throw p2

    .line 25
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 26
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_4
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_3

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    .line 30
    throw p1

    .line 31
    :catch_2
    :cond_3
    :goto_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    .line 32
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 33
    throw p1

    .line 34
    :cond_4
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    .line 37
    throw p1

    .line 38
    :catch_3
    :cond_5
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/f90;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/g90;->f:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/g90;->g:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/g90;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/g90;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/g90;->e:I

    .line 12
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/android/tools/r8/internal/g90;->g:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/g90;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/g90;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/g90;->e:I

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_0
    const/16 v1, 0xc8

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/f90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/f90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/f90;->a(Lcom/android/tools/r8/internal/g90;)Lcom/android/tools/r8/internal/f90;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/g90;->h:Lcom/android/tools/r8/internal/g90;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/android/tools/r8/internal/g90;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/g90;->f:B

    return v2

    :cond_2
    iput-byte v1, p0, Lcom/android/tools/r8/internal/g90;->f:B

    return v1
.end method
