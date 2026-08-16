.class public final Lcom/android/tools/r8/internal/R90;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Lcom/android/tools/r8/internal/S90;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/S90;->e:Lcom/android/tools/r8/internal/S90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/R90;->i:Lcom/android/tools/r8/internal/S90;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/R90;->c()Lcom/android/tools/r8/internal/T90;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/T90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 49
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 50
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/T90;->o:Lcom/android/tools/r8/internal/Q90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance v1, Lcom/android/tools/r8/internal/T90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/T90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/R90;->a(Lcom/android/tools/r8/internal/T90;)Lcom/android/tools/r8/internal/R90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 54
    check-cast p2, Lcom/android/tools/r8/internal/T90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/R90;->a(Lcom/android/tools/r8/internal/T90;)Lcom/android/tools/r8/internal/R90;

    .line 57
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 45
    check-cast p1, Lcom/android/tools/r8/internal/T90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/R90;->a(Lcom/android/tools/r8/internal/T90;)Lcom/android/tools/r8/internal/R90;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/T90;)Lcom/android/tools/r8/internal/R90;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/T90;->n:Lcom/android/tools/r8/internal/T90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/T90;->d:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/T90;->e:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/R90;->f:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget v1, p1, Lcom/android/tools/r8/internal/T90;->f:I

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/R90;->g:I

    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9
    iget-boolean v1, p1, Lcom/android/tools/r8/internal/T90;->g:Z

    .line 10
    iget v3, p0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 11
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/R90;->h:Z

    :cond_3
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/T90;->h:Lcom/android/tools/r8/internal/S90;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget v2, p0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/internal/R90;->i:Lcom/android/tools/r8/internal/S90;

    .line 16
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    goto :goto_0

    .line 22
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    .line 24
    iget v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    .line 26
    iget-object v1, p1, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_7
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p1, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    .line 33
    iget v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    goto :goto_1

    .line 34
    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/R90;->e:I

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    .line 38
    iget-object v1, p1, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_a
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 42
    iget-object p1, p1, Lcom/android/tools/r8/internal/T90;->c:Lcom/android/tools/r8/internal/l8;

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/T90;->n:Lcom/android/tools/r8/internal/T90;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/T90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/T90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/T90;-><init>(Lcom/android/tools/r8/internal/R90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/R90;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/R90;->f:I

    iput v2, v0, Lcom/android/tools/r8/internal/T90;->e:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/R90;->g:I

    iput v2, v0, Lcom/android/tools/r8/internal/T90;->f:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/R90;->h:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/T90;->g:Z

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/R90;->i:Lcom/android/tools/r8/internal/S90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/T90;->h:Lcom/android/tools/r8/internal/S90;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/R90;->e:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/tools/r8/internal/R90;->e:I

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/R90;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/T90;->i:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/R90;->e:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/R90;->e:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/android/tools/r8/internal/R90;->e:I

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/R90;->k:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/T90;->j:Ljava/util/List;

    iput v3, v0, Lcom/android/tools/r8/internal/T90;->d:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/R90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/R90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/R90;->c()Lcom/android/tools/r8/internal/T90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/R90;->a(Lcom/android/tools/r8/internal/T90;)Lcom/android/tools/r8/internal/R90;

    move-result-object v0

    return-object v0
.end method
