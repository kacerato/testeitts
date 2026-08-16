.class public final Lcom/android/tools/r8/internal/r90;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Lcom/android/tools/r8/internal/W90;

.field public j:Lcom/android/tools/r8/internal/ha0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->i:Lcom/android/tools/r8/internal/W90;

    sget-object v0, Lcom/android/tools/r8/internal/ha0;->f:Lcom/android/tools/r8/internal/ha0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->j:Lcom/android/tools/r8/internal/ha0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r90;->c()Lcom/android/tools/r8/internal/s90;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 63
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 64
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/s90;->m:Lcom/android/tools/r8/internal/q90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    new-instance v1, Lcom/android/tools/r8/internal/s90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/s90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/r90;->a(Lcom/android/tools/r8/internal/s90;)Lcom/android/tools/r8/internal/r90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 68
    check-cast p2, Lcom/android/tools/r8/internal/s90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/r90;->a(Lcom/android/tools/r8/internal/s90;)Lcom/android/tools/r8/internal/r90;

    .line 71
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 59
    check-cast p1, Lcom/android/tools/r8/internal/s90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r90;->a(Lcom/android/tools/r8/internal/s90;)Lcom/android/tools/r8/internal/r90;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/s90;)Lcom/android/tools/r8/internal/r90;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/s90;->l:Lcom/android/tools/r8/internal/s90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    .line 12
    iget-object v2, p1, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    .line 19
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    goto :goto_1

    .line 20
    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_5

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    .line 22
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    .line 24
    iget-object v3, p1, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    .line 31
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    goto :goto_2

    .line 32
    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_8

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    .line 34
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    .line 36
    iget-object v3, p1, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_9
    :goto_2
    iget v0, p1, Lcom/android/tools/r8/internal/s90;->d:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 39
    iget-object v0, p1, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    .line 40
    iget v1, p0, Lcom/android/tools/r8/internal/r90;->e:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/r90;->i:Lcom/android/tools/r8/internal/W90;

    .line 41
    sget-object v4, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    if-eq v1, v4, :cond_a

    .line 42
    invoke-static {v1}, Lcom/android/tools/r8/internal/W90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V90;->c()Lcom/android/tools/r8/internal/W90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->i:Lcom/android/tools/r8/internal/W90;

    goto :goto_3

    .line 43
    :cond_a
    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->i:Lcom/android/tools/r8/internal/W90;

    .line 44
    :goto_3
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    .line 45
    :cond_b
    iget v0, p1, Lcom/android/tools/r8/internal/s90;->d:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_d

    .line 46
    iget-object v0, p1, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    .line 47
    iget v1, p0, Lcom/android/tools/r8/internal/r90;->e:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/tools/r8/internal/r90;->j:Lcom/android/tools/r8/internal/ha0;

    .line 48
    sget-object v3, Lcom/android/tools/r8/internal/ha0;->f:Lcom/android/tools/r8/internal/ha0;

    if-eq v1, v3, :cond_c

    .line 49
    new-instance v3, Lcom/android/tools/r8/internal/ga0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ga0;-><init>()V

    .line 50
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/ga0;->a(Lcom/android/tools/r8/internal/ha0;)Lcom/android/tools/r8/internal/ga0;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ga0;->a(Lcom/android/tools/r8/internal/ha0;)Lcom/android/tools/r8/internal/ga0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga0;->c()Lcom/android/tools/r8/internal/ha0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->j:Lcom/android/tools/r8/internal/ha0;

    goto :goto_4

    .line 52
    :cond_c
    iput-object v0, p0, Lcom/android/tools/r8/internal/r90;->j:Lcom/android/tools/r8/internal/ha0;

    .line 53
    :goto_4
    iget v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/r90;->e:I

    .line 54
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 56
    iget-object p1, p1, Lcom/android/tools/r8/internal/s90;->c:Lcom/android/tools/r8/internal/l8;

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/s90;->l:Lcom/android/tools/r8/internal/s90;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/s90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/s90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/s90;-><init>(Lcom/android/tools/r8/internal/r90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/tools/r8/internal/r90;->e:I

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/r90;->f:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/r90;->e:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/tools/r8/internal/r90;->e:I

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/r90;->g:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/r90;->e:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/r90;->e:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/tools/r8/internal/r90;->e:I

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/r90;->h:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/r90;->i:Lcom/android/tools/r8/internal/W90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x2

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/r90;->j:Lcom/android/tools/r8/internal/ha0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    iput v3, v0, Lcom/android/tools/r8/internal/s90;->d:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/r90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r90;->c()Lcom/android/tools/r8/internal/s90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/r90;->a(Lcom/android/tools/r8/internal/s90;)Lcom/android/tools/r8/internal/r90;

    move-result-object v0

    return-object v0
.end method
