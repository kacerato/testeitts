.class public final Lcom/android/tools/r8/internal/s90;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final l:Lcom/android/tools/r8/internal/s90;

.field public static final m:Lcom/android/tools/r8/internal/q90;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Lcom/android/tools/r8/internal/W90;

.field public i:Lcom/android/tools/r8/internal/ha0;

.field public j:B

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/q90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/q90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/s90;->m:Lcom/android/tools/r8/internal/q90;

    new-instance v0, Lcom/android/tools/r8/internal/s90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/s90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/s90;->l:Lcom/android/tools/r8/internal/s90;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    sget-object v1, Lcom/android/tools/r8/internal/ha0;->f:Lcom/android/tools/r8/internal/ha0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/s90;->j:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/s90;->k:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 10

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/s90;->j:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/s90;->k:I

    .line 13
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    .line 18
    sget-object v0, Lcom/android/tools/r8/internal/ha0;->f:Lcom/android/tools/r8/internal/ha0;

    .line 19
    iput-object v0, p0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x2

    if-nez v3, :cond_12

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v7

    if-eqz v7, :cond_d

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_b

    const/16 v8, 0x22

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_7

    const/16 v8, 0xf2

    const/4 v9, 0x0

    if-eq v7, v8, :cond_4

    const/16 v8, 0x102

    if-eq v7, v8, :cond_1

    .line 23
    invoke-virtual {p0, p1, v1, p2, v7}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

    move-result v5

    if-nez v5, :cond_0

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
    iget v7, p0, Lcom/android/tools/r8/internal/s90;->d:I

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_2

    .line 25
    iget-object v7, p0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v8, Lcom/android/tools/r8/internal/ga0;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ga0;-><init>()V

    .line 27
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/ga0;->a(Lcom/android/tools/r8/internal/ha0;)Lcom/android/tools/r8/internal/ga0;

    move-result-object v9

    .line 28
    :cond_2
    sget-object v7, Lcom/android/tools/r8/internal/ha0;->g:Lcom/android/tools/r8/internal/fa0;

    invoke-virtual {p1, v7, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/ha0;

    iput-object v7, p0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    if-eqz v9, :cond_3

    .line 29
    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/ga0;->a(Lcom/android/tools/r8/internal/ha0;)Lcom/android/tools/r8/internal/ga0;

    .line 30
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/ga0;->c()Lcom/android/tools/r8/internal/ha0;

    move-result-object v7

    iput-object v7, p0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    .line 31
    :cond_3
    iget v7, p0, Lcom/android/tools/r8/internal/s90;->d:I

    or-int/2addr v7, v6

    iput v7, p0, Lcom/android/tools/r8/internal/s90;->d:I

    goto :goto_0

    .line 32
    :cond_4
    iget v7, p0, Lcom/android/tools/r8/internal/s90;->d:I

    and-int/2addr v7, v2

    if-ne v7, v2, :cond_5

    .line 33
    iget-object v7, p0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {v7}, Lcom/android/tools/r8/internal/W90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v9

    .line 35
    :cond_5
    sget-object v7, Lcom/android/tools/r8/internal/W90;->i:Lcom/android/tools/r8/internal/U90;

    invoke-virtual {p1, v7, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W90;

    iput-object v7, p0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    if-eqz v9, :cond_6

    .line 36
    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    .line 37
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/V90;->c()Lcom/android/tools/r8/internal/W90;

    move-result-object v7

    iput-object v7, p0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    .line 38
    :cond_6
    iget v7, p0, Lcom/android/tools/r8/internal/s90;->d:I

    or-int/2addr v7, v2

    iput v7, p0, Lcom/android/tools/r8/internal/s90;->d:I

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v7, v4, 0x4

    if-eq v7, v5, :cond_8

    .line 39
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 40
    :cond_8
    iget-object v7, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    sget-object v8, Lcom/android/tools/r8/internal/P90;->q:Lcom/android/tools/r8/internal/N90;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v7, v4, 0x2

    if-eq v7, v6, :cond_a

    .line 41
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 42
    :cond_a
    iget-object v7, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    sget-object v8, Lcom/android/tools/r8/internal/v90;->w:Lcom/android/tools/r8/internal/t90;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    and-int/lit8 v7, v4, 0x1

    if-eq v7, v2, :cond_c

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 44
    :cond_c
    iget-object v7, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    sget-object v8, Lcom/android/tools/r8/internal/n90;->w:Lcom/android/tools/r8/internal/l90;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    move v3, v2

    goto/16 :goto_0

    .line 45
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 48
    throw p2

    .line 49
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 50
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v2, :cond_e

    .line 51
    iget-object p2, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v6, :cond_f

    .line 52
    iget-object p2, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v5, :cond_10

    .line 53
    iget-object p2, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    .line 54
    :cond_10
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_11

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    .line 57
    throw p1

    .line 58
    :catch_2
    :cond_11
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    .line 59
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 60
    throw p1

    :cond_12
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v2, :cond_13

    .line 61
    iget-object p1, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v6, :cond_14

    .line 62
    iget-object p1, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v5, :cond_15

    .line 63
    iget-object p1, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    .line 64
    :cond_15
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_16

    .line 65
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    .line 67
    throw p1

    .line 68
    :catch_3
    :cond_16
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    .line 69
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/r90;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/s90;->j:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/s90;->k:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/s90;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    .line 18
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 19
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 20
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    .line 21
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/s90;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    const/16 v1, 0x1e

    .line 27
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v0

    add-int/2addr v2, v0

    .line 28
    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/s90;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    const/16 v1, 0x20

    .line 30
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v0

    add-int/2addr v2, v0

    .line 31
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v0

    add-int/2addr v0, v2

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 33
    iput v1, p0, Lcom/android/tools/r8/internal/s90;->k:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s90;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/s90;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    const/16 v2, 0x1e

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 11
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/s90;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_4
    const/16 v1, 0xc8

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/r90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/r90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/r90;->a(Lcom/android/tools/r8/internal/s90;)Lcom/android/tools/r8/internal/r90;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/s90;->l:Lcom/android/tools/r8/internal/s90;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/s90;->j:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/n90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/n90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/s90;->j:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/v90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/v90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/s90;->j:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/P90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/P90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/android/tools/r8/internal/s90;->j:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/s90;->d:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, Lcom/android/tools/r8/internal/s90;->j:B

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_9

    iput-byte v2, p0, Lcom/android/tools/r8/internal/s90;->j:B

    return v2

    :cond_9
    iput-byte v1, p0, Lcom/android/tools/r8/internal/s90;->j:B

    return v1
.end method
