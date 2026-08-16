.class public final Lcom/android/tools/r8/internal/M90;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final u:Lcom/android/tools/r8/internal/M90;

.field public static final v:Lcom/android/tools/r8/internal/G90;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:Ljava/util/List;

.field public f:Z

.field public g:I

.field public h:Lcom/android/tools/r8/internal/M90;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/android/tools/r8/internal/M90;

.field public o:I

.field public p:Lcom/android/tools/r8/internal/M90;

.field public q:I

.field public r:I

.field public s:B

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/G90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/G90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    new-instance v0, Lcom/android/tools/r8/internal/M90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/M90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->f()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/android/tools/r8/internal/M90;->s:B

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/M90;->t:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 10

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lcom/android/tools/r8/internal/M90;->s:B

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/M90;->t:I

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M90;->f()V

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    if-nez v4, :cond_b

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v1, p2, v6}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

    move-result v6

    if-nez v6, :cond_0

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

    .line 18
    :sswitch_0
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 20
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->q:I

    goto :goto_0

    .line 21
    :sswitch_1
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v8, 0x400

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1

    .line 22
    iget-object v6, p0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {v6}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v7

    .line 24
    :cond_1
    sget-object v6, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/M90;

    iput-object v6, p0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    if-eqz v7, :cond_2

    .line 25
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 26
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    .line 27
    :cond_2
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/2addr v6, v8

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    goto :goto_0

    .line 28
    :sswitch_2
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 30
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->m:I

    goto :goto_0

    .line 31
    :sswitch_3
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 33
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->o:I

    goto :goto_0

    .line 34
    :sswitch_4
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v8, 0x100

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_3

    .line 35
    iget-object v6, p0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {v6}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v7

    .line 37
    :cond_3
    sget-object v6, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/M90;

    iput-object v6, p0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    if-eqz v7, :cond_4

    .line 38
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 39
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    .line 40
    :cond_4
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/2addr v6, v8

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    goto/16 :goto_0

    .line 41
    :sswitch_5
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 43
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->l:I

    goto/16 :goto_0

    .line 44
    :sswitch_6
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 46
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->i:I

    goto/16 :goto_0

    .line 47
    :sswitch_7
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 49
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->k:I

    goto/16 :goto_0

    .line 50
    :sswitch_8
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 52
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->j:I

    goto/16 :goto_0

    .line 53
    :sswitch_9
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/4 v8, 0x4

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_5

    .line 54
    iget-object v6, p0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {v6}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v7

    .line 56
    :cond_5
    sget-object v6, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v6, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/M90;

    iput-object v6, p0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    if-eqz v7, :cond_6

    .line 57
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 58
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    .line 59
    :cond_6
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/2addr v6, v8

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    goto/16 :goto_0

    .line 60
    :sswitch_a
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 62
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->g:I

    goto/16 :goto_0

    .line 63
    :sswitch_b
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->g()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    move v6, v2

    goto :goto_1

    :cond_7
    move v6, v3

    .line 65
    :goto_1
    iput-boolean v6, p0, Lcom/android/tools/r8/internal/M90;->f:Z

    goto/16 :goto_0

    :sswitch_c
    if-eq v5, v2, :cond_8

    .line 66
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    move v5, v2

    .line 67
    :cond_8
    iget-object v6, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    sget-object v7, Lcom/android/tools/r8/internal/K90;->j:Lcom/android/tools/r8/internal/H90;

    invoke-virtual {p1, v7, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :sswitch_d
    iget v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/android/tools/r8/internal/M90;->d:I

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 70
    iput v6, p0, Lcom/android/tools/r8/internal/M90;->r:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_e
    move v4, v2

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
    if-ne v5, v2, :cond_9

    .line 77
    iget-object p2, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    .line 78
    :cond_9
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_a

    .line 79
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 80
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    .line 81
    throw p1

    .line 82
    :catch_2
    :cond_a
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    .line 83
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 84
    throw p1

    :cond_b
    if-ne v5, v2, :cond_c

    .line 85
    iget-object p1, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    .line 86
    :cond_c
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_d

    .line 87
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 88
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    .line 89
    throw p1

    .line 90
    :catch_3
    :cond_d
    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    .line 91
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x12 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x2a -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x6a -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/L90;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/M90;->s:B

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/M90;->t:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;
    .locals 1

    .line 98
    new-instance v0, Lcom/android/tools/r8/internal/L90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/L90;-><init>()V

    .line 99
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 53
    iget v0, p0, Lcom/android/tools/r8/internal/M90;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 54
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 55
    iget v0, p0, Lcom/android/tools/r8/internal/M90;->r:I

    .line 56
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v2, v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 61
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 62
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_4

    .line 63
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->g:I

    .line 64
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 66
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    const/4 v2, 0x5

    .line 67
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 69
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->j:I

    const/4 v2, 0x6

    .line 70
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 72
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->k:I

    const/4 v2, 0x7

    .line 73
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_7
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 75
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->i:I

    .line 76
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_8
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    .line 78
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->l:I

    const/16 v2, 0x9

    .line 79
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    .line 81
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    const/16 v2, 0xa

    .line 82
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 84
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->o:I

    const/16 v2, 0xb

    .line 85
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    .line 87
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->m:I

    const/16 v2, 0xc

    .line 88
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_c
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    .line 90
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    const/16 v2, 0xd

    .line 91
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_d
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    .line 93
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->q:I

    const/16 v2, 0xe

    .line 94
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_e
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 97
    iput v0, p0, Lcom/android/tools/r8/internal/M90;->t:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M90;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->r:I

    .line 5
    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_0
    move v1, v4

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p1, v5, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 10
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/M90;->f:Z

    const/4 v2, 0x3

    .line 11
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->e(I)V

    .line 13
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/2addr v1, v5

    const/4 v2, 0x4

    if-ne v1, v5, :cond_3

    .line 14
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->g:I

    .line 15
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 16
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 17
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 19
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 20
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->j:I

    const/4 v2, 0x6

    .line 21
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 23
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 24
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->k:I

    const/4 v2, 0x7

    .line 25
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 26
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 27
    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 28
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->i:I

    .line 29
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 31
    :cond_7
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 32
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->l:I

    const/16 v2, 0x9

    .line 33
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 34
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 35
    :cond_8
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 37
    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    .line 38
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->o:I

    const/16 v2, 0xb

    .line 39
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 40
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 41
    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 42
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->m:I

    const/16 v2, 0xc

    .line 43
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 44
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 45
    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 47
    :cond_c
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    .line 48
    iget v1, p0, Lcom/android/tools/r8/internal/M90;->q:I

    const/16 v2, 0xe

    .line 49
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 50
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_d
    const/16 v1, 0xc8

    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/L90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/L90;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M90;->g()Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/M90;->f:Z

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->g:I

    sget-object v1, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->i:I

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->j:I

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->k:I

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->l:I

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->m:I

    iput-object v1, p0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->o:I

    iput-object v1, p0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->q:I

    iput v0, p0, Lcom/android/tools/r8/internal/M90;->r:I

    return-void
.end method

.method public final g()Lcom/android/tools/r8/internal/L90;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/M90;->s:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/K90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/K90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/M90;->s:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/M90;->s:B

    return v2

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v3, 0x100

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lcom/android/tools/r8/internal/M90;->s:B

    return v2

    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/M90;->d:I

    const/16 v3, 0x400

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, Lcom/android/tools/r8/internal/M90;->s:B

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_7

    iput-byte v2, p0, Lcom/android/tools/r8/internal/M90;->s:B

    return v2

    :cond_7
    iput-byte v1, p0, Lcom/android/tools/r8/internal/M90;->s:B

    return v1
.end method
