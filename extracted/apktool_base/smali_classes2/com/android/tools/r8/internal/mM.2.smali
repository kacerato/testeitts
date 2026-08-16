.class public final Lcom/android/tools/r8/internal/mM;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final n:Lcom/android/tools/r8/internal/mM;

.field public static final o:Lcom/android/tools/r8/internal/jM;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Lcom/android/tools/r8/internal/lM;

.field public h:Ljava/util/List;

.field public i:I

.field public j:Ljava/util/List;

.field public k:I

.field public l:B

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/jM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jM;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/mM;->o:Lcom/android/tools/r8/internal/jM;

    new-instance v0, Lcom/android/tools/r8/internal/mM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mM;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/mM;->n:Lcom/android/tools/r8/internal/mM;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/tools/r8/internal/mM;->d:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/mM;->e:I

    const-string v1, ""

    iput-object v1, v0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    sget-object v1, Lcom/android/tools/r8/internal/lM;->c:Lcom/android/tools/r8/internal/lM;

    iput-object v1, v0, Lcom/android/tools/r8/internal/mM;->g:Lcom/android/tools/r8/internal/lM;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->i:I

    .line 10
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->k:I

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/mM;->l:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->m:I

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;)V
    .locals 11

    .line 14
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->i:I

    .line 16
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->k:I

    .line 17
    iput-byte v0, p0, Lcom/android/tools/r8/internal/mM;->l:B

    .line 18
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->m:I

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->d:I

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/android/tools/r8/internal/mM;->e:I

    .line 21
    const-string v2, ""

    iput-object v2, p0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    .line 22
    sget-object v2, Lcom/android/tools/r8/internal/lM;->c:Lcom/android/tools/r8/internal/lM;

    iput-object v2, p0, Lcom/android/tools/r8/internal/mM;->g:Lcom/android/tools/r8/internal/lM;

    .line 23
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 24
    iput-object v2, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 25
    new-instance v2, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 26
    new-instance v3, Lcom/android/tools/r8/internal/He;

    new-array v4, v0, [B

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    move v4, v1

    :cond_0
    :goto_0
    const/16 v5, 0x20

    const/16 v6, 0x10

    if-nez v1, :cond_17

    .line 27
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v7

    if-eqz v7, :cond_13

    const/16 v8, 0x8

    if-eq v7, v8, :cond_12

    const/4 v9, 0x2

    if-eq v7, v6, :cond_11

    const/16 v10, 0x18

    if-eq v7, v10, :cond_c

    if-eq v7, v5, :cond_a

    const/16 v8, 0x22

    if-eq v7, v8, :cond_7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_5

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_2

    const/16 v8, 0x32

    if-eq v7, v8, :cond_1

    .line 28
    invoke-virtual {p1, v7, v3}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object v7

    .line 30
    iget v8, p0, Lcom/android/tools/r8/internal/mM;->c:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/tools/r8/internal/mM;->c:I

    .line 31
    iput-object v7, p0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 33
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v7

    and-int/lit8 v8, v4, 0x20

    if-eq v8, v5, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v8

    if-lez v8, :cond_3

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 36
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v8

    if-lez v8, :cond_4

    .line 37
    iget-object v8, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 39
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_4
    iput v7, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto :goto_0

    :cond_5
    and-int/lit8 v7, v4, 0x20

    if-eq v7, v5, :cond_6

    .line 42
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 43
    :cond_6
    iget-object v7, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 45
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 46
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 47
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v7

    and-int/lit8 v8, v4, 0x10

    if-eq v8, v6, :cond_8

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v8

    if-lez v8, :cond_8

    .line 49
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    or-int/lit8 v4, v4, 0x10

    .line 50
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v8

    if-lez v8, :cond_9

    .line 51
    iget-object v8, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 53
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 54
    :cond_9
    iput v7, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v7, v4, 0x10

    if-eq v7, v6, :cond_b

    .line 56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    or-int/lit8 v4, v4, 0x10

    .line 57
    :cond_b
    iget-object v7, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    if-eqz v10, :cond_f

    if-eq v10, v0, :cond_e

    if-eq v10, v9, :cond_d

    const/4 v9, 0x0

    goto :goto_3

    .line 61
    :cond_d
    sget-object v9, Lcom/android/tools/r8/internal/lM;->e:Lcom/android/tools/r8/internal/lM;

    goto :goto_3

    .line 62
    :cond_e
    sget-object v9, Lcom/android/tools/r8/internal/lM;->d:Lcom/android/tools/r8/internal/lM;

    goto :goto_3

    .line 63
    :cond_f
    sget-object v9, Lcom/android/tools/r8/internal/lM;->c:Lcom/android/tools/r8/internal/lM;

    :goto_3
    if-nez v9, :cond_10

    .line 64
    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 65
    invoke-virtual {v3, v10}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto/16 :goto_0

    .line 66
    :cond_10
    iget v7, p0, Lcom/android/tools/r8/internal/mM;->c:I

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/tools/r8/internal/mM;->c:I

    .line 67
    iput-object v9, p0, Lcom/android/tools/r8/internal/mM;->g:Lcom/android/tools/r8/internal/lM;

    goto/16 :goto_0

    .line 68
    :cond_11
    iget v7, p0, Lcom/android/tools/r8/internal/mM;->c:I

    or-int/2addr v7, v9

    iput v7, p0, Lcom/android/tools/r8/internal/mM;->c:I

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 70
    iput v7, p0, Lcom/android/tools/r8/internal/mM;->e:I

    goto/16 :goto_0

    .line 71
    :cond_12
    iget v7, p0, Lcom/android/tools/r8/internal/mM;->c:I

    or-int/2addr v7, v0

    iput v7, p0, Lcom/android/tools/r8/internal/mM;->c:I

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 73
    iput v7, p0, Lcom/android/tools/r8/internal/mM;->d:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_13
    :goto_4
    move v1, v0

    goto/16 :goto_0

    .line 74
    :goto_5
    :try_start_1
    new-instance v0, Lcom/android/tools/r8/internal/LJ;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p0, v0, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 77
    throw v0

    .line 78
    :goto_6
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 79
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    and-int/lit8 v0, v4, 0x10

    if-ne v0, v6, :cond_14

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    :cond_14
    and-int/lit8 v0, v4, 0x20

    if-ne v0, v5, :cond_15

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 82
    :cond_15
    :try_start_2
    iget-object v0, v3, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_16

    .line 83
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    .line 84
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    .line 85
    throw p1

    .line 86
    :catch_2
    :cond_16
    :goto_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    .line 87
    throw p1

    :cond_17
    and-int/lit8 p1, v4, 0x10

    if-ne p1, v6, :cond_18

    .line 88
    iget-object p1, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v5, :cond_19

    .line 89
    iget-object p1, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 90
    :cond_19
    :try_start_3
    iget-object p1, v3, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_1a

    .line 91
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception p1

    goto :goto_a

    .line 92
    :cond_1a
    :goto_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_a
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    .line 93
    throw p1

    .line 94
    :catch_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/kM;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->i:I

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->k:I

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/mM;->l:B

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/mM;->m:I

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 37
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 38
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->d:I

    .line 39
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 40
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/mM;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 41
    iget v1, p0, Lcom/android/tools/r8/internal/mM;->e:I

    .line 42
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/mM;->c:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 44
    iget-object v1, p0, Lcom/android/tools/r8/internal/mM;->g:Lcom/android/tools/r8/internal/lM;

    .line 45
    iget v1, v1, Lcom/android/tools/r8/internal/lM;->b:I

    const/4 v3, 0x3

    .line 46
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v3

    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_3
    move v1, v2

    move v3, v1

    .line 47
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v1, v4, :cond_5

    .line 48
    iget-object v4, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 49
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_4

    .line 50
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v5

    :cond_4
    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    .line 51
    iget-object v1, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 52
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    if-ltz v3, :cond_6

    .line 53
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v1

    goto :goto_2

    :cond_6
    move v1, v5

    :goto_2
    add-int/2addr v0, v1

    .line 54
    :cond_7
    iput v3, p0, Lcom/android/tools/r8/internal/mM;->i:I

    move v1, v2

    .line 55
    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 56
    iget-object v3, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 57
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_8

    .line 58
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v3

    goto :goto_4

    :cond_8
    move v3, v5

    :goto_4
    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v0, v1

    .line 59
    iget-object v2, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 60
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    if-ltz v1, :cond_a

    .line 61
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v5

    :cond_a
    add-int/2addr v0, v5

    .line 62
    :cond_b
    iput v1, p0, Lcom/android/tools/r8/internal/mM;->k:I

    .line 63
    iget v1, p0, Lcom/android/tools/r8/internal/mM;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    .line 64
    iget-object v1, p0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    .line 65
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 66
    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-static {v1}, Lcom/android/tools/r8/internal/l8;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ET;

    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    goto :goto_5

    .line 69
    :cond_c
    check-cast v1, Lcom/android/tools/r8/internal/l8;

    :goto_5
    const/4 v2, 0x6

    .line 70
    invoke-static {v2}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v2

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 72
    :cond_d
    iget-object v1, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 73
    iput v1, p0, Lcom/android/tools/r8/internal/mM;->m:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mM;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->d:I

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->e:I

    .line 8
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->c:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->g:Lcom/android/tools/r8/internal/lM;

    .line 12
    iget v0, v0, Lcom/android/tools/r8/internal/lM;->b:I

    const/4 v1, 0x3

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x22

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 18
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->i:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_3
    move v0, v2

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/16 v0, 0x2a

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 24
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->k:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 25
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/mM;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    .line 29
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-static {v0}, Lcom/android/tools/r8/internal/l8;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ET;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    goto :goto_2

    .line 33
    :cond_7
    check-cast v0, Lcom/android/tools/r8/internal/l8;

    :goto_2
    const/4 v1, 0x6

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/l8;)V

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kM;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kM;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/kM;->a(Lcom/android/tools/r8/internal/mM;)Lcom/android/tools/r8/internal/kM;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/mM;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput-byte v1, p0, Lcom/android/tools/r8/internal/mM;->l:B

    return v1
.end method
