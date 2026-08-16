.class public final Lcom/android/tools/r8/internal/gM;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final k:Lcom/android/tools/r8/internal/gM;

.field public static final l:Lcom/android/tools/r8/internal/eM;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:Lcom/android/tools/r8/internal/aM;

.field public e:Lcom/android/tools/r8/internal/dM;

.field public f:Lcom/android/tools/r8/internal/dM;

.field public g:Lcom/android/tools/r8/internal/dM;

.field public h:Lcom/android/tools/r8/internal/dM;

.field public i:B

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/eM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eM;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/gM;->l:Lcom/android/tools/r8/internal/eM;

    new-instance v0, Lcom/android/tools/r8/internal/gM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gM;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/gM;->k:Lcom/android/tools/r8/internal/gM;

    sget-object v1, Lcom/android/tools/r8/internal/aM;->h:Lcom/android/tools/r8/internal/aM;

    iput-object v1, v0, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    sget-object v1, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    iput-object v1, v0, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    iput-object v1, v0, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    iput-object v1, v0, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    iput-object v1, v0, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/gM;->i:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/gM;->j:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/gM;->i:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/gM;->j:I

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/aM;->h:Lcom/android/tools/r8/internal/aM;

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    .line 15
    sget-object v0, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    .line 18
    iput-object v0, p0, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    .line 19
    iput-object v0, p0, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_12

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v4

    if-eqz v4, :cond_10

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_d

    const/16 v5, 0x12

    if-eq v4, v5, :cond_a

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_7

    const/16 v5, 0x22

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 23
    invoke-virtual {p1, v4, v1}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

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
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 25
    iget-object v4, p0, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v4}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v6

    .line 27
    :cond_2
    sget-object v4, Lcom/android/tools/r8/internal/dM;->i:Lcom/android/tools/r8/internal/bM;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dM;

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    if-eqz v6, :cond_3

    .line 28
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    .line 29
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    .line 30
    :cond_3
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    goto :goto_0

    .line 31
    :cond_4
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    .line 32
    iget-object v4, p0, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {v4}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v6

    .line 34
    :cond_5
    sget-object v4, Lcom/android/tools/r8/internal/dM;->i:Lcom/android/tools/r8/internal/bM;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dM;

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    if-eqz v6, :cond_6

    .line 35
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    .line 36
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    .line 37
    :cond_6
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    goto/16 :goto_0

    .line 38
    :cond_7
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    .line 39
    iget-object v4, p0, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {v4}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v6

    .line 41
    :cond_8
    sget-object v4, Lcom/android/tools/r8/internal/dM;->i:Lcom/android/tools/r8/internal/bM;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dM;

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    if-eqz v6, :cond_9

    .line 42
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    .line 43
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    .line 44
    :cond_9
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    goto/16 :goto_0

    .line 45
    :cond_a
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_b

    .line 46
    iget-object v4, p0, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v4}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v6

    .line 48
    :cond_b
    sget-object v4, Lcom/android/tools/r8/internal/dM;->i:Lcom/android/tools/r8/internal/bM;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dM;

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    if-eqz v6, :cond_c

    .line 49
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    .line 50
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    .line 51
    :cond_c
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    goto/16 :goto_0

    .line 52
    :cond_d
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_e

    .line 53
    iget-object v4, p0, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance v5, Lcom/android/tools/r8/internal/ZL;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ZL;-><init>()V

    .line 55
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/ZL;->a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;

    move-result-object v6

    .line 56
    :cond_e
    sget-object v4, Lcom/android/tools/r8/internal/aM;->i:Lcom/android/tools/r8/internal/YL;

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/aM;

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    if-eqz v6, :cond_f

    .line 57
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/ZL;->a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;

    .line 58
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ZL;->c()Lcom/android/tools/r8/internal/aM;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    .line 59
    :cond_f
    iget v4, p0, Lcom/android/tools/r8/internal/gM;->c:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/android/tools/r8/internal/gM;->c:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_1
    move v3, v2

    goto/16 :goto_0

    .line 60
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 63
    throw p2

    .line 64
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 65
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :goto_4
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_11

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    .line 69
    throw p1

    .line 70
    :catch_2
    :cond_11
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    .line 71
    throw p1

    .line 72
    :cond_12
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_13

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    .line 74
    :cond_13
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    .line 75
    throw p1

    .line 76
    :catch_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fM;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/gM;->i:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/gM;->j:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 13
    iget v0, p0, Lcom/android/tools/r8/internal/gM;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    .line 16
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    .line 19
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    const/4 v3, 0x3

    .line 22
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    .line 25
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    const/4 v2, 0x5

    .line 28
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Lcom/android/tools/r8/internal/gM;->j:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gM;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 10
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/fM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fM;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/fM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fM;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/fM;->a(Lcom/android/tools/r8/internal/gM;)Lcom/android/tools/r8/internal/fM;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/gM;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput-byte v1, p0, Lcom/android/tools/r8/internal/gM;->i:B

    return v1
.end method
