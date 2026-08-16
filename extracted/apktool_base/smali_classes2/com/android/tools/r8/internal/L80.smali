.class public final Lcom/android/tools/r8/internal/L80;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final q:Lcom/android/tools/r8/internal/L80;

.field public static final r:Lcom/android/tools/r8/internal/I80;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:Lcom/android/tools/r8/internal/K80;

.field public e:J

.field public f:F

.field public g:D

.field public h:I

.field public i:I

.field public j:I

.field public k:Lcom/android/tools/r8/internal/O80;

.field public l:Ljava/util/List;

.field public m:I

.field public n:I

.field public o:B

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/I80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/I80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/L80;->r:Lcom/android/tools/r8/internal/I80;

    new-instance v0, Lcom/android/tools/r8/internal/L80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/L80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/L80;->q:Lcom/android/tools/r8/internal/L80;

    sget-object v1, Lcom/android/tools/r8/internal/K80;->c:Lcom/android/tools/r8/internal/K80;

    iput-object v1, v0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/tools/r8/internal/L80;->e:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/L80;->f:F

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/tools/r8/internal/L80;->g:D

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/L80;->h:I

    iput v1, v0, Lcom/android/tools/r8/internal/L80;->i:I

    iput v1, v0, Lcom/android/tools/r8/internal/L80;->j:I

    sget-object v2, Lcom/android/tools/r8/internal/O80;->h:Lcom/android/tools/r8/internal/O80;

    iput-object v2, v0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    iput v1, v0, Lcom/android/tools/r8/internal/L80;->m:I

    iput v1, v0, Lcom/android/tools/r8/internal/L80;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/L80;->o:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->p:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 12

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/L80;->o:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->p:I

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/K80;->c:Lcom/android/tools/r8/internal/K80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/android/tools/r8/internal/L80;->e:J

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->f:F

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/android/tools/r8/internal/L80;->g:D

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->h:I

    .line 18
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->i:I

    .line 19
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->j:I

    .line 20
    sget-object v1, Lcom/android/tools/r8/internal/O80;->h:Lcom/android/tools/r8/internal/O80;

    .line 21
    iput-object v1, p0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    .line 22
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    .line 23
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->m:I

    .line 24
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->n:I

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 26
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    move v4, v0

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-nez v0, :cond_7

    .line 27
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 28
    invoke-virtual {p1, v6, v2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v5

    if-nez v5, :cond_0

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

    .line 29
    :sswitch_0
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/2addr v6, v5

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 31
    iput v6, p0, Lcom/android/tools/r8/internal/L80;->m:I

    goto :goto_0

    .line 32
    :sswitch_1
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 34
    iput v6, p0, Lcom/android/tools/r8/internal/L80;->n:I

    goto :goto_0

    :sswitch_2
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v5, :cond_1

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    move v4, v5

    .line 36
    :cond_1
    iget-object v6, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    sget-object v7, Lcom/android/tools/r8/internal/L80;->r:Lcom/android/tools/r8/internal/I80;

    invoke-virtual {p1, v7, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :sswitch_3
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    .line 38
    iget-object v6, p0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v8, Lcom/android/tools/r8/internal/N80;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/N80;-><init>()V

    .line 40
    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 41
    :goto_1
    sget-object v8, Lcom/android/tools/r8/internal/O80;->i:Lcom/android/tools/r8/internal/F80;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/O80;

    iput-object v8, p0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    if-eqz v6, :cond_3

    .line 42
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    .line 43
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/N80;->c()Lcom/android/tools/r8/internal/O80;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    .line 44
    :cond_3
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    goto :goto_0

    .line 45
    :sswitch_4
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 47
    iput v6, p0, Lcom/android/tools/r8/internal/L80;->j:I

    goto/16 :goto_0

    .line 48
    :sswitch_5
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 50
    iput v6, p0, Lcom/android/tools/r8/internal/L80;->i:I

    goto/16 :goto_0

    .line 51
    :sswitch_6
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 53
    iput v6, p0, Lcom/android/tools/r8/internal/L80;->h:I

    goto/16 :goto_0

    .line 54
    :sswitch_7
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 56
    iput-wide v6, p0, Lcom/android/tools/r8/internal/L80;->g:D

    goto/16 :goto_0

    .line 57
    :sswitch_8
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 59
    iput v6, p0, Lcom/android/tools/r8/internal/L80;->f:F

    goto/16 :goto_0

    .line 60
    :sswitch_9
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->g()J

    move-result-wide v6

    ushr-long v8, v6, v3

    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    neg-long v6, v6

    xor-long/2addr v6, v8

    .line 62
    iput-wide v6, p0, Lcom/android/tools/r8/internal/L80;->e:J

    goto/16 :goto_0

    .line 63
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 64
    invoke-static {v7}, Lcom/android/tools/r8/internal/K80;->a(I)Lcom/android/tools/r8/internal/K80;

    move-result-object v8

    if-nez v8, :cond_4

    .line 65
    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 66
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto/16 :goto_0

    .line 67
    :cond_4
    iget v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    or-int/2addr v6, v3

    iput v6, p0, Lcom/android/tools/r8/internal/L80;->c:I

    .line 68
    iput-object v8, p0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_b
    move v0, v3

    goto/16 :goto_0

    .line 69
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 72
    throw p2

    .line 73
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 74
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v5, :cond_5

    .line 75
    iget-object p2, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    .line 76
    :cond_5
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_6

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 78
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    .line 79
    throw p1

    .line 80
    :catch_2
    :cond_6
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    .line 81
    throw p1

    :cond_7
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v5, :cond_8

    .line 82
    iget-object p1, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    .line 83
    :cond_8
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_9

    .line 84
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    .line 85
    :cond_9
    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    .line 86
    throw p1

    .line 87
    :catch_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x1d -> :sswitch_8
        0x21 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/J80;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/L80;->o:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/L80;->p:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 44
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 45
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    .line 47
    iget v0, v0, Lcom/android/tools/r8/internal/K80;->b:I

    .line 48
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 49
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 50
    iget-wide v4, p0, Lcom/android/tools/r8/internal/L80;->e:J

    .line 51
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v1

    .line 52
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/He;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/He;->a(J)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 53
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 54
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 55
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 56
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 57
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    .line 58
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->h:I

    const/4 v3, 0x5

    .line 59
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    .line 61
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->i:I

    const/4 v3, 0x6

    .line 62
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    .line 64
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->j:I

    const/4 v3, 0x7

    .line 65
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_7
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 67
    iget-object v1, p0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    .line 68
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 70
    iget-object v1, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    .line 73
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->n:I

    const/16 v2, 0xa

    .line 74
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 76
    iget v1, p0, Lcom/android/tools/r8/internal/L80;->m:I

    const/16 v2, 0xb

    .line 77
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_b
    iget-object v1, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 79
    iput v1, p0, Lcom/android/tools/r8/internal/L80;->p:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L80;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    .line 4
    iget v0, v0, Lcom/android/tools/r8/internal/K80;->b:I

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    .line 8
    iget-wide v4, p0, Lcom/android/tools/r8/internal/L80;->e:J

    .line 9
    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 10
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/He;->b(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/internal/He;->d(J)V

    .line 11
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    const/4 v4, 0x5

    if-ne v0, v3, :cond_2

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->f:F

    const/4 v5, 0x3

    .line 13
    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->f(I)V

    .line 15
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v5, 0x8

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3

    .line 16
    iget-wide v6, p0, Lcom/android/tools/r8/internal/L80;->g:D

    .line 17
    invoke-virtual {p1, v3, v1}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/He;->c(J)V

    .line 19
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->h:I

    .line 21
    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 23
    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 24
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->i:I

    const/4 v1, 0x6

    .line 25
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 27
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 28
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->j:I

    const/4 v1, 0x7

    .line 29
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 31
    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    invoke-virtual {p1, v5, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_7
    move v0, v2

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->n:I

    const/16 v1, 0xa

    .line 37
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 38
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 39
    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    .line 40
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->m:I

    const/16 v1, 0xb

    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/J80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J80;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/J80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J80;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/J80;->a(Lcom/android/tools/r8/internal/L80;)Lcom/android/tools/r8/internal/J80;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/L80;->o:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/L80;->c:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/O80;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/L80;->o:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/L80;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/L80;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/L80;->o:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-byte v1, p0, Lcom/android/tools/r8/internal/L80;->o:B

    return v1
.end method
