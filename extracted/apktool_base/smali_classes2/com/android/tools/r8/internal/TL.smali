.class public final Lcom/android/tools/r8/internal/TL;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Lcom/android/tools/r8/internal/yR;

.field public f:Ljava/util/List;

.field public g:Lcom/android/tools/r8/internal/yR;

.field public h:Lcom/android/tools/r8/internal/yR;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->d:Ljava/lang/Object;

    sget-object v0, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TL;->c()Lcom/android/tools/r8/internal/UL;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UL;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 86
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 1

    const/4 p2, 0x0

    .line 87
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/internal/UL;->q:Lcom/android/tools/r8/internal/SL;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    new-instance v0, Lcom/android/tools/r8/internal/UL;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/UL;-><init>(Lcom/android/tools/r8/internal/Ae;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/TL;->a(Lcom/android/tools/r8/internal/UL;)Lcom/android/tools/r8/internal/TL;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    :try_start_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 91
    check-cast v0, Lcom/android/tools/r8/internal/UL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/TL;->a(Lcom/android/tools/r8/internal/UL;)Lcom/android/tools/r8/internal/TL;

    .line 94
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 82
    check-cast p1, Lcom/android/tools/r8/internal/UL;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/TL;->a(Lcom/android/tools/r8/internal/UL;)Lcom/android/tools/r8/internal/TL;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/UL;)Lcom/android/tools/r8/internal/TL;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/UL;->p:Lcom/android/tools/r8/internal/UL;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/UL;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->d:Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/wR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    .line 16
    iget-object v1, p1, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    .line 23
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    goto :goto_1

    .line 24
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    .line 28
    iget-object v1, p1, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_7
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    .line 31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    .line 34
    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    .line 35
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    goto :goto_2

    .line 36
    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    .line 37
    new-instance v0, Lcom/android/tools/r8/internal/wR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    .line 38
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    .line 40
    iget-object v1, p1, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_a
    :goto_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    .line 46
    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    .line 47
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    goto :goto_3

    .line 48
    :cond_b
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_c

    .line 49
    new-instance v0, Lcom/android/tools/r8/internal/wR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    .line 50
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    .line 51
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    .line 52
    iget-object v1, p1, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_d
    :goto_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 58
    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    .line 59
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    goto :goto_4

    .line 60
    :cond_e
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_f

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    .line 62
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    .line 63
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    .line 64
    iget-object v1, p1, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_10
    :goto_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 67
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p1, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 70
    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    .line 71
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    goto :goto_5

    .line 72
    :cond_11
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_12

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    .line 74
    iget v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/TL;->c:I

    .line 75
    :cond_12
    iget-object v0, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    .line 76
    iget-object v1, p1, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    :cond_13
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 79
    iget-object p1, p1, Lcom/android/tools/r8/internal/UL;->b:Lcom/android/tools/r8/internal/l8;

    .line 80
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/UL;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/UL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/UL;-><init>(Lcom/android/tools/r8/internal/TL;)V

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/TL;->d:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/tools/r8/internal/UL;->d:Ljava/lang/Object;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->e:Lcom/android/tools/r8/internal/yR;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->e:Lcom/android/tools/r8/internal/yR;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->f:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->g:Lcom/android/tools/r8/internal/yR;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->h:Lcom/android/tools/r8/internal/yR;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->h:Lcom/android/tools/r8/internal/yR;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->i:Lcom/android/tools/r8/internal/yR;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->j:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/android/tools/r8/internal/TL;->c:I

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/TL;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/UL;->l:Ljava/util/List;

    iput v3, v0, Lcom/android/tools/r8/internal/UL;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/TL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TL;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TL;->c()Lcom/android/tools/r8/internal/UL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/TL;->a(Lcom/android/tools/r8/internal/UL;)Lcom/android/tools/r8/internal/TL;

    move-result-object v0

    return-object v0
.end method
