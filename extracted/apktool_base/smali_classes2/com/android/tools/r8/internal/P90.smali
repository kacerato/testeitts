.class public final Lcom/android/tools/r8/internal/P90;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final p:Lcom/android/tools/r8/internal/P90;

.field public static final q:Lcom/android/tools/r8/internal/N90;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:Lcom/android/tools/r8/internal/M90;

.field public i:I

.field public j:Lcom/android/tools/r8/internal/M90;

.field public k:I

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:B

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/N90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/N90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/P90;->q:Lcom/android/tools/r8/internal/N90;

    new-instance v0, Lcom/android/tools/r8/internal/P90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/P90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/P90;->p:Lcom/android/tools/r8/internal/P90;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/tools/r8/internal/P90;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/P90;->f:I

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v3, v0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    iput v1, v0, Lcom/android/tools/r8/internal/P90;->i:I

    iput-object v3, v0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    iput v1, v0, Lcom/android/tools/r8/internal/P90;->k:I

    iput-object v2, v0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/P90;->n:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/P90;->o:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 11

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/P90;->n:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/P90;->o:I

    const/4 v0, 0x6

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/P90;->e:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/P90;->f:I

    .line 15
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    .line 16
    sget-object v2, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    .line 17
    iput-object v2, p0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    .line 18
    iput v0, p0, Lcom/android/tools/r8/internal/P90;->i:I

    .line 19
    iput-object v2, p0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    .line 20
    iput v0, p0, Lcom/android/tools/r8/internal/P90;->k:I

    .line 21
    iput-object v1, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    .line 22
    iput-object v1, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 24
    new-instance v2, Lcom/android/tools/r8/internal/He;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    move v4, v0

    :cond_0
    :goto_0
    const/16 v5, 0x80

    const/4 v6, 0x4

    const/16 v7, 0x100

    if-nez v0, :cond_e

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    .line 26
    invoke-virtual {p0, p1, v2, p2, v8}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

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

    .line 27
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 28
    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v8

    and-int/lit16 v9, v4, 0x100

    if-eq v9, v7, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v9

    if-lez v9, :cond_1

    .line 30
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 31
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v9

    if-lez v9, :cond_2

    .line 32
    iget-object v9, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 34
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_2
    iput v8, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto :goto_0

    :sswitch_1
    and-int/lit16 v8, v4, 0x100

    if-eq v8, v7, :cond_3

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 38
    :cond_3
    iget-object v8, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit16 v8, v4, 0x80

    if-eq v8, v5, :cond_4

    .line 41
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    or-int/lit16 v4, v4, 0x80

    .line 42
    :cond_4
    iget-object v8, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    sget-object v9, Lcom/android/tools/r8/internal/O80;->i:Lcom/android/tools/r8/internal/F80;

    invoke-virtual {p1, v9, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :sswitch_3
    iget v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 45
    iput v8, p0, Lcom/android/tools/r8/internal/P90;->k:I

    goto/16 :goto_0

    .line 46
    :sswitch_4
    iget v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/16 v10, 0x10

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_5

    .line 47
    iget-object v8, p0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {v8}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v9

    .line 49
    :cond_5
    sget-object v8, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/M90;

    iput-object v8, p0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    if-eqz v9, :cond_6

    .line 50
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 51
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v8

    iput-object v8, p0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    .line 52
    :cond_6
    iget v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    or-int/2addr v8, v10

    iput v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    goto/16 :goto_0

    .line 53
    :sswitch_5
    iget v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 55
    iput v8, p0, Lcom/android/tools/r8/internal/P90;->i:I

    goto/16 :goto_0

    .line 56
    :sswitch_6
    iget v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_7

    .line 57
    iget-object v8, p0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {v8}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v9

    .line 59
    :cond_7
    sget-object v8, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/M90;

    iput-object v8, p0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    if-eqz v9, :cond_8

    .line 60
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 61
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v8

    iput-object v8, p0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    .line 62
    :cond_8
    iget v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    or-int/2addr v8, v6

    iput v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v8, v4, 0x4

    if-eq v8, v6, :cond_9

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 64
    :cond_9
    iget-object v8, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    sget-object v9, Lcom/android/tools/r8/internal/T90;->o:Lcom/android/tools/r8/internal/Q90;

    invoke-virtual {p1, v9, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 65
    :sswitch_8
    iget v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 67
    iput v8, p0, Lcom/android/tools/r8/internal/P90;->f:I

    goto/16 :goto_0

    .line 68
    :sswitch_9
    iget v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    or-int/2addr v8, v3

    iput v8, p0, Lcom/android/tools/r8/internal/P90;->d:I

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 70
    iput v8, p0, Lcom/android/tools/r8/internal/P90;->e:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_a
    move v0, v3

    goto/16 :goto_0

    .line 71
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 74
    throw p2

    .line 75
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 76
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v6, :cond_a

    .line 77
    iget-object p2, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    :cond_a
    and-int/lit16 p2, v4, 0x80

    if-ne p2, v5, :cond_b

    .line 78
    iget-object p2, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v7, :cond_c

    .line 79
    iget-object p2, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 80
    :cond_c
    :try_start_2
    iget-object p2, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_d

    .line 81
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 82
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    .line 83
    throw p1

    .line 84
    :catch_2
    :cond_d
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    .line 85
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 86
    throw p1

    :cond_e
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v6, :cond_f

    .line 87
    iget-object p1, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    :cond_f
    and-int/lit16 p1, v4, 0x80

    if-ne p1, v5, :cond_10

    .line 88
    iget-object p1, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    :cond_10
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v7, :cond_11

    .line 89
    iget-object p1, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 90
    :cond_11
    :try_start_3
    iget-object p1, v2, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_12

    .line 91
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 92
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    .line 93
    throw p1

    .line 94
    :catch_3
    :cond_12
    :goto_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    .line 95
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x38 -> :sswitch_3
        0x42 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xfa -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/O90;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/P90;->n:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/P90;->o:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 33
    iget v0, p0, Lcom/android/tools/r8/internal/P90;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 34
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 35
    iget v0, p0, Lcom/android/tools/r8/internal/P90;->e:I

    .line 36
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 37
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 38
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->f:I

    .line 39
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v2

    .line 40
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 41
    iget-object v4, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    .line 42
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 44
    iget-object v1, p0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    .line 45
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    .line 47
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->i:I

    const/4 v5, 0x5

    .line 48
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/16 v5, 0x10

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    .line 50
    iget-object v1, p0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    const/4 v5, 0x6

    .line 51
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_7

    .line 53
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->k:I

    const/4 v5, 0x7

    .line 54
    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    move v1, v2

    .line 55
    :goto_2
    iget-object v5, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 56
    iget-object v5, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    .line 57
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/O0;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v1, v2

    .line 58
    :goto_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 59
    iget-object v4, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 60
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_9

    .line 61
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v4

    goto :goto_4

    :cond_9
    const/16 v4, 0xa

    :goto_4
    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    add-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v0

    add-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 66
    iput v1, p0, Lcom/android/tools/r8/internal/P90;->o:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/P90;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->e:I

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 7
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 8
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->f:I

    .line 9
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_1
    move v1, v3

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 15
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 16
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->i:I

    const/4 v4, 0x5

    .line 17
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 18
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 19
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 21
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    .line 22
    iget v1, p0, Lcom/android/tools/r8/internal/P90;->k:I

    const/4 v4, 0x7

    .line 23
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 24
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_6
    move v1, v3

    .line 25
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 26
    iget-object v4, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v1, v3

    .line 27
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x1f

    .line 29
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 30
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/16 v1, 0xc8

    .line 31
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/O90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/O90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/O90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/O90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/O90;->a(Lcom/android/tools/r8/internal/P90;)Lcom/android/tools/r8/internal/O90;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/P90;->p:Lcom/android/tools/r8/internal/P90;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/P90;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/T90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/T90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/P90;->n:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/P90;->n:B

    return v2

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/P90;->d:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lcom/android/tools/r8/internal/P90;->n:B

    return v2

    :cond_5
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O80;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/O80;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/android/tools/r8/internal/P90;->n:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, Lcom/android/tools/r8/internal/P90;->n:B

    return v2

    :cond_8
    iput-byte v1, p0, Lcom/android/tools/r8/internal/P90;->n:B

    return v1

    :cond_9
    iput-byte v2, p0, Lcom/android/tools/r8/internal/P90;->n:B

    return v2
.end method
