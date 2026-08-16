.class public final Lcom/android/tools/r8/internal/K90;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final i:Lcom/android/tools/r8/internal/K90;

.field public static final j:Lcom/android/tools/r8/internal/H90;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:Lcom/android/tools/r8/internal/J90;

.field public e:Lcom/android/tools/r8/internal/M90;

.field public f:I

.field public g:B

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/H90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/H90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/K90;->j:Lcom/android/tools/r8/internal/H90;

    new-instance v0, Lcom/android/tools/r8/internal/K90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/K90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/K90;->i:Lcom/android/tools/r8/internal/K90;

    sget-object v1, Lcom/android/tools/r8/internal/J90;->e:Lcom/android/tools/r8/internal/J90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/K90;->d:Lcom/android/tools/r8/internal/J90;

    sget-object v1, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/K90;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/K90;->g:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/K90;->h:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 8

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/K90;->g:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/K90;->h:I

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/J90;->e:Lcom/android/tools/r8/internal/J90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/K90;->d:Lcom/android/tools/r8/internal/J90;

    .line 14
    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/tools/r8/internal/K90;->f:I

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 18
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    :cond_0
    :goto_0
    if-nez v0, :cond_d

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v4, v5, :cond_5

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    const/16 v5, 0x18

    if-eq v4, v5, :cond_1

    .line 20
    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 21
    :cond_1
    iget v4, p0, Lcom/android/tools/r8/internal/K90;->c:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/tools/r8/internal/K90;->c:I

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 23
    iput v4, p0, Lcom/android/tools/r8/internal/K90;->f:I

    goto :goto_0

    .line 24
    :cond_2
    iget v4, p0, Lcom/android/tools/r8/internal/K90;->c:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_3

    .line 25
    iget-object v4, p0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v4}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v6

    .line 27
    :cond_3
    sget-object v4, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/M90;

    iput-object v4, p0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    if-eqz v6, :cond_4

    .line 28
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 29
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    .line 30
    :cond_4
    iget v4, p0, Lcom/android/tools/r8/internal/K90;->c:I

    or-int/2addr v4, v7

    iput v4, p0, Lcom/android/tools/r8/internal/K90;->c:I

    goto :goto_0

    .line 31
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v5

    if-eqz v5, :cond_9

    if-eq v5, v3, :cond_8

    if-eq v5, v7, :cond_7

    const/4 v7, 0x3

    if-eq v5, v7, :cond_6

    goto :goto_1

    .line 32
    :cond_6
    sget-object v6, Lcom/android/tools/r8/internal/J90;->f:Lcom/android/tools/r8/internal/J90;

    goto :goto_1

    .line 33
    :cond_7
    sget-object v6, Lcom/android/tools/r8/internal/J90;->e:Lcom/android/tools/r8/internal/J90;

    goto :goto_1

    .line 34
    :cond_8
    sget-object v6, Lcom/android/tools/r8/internal/J90;->d:Lcom/android/tools/r8/internal/J90;

    goto :goto_1

    .line 35
    :cond_9
    sget-object v6, Lcom/android/tools/r8/internal/J90;->c:Lcom/android/tools/r8/internal/J90;

    :goto_1
    if-nez v6, :cond_a

    .line 36
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 37
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto :goto_0

    .line 38
    :cond_a
    iget v4, p0, Lcom/android/tools/r8/internal/K90;->c:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/K90;->c:I

    .line 39
    iput-object v6, p0, Lcom/android/tools/r8/internal/K90;->d:Lcom/android/tools/r8/internal/J90;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_2
    move v0, v3

    goto/16 :goto_0

    .line 40
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 43
    throw p2

    .line 44
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 45
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_5
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_c

    .line 47
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 48
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    .line 49
    throw p1

    .line 50
    :catch_2
    :cond_c
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    .line 51
    throw p1

    .line 52
    :cond_d
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_e

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    .line 54
    :cond_e
    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    .line 55
    throw p1

    .line 56
    :catch_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/I90;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/K90;->g:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/K90;->h:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/K90;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 15
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/K90;->d:Lcom/android/tools/r8/internal/J90;

    .line 17
    iget v0, v0, Lcom/android/tools/r8/internal/J90;->b:I

    .line 18
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    .line 21
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 23
    iget v1, p0, Lcom/android/tools/r8/internal/K90;->f:I

    const/4 v2, 0x3

    .line 24
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 26
    iput v1, p0, Lcom/android/tools/r8/internal/K90;->h:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K90;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/K90;->d:Lcom/android/tools/r8/internal/J90;

    .line 4
    iget v0, v0, Lcom/android/tools/r8/internal/J90;->b:I

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 9
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/K90;->f:I

    const/4 v1, 0x3

    .line 11
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/I90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/I90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/I90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/I90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/I90;->a(Lcom/android/tools/r8/internal/K90;)Lcom/android/tools/r8/internal/I90;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/K90;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/K90;->g:B

    return v2

    :cond_2
    iput-byte v1, p0, Lcom/android/tools/r8/internal/K90;->g:B

    return v1
.end method
