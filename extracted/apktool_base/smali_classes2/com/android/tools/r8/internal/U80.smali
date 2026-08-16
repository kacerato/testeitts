.class public final Lcom/android/tools/r8/internal/U80;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/tools/r8/internal/U80;->f:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U80;->c()Lcom/android/tools/r8/internal/V80;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V80;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 39
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 40
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/V80;->k:Lcom/android/tools/r8/internal/T80;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    new-instance v1, Lcom/android/tools/r8/internal/V80;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/V80;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/U80;->a(Lcom/android/tools/r8/internal/V80;)Lcom/android/tools/r8/internal/U80;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 44
    check-cast p2, Lcom/android/tools/r8/internal/V80;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/U80;->a(Lcom/android/tools/r8/internal/V80;)Lcom/android/tools/r8/internal/U80;

    .line 47
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 35
    check-cast p1, Lcom/android/tools/r8/internal/V80;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U80;->a(Lcom/android/tools/r8/internal/V80;)Lcom/android/tools/r8/internal/U80;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/V80;)Lcom/android/tools/r8/internal/U80;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/V80;->j:Lcom/android/tools/r8/internal/V80;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/V80;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p1, Lcom/android/tools/r8/internal/V80;->e:I

    .line 4
    iget v2, p0, Lcom/android/tools/r8/internal/U80;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/U80;->e:I

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/U80;->f:I

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    .line 16
    iget-object v1, p1, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    .line 23
    iget v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    goto :goto_1

    .line 24
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/U80;->e:I

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    .line 28
    iget-object v1, p1, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/internal/V80;->c:Lcom/android/tools/r8/internal/l8;

    .line 33
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/V80;->j:Lcom/android/tools/r8/internal/V80;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/V80;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/V80;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/V80;-><init>(Lcom/android/tools/r8/internal/U80;)V

    iget v1, p0, Lcom/android/tools/r8/internal/U80;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/U80;->f:I

    iput v2, v0, Lcom/android/tools/r8/internal/V80;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/U80;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/tools/r8/internal/U80;->e:I

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/U80;->g:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/U80;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/U80;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/tools/r8/internal/U80;->e:I

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/U80;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    iput v3, v0, Lcom/android/tools/r8/internal/V80;->d:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/U80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U80;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U80;->c()Lcom/android/tools/r8/internal/V80;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/U80;->a(Lcom/android/tools/r8/internal/V80;)Lcom/android/tools/r8/internal/U80;

    move-result-object v0

    return-object v0
.end method
