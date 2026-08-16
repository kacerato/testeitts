.class public final Lcom/android/tools/r8/internal/kM;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Lcom/android/tools/r8/internal/lM;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/kM;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->f:Ljava/lang/Object;

    sget-object v0, Lcom/android/tools/r8/internal/lM;->c:Lcom/android/tools/r8/internal/lM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->g:Lcom/android/tools/r8/internal/lM;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kM;->c()Lcom/android/tools/r8/internal/mM;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mM;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 48
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 1

    const/4 p2, 0x0

    .line 49
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/internal/mM;->o:Lcom/android/tools/r8/internal/jM;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance v0, Lcom/android/tools/r8/internal/mM;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/mM;-><init>(Lcom/android/tools/r8/internal/Ae;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kM;->a(Lcom/android/tools/r8/internal/mM;)Lcom/android/tools/r8/internal/kM;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    :try_start_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 53
    check-cast v0, Lcom/android/tools/r8/internal/mM;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/kM;->a(Lcom/android/tools/r8/internal/mM;)Lcom/android/tools/r8/internal/kM;

    .line 56
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 44
    check-cast p1, Lcom/android/tools/r8/internal/mM;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kM;->a(Lcom/android/tools/r8/internal/mM;)Lcom/android/tools/r8/internal/kM;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/mM;)Lcom/android/tools/r8/internal/kM;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/mM;->n:Lcom/android/tools/r8/internal/mM;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/mM;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/mM;->d:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/kM;->c:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/kM;->d:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget v1, p1, Lcom/android/tools/r8/internal/mM;->e:I

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/kM;->c:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/kM;->e:I

    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9
    iget v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    .line 10
    iget-object v1, p1, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lcom/android/tools/r8/internal/kM;->f:Ljava/lang/Object;

    :cond_3
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/mM;->g:Lcom/android/tools/r8/internal/lM;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget v2, p0, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->g:Lcom/android/tools/r8/internal/lM;

    .line 16
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    goto :goto_0

    .line 22
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    .line 24
    iget v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    .line 26
    iget-object v1, p1, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_7
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p1, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    .line 33
    iget v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    goto :goto_1

    .line 34
    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/kM;->c:I

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    .line 38
    iget-object v1, p1, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 41
    iget-object p1, p1, Lcom/android/tools/r8/internal/mM;->b:Lcom/android/tools/r8/internal/l8;

    .line 42
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/mM;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/mM;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mM;-><init>(Lcom/android/tools/r8/internal/kM;)V

    iget v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/kM;->d:I

    iput v2, v0, Lcom/android/tools/r8/internal/mM;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/kM;->e:I

    iput v2, v0, Lcom/android/tools/r8/internal/mM;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/kM;->f:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/kM;->g:Lcom/android/tools/r8/internal/lM;

    iput-object v2, v0, Lcom/android/tools/r8/internal/mM;->g:Lcom/android/tools/r8/internal/lM;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/android/tools/r8/internal/kM;->c:I

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    iput v3, v0, Lcom/android/tools/r8/internal/mM;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/kM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kM;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kM;->c()Lcom/android/tools/r8/internal/mM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/kM;->a(Lcom/android/tools/r8/internal/mM;)Lcom/android/tools/r8/internal/kM;

    move-result-object v0

    return-object v0
.end method
