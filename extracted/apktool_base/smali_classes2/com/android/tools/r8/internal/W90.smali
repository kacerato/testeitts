.class public final Lcom/android/tools/r8/internal/W90;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/W90;

.field public static final i:Lcom/android/tools/r8/internal/U90;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:Ljava/util/List;

.field public e:I

.field public f:B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/U90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/W90;->i:Lcom/android/tools/r8/internal/U90;

    new-instance v0, Lcom/android/tools/r8/internal/W90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/W90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/W90;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/W90;->f:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/W90;->g:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/W90;->f:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/W90;->g:I

    .line 13
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/W90;->e:I

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-nez v3, :cond_7

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    const/16 v6, 0x10

    if-eq v5, v6, :cond_1

    .line 18
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

    .line 19
    :cond_1
    iget v5, p0, Lcom/android/tools/r8/internal/W90;->c:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/android/tools/r8/internal/W90;->c:I

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v5

    .line 21
    iput v5, p0, Lcom/android/tools/r8/internal/W90;->e:I

    goto :goto_0

    :cond_2
    if-eq v4, v2, :cond_3

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    move v4, v2

    .line 23
    :cond_3
    iget-object v5, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    sget-object v6, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v3, v2

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
    if-ne v4, v2, :cond_5

    .line 30
    iget-object p2, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    .line 31
    :cond_5
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_6

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    .line 34
    throw p1

    .line 35
    :catch_2
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    .line 36
    throw p1

    :cond_7
    if-ne v4, v2, :cond_8

    .line 37
    iget-object p1, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    .line 38
    :cond_8
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_9

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
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
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    .line 41
    throw p1

    .line 42
    :catch_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/V90;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/W90;->f:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/W90;->g:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;
    .locals 1

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/V90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/V90;-><init>()V

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/W90;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    .line 12
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/W90;->c:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/W90;->e:I

    const/4 v2, 0x2

    .line 15
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/W90;->g:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W90;->a()I

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/W90;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    .line 5
    iget v1, p0, Lcom/android/tools/r8/internal/W90;->e:I

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/V90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/V90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/internal/W90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/V90;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/internal/W90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/W90;->f:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/W90;->f:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Lcom/android/tools/r8/internal/W90;->f:B

    return v1
.end method
