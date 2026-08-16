.class public final Lcom/android/tools/r8/internal/QL;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Lcom/android/tools/r8/internal/yR;

.field public g:Lcom/android/tools/r8/internal/F90;

.field public h:Lcom/android/tools/r8/internal/C90;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    sget-object v1, Lcom/android/tools/r8/internal/F90;->f:Lcom/android/tools/r8/internal/F90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/QL;->g:Lcom/android/tools/r8/internal/F90;

    sget-object v1, Lcom/android/tools/r8/internal/C90;->f:Lcom/android/tools/r8/internal/C90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/QL;->h:Lcom/android/tools/r8/internal/C90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QL;->c()Lcom/android/tools/r8/internal/RL;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/RL;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 88
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/RL;)Lcom/android/tools/r8/internal/QL;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/RL;->m:Lcom/android/tools/r8/internal/RL;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    .line 12
    iget-object v2, p1, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    .line 19
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    goto :goto_1

    .line 20
    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_5

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    .line 22
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    .line 24
    iget-object v3, p1, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    .line 30
    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    .line 31
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    goto :goto_2

    .line 32
    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_8

    .line 33
    new-instance v0, Lcom/android/tools/r8/internal/wR;

    iget-object v4, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    .line 34
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    .line 36
    iget-object v3, p1, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_9
    :goto_2
    iget v0, p1, Lcom/android/tools/r8/internal/RL;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 39
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    .line 40
    iget v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/QL;->g:Lcom/android/tools/r8/internal/F90;

    .line 41
    sget-object v4, Lcom/android/tools/r8/internal/F90;->f:Lcom/android/tools/r8/internal/F90;

    if-eq v1, v4, :cond_a

    .line 42
    new-instance v4, Lcom/android/tools/r8/internal/E90;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/E90;-><init>()V

    .line 43
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/E90;->c()Lcom/android/tools/r8/internal/F90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->g:Lcom/android/tools/r8/internal/F90;

    goto :goto_3

    .line 45
    :cond_a
    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->g:Lcom/android/tools/r8/internal/F90;

    .line 46
    :goto_3
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    .line 47
    :cond_b
    iget v0, p1, Lcom/android/tools/r8/internal/RL;->c:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_d

    .line 48
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    .line 49
    iget v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/tools/r8/internal/QL;->h:Lcom/android/tools/r8/internal/C90;

    .line 50
    sget-object v3, Lcom/android/tools/r8/internal/C90;->f:Lcom/android/tools/r8/internal/C90;

    if-eq v1, v3, :cond_c

    .line 51
    new-instance v3, Lcom/android/tools/r8/internal/x90;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/x90;-><init>()V

    .line 52
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/x90;->a(Lcom/android/tools/r8/internal/C90;)Lcom/android/tools/r8/internal/x90;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/x90;->a(Lcom/android/tools/r8/internal/C90;)Lcom/android/tools/r8/internal/x90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x90;->c()Lcom/android/tools/r8/internal/C90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->h:Lcom/android/tools/r8/internal/C90;

    goto :goto_4

    .line 54
    :cond_c
    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->h:Lcom/android/tools/r8/internal/C90;

    .line 55
    :goto_4
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    .line 56
    :cond_d
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    .line 60
    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    .line 61
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    goto :goto_5

    .line 62
    :cond_e
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_f

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    .line 64
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    .line 65
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    .line 66
    iget-object v1, p1, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_10
    :goto_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 71
    iget-object v0, p1, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    .line 72
    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    .line 73
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    goto :goto_6

    .line 74
    :cond_11
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_12

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    .line 76
    iget v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/QL;->c:I

    .line 77
    :cond_12
    iget-object v0, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    .line 78
    iget-object v1, p1, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 81
    iget-object p1, p1, Lcom/android/tools/r8/internal/RL;->b:Lcom/android/tools/r8/internal/l8;

    .line 82
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 89
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/RL;->n:Lcom/android/tools/r8/internal/PL;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    new-instance v1, Lcom/android/tools/r8/internal/RL;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/RL;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/QL;->a(Lcom/android/tools/r8/internal/RL;)Lcom/android/tools/r8/internal/QL;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 93
    check-cast p2, Lcom/android/tools/r8/internal/RL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/QL;->a(Lcom/android/tools/r8/internal/RL;)Lcom/android/tools/r8/internal/QL;

    .line 96
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 84
    check-cast p1, Lcom/android/tools/r8/internal/RL;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/QL;->a(Lcom/android/tools/r8/internal/RL;)Lcom/android/tools/r8/internal/QL;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/RL;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/RL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/RL;-><init>(Lcom/android/tools/r8/internal/QL;)V

    iget v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/tools/r8/internal/QL;->c:I

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->d:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/RL;->d:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/tools/r8/internal/QL;->c:I

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->e:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/RL;->e:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    iget v2, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/tools/r8/internal/QL;->c:I

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->f:Lcom/android/tools/r8/internal/yR;

    iput-object v2, v0, Lcom/android/tools/r8/internal/RL;->f:Lcom/android/tools/r8/internal/yR;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/QL;->g:Lcom/android/tools/r8/internal/F90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/RL;->g:Lcom/android/tools/r8/internal/F90;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x2

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/QL;->h:Lcom/android/tools/r8/internal/C90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/RL;->h:Lcom/android/tools/r8/internal/C90;

    iget v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/QL;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/RL;->i:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/android/tools/r8/internal/QL;->c:I

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/QL;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/RL;->j:Ljava/util/List;

    iput v3, v0, Lcom/android/tools/r8/internal/RL;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/QL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QL;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QL;->c()Lcom/android/tools/r8/internal/RL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/QL;->a(Lcom/android/tools/r8/internal/RL;)Lcom/android/tools/r8/internal/QL;

    move-result-object v0

    return-object v0
.end method
