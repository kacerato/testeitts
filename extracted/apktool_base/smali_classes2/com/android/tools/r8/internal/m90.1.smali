.class public final Lcom/android/tools/r8/internal/m90;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lcom/android/tools/r8/internal/M90;

.field public j:I

.field public k:Ljava/util/List;

.field public l:Lcom/android/tools/r8/internal/M90;

.field public m:I

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Lcom/android/tools/r8/internal/W90;

.field public r:Ljava/util/List;

.field public s:Lcom/android/tools/r8/internal/Y80;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->g:I

    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->i:Lcom/android/tools/r8/internal/M90;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->l:Lcom/android/tools/r8/internal/M90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->q:Lcom/android/tools/r8/internal/W90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/Y80;->f:Lcom/android/tools/r8/internal/Y80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->s:Lcom/android/tools/r8/internal/Y80;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m90;->c()Lcom/android/tools/r8/internal/n90;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/n90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 118
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 119
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/n90;->w:Lcom/android/tools/r8/internal/l90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance v1, Lcom/android/tools/r8/internal/n90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/n90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/m90;->a(Lcom/android/tools/r8/internal/n90;)Lcom/android/tools/r8/internal/m90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 123
    check-cast p2, Lcom/android/tools/r8/internal/n90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/m90;->a(Lcom/android/tools/r8/internal/n90;)Lcom/android/tools/r8/internal/m90;

    .line 126
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 114
    check-cast p1, Lcom/android/tools/r8/internal/n90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m90;->a(Lcom/android/tools/r8/internal/n90;)Lcom/android/tools/r8/internal/m90;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/n90;)Lcom/android/tools/r8/internal/m90;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/n90;->v:Lcom/android/tools/r8/internal/n90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/n90;->e:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/m90;->f:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget v1, p1, Lcom/android/tools/r8/internal/n90;->f:I

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/m90;->g:I

    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9
    iget v1, p1, Lcom/android/tools/r8/internal/n90;->g:I

    .line 10
    iget v3, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 11
    iput v1, p0, Lcom/android/tools/r8/internal/m90;->h:I

    :cond_3
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    .line 13
    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->i:Lcom/android/tools/r8/internal/M90;

    .line 14
    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v2, v3, :cond_4

    .line 15
    invoke-static {v2}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->i:Lcom/android/tools/r8/internal/M90;

    goto :goto_0

    .line 16
    :cond_4
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->i:Lcom/android/tools/r8/internal/M90;

    .line 17
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 18
    :cond_5
    iget v0, p1, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 19
    iget v0, p1, Lcom/android/tools/r8/internal/n90;->i:I

    .line 20
    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 21
    iput v0, p0, Lcom/android/tools/r8/internal/m90;->j:I

    .line 22
    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x20

    if-nez v0, :cond_9

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    .line 27
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    goto :goto_1

    .line 28
    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    .line 30
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    .line 32
    iget-object v2, p1, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_9
    :goto_1
    iget v0, p1, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/2addr v0, v1

    const/16 v2, 0x40

    if-ne v0, v1, :cond_b

    .line 35
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    .line 36
    iget v1, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/m90;->l:Lcom/android/tools/r8/internal/M90;

    .line 37
    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v1, v3, :cond_a

    .line 38
    invoke-static {v1}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->l:Lcom/android/tools/r8/internal/M90;

    goto :goto_2

    .line 39
    :cond_a
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->l:Lcom/android/tools/r8/internal/M90;

    .line 40
    :goto_2
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 41
    :cond_b
    iget v0, p1, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/2addr v0, v2

    const/16 v1, 0x80

    if-ne v0, v2, :cond_c

    .line 42
    iget v0, p1, Lcom/android/tools/r8/internal/n90;->l:I

    .line 43
    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 44
    iput v0, p0, Lcom/android/tools/r8/internal/m90;->m:I

    .line 45
    :cond_c
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v2, 0x100

    if-nez v0, :cond_f

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 48
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    .line 50
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    goto :goto_3

    .line 51
    :cond_d
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_e

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    .line 53
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 54
    :cond_e
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    .line 55
    iget-object v3, p1, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_f
    :goto_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 61
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    .line 62
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    goto :goto_4

    .line 63
    :cond_10
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v3, 0x200

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_11

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    .line 65
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 66
    :cond_11
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    .line 67
    iget-object v3, p1, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_12
    :goto_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 72
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    .line 73
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    .line 74
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    goto :goto_5

    .line 75
    :cond_13
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v3, 0x400

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_14

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    .line 77
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 78
    :cond_14
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    .line 79
    iget-object v3, p1, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    :cond_15
    :goto_5
    iget v0, p1, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_17

    .line 82
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    .line 83
    iget v1, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v3, 0x800

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_16

    iget-object v1, p0, Lcom/android/tools/r8/internal/m90;->q:Lcom/android/tools/r8/internal/W90;

    .line 84
    sget-object v4, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    if-eq v1, v4, :cond_16

    .line 85
    invoke-static {v1}, Lcom/android/tools/r8/internal/W90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V90;->c()Lcom/android/tools/r8/internal/W90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->q:Lcom/android/tools/r8/internal/W90;

    goto :goto_6

    .line 86
    :cond_16
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->q:Lcom/android/tools/r8/internal/W90;

    .line 87
    :goto_6
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 88
    :cond_17
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 91
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 92
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    .line 93
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    goto :goto_7

    .line 94
    :cond_18
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_19

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    .line 96
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 97
    :cond_19
    iget-object v0, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    .line 98
    iget-object v1, p1, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_1a
    :goto_7
    iget v0, p1, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1c

    .line 101
    iget-object v0, p1, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    .line 102
    iget v1, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/tools/r8/internal/m90;->s:Lcom/android/tools/r8/internal/Y80;

    .line 103
    sget-object v3, Lcom/android/tools/r8/internal/Y80;->f:Lcom/android/tools/r8/internal/Y80;

    if-eq v1, v3, :cond_1b

    .line 104
    new-instance v3, Lcom/android/tools/r8/internal/X80;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/X80;-><init>()V

    .line 105
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/X80;->a(Lcom/android/tools/r8/internal/Y80;)Lcom/android/tools/r8/internal/X80;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/X80;->a(Lcom/android/tools/r8/internal/Y80;)Lcom/android/tools/r8/internal/X80;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/X80;->c()Lcom/android/tools/r8/internal/Y80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->s:Lcom/android/tools/r8/internal/Y80;

    goto :goto_8

    .line 107
    :cond_1b
    iput-object v0, p0, Lcom/android/tools/r8/internal/m90;->s:Lcom/android/tools/r8/internal/Y80;

    .line 108
    :goto_8
    iget v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/m90;->e:I

    .line 109
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 110
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 111
    iget-object p1, p1, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    .line 112
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/n90;->v:Lcom/android/tools/r8/internal/n90;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/n90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/n90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/n90;-><init>(Lcom/android/tools/r8/internal/m90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/m90;->f:I

    iput v2, v0, Lcom/android/tools/r8/internal/n90;->e:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/m90;->g:I

    iput v2, v0, Lcom/android/tools/r8/internal/n90;->f:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/m90;->h:I

    iput v2, v0, Lcom/android/tools/r8/internal/n90;->g:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->i:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/m90;->j:I

    iput v2, v0, Lcom/android/tools/r8/internal/n90;->i:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->k:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->l:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    :cond_7
    iget v2, p0, Lcom/android/tools/r8/internal/m90;->m:I

    iput v2, v0, Lcom/android/tools/r8/internal/n90;->l:I

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    :cond_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->n:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->o:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    :cond_a
    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->p:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x80

    :cond_b
    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->q:Lcom/android/tools/r8/internal/W90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    const/16 v4, 0x1000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Lcom/android/tools/r8/internal/m90;->e:I

    :cond_c
    iget-object v2, p0, Lcom/android/tools/r8/internal/m90;->r:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    or-int/lit16 v3, v3, 0x100

    :cond_d
    iget-object v1, p0, Lcom/android/tools/r8/internal/m90;->s:Lcom/android/tools/r8/internal/Y80;

    iput-object v1, v0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    iput v3, v0, Lcom/android/tools/r8/internal/n90;->d:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/m90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/m90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m90;->c()Lcom/android/tools/r8/internal/n90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/m90;->a(Lcom/android/tools/r8/internal/n90;)Lcom/android/tools/r8/internal/m90;

    move-result-object v0

    return-object v0
.end method
