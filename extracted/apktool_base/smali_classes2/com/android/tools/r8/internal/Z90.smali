.class public final Lcom/android/tools/r8/internal/Z90;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final m:Lcom/android/tools/r8/internal/Z90;

.field public static final n:Lcom/android/tools/r8/internal/X90;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/android/tools/r8/internal/M90;

.field public h:I

.field public i:Lcom/android/tools/r8/internal/M90;

.field public j:I

.field public k:B

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/X90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/X90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Z90;->n:Lcom/android/tools/r8/internal/X90;

    new-instance v0, Lcom/android/tools/r8/internal/Z90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Z90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Z90;->m:Lcom/android/tools/r8/internal/Z90;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/Z90;->e:I

    iput v1, v0, Lcom/android/tools/r8/internal/Z90;->f:I

    sget-object v2, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    iput v1, v0, Lcom/android/tools/r8/internal/Z90;->h:I

    iput-object v2, v0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    iput v1, v0, Lcom/android/tools/r8/internal/Z90;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/Z90;->l:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/Z90;->l:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/Z90;->e:I

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/Z90;->f:I

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    .line 16
    iput-object v1, p0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/Z90;->h:I

    .line 18
    iput-object v1, p0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    .line 19
    iput v0, p0, Lcom/android/tools/r8/internal/Z90;->j:I

    .line 20
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 21
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    :cond_0
    :goto_0
    if-nez v0, :cond_d

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0x8

    if-eq v4, v5, :cond_a

    const/16 v6, 0x10

    if-eq v4, v6, :cond_9

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-eq v4, v7, :cond_6

    const/16 v7, 0x22

    if-eq v4, v7, :cond_3

    const/16 v6, 0x28

    if-eq v4, v6, :cond_2

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    .line 23
    invoke-virtual {p0, p1, v2, p2, v4}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 24
    :cond_1
    iget v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 26
    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->j:I

    goto :goto_0

    .line 27
    :cond_2
    iget v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 29
    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->h:I

    goto :goto_0

    .line 30
    :cond_3
    iget v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_4

    .line 31
    iget-object v4, p0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v4}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v8

    .line 33
    :cond_4
    sget-object v4, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/M90;

    iput-object v4, p0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    if-eqz v8, :cond_5

    .line 34
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 35
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    .line 36
    :cond_5
    iget v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    goto :goto_0

    .line 37
    :cond_6
    iget v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    .line 38
    iget-object v4, p0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v4}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v8

    .line 40
    :cond_7
    sget-object v4, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/M90;

    iput-object v4, p0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    if-eqz v8, :cond_8

    .line 41
    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 42
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    .line 43
    :cond_8
    iget v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    goto/16 :goto_0

    .line 44
    :cond_9
    iget v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 46
    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->f:I

    goto/16 :goto_0

    .line 47
    :cond_a
    iget v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v4

    .line 49
    iput v4, p0, Lcom/android/tools/r8/internal/Z90;->e:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    move v0, v3

    goto/16 :goto_0

    .line 50
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 53
    throw p2

    .line 54
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 55
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_4
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_c

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 58
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    .line 59
    throw p1

    .line 60
    :catch_2
    :cond_c
    :goto_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    .line 61
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 62
    throw p1

    .line 63
    :cond_d
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_e

    .line 64
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 65
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    .line 66
    throw p1

    .line 67
    :catch_3
    :cond_e
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    .line 68
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Y90;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/Z90;->l:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 25
    iget v0, p0, Lcom/android/tools/r8/internal/Z90;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 26
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 27
    iget v0, p0, Lcom/android/tools/r8/internal/Z90;->e:I

    .line 28
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 30
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->f:I

    .line 31
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    const/4 v3, 0x3

    .line 34
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    .line 37
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 39
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->h:I

    const/4 v2, 0x5

    .line 40
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 42
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->j:I

    const/4 v2, 0x6

    .line 43
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/android/tools/r8/internal/Z90;->l:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Z90;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->e:I

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 7
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 8
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->f:I

    .line 9
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 11
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 13
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 15
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 16
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->h:I

    const/4 v2, 0x5

    .line 17
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 18
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 19
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 20
    iget v1, p0, Lcom/android/tools/r8/internal/Z90;->j:I

    const/4 v2, 0x6

    .line 21
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_5
    const/16 v1, 0xc8

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Y90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Y90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Y90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Y90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Y90;->a(Lcom/android/tools/r8/internal/Z90;)Lcom/android/tools/r8/internal/Y90;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Z90;->m:Lcom/android/tools/r8/internal/Z90;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    return v2

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    return v1

    :cond_5
    iput-byte v2, p0, Lcom/android/tools/r8/internal/Z90;->k:B

    return v2
.end method
