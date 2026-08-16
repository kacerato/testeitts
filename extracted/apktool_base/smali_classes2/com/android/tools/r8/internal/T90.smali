.class public final Lcom/android/tools/r8/internal/T90;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final n:Lcom/android/tools/r8/internal/T90;

.field public static final o:Lcom/android/tools/r8/internal/Q90;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lcom/android/tools/r8/internal/S90;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:I

.field public l:B

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Q90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Q90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/T90;->o:Lcom/android/tools/r8/internal/Q90;

    new-instance v0, Lcom/android/tools/r8/internal/T90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/T90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/T90;->n:Lcom/android/tools/r8/internal/T90;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/T90;->e:I

    iput v1, v0, Lcom/android/tools/r8/internal/T90;->f:I

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/T90;->g:Z

    sget-object v1, Lcom/android/tools/r8/internal/S90;->e:Lcom/android/tools/r8/internal/S90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/T90;->h:Lcom/android/tools/r8/internal/S90;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->k:I

    .line 9
    iput-byte v0, p0, Lcom/android/tools/r8/internal/T90;->l:B

    .line 10
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->m:I

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 12

    .line 12
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->k:I

    .line 14
    iput-byte v0, p0, Lcom/android/tools/r8/internal/T90;->l:B

    .line 15
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->m:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->e:I

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->f:I

    .line 18
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/T90;->g:Z

    .line 19
    sget-object v1, Lcom/android/tools/r8/internal/S90;->e:Lcom/android/tools/r8/internal/S90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/T90;->h:Lcom/android/tools/r8/internal/S90;

    .line 20
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    .line 21
    iput-object v1, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    move v4, v0

    move v5, v4

    :cond_0
    :goto_0
    const/16 v6, 0x10

    const/16 v7, 0x20

    if-nez v4, :cond_15

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v8

    if-eqz v8, :cond_11

    const/16 v9, 0x8

    if-eq v8, v9, :cond_10

    const/4 v10, 0x2

    if-eq v8, v6, :cond_f

    const/16 v11, 0x18

    if-eq v8, v11, :cond_d

    if-eq v8, v7, :cond_8

    const/16 v9, 0x2a

    if-eq v8, v9, :cond_6

    const/16 v9, 0x30

    if-eq v8, v9, :cond_4

    const/16 v9, 0x32

    if-eq v8, v9, :cond_1

    .line 25
    invoke-virtual {p0, p1, v2, p2, v8}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

    move-result v6

    if-nez v6, :cond_0

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

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 27
    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v8

    and-int/lit8 v9, v5, 0x20

    if-eq v9, v7, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v9

    if-lez v9, :cond_2

    .line 29
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    or-int/lit8 v5, v5, 0x20

    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v9

    if-lez v9, :cond_3

    .line 31
    iget-object v9, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_3
    iput v8, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto :goto_0

    :cond_4
    and-int/lit8 v8, v5, 0x20

    if-eq v8, v7, :cond_5

    .line 36
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    or-int/lit8 v5, v5, 0x20

    .line 37
    :cond_5
    iget-object v8, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 39
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v8, v5, 0x10

    if-eq v8, v6, :cond_7

    .line 40
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    or-int/lit8 v5, v5, 0x10

    .line 41
    :cond_7
    iget-object v8, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    sget-object v9, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v9, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v11

    if-eqz v11, :cond_b

    if-eq v11, v3, :cond_a

    if-eq v11, v10, :cond_9

    const/4 v10, 0x0

    goto :goto_2

    .line 43
    :cond_9
    sget-object v10, Lcom/android/tools/r8/internal/S90;->e:Lcom/android/tools/r8/internal/S90;

    goto :goto_2

    .line 44
    :cond_a
    sget-object v10, Lcom/android/tools/r8/internal/S90;->d:Lcom/android/tools/r8/internal/S90;

    goto :goto_2

    .line 45
    :cond_b
    sget-object v10, Lcom/android/tools/r8/internal/S90;->c:Lcom/android/tools/r8/internal/S90;

    :goto_2
    if-nez v10, :cond_c

    .line 46
    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 47
    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto/16 :goto_0

    .line 48
    :cond_c
    iget v8, p0, Lcom/android/tools/r8/internal/T90;->d:I

    or-int/2addr v8, v9

    iput v8, p0, Lcom/android/tools/r8/internal/T90;->d:I

    .line 49
    iput-object v10, p0, Lcom/android/tools/r8/internal/T90;->h:Lcom/android/tools/r8/internal/S90;

    goto/16 :goto_0

    .line 50
    :cond_d
    iget v8, p0, Lcom/android/tools/r8/internal/T90;->d:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/tools/r8/internal/T90;->d:I

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->g()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_e

    move v8, v3

    goto :goto_3

    :cond_e
    move v8, v0

    .line 52
    :goto_3
    iput-boolean v8, p0, Lcom/android/tools/r8/internal/T90;->g:Z

    goto/16 :goto_0

    .line 53
    :cond_f
    iget v8, p0, Lcom/android/tools/r8/internal/T90;->d:I

    or-int/2addr v8, v10

    iput v8, p0, Lcom/android/tools/r8/internal/T90;->d:I

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 55
    iput v8, p0, Lcom/android/tools/r8/internal/T90;->f:I

    goto/16 :goto_0

    .line 56
    :cond_10
    iget v8, p0, Lcom/android/tools/r8/internal/T90;->d:I

    or-int/2addr v8, v3

    iput v8, p0, Lcom/android/tools/r8/internal/T90;->d:I

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 58
    iput v8, p0, Lcom/android/tools/r8/internal/T90;->e:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_11
    :goto_4
    move v4, v3

    goto/16 :goto_0

    .line 59
    :goto_5
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 62
    throw p2

    .line 63
    :goto_6
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 64
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    and-int/lit8 p2, v5, 0x10

    if-ne p2, v6, :cond_12

    .line 65
    iget-object p2, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v5, 0x20

    if-ne p2, v7, :cond_13

    .line 66
    iget-object p2, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 67
    :cond_13
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_14

    .line 68
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    .line 69
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    .line 70
    throw p1

    .line 71
    :catch_2
    :cond_14
    :goto_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    .line 72
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 73
    throw p1

    :cond_15
    and-int/lit8 p1, v5, 0x10

    if-ne p1, v6, :cond_16

    .line 74
    iget-object p1, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v5, 0x20

    if-ne p1, v7, :cond_17

    .line 75
    iget-object p1, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 76
    :cond_17
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_18

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception p1

    .line 78
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    .line 79
    throw p1

    .line 80
    :catch_3
    :cond_18
    :goto_9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    .line 81
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/R90;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->k:I

    .line 3
    iput-byte v0, p0, Lcom/android/tools/r8/internal/T90;->l:B

    .line 4
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->m:I

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 30
    iget v0, p0, Lcom/android/tools/r8/internal/T90;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 31
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/T90;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 32
    iget v0, p0, Lcom/android/tools/r8/internal/T90;->e:I

    .line 33
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 34
    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/T90;->d:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 35
    iget v3, p0, Lcom/android/tools/r8/internal/T90;->f:I

    .line 36
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 37
    :cond_2
    iget v3, p0, Lcom/android/tools/r8/internal/T90;->d:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 38
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 39
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/T90;->d:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/T90;->h:Lcom/android/tools/r8/internal/S90;

    .line 41
    iget v1, v1, Lcom/android/tools/r8/internal/S90;->b:I

    .line 42
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v3

    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_4
    move v1, v2

    .line 43
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 44
    iget-object v3, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    .line 45
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    .line 46
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v2, v3, :cond_7

    .line 47
    iget-object v3, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 48
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_6

    .line 49
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v4

    :cond_6
    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v0, v1

    .line 50
    iget-object v2, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 51
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v0, v0, 0x1

    if-ltz v1, :cond_8

    .line 52
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v4

    :cond_8
    add-int/2addr v0, v4

    .line 53
    :cond_9
    iput v1, p0, Lcom/android/tools/r8/internal/T90;->k:I

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/android/tools/r8/internal/T90;->m:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/T90;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/T90;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/T90;->e:I

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 7
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/T90;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 8
    iget v1, p0, Lcom/android/tools/r8/internal/T90;->f:I

    .line 9
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 11
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/T90;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 12
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/T90;->g:Z

    const/4 v4, 0x3

    .line 13
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 14
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->e(I)V

    .line 15
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/T90;->d:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/T90;->h:Lcom/android/tools/r8/internal/S90;

    .line 17
    iget v1, v1, Lcom/android/tools/r8/internal/S90;->b:I

    .line 18
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 19
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_3
    move v1, v3

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 21
    iget-object v2, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x32

    .line 24
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 25
    iget v1, p0, Lcom/android/tools/r8/internal/T90;->k:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 26
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/16 v1, 0x3e8

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/R90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/R90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/R90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/R90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/R90;->a(Lcom/android/tools/r8/internal/T90;)Lcom/android/tools/r8/internal/R90;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/T90;->n:Lcom/android/tools/r8/internal/T90;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/T90;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/T90;->d:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_6

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/T90;->l:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/T90;->l:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/android/tools/r8/internal/T90;->l:B

    return v1

    :cond_5
    iput-byte v2, p0, Lcom/android/tools/r8/internal/T90;->l:B

    return v2

    :cond_6
    iput-byte v2, p0, Lcom/android/tools/r8/internal/T90;->l:B

    return v2
.end method
