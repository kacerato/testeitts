.class public final Lcom/android/tools/r8/internal/V80;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final j:Lcom/android/tools/r8/internal/V80;

.field public static final k:Lcom/android/tools/r8/internal/T80;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:I

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/T80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/T80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/V80;->k:Lcom/android/tools/r8/internal/T80;

    new-instance v0, Lcom/android/tools/r8/internal/V80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/V80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/V80;->j:Lcom/android/tools/r8/internal/V80;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/tools/r8/internal/V80;->e:I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/V80;->h:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/V80;->i:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 10

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/V80;->h:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/V80;->i:I

    const/4 v0, 0x6

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/V80;->e:I

    .line 14
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x4

    if-nez v3, :cond_d

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v7

    if-eqz v7, :cond_9

    const/16 v8, 0x8

    if-eq v7, v8, :cond_8

    const/16 v8, 0x12

    if-eq v7, v8, :cond_6

    const/16 v8, 0xf8

    if-eq v7, v8, :cond_4

    const/16 v8, 0xfa

    if-eq v7, v8, :cond_1

    .line 19
    invoke-virtual {p0, p1, v1, p2, v7}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

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

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 21
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v7

    and-int/lit8 v8, v4, 0x4

    if-eq v8, v6, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v8

    if-lez v8, :cond_2

    .line 23
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 24
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v8

    if-lez v8, :cond_3

    .line 25
    iget-object v8, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 27
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_3
    iput v7, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto :goto_0

    :cond_4
    and-int/lit8 v7, v4, 0x4

    if-eq v7, v6, :cond_5

    .line 30
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 31
    :cond_5
    iget-object v7, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v7, v4, 0x2

    if-eq v7, v5, :cond_7

    .line 34
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 35
    :cond_7
    iget-object v7, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    sget-object v8, Lcom/android/tools/r8/internal/Z90;->n:Lcom/android/tools/r8/internal/X90;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 36
    :cond_8
    iget v7, p0, Lcom/android/tools/r8/internal/V80;->d:I

    or-int/2addr v7, v2

    iput v7, p0, Lcom/android/tools/r8/internal/V80;->d:I

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 38
    iput v7, p0, Lcom/android/tools/r8/internal/V80;->e:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
    move v3, v2

    goto/16 :goto_0

    .line 39
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 42
    throw p2

    .line 43
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 44
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_a

    .line 45
    iget-object p2, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v6, :cond_b

    .line 46
    iget-object p2, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 47
    :cond_b
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_c

    .line 48
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    .line 50
    throw p1

    .line 51
    :catch_2
    :cond_c
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    .line 52
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 53
    throw p1

    :cond_d
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_e

    .line 54
    iget-object p1, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    :cond_e
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v6, :cond_f

    .line 55
    iget-object p1, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 56
    :cond_f
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_10

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    .line 59
    throw p1

    .line 60
    :catch_3
    :cond_10
    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    .line 61
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/U80;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/V80;->h:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/V80;->i:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/V80;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/V80;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/V80;->e:I

    .line 18
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    .line 19
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_2

    .line 20
    iget-object v3, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    .line 21
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 22
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 23
    iget-object v3, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 24
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_3

    .line 25
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v3

    goto :goto_3

    :cond_3
    const/16 v3, 0xa

    :goto_3
    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v1

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v0

    add-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Lcom/android/tools/r8/internal/V80;->i:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V80;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/V80;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/V80;->e:I

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_0
    move v1, v3

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x1f

    .line 11
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 12
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x4a38

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/U80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U80;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/U80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U80;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/U80;->a(Lcom/android/tools/r8/internal/V80;)Lcom/android/tools/r8/internal/U80;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/V80;->j:Lcom/android/tools/r8/internal/V80;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/V80;->h:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Z90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Z90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/V80;->h:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/V80;->h:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/android/tools/r8/internal/V80;->h:B

    return v1
.end method
