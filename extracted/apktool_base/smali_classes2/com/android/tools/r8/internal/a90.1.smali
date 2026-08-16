.class public final Lcom/android/tools/r8/internal/a90;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:Lcom/android/tools/r8/internal/b90;

.field public e:Ljava/util/List;

.field public f:Lcom/android/tools/r8/internal/k90;

.field public g:Lcom/android/tools/r8/internal/c90;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/b90;->c:Lcom/android/tools/r8/internal/b90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->d:Lcom/android/tools/r8/internal/b90;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/k90;->m:Lcom/android/tools/r8/internal/k90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->f:Lcom/android/tools/r8/internal/k90;

    sget-object v0, Lcom/android/tools/r8/internal/c90;->c:Lcom/android/tools/r8/internal/c90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->g:Lcom/android/tools/r8/internal/c90;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/a90;->c()Lcom/android/tools/r8/internal/d90;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 41
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 42
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/d90;->k:Lcom/android/tools/r8/internal/Z80;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/d90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/d90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/a90;->a(Lcom/android/tools/r8/internal/d90;)Lcom/android/tools/r8/internal/a90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 46
    check-cast p2, Lcom/android/tools/r8/internal/d90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a90;->a(Lcom/android/tools/r8/internal/d90;)Lcom/android/tools/r8/internal/a90;

    .line 49
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 37
    check-cast p1, Lcom/android/tools/r8/internal/d90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a90;->a(Lcom/android/tools/r8/internal/d90;)Lcom/android/tools/r8/internal/a90;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/d90;)Lcom/android/tools/r8/internal/a90;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/d90;->j:Lcom/android/tools/r8/internal/d90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/d90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/d90;->d:Lcom/android/tools/r8/internal/b90;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v2, p0, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/a90;->c:I

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->d:Lcom/android/tools/r8/internal/b90;

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/a90;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/a90;->c:I

    goto :goto_0

    .line 13
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/a90;->c:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/a90;->c:I

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    .line 17
    iget-object v2, p1, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_4
    :goto_0
    iget v0, p1, Lcom/android/tools/r8/internal/d90;->c:I

    and-int/2addr v0, v1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_6

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    .line 21
    iget v1, p0, Lcom/android/tools/r8/internal/a90;->c:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/a90;->f:Lcom/android/tools/r8/internal/k90;

    .line 22
    sget-object v3, Lcom/android/tools/r8/internal/k90;->m:Lcom/android/tools/r8/internal/k90;

    if-eq v1, v3, :cond_5

    .line 23
    new-instance v3, Lcom/android/tools/r8/internal/i90;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/i90;-><init>()V

    .line 24
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/i90;->c()Lcom/android/tools/r8/internal/k90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->f:Lcom/android/tools/r8/internal/k90;

    goto :goto_1

    .line 26
    :cond_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->f:Lcom/android/tools/r8/internal/k90;

    .line 27
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/a90;->c:I

    .line 28
    :cond_6
    iget v0, p1, Lcom/android/tools/r8/internal/d90;->c:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/internal/d90;->g:Lcom/android/tools/r8/internal/c90;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget v1, p0, Lcom/android/tools/r8/internal/a90;->c:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/tools/r8/internal/a90;->c:I

    .line 32
    iput-object v0, p0, Lcom/android/tools/r8/internal/a90;->g:Lcom/android/tools/r8/internal/c90;

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 34
    iget-object p1, p1, Lcom/android/tools/r8/internal/d90;->b:Lcom/android/tools/r8/internal/l8;

    .line 35
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/d90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/d90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/d90;-><init>(Lcom/android/tools/r8/internal/a90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/a90;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/a90;->d:Lcom/android/tools/r8/internal/b90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/d90;->d:Lcom/android/tools/r8/internal/b90;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/a90;->c:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/tools/r8/internal/a90;->c:I

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/a90;->e:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/d90;->e:Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/a90;->f:Lcom/android/tools/r8/internal/k90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/d90;->f:Lcom/android/tools/r8/internal/k90;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/a90;->g:Lcom/android/tools/r8/internal/c90;

    iput-object v1, v0, Lcom/android/tools/r8/internal/d90;->g:Lcom/android/tools/r8/internal/c90;

    iput v3, v0, Lcom/android/tools/r8/internal/d90;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/a90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/a90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/a90;->c()Lcom/android/tools/r8/internal/d90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/a90;->a(Lcom/android/tools/r8/internal/d90;)Lcom/android/tools/r8/internal/a90;

    move-result-object v0

    return-object v0
.end method
