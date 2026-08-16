.class public final Lcom/android/tools/r8/internal/F90;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final f:Lcom/android/tools/r8/internal/F90;

.field public static final g:Lcom/android/tools/r8/internal/D90;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:Lcom/android/tools/r8/internal/yR;

.field public d:B

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/D90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/D90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/F90;->g:Lcom/android/tools/r8/internal/D90;

    new-instance v0, Lcom/android/tools/r8/internal/F90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/F90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/F90;->f:Lcom/android/tools/r8/internal/F90;

    sget-object v1, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/F90;->d:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/F90;->e:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/F90;->d:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/F90;->e:I

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-nez v3, :cond_6

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    .line 17
    invoke-virtual {p1, v5, v1}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v5

    if-nez v5, :cond_0

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
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object v5

    if-eq v4, v2, :cond_2

    .line 19
    new-instance v6, Lcom/android/tools/r8/internal/wR;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/wR;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    move v4, v2

    .line 20
    :cond_2
    iget-object v6, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v6, v5}, Lcom/android/tools/r8/internal/yR;->a(Lcom/android/tools/r8/internal/ET;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    move v3, v2

    goto :goto_0

    .line 21
    :goto_2
    :try_start_1
    new-instance v3, Lcom/android/tools/r8/internal/LJ;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p0, v3, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 24
    throw v3

    .line 25
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 26
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-ne v4, v2, :cond_4

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    .line 28
    :cond_4
    :try_start_2
    iget-object v2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v2, :cond_5

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    .line 31
    throw p1

    .line 32
    :catch_2
    :cond_5
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    .line 33
    throw p1

    :cond_6
    if-ne v4, v2, :cond_7

    .line 34
    iget-object p1, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    .line 35
    :cond_7
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_8

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    .line 37
    :cond_8
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    .line 38
    throw p1

    .line 39
    :catch_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/E90;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/F90;->d:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/F90;->e:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/F90;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    .line 8
    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 13
    iput v1, p0, Lcom/android/tools/r8/internal/F90;->e:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F90;->a()I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/l8;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/E90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/E90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/E90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/E90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/F90;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput-byte v1, p0, Lcom/android/tools/r8/internal/F90;->d:B

    return v1
.end method
