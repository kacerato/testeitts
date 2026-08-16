.class public final Lcom/android/tools/r8/internal/UL;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final p:Lcom/android/tools/r8/internal/UL;

.field public static final q:Lcom/android/tools/r8/internal/SL;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Lcom/android/tools/r8/internal/yR;

.field public f:Ljava/util/List;

.field public g:I

.field public h:Lcom/android/tools/r8/internal/yR;

.field public i:Lcom/android/tools/r8/internal/yR;

.field public j:Ljava/util/List;

.field public k:I

.field public l:Ljava/util/List;

.field public m:I

.field public n:B

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/SL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/SL;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/UL;->q:Lcom/android/tools/r8/internal/SL;

    new-instance v0, Lcom/android/tools/r8/internal/UL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UL;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/UL;->p:Lcom/android/tools/r8/internal/UL;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;

    sget-object v1, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    iput-object v2, v0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->g:I

    .line 11
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->k:I

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->m:I

    .line 13
    iput-byte v0, p0, Lcom/android/tools/r8/internal/UL;->n:B

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->o:I

    .line 15
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;)V
    .locals 14

    .line 16
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->g:I

    .line 18
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->k:I

    .line 19
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->m:I

    .line 20
    iput-byte v0, p0, Lcom/android/tools/r8/internal/UL;->n:B

    .line 21
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->o:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    .line 24
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    .line 26
    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    .line 27
    iput-object v1, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 28
    iput-object v1, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 30
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x2

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x4

    const/16 v9, 0x40

    const/16 v10, 0x20

    if-nez v3, :cond_14

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 32
    invoke-virtual {p1, v11, v1}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

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

    .line 33
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v11

    .line 34
    invoke-virtual {p1, v11}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v11

    and-int/lit8 v12, v4, 0x20

    if-eq v12, v10, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v12

    if-lez v12, :cond_1

    .line 36
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v12

    if-lez v12, :cond_2

    .line 38
    iget-object v12, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v13

    .line 40
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :cond_2
    iput v11, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto :goto_0

    :sswitch_1
    and-int/lit8 v11, v4, 0x20

    if-eq v11, v10, :cond_3

    .line 43
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 44
    :cond_3
    iget-object v11, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v12

    .line 46
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v11

    .line 48
    invoke-virtual {p1, v11}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v11

    and-int/lit8 v12, v4, 0x40

    if-eq v12, v9, :cond_4

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v12

    if-lez v12, :cond_4

    .line 50
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    or-int/lit8 v4, v4, 0x40

    .line 51
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v12

    if-lez v12, :cond_5

    .line 52
    iget-object v12, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v13

    .line 54
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 55
    :cond_5
    iput v11, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto/16 :goto_0

    :sswitch_3
    and-int/lit8 v11, v4, 0x40

    if-eq v11, v9, :cond_6

    .line 57
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    or-int/lit8 v4, v4, 0x40

    .line 58
    :cond_6
    iget-object v11, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v12

    .line 60
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object v11

    and-int/lit8 v12, v4, 0x10

    if-eq v12, v7, :cond_7

    .line 62
    new-instance v12, Lcom/android/tools/r8/internal/wR;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/wR;-><init>()V

    iput-object v12, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    or-int/lit8 v4, v4, 0x10

    .line 63
    :cond_7
    iget-object v12, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v12, v11}, Lcom/android/tools/r8/internal/yR;->a(Lcom/android/tools/r8/internal/ET;)V

    goto/16 :goto_0

    .line 64
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object v11

    and-int/lit8 v12, v4, 0x8

    if-eq v12, v6, :cond_8

    .line 65
    new-instance v12, Lcom/android/tools/r8/internal/wR;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/wR;-><init>()V

    iput-object v12, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    or-int/lit8 v4, v4, 0x8

    .line 66
    :cond_8
    iget-object v12, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v12, v11}, Lcom/android/tools/r8/internal/yR;->a(Lcom/android/tools/r8/internal/ET;)V

    goto/16 :goto_0

    .line 67
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v11

    .line 68
    invoke-virtual {p1, v11}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v11

    and-int/lit8 v12, v4, 0x4

    if-eq v12, v8, :cond_9

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v12

    if-lez v12, :cond_9

    .line 70
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 71
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v12

    if-lez v12, :cond_a

    .line 72
    iget-object v12, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v13

    .line 74
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 75
    :cond_a
    iput v11, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v11, v4, 0x4

    if-eq v11, v8, :cond_b

    .line 77
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 78
    :cond_b
    iget-object v11, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v12

    .line 80
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object v11

    and-int/lit8 v12, v4, 0x2

    if-eq v12, v5, :cond_c

    .line 82
    new-instance v12, Lcom/android/tools/r8/internal/wR;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/wR;-><init>()V

    iput-object v12, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    or-int/lit8 v4, v4, 0x2

    .line 83
    :cond_c
    iget-object v12, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v12, v11}, Lcom/android/tools/r8/internal/yR;->a(Lcom/android/tools/r8/internal/ET;)V

    goto/16 :goto_0

    .line 84
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object v11

    .line 85
    iget v12, p0, Lcom/android/tools/r8/internal/UL;->c:I

    or-int/2addr v12, v2

    iput v12, p0, Lcom/android/tools/r8/internal/UL;->c:I

    .line 86
    iput-object v11, p0, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_4
    :sswitch_a
    move v3, v2

    goto/16 :goto_0

    .line 87
    :goto_5
    :try_start_1
    new-instance v2, Lcom/android/tools/r8/internal/LJ;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 89
    iput-object p0, v2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 90
    throw v2

    .line 91
    :goto_6
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 92
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    and-int/lit8 v2, v4, 0x2

    if-ne v2, v5, :cond_d

    .line 93
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    :cond_d
    and-int/lit8 v2, v4, 0x4

    if-ne v2, v8, :cond_e

    .line 94
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    :cond_e
    and-int/lit8 v2, v4, 0x8

    if-ne v2, v6, :cond_f

    .line 95
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    :cond_f
    and-int/lit8 v2, v4, 0x10

    if-ne v2, v7, :cond_10

    .line 96
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    :cond_10
    and-int/lit8 v2, v4, 0x40

    if-ne v2, v9, :cond_11

    .line 97
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    :cond_11
    and-int/lit8 v2, v4, 0x20

    if-ne v2, v10, :cond_12

    .line 98
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 99
    :cond_12
    :try_start_2
    iget-object v2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v2, :cond_13

    .line 100
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    .line 102
    throw p1

    .line 103
    :catch_2
    :cond_13
    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    .line 104
    throw p1

    :cond_14
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_15

    .line 105
    iget-object p1, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    :cond_15
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v8, :cond_16

    .line 106
    iget-object p1, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v4, 0x8

    if-ne p1, v6, :cond_17

    .line 107
    iget-object p1, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    :cond_17
    and-int/lit8 p1, v4, 0x10

    if-ne p1, v7, :cond_18

    .line 108
    iget-object p1, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    :cond_18
    and-int/lit8 p1, v4, 0x40

    if-ne p1, v9, :cond_19

    .line 109
    iget-object p1, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v10, :cond_1a

    .line 110
    iget-object p1, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 111
    :cond_1a
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_1b

    .line 112
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception p1

    goto :goto_a

    .line 113
    :cond_1b
    :goto_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    .line 114
    throw p1

    .line 115
    :catch_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x1a -> :sswitch_6
        0x22 -> :sswitch_5
        0x2a -> :sswitch_4
        0x30 -> :sswitch_3
        0x32 -> :sswitch_2
        0x38 -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/TL;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->g:I

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->k:I

    .line 4
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->m:I

    .line 5
    iput-byte v0, p0, Lcom/android/tools/r8/internal/UL;->n:B

    .line 6
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->o:I

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 7

    .line 35
    iget v0, p0, Lcom/android/tools/r8/internal/UL;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 36
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/UL;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;

    .line 38
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lcom/android/tools/r8/internal/l8;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ET;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_1
    check-cast v0, Lcom/android/tools/r8/internal/l8;

    .line 43
    :goto_0
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v1

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    move v1, v2

    move v3, v1

    .line 45
    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 46
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    .line 47
    invoke-interface {v4, v1}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    .line 49
    iget-object v1, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v2

    move v3, v0

    .line 51
    :goto_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v0, v4, :cond_5

    .line 52
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 53
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_4

    .line 54
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v5

    :cond_4
    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v1, v3

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    if-ltz v3, :cond_6

    .line 57
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v0

    goto :goto_4

    :cond_6
    move v0, v5

    :goto_4
    add-int/2addr v1, v0

    .line 58
    :cond_7
    iput v3, p0, Lcom/android/tools/r8/internal/UL;->g:I

    move v0, v2

    move v3, v0

    .line 59
    :goto_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 60
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    .line 61
    invoke-interface {v4, v0}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v6

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v4

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    add-int/2addr v1, v3

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v2

    move v3, v1

    .line 65
    :goto_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 66
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    .line 67
    invoke-interface {v4, v1}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v6

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v4

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    add-int/2addr v0, v3

    .line 69
    iget-object v1, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v2

    move v3, v0

    .line 71
    :goto_7
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    .line 72
    iget-object v4, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 73
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_a

    .line 74
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v4

    goto :goto_8

    :cond_a
    move v4, v5

    :goto_8
    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v1, v3

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    add-int/lit8 v1, v1, 0x1

    if-ltz v3, :cond_c

    .line 77
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v0

    goto :goto_9

    :cond_c
    move v0, v5

    :goto_9
    add-int/2addr v1, v0

    .line 78
    :cond_d
    iput v3, p0, Lcom/android/tools/r8/internal/UL;->m:I

    move v0, v2

    .line 79
    :goto_a
    iget-object v3, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 80
    iget-object v3, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 81
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_e

    .line 82
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v3

    goto :goto_b

    :cond_e
    move v3, v5

    :goto_b
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr v1, v0

    .line 83
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 84
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    add-int/lit8 v1, v1, 0x1

    if-ltz v0, :cond_10

    .line 85
    invoke-static {v0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v5

    :cond_10
    add-int/2addr v1, v5

    .line 86
    :cond_11
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->k:I

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 88
    iput v0, p0, Lcom/android/tools/r8/internal/UL;->o:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/UL;->a()I

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/UL;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;

    .line 4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/android/tools/r8/internal/l8;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ET;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/l8;

    .line 9
    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/l8;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/l8;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x1a

    .line 14
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 15
    iget v1, p0, Lcom/android/tools/r8/internal/UL;->g:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_3
    move v1, v0

    .line 16
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v0

    .line 18
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/l8;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v0

    .line 20
    :goto_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 21
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/yR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/l8;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 22
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v1, 0x32

    .line 24
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 25
    iget v1, p0, Lcom/android/tools/r8/internal/UL;->m:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_7
    move v1, v0

    .line 26
    :goto_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 28
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/16 v1, 0x3a

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 31
    iget v1, p0, Lcom/android/tools/r8/internal/UL;->k:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 32
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/TL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TL;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/TL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TL;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/TL;->a(Lcom/android/tools/r8/internal/UL;)Lcom/android/tools/r8/internal/TL;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/android/tools/r8/internal/UL;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/UL;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iput-byte v1, p0, Lcom/android/tools/r8/internal/UL;->n:B

    return v1

    :cond_2
    iput-byte v2, p0, Lcom/android/tools/r8/internal/UL;->n:B

    return v2
.end method
