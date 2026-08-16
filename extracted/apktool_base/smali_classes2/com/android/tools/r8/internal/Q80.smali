.class public final Lcom/android/tools/r8/internal/Q80;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public A:Lcom/android/tools/r8/internal/W90;

.field public B:Ljava/util/List;

.field public C:Lcom/android/tools/r8/internal/ha0;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:I

.field public v:Lcom/android/tools/r8/internal/M90;

.field public w:I

.field public x:Ljava/util/List;

.field public y:Ljava/util/List;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->f:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Q80;->v:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Q80;->A:Lcom/android/tools/r8/internal/W90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/ha0;->f:Lcom/android/tools/r8/internal/ha0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->C:Lcom/android/tools/r8/internal/ha0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Q80;->c()Lcom/android/tools/r8/internal/S80;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S80;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 242
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 243
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/S80;)Lcom/android/tools/r8/internal/Q80;
    .locals 8

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/S80;->K:Lcom/android/tools/r8/internal/S80;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/S80;->e:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/Q80;->f:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget v1, p1, Lcom/android/tools/r8/internal/S80;->f:I

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/Q80;->g:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 9
    iget v0, p1, Lcom/android/tools/r8/internal/S80;->g:I

    .line 10
    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 11
    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->h:I

    .line 12
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_0

    .line 18
    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    .line 22
    iget-object v2, p1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_6
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v2, 0x10

    if-nez v0, :cond_9

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    .line 29
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_1

    .line 30
    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_8

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    .line 32
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    .line 34
    iget-object v3, p1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_9
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x20

    if-nez v0, :cond_c

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    .line 41
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_2

    .line 42
    :cond_a
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_b

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    .line 44
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 45
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    .line 46
    iget-object v4, p1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    .line 47
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_c
    :goto_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v4, 0x40

    if-nez v0, :cond_f

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    .line 53
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_3

    .line 54
    :cond_d
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_e

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    .line 56
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 57
    :cond_e
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    .line 58
    iget-object v5, p1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    .line 59
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_f
    :goto_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v5, 0x80

    if-nez v0, :cond_12

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    .line 65
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_4

    .line 66
    :cond_10
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_11

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    .line 68
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 69
    :cond_11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    .line 70
    iget-object v6, p1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    .line 71
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_12
    :goto_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 75
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    .line 77
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_5

    .line 78
    :cond_13
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x100

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_14

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    .line 80
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 81
    :cond_14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    .line 82
    iget-object v6, p1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    .line 83
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_15
    :goto_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 86
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 87
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    .line 88
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    .line 89
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_6

    .line 90
    :cond_16
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x200

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_17

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    .line 92
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 93
    :cond_17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    .line 94
    iget-object v6, p1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    .line 95
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_18
    :goto_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 99
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    .line 100
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    .line 101
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_7

    .line 102
    :cond_19
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x400

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1a

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    .line 104
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 105
    :cond_1a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    .line 106
    iget-object v6, p1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    .line 107
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_1b
    :goto_7
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 110
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 111
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    .line 112
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    .line 113
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_8

    .line 114
    :cond_1c
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x800

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1d

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    .line 116
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 117
    :cond_1d
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    .line 118
    iget-object v6, p1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    .line 119
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_1e
    :goto_8
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 122
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 123
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    .line 124
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    .line 125
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_9

    .line 126
    :cond_1f
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x1000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_20

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    .line 128
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 129
    :cond_20
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    .line 130
    iget-object v6, p1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    .line 131
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_21
    :goto_9
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 134
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 135
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    .line 136
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    .line 137
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_a

    .line 138
    :cond_22
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x2000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_23

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    .line 140
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 141
    :cond_23
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    .line 142
    iget-object v6, p1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    .line 143
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_24
    :goto_a
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 146
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 147
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    .line 148
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    .line 149
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_b

    .line 150
    :cond_25
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v6, 0x4000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_26

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    .line 152
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 153
    :cond_26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    .line 154
    iget-object v6, p1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    .line 155
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_27
    :goto_b
    iget v0, p1, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/lit8 v6, v0, 0x8

    if-ne v6, v1, :cond_28

    .line 157
    iget v1, p1, Lcom/android/tools/r8/internal/S80;->x:I

    .line 158
    iget v6, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 159
    iput v1, p0, Lcom/android/tools/r8/internal/Q80;->u:I

    :cond_28
    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2a

    .line 160
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    .line 161
    iget v1, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q80;->v:Lcom/android/tools/r8/internal/M90;

    .line 162
    sget-object v6, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v1, v6, :cond_29

    .line 163
    invoke-static {v1}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->v:Lcom/android/tools/r8/internal/M90;

    goto :goto_c

    .line 164
    :cond_29
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->v:Lcom/android/tools/r8/internal/M90;

    .line 165
    :goto_c
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 166
    :cond_2a
    iget v0, p1, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2b

    .line 167
    iget v0, p1, Lcom/android/tools/r8/internal/S80;->z:I

    .line 168
    iget v1, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 169
    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->w:I

    .line 170
    :cond_2b
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    .line 171
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 172
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 173
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    .line 174
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    .line 175
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_d

    .line 176
    :cond_2c
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2d

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    .line 178
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 179
    :cond_2d
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    .line 180
    iget-object v1, p1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_2e
    :goto_d
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 184
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 185
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    .line 186
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    .line 187
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_e

    .line 188
    :cond_2f
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_30

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    .line 190
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 191
    :cond_30
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    .line 192
    iget-object v1, p1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_31
    :goto_e
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    .line 195
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 196
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 197
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    .line 198
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    .line 199
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_f

    .line 200
    :cond_32
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_33

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    .line 202
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 203
    :cond_33
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    .line 204
    iget-object v1, p1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_34
    :goto_f
    iget v0, p1, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_36

    .line 207
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    .line 208
    iget v1, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_35

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q80;->A:Lcom/android/tools/r8/internal/W90;

    .line 209
    sget-object v3, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    if-eq v1, v3, :cond_35

    .line 210
    invoke-static {v1}, Lcom/android/tools/r8/internal/W90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V90;->c()Lcom/android/tools/r8/internal/W90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->A:Lcom/android/tools/r8/internal/W90;

    goto :goto_10

    .line 211
    :cond_35
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->A:Lcom/android/tools/r8/internal/W90;

    .line 212
    :goto_10
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 213
    :cond_36
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    .line 214
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 215
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 216
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    .line 217
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    .line 218
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    goto :goto_11

    .line 219
    :cond_37
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_38

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    .line 221
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 222
    :cond_38
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    .line 223
    iget-object v1, p1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_39
    :goto_11
    iget v0, p1, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3b

    .line 226
    iget-object v0, p1, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    .line 227
    iget v1, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q80;->C:Lcom/android/tools/r8/internal/ha0;

    .line 228
    sget-object v3, Lcom/android/tools/r8/internal/ha0;->f:Lcom/android/tools/r8/internal/ha0;

    if-eq v1, v3, :cond_3a

    .line 229
    new-instance v3, Lcom/android/tools/r8/internal/ga0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ga0;-><init>()V

    .line 230
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/ga0;->a(Lcom/android/tools/r8/internal/ha0;)Lcom/android/tools/r8/internal/ga0;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ga0;->a(Lcom/android/tools/r8/internal/ha0;)Lcom/android/tools/r8/internal/ga0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga0;->c()Lcom/android/tools/r8/internal/ha0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->C:Lcom/android/tools/r8/internal/ha0;

    goto :goto_12

    .line 232
    :cond_3a
    iput-object v0, p0, Lcom/android/tools/r8/internal/Q80;->C:Lcom/android/tools/r8/internal/ha0;

    .line 233
    :goto_12
    iget v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    .line 234
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 235
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 236
    iget-object p1, p1, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    .line 237
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 238
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 244
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/S80;->L:Lcom/android/tools/r8/internal/P80;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    new-instance v1, Lcom/android/tools/r8/internal/S80;

    .line 246
    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/S80;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Q80;->a(Lcom/android/tools/r8/internal/S80;)Lcom/android/tools/r8/internal/Q80;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 249
    check-cast p2, Lcom/android/tools/r8/internal/S80;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Q80;->a(Lcom/android/tools/r8/internal/S80;)Lcom/android/tools/r8/internal/Q80;

    .line 252
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 239
    check-cast p1, Lcom/android/tools/r8/internal/S80;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Q80;->a(Lcom/android/tools/r8/internal/S80;)Lcom/android/tools/r8/internal/Q80;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/S80;->K:Lcom/android/tools/r8/internal/S80;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/S80;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/S80;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/S80;-><init>(Lcom/android/tools/r8/internal/Q80;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->f:I

    iput v2, v0, Lcom/android/tools/r8/internal/S80;->e:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->g:I

    iput v2, v0, Lcom/android/tools/r8/internal/S80;->f:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->h:I

    iput v2, v0, Lcom/android/tools/r8/internal/S80;->g:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->i:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->j:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->k:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->l:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->m:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->n:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->o:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_a
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->p:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x800

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_b
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->q:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x1000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_c
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->r:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x2000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_d
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->s:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/16 v4, 0x4000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_e

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_e
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->t:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    const v2, 0x8000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_f

    or-int/lit8 v3, v3, 0x8

    :cond_f
    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->u:I

    iput v2, v0, Lcom/android/tools/r8/internal/S80;->x:I

    const/high16 v2, 0x10000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_10

    or-int/lit8 v3, v3, 0x10

    :cond_10
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->v:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    const/high16 v2, 0x20000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_11

    or-int/lit8 v3, v3, 0x20

    :cond_11
    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->w:I

    iput v2, v0, Lcom/android/tools/r8/internal/S80;->z:I

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_12

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v4, -0x40001

    and-int/2addr v2, v4

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_12
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->x:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_13

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v4, -0x80001

    and-int/2addr v2, v4

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_13
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->y:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_14

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v4, -0x100001

    and-int/2addr v2, v4

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_14
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->z:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    const/high16 v2, 0x200000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_15

    or-int/lit8 v3, v3, 0x40

    :cond_15
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->A:Lcom/android/tools/r8/internal/W90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const/high16 v4, 0x400000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_16

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    const v4, -0x400001

    and-int/2addr v2, v4

    iput v2, p0, Lcom/android/tools/r8/internal/Q80;->e:I

    :cond_16
    iget-object v2, p0, Lcom/android/tools/r8/internal/Q80;->B:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    or-int/lit16 v3, v3, 0x80

    :cond_17
    iget-object v1, p0, Lcom/android/tools/r8/internal/Q80;->C:Lcom/android/tools/r8/internal/ha0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    iput v3, v0, Lcom/android/tools/r8/internal/S80;->d:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Q80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Q80;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Q80;->c()Lcom/android/tools/r8/internal/S80;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Q80;->a(Lcom/android/tools/r8/internal/S80;)Lcom/android/tools/r8/internal/Q80;

    move-result-object v0

    return-object v0
.end method
