.class public final Lcom/android/tools/r8/internal/k90;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final m:Lcom/android/tools/r8/internal/k90;

.field public static final n:Lcom/android/tools/r8/internal/h90;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/android/tools/r8/internal/j90;

.field public g:Lcom/android/tools/r8/internal/M90;

.field public h:I

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:B

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/h90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/h90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/k90;->n:Lcom/android/tools/r8/internal/h90;

    new-instance v0, Lcom/android/tools/r8/internal/k90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/k90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/k90;->m:Lcom/android/tools/r8/internal/k90;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/k90;->d:I

    iput v1, v0, Lcom/android/tools/r8/internal/k90;->e:I

    sget-object v2, Lcom/android/tools/r8/internal/j90;->c:Lcom/android/tools/r8/internal/j90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/k90;->f:Lcom/android/tools/r8/internal/j90;

    sget-object v2, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    iput v1, v0, Lcom/android/tools/r8/internal/k90;->h:I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/k90;->k:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/k90;->l:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 13

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/k90;->k:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/k90;->l:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/k90;->d:I

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/k90;->e:I

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/j90;->c:Lcom/android/tools/r8/internal/j90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/k90;->f:Lcom/android/tools/r8/internal/j90;

    .line 16
    sget-object v1, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    .line 17
    iput-object v1, p0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    .line 18
    iput v0, p0, Lcom/android/tools/r8/internal/k90;->h:I

    .line 19
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    .line 20
    iput-object v1, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 22
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    move v4, v0

    :cond_0
    :goto_0
    const/16 v5, 0x20

    const/16 v6, 0x40

    if-nez v0, :cond_14

    .line 23
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v7

    if-eqz v7, :cond_10

    const/16 v8, 0x8

    if-eq v7, v8, :cond_f

    const/4 v9, 0x2

    const/16 v10, 0x10

    if-eq v7, v10, :cond_e

    const/16 v11, 0x18

    const/4 v12, 0x0

    if-eq v7, v11, :cond_9

    const/16 v9, 0x22

    if-eq v7, v9, :cond_6

    const/16 v8, 0x28

    if-eq v7, v8, :cond_5

    const/16 v8, 0x32

    if-eq v7, v8, :cond_3

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_1

    .line 24
    invoke-virtual {p1, v7, v2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_1
    and-int/lit8 v7, v4, 0x40

    if-eq v7, v6, :cond_2

    .line 25
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x40

    .line 26
    :cond_2
    iget-object v7, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    sget-object v8, Lcom/android/tools/r8/internal/k90;->n:Lcom/android/tools/r8/internal/h90;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v7, v4, 0x20

    if-eq v7, v5, :cond_4

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 28
    :cond_4
    iget-object v7, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    sget-object v8, Lcom/android/tools/r8/internal/k90;->n:Lcom/android/tools/r8/internal/h90;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_5
    iget v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    or-int/2addr v7, v10

    iput v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 31
    iput v7, p0, Lcom/android/tools/r8/internal/k90;->h:I

    goto :goto_0

    .line 32
    :cond_6
    iget v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_7

    .line 33
    iget-object v7, p0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {v7}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v12

    .line 35
    :cond_7
    sget-object v7, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v7, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/M90;

    iput-object v7, p0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    if-eqz v12, :cond_8

    .line 36
    invoke-virtual {v12, v7}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 37
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v7

    iput-object v7, p0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    .line 38
    :cond_8
    iget v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    goto/16 :goto_0

    .line 39
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    if-eqz v8, :cond_c

    if-eq v8, v3, :cond_b

    if-eq v8, v9, :cond_a

    goto :goto_2

    .line 40
    :cond_a
    sget-object v9, Lcom/android/tools/r8/internal/j90;->e:Lcom/android/tools/r8/internal/j90;

    :goto_1
    move-object v12, v9

    goto :goto_2

    .line 41
    :cond_b
    sget-object v9, Lcom/android/tools/r8/internal/j90;->d:Lcom/android/tools/r8/internal/j90;

    goto :goto_1

    .line 42
    :cond_c
    sget-object v9, Lcom/android/tools/r8/internal/j90;->c:Lcom/android/tools/r8/internal/j90;

    goto :goto_1

    :goto_2
    if-nez v12, :cond_d

    .line 43
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 44
    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/He;->g(I)V

    goto/16 :goto_0

    .line 45
    :cond_d
    iget v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    .line 46
    iput-object v12, p0, Lcom/android/tools/r8/internal/k90;->f:Lcom/android/tools/r8/internal/j90;

    goto/16 :goto_0

    .line 47
    :cond_e
    iget v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    or-int/2addr v7, v9

    iput v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 49
    iput v7, p0, Lcom/android/tools/r8/internal/k90;->e:I

    goto/16 :goto_0

    .line 50
    :cond_f
    iget v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    or-int/2addr v7, v3

    iput v7, p0, Lcom/android/tools/r8/internal/k90;->c:I

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 52
    iput v7, p0, Lcom/android/tools/r8/internal/k90;->d:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_3
    move v0, v3

    goto/16 :goto_0

    .line 53
    :goto_4
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 56
    throw p2

    .line 57
    :goto_5
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 58
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v5, :cond_11

    .line 59
    iget-object p2, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v4, 0x40

    if-ne p2, v6, :cond_12

    .line 60
    iget-object p2, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    .line 61
    :cond_12
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_13

    .line 62
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    .line 63
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    .line 64
    throw p1

    .line 65
    :catch_2
    :cond_13
    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    .line 66
    throw p1

    :cond_14
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v5, :cond_15

    .line 67
    iget-object p1, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v4, 0x40

    if-ne p1, v6, :cond_16

    .line 68
    iget-object p1, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    .line 69
    :cond_16
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_17

    .line 70
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p1

    goto :goto_9

    .line 71
    :cond_17
    :goto_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    .line 72
    throw p1

    .line 73
    :catch_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/i90;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/k90;->k:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/k90;->l:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 26
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 27
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 28
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->d:I

    .line 29
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 30
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 31
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->e:I

    .line 32
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->f:Lcom/android/tools/r8/internal/j90;

    .line 35
    iget v1, v1, Lcom/android/tools/r8/internal/j90;->b:I

    const/4 v4, 0x3

    .line 36
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v4

    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->a(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 37
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    .line 39
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    .line 41
    iget v1, p0, Lcom/android/tools/r8/internal/k90;->h:I

    const/4 v3, 0x5

    .line 42
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v2

    .line 43
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 44
    iget-object v3, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    .line 45
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 47
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 50
    iput v1, p0, Lcom/android/tools/r8/internal/k90;->l:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/k90;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->d:I

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->e:I

    .line 8
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/k90;->f:Lcom/android/tools/r8/internal/j90;

    .line 12
    iget v0, v0, Lcom/android/tools/r8/internal/j90;->b:I

    const/4 v3, 0x3

    .line 13
    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 15
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 17
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 18
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->h:I

    const/4 v1, 0x5

    .line 19
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_4
    move v0, v2

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/O0;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/i90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/i90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/i90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/i90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/k90;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/k90;->c:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/k90;->k:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/k90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/k90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/k90;->k:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/k90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/k90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v2, p0, Lcom/android/tools/r8/internal/k90;->k:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-byte v1, p0, Lcom/android/tools/r8/internal/k90;->k:B

    return v1
.end method
