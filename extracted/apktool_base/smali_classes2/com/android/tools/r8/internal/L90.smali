.class public final Lcom/android/tools/r8/internal/L90;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/util/List;

.field public g:Z

.field public h:I

.field public i:Lcom/android/tools/r8/internal/M90;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Lcom/android/tools/r8/internal/M90;

.field public p:I

.field public q:Lcom/android/tools/r8/internal/M90;

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/L90;->i:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/L90;->o:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/L90;->q:Lcom/android/tools/r8/internal/M90;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    .line 6
    iput-object v1, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    .line 7
    iget v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    goto :goto_0

    .line 8
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    .line 10
    iget v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    .line 12
    iget-object v3, p1, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget v1, p1, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    if-ne v3, v2, :cond_4

    .line 15
    iget-boolean v2, p1, Lcom/android/tools/r8/internal/M90;->f:Z

    .line 16
    iget v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 17
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/L90;->g:Z

    :cond_4
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x4

    if-ne v2, v4, :cond_5

    .line 18
    iget v2, p1, Lcom/android/tools/r8/internal/M90;->g:I

    .line 19
    iget v4, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 20
    iput v2, p0, Lcom/android/tools/r8/internal/L90;->h:I

    :cond_5
    and-int/2addr v1, v3

    const/16 v2, 0x8

    if-ne v1, v3, :cond_7

    .line 21
    iget-object v1, p1, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    .line 22
    iget v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_6

    iget-object v3, p0, Lcom/android/tools/r8/internal/L90;->i:Lcom/android/tools/r8/internal/M90;

    if-eq v3, v0, :cond_6

    .line 23
    invoke-static {v3}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/L90;->i:Lcom/android/tools/r8/internal/M90;

    goto :goto_1

    .line 24
    :cond_6
    iput-object v1, p0, Lcom/android/tools/r8/internal/L90;->i:Lcom/android/tools/r8/internal/M90;

    .line 25
    :goto_1
    iget v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 26
    :cond_7
    iget v1, p1, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x10

    if-ne v3, v2, :cond_8

    .line 27
    iget v2, p1, Lcom/android/tools/r8/internal/M90;->i:I

    .line 28
    iget v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 29
    iput v2, p0, Lcom/android/tools/r8/internal/L90;->j:I

    :cond_8
    and-int/lit8 v2, v1, 0x10

    const/16 v3, 0x20

    if-ne v2, v4, :cond_9

    .line 30
    iget v2, p1, Lcom/android/tools/r8/internal/M90;->j:I

    .line 31
    iget v4, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 32
    iput v2, p0, Lcom/android/tools/r8/internal/L90;->k:I

    :cond_9
    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x40

    if-ne v2, v3, :cond_a

    .line 33
    iget v2, p1, Lcom/android/tools/r8/internal/M90;->k:I

    .line 34
    iget v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 35
    iput v2, p0, Lcom/android/tools/r8/internal/L90;->l:I

    :cond_a
    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x80

    if-ne v2, v4, :cond_b

    .line 36
    iget v2, p1, Lcom/android/tools/r8/internal/M90;->l:I

    .line 37
    iget v4, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 38
    iput v2, p0, Lcom/android/tools/r8/internal/L90;->m:I

    :cond_b
    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x100

    if-ne v2, v3, :cond_c

    .line 39
    iget v2, p1, Lcom/android/tools/r8/internal/M90;->m:I

    .line 40
    iget v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 41
    iput v2, p0, Lcom/android/tools/r8/internal/L90;->n:I

    :cond_c
    and-int/2addr v1, v4

    const/16 v2, 0x200

    if-ne v1, v4, :cond_e

    .line 42
    iget-object v1, p1, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    .line 43
    iget v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_d

    iget-object v3, p0, Lcom/android/tools/r8/internal/L90;->o:Lcom/android/tools/r8/internal/M90;

    if-eq v3, v0, :cond_d

    .line 44
    invoke-static {v3}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/L90;->o:Lcom/android/tools/r8/internal/M90;

    goto :goto_2

    .line 45
    :cond_d
    iput-object v1, p0, Lcom/android/tools/r8/internal/L90;->o:Lcom/android/tools/r8/internal/M90;

    .line 46
    :goto_2
    iget v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 47
    :cond_e
    iget v1, p1, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x400

    if-ne v3, v2, :cond_f

    .line 48
    iget v2, p1, Lcom/android/tools/r8/internal/M90;->o:I

    .line 49
    iget v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 50
    iput v2, p0, Lcom/android/tools/r8/internal/L90;->p:I

    :cond_f
    and-int/2addr v1, v4

    const/16 v2, 0x800

    if-ne v1, v4, :cond_11

    .line 51
    iget-object v1, p1, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    .line 52
    iget v3, p0, Lcom/android/tools/r8/internal/L90;->e:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_10

    iget-object v3, p0, Lcom/android/tools/r8/internal/L90;->q:Lcom/android/tools/r8/internal/M90;

    if-eq v3, v0, :cond_10

    .line 53
    invoke-static {v3}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/L90;->q:Lcom/android/tools/r8/internal/M90;

    goto :goto_3

    .line 54
    :cond_10
    iput-object v1, p0, Lcom/android/tools/r8/internal/L90;->q:Lcom/android/tools/r8/internal/M90;

    .line 55
    :goto_3
    iget v0, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 56
    :cond_11
    iget v0, p1, Lcom/android/tools/r8/internal/M90;->d:I

    and-int/lit16 v1, v0, 0x800

    const/16 v3, 0x1000

    if-ne v1, v2, :cond_12

    .line 57
    iget v1, p1, Lcom/android/tools/r8/internal/M90;->q:I

    .line 58
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 59
    iput v1, p0, Lcom/android/tools/r8/internal/L90;->r:I

    :cond_12
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_13

    .line 60
    iget v0, p1, Lcom/android/tools/r8/internal/M90;->r:I

    .line 61
    iget v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    .line 62
    iput v0, p0, Lcom/android/tools/r8/internal/L90;->s:I

    .line 63
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 65
    iget-object p1, p1, Lcom/android/tools/r8/internal/M90;->c:Lcom/android/tools/r8/internal/l8;

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/android/tools/r8/internal/O0;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 70
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    new-instance v1, Lcom/android/tools/r8/internal/M90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/M90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 74
    check-cast p2, Lcom/android/tools/r8/internal/M90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 77
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 69
    check-cast p1, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/M90;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/L90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/L90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/M90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/M90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/M90;-><init>(Lcom/android/tools/r8/internal/L90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/L90;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/L90;->e:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/tools/r8/internal/L90;->e:I

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/L90;->f:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/M90;->e:Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/L90;->g:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/M90;->f:Z

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->h:I

    iput v2, v0, Lcom/android/tools/r8/internal/M90;->g:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/L90;->i:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/M90;->h:Lcom/android/tools/r8/internal/M90;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->j:I

    iput v2, v0, Lcom/android/tools/r8/internal/M90;->i:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->k:I

    iput v2, v0, Lcom/android/tools/r8/internal/M90;->j:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->l:I

    iput v2, v0, Lcom/android/tools/r8/internal/M90;->k:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    :cond_7
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->m:I

    iput v2, v0, Lcom/android/tools/r8/internal/M90;->l:I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    :cond_8
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->n:I

    iput v2, v0, Lcom/android/tools/r8/internal/M90;->m:I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/L90;->o:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/M90;->n:Lcom/android/tools/r8/internal/M90;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    :cond_a
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->p:I

    iput v2, v0, Lcom/android/tools/r8/internal/M90;->o:I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    :cond_b
    iget-object v2, p0, Lcom/android/tools/r8/internal/L90;->q:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/M90;->p:Lcom/android/tools/r8/internal/M90;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x800

    :cond_c
    iget v2, p0, Lcom/android/tools/r8/internal/L90;->r:I

    iput v2, v0, Lcom/android/tools/r8/internal/M90;->q:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    or-int/lit16 v3, v3, 0x1000

    :cond_d
    iget v1, p0, Lcom/android/tools/r8/internal/L90;->s:I

    iput v1, v0, Lcom/android/tools/r8/internal/M90;->r:I

    iput v3, v0, Lcom/android/tools/r8/internal/M90;->d:I

    return-object v0
.end method
