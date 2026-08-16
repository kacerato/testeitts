.class public final Lcom/android/tools/r8/internal/O80;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/O80;

.field public static final i:Lcom/android/tools/r8/internal/F80;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:I

.field public e:Ljava/util/List;

.field public f:B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/F80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/F80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/O80;->i:Lcom/android/tools/r8/internal/F80;

    new-instance v0, Lcom/android/tools/r8/internal/O80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/O80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/O80;->h:Lcom/android/tools/r8/internal/O80;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/O80;->d:I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/O80;->f:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/O80;->g:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 8

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/O80;->f:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/O80;->g:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/O80;->d:I

    .line 14
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 16
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    move v4, v0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v0, :cond_7

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    const/16 v7, 0x12

    if-eq v6, v7, :cond_1

    .line 18
    invoke-virtual {p1, v6, v2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

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

    :cond_1
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_2

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    move v4, v5

    .line 20
    :cond_2
    iget-object v6, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    sget-object v7, Lcom/android/tools/r8/internal/M80;->i:Lcom/android/tools/r8/internal/G80;

    invoke-virtual {p1, v7, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_3
    iget v6, p0, Lcom/android/tools/r8/internal/O80;->c:I

    or-int/2addr v6, v3

    iput v6, p0, Lcom/android/tools/r8/internal/O80;->c:I

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 23
    iput v6, p0, Lcom/android/tools/r8/internal/O80;->d:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v0, v3

    goto :goto_0

    .line 24
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 27
    throw p2

    .line 28
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 29
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_5

    .line 30
    iget-object p2, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    .line 31
    :cond_5
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_6

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

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    .line 34
    throw p1

    .line 35
    :catch_2
    :cond_6
    :goto_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    .line 36
    throw p1

    :cond_7
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_8

    .line 37
    iget-object p1, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    .line 38
    :cond_8
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_9

    .line 39
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    .line 40
    :cond_9
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    .line 41
    throw p1

    .line 42
    :catch_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/N80;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/O80;->f:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/O80;->g:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/O80;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/O80;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/O80;->d:I

    .line 12
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    iput v1, p0, Lcom/android/tools/r8/internal/O80;->g:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O80;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/O80;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/O80;->d:I

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/O0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/N80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/N80;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/N80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/N80;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/O80;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/O80;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M80;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/M80;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/O80;->f:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Lcom/android/tools/r8/internal/O80;->f:B

    return v1

    :cond_4
    iput-byte v2, p0, Lcom/android/tools/r8/internal/O80;->f:B

    return v2
.end method
