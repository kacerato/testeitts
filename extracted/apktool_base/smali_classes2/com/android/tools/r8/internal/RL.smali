.class public final Lcom/android/tools/r8/internal/RL;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final m:Lcom/android/tools/r8/internal/RL;

.field public static final n:Lcom/android/tools/r8/internal/PL;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Lcom/android/tools/r8/internal/yR;

.field public g:Lcom/android/tools/r8/internal/F90;

.field public h:Lcom/android/tools/r8/internal/C90;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:B

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/PL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/PL;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/RL;->n:Lcom/android/tools/r8/internal/PL;

    new-instance v0, Lcom/android/tools/r8/internal/RL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RL;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/RL;->m:Lcom/android/tools/r8/internal/RL;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    sget-object v2, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v2, v0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    sget-object v2, Lcom/android/tools/r8/internal/F90;->f:Lcom/android/tools/r8/internal/F90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    sget-object v2, Lcom/android/tools/r8/internal/C90;->f:Lcom/android/tools/r8/internal/C90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/RL;->k:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/RL;->l:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 12

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/RL;->k:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/RL;->l:I

    .line 13
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    .line 16
    sget-object v1, Lcom/android/tools/r8/internal/F90;->f:Lcom/android/tools/r8/internal/F90;

    .line 17
    iput-object v1, p0, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    .line 18
    sget-object v1, Lcom/android/tools/r8/internal/C90;->f:Lcom/android/tools/r8/internal/C90;

    .line 19
    iput-object v1, p0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x4

    const/16 v6, 0x20

    const/16 v7, 0x40

    const/4 v8, 0x2

    if-nez v3, :cond_18

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v9

    if-eqz v9, :cond_11

    const/16 v10, 0xa

    if-eq v9, v10, :cond_f

    const/16 v10, 0x12

    if-eq v9, v10, :cond_d

    const/16 v10, 0x1a

    if-eq v9, v10, :cond_b

    const/16 v10, 0x22

    const/4 v11, 0x0

    if-eq v9, v10, :cond_8

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_5

    const/16 v10, 0x32

    if-eq v9, v10, :cond_3

    const/16 v10, 0x82

    if-eq v9, v10, :cond_1

    .line 25
    invoke-virtual {p1, v9, v1}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

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

    :cond_1
    and-int/lit8 v9, v4, 0x40

    if-eq v9, v7, :cond_2

    .line 26
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x40

    .line 27
    :cond_2
    iget-object v9, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    sget-object v10, Lcom/android/tools/r8/internal/S80;->L:Lcom/android/tools/r8/internal/P80;

    invoke-virtual {p1, v10, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v9, v4, 0x20

    if-eq v9, v6, :cond_4

    .line 28
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 29
    :cond_4
    iget-object v9, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    sget-object v10, Lcom/android/tools/r8/internal/O80;->i:Lcom/android/tools/r8/internal/F80;

    invoke-virtual {p1, v10, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_5
    iget v9, p0, Lcom/android/tools/r8/internal/RL;->c:I

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_6

    .line 31
    iget-object v9, p0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v10, Lcom/android/tools/r8/internal/x90;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/x90;-><init>()V

    .line 33
    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/x90;->a(Lcom/android/tools/r8/internal/C90;)Lcom/android/tools/r8/internal/x90;

    move-result-object v11

    .line 34
    :cond_6
    sget-object v9, Lcom/android/tools/r8/internal/C90;->g:Lcom/android/tools/r8/internal/w90;

    invoke-virtual {p1, v9, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/C90;

    iput-object v9, p0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    if-eqz v11, :cond_7

    .line 35
    invoke-virtual {v11, v9}, Lcom/android/tools/r8/internal/x90;->a(Lcom/android/tools/r8/internal/C90;)Lcom/android/tools/r8/internal/x90;

    .line 36
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/x90;->c()Lcom/android/tools/r8/internal/C90;

    move-result-object v9

    iput-object v9, p0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    .line 37
    :cond_7
    iget v9, p0, Lcom/android/tools/r8/internal/RL;->c:I

    or-int/2addr v9, v8

    iput v9, p0, Lcom/android/tools/r8/internal/RL;->c:I

    goto/16 :goto_0

    .line 38
    :cond_8
    iget v9, p0, Lcom/android/tools/r8/internal/RL;->c:I

    and-int/2addr v9, v2

    if-ne v9, v2, :cond_9

    .line 39
    iget-object v9, p0, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v10, Lcom/android/tools/r8/internal/E90;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/E90;-><init>()V

    .line 41
    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    move-result-object v11

    .line 42
    :cond_9
    sget-object v9, Lcom/android/tools/r8/internal/F90;->g:Lcom/android/tools/r8/internal/D90;

    invoke-virtual {p1, v9, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/F90;

    iput-object v9, p0, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    if-eqz v11, :cond_a

    .line 43
    invoke-virtual {v11, v9}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    .line 44
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/E90;->c()Lcom/android/tools/r8/internal/F90;

    move-result-object v9

    iput-object v9, p0, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    .line 45
    :cond_a
    iget v9, p0, Lcom/android/tools/r8/internal/RL;->c:I

    or-int/2addr v9, v2

    iput v9, p0, Lcom/android/tools/r8/internal/RL;->c:I

    goto/16 :goto_0

    .line 46
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object v9

    and-int/lit8 v10, v4, 0x4

    if-eq v10, v5, :cond_c

    .line 47
    new-instance v10, Lcom/android/tools/r8/internal/wR;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/wR;-><init>()V

    iput-object v10, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    or-int/lit8 v4, v4, 0x4

    .line 48
    :cond_c
    iget-object v10, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v10, v9}, Lcom/android/tools/r8/internal/yR;->a(Lcom/android/tools/r8/internal/ET;)V

    goto/16 :goto_0

    :cond_d
    and-int/lit8 v9, v4, 0x2

    if-eq v9, v8, :cond_e

    .line 49
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 50
    :cond_e
    iget-object v9, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    sget-object v10, Lcom/android/tools/r8/internal/UL;->q:Lcom/android/tools/r8/internal/SL;

    invoke-virtual {p1, v10, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    and-int/lit8 v9, v4, 0x1

    if-eq v9, v2, :cond_10

    .line 51
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 52
    :cond_10
    iget-object v9, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    sget-object v10, Lcom/android/tools/r8/internal/UL;->q:Lcom/android/tools/r8/internal/SL;

    invoke-virtual {p1, v10, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_11
    :goto_1
    move v3, v2

    goto/16 :goto_0

    .line 53
    :goto_2
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
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 58
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v2, :cond_12

    .line 59
    iget-object p2, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v8, :cond_13

    .line 60
    iget-object p2, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v5, :cond_14

    .line 61
    iget-object p2, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    :cond_14
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v6, :cond_15

    .line 62
    iget-object p2, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v4, 0x40

    if-ne p2, v7, :cond_16

    .line 63
    iget-object p2, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    .line 64
    :cond_16
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_17

    .line 65
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    .line 67
    throw p1

    .line 68
    :catch_2
    :cond_17
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    .line 69
    throw p1

    :cond_18
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v2, :cond_19

    .line 70
    iget-object p1, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v8, :cond_1a

    .line 71
    iget-object p1, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v5, :cond_1b

    .line 72
    iget-object p1, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    :cond_1b
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v6, :cond_1c

    .line 73
    iget-object p1, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v4, 0x40

    if-ne p1, v7, :cond_1d

    .line 74
    iget-object p1, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    .line 75
    :cond_1d
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_1e

    .line 76
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    .line 77
    :cond_1e
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    .line 78
    throw p1

    .line 79
    :catch_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/QL;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/RL;->k:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/RL;->l:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 8

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/RL;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 19
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    .line 20
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 21
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v1, v3, :cond_2

    .line 22
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    .line 23
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    move v3, v1

    .line 24
    :goto_2
    iget-object v6, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 25
    iget-object v6, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    .line 26
    invoke-interface {v6, v1}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v6

    .line 27
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v6

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v2, v3

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    .line 30
    iget v2, p0, Lcom/android/tools/r8/internal/RL;->c:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 31
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    const/4 v3, 0x4

    .line 32
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v2

    add-int/2addr v1, v2

    .line 33
    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/RL;->c:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_5

    .line 34
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    const/4 v3, 0x5

    .line 35
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    move v2, v0

    .line 36
    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 37
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    .line 38
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 39
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 40
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    .line 41
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    const/16 v3, 0x10

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/android/tools/r8/internal/RL;->l:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/RL;->a()I

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 6
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v2}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/l8;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/RL;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 10
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/RL;->c:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_4
    move v1, v0

    .line 12
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 14
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/QL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QL;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/QL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QL;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/QL;->a(Lcom/android/tools/r8/internal/RL;)Lcom/android/tools/r8/internal/QL;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/RL;->k:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/UL;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/UL;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/RL;->k:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/UL;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/UL;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/RL;->k:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/RL;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, Lcom/android/tools/r8/internal/RL;->k:B

    return v2

    :cond_6
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O80;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/O80;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    iput-byte v2, p0, Lcom/android/tools/r8/internal/RL;->k:B

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/S80;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/S80;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    iput-byte v2, p0, Lcom/android/tools/r8/internal/RL;->k:B

    return v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iput-byte v1, p0, Lcom/android/tools/r8/internal/RL;->k:B

    return v1
.end method
