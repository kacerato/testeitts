.class public final Lcom/android/tools/r8/internal/O90;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/List;

.field public i:Lcom/android/tools/r8/internal/M90;

.field public j:I

.field public k:Lcom/android/tools/r8/internal/M90;

.field public l:I

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->f:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/O90;->i:Lcom/android/tools/r8/internal/M90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/O90;->k:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O90;->c()Lcom/android/tools/r8/internal/P90;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/P90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 75
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/P90;)Lcom/android/tools/r8/internal/O90;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/P90;->p:Lcom/android/tools/r8/internal/P90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/P90;->d:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/P90;->e:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/O90;->f:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p1, Lcom/android/tools/r8/internal/P90;->f:I

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/O90;->g:I

    .line 9
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    goto :goto_0

    .line 15
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    .line 19
    iget-object v2, p1, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_5
    :goto_0
    iget v0, p1, Lcom/android/tools/r8/internal/P90;->d:I

    and-int/2addr v0, v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_7

    .line 22
    iget-object v0, p1, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    .line 23
    iget v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/O90;->i:Lcom/android/tools/r8/internal/M90;

    .line 24
    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v1, v3, :cond_6

    .line 25
    invoke-static {v1}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->i:Lcom/android/tools/r8/internal/M90;

    goto :goto_1

    .line 26
    :cond_6
    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->i:Lcom/android/tools/r8/internal/M90;

    .line 27
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 28
    :cond_7
    iget v0, p1, Lcom/android/tools/r8/internal/P90;->d:I

    and-int/lit8 v1, v0, 0x8

    const/16 v3, 0x10

    if-ne v1, v2, :cond_8

    .line 29
    iget v1, p1, Lcom/android/tools/r8/internal/P90;->i:I

    .line 30
    iget v2, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 31
    iput v1, p0, Lcom/android/tools/r8/internal/O90;->j:I

    :cond_8
    and-int/2addr v0, v3

    const/16 v1, 0x20

    if-ne v0, v3, :cond_a

    .line 32
    iget-object v0, p1, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    .line 33
    iget v2, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/O90;->k:Lcom/android/tools/r8/internal/M90;

    .line 34
    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v2, v3, :cond_9

    .line 35
    invoke-static {v2}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->k:Lcom/android/tools/r8/internal/M90;

    goto :goto_2

    .line 36
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->k:Lcom/android/tools/r8/internal/M90;

    .line 37
    :goto_2
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 38
    :cond_a
    iget v0, p1, Lcom/android/tools/r8/internal/P90;->d:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 39
    iget v0, p1, Lcom/android/tools/r8/internal/P90;->k:I

    .line 40
    iget v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 41
    iput v0, p0, Lcom/android/tools/r8/internal/O90;->l:I

    .line 42
    :cond_b
    iget-object v0, p1, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 45
    iget-object v0, p1, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    .line 46
    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    .line 47
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    goto :goto_3

    .line 48
    :cond_c
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    .line 50
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 51
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    .line 52
    iget-object v1, p1, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_e
    :goto_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57
    iget-object v0, p1, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 58
    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    .line 59
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    goto :goto_4

    .line 60
    :cond_f
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_10

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    .line 62
    iget v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/O90;->e:I

    .line 63
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    .line 64
    iget-object v1, p1, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_11
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 68
    iget-object p1, p1, Lcom/android/tools/r8/internal/P90;->c:Lcom/android/tools/r8/internal/l8;

    .line 69
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 76
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/P90;->q:Lcom/android/tools/r8/internal/N90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    new-instance v1, Lcom/android/tools/r8/internal/P90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/P90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/O90;->a(Lcom/android/tools/r8/internal/P90;)Lcom/android/tools/r8/internal/O90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 80
    check-cast p2, Lcom/android/tools/r8/internal/P90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/O90;->a(Lcom/android/tools/r8/internal/P90;)Lcom/android/tools/r8/internal/O90;

    .line 83
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 71
    check-cast p1, Lcom/android/tools/r8/internal/P90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/O90;->a(Lcom/android/tools/r8/internal/P90;)Lcom/android/tools/r8/internal/O90;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/P90;->p:Lcom/android/tools/r8/internal/P90;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/P90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/P90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/P90;-><init>(Lcom/android/tools/r8/internal/O90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/O90;->f:I

    iput v2, v0, Lcom/android/tools/r8/internal/P90;->e:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/O90;->g:I

    iput v2, v0, Lcom/android/tools/r8/internal/P90;->f:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/tools/r8/internal/O90;->e:I

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/O90;->h:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/P90;->g:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/O90;->i:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/P90;->h:Lcom/android/tools/r8/internal/M90;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/O90;->j:I

    iput v2, v0, Lcom/android/tools/r8/internal/P90;->i:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/O90;->k:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/P90;->j:Lcom/android/tools/r8/internal/M90;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/O90;->l:I

    iput v1, v0, Lcom/android/tools/r8/internal/P90;->k:I

    iget v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/O90;->m:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/P90;->l:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/android/tools/r8/internal/O90;->e:I

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/O90;->n:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/P90;->m:Ljava/util/List;

    iput v3, v0, Lcom/android/tools/r8/internal/P90;->d:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/O90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/O90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O90;->c()Lcom/android/tools/r8/internal/P90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/O90;->a(Lcom/android/tools/r8/internal/P90;)Lcom/android/tools/r8/internal/O90;

    move-result-object v0

    return-object v0
.end method
