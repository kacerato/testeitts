.class public final Lcom/android/tools/r8/internal/jk;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/io/Serializable;

.field public d:Ljava/util/List;

.field public e:Lcom/android/tools/r8/internal/Af0;

.field public f:Lcom/android/tools/r8/internal/qk;

.field public final g:Lcom/android/tools/r8/internal/Em0;

.field public h:Ljava/util/List;

.field public i:Lcom/android/tools/r8/internal/Af0;

.field public j:Lcom/android/tools/r8/internal/zR;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/internal/jk;->c:Ljava/io/Serializable;

    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    .line 4
    iput-object v1, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    .line 5
    sget-object v2, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v2, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v2, :cond_6

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/Af0;

    iget v5, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v2, v1, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_4

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    if-nez v1, :cond_3

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/qk;->h:Lcom/android/tools/r8/internal/qk;

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/qk;

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {v2, v1, v5, v6}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/jk;->g:Lcom/android/tools/r8/internal/Em0;

    .line 19
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_6

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/Af0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_5

    move v3, v4

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 24
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    :cond_6
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 7

    .line 25
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 26
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/jk;->c:Ljava/io/Serializable;

    .line 27
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    .line 29
    sget-object v0, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_6

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget v4, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {v0, p1, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    .line 35
    iput-object v3, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/jk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_4

    .line 37
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_2

    .line 38
    iget-object p1, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    if-nez p1, :cond_3

    .line 39
    sget-object p1, Lcom/android/tools/r8/internal/qk;->h:Lcom/android/tools/r8/internal/qk;

    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qk;

    .line 41
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v0, p1, v4, v5}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->g:Lcom/android/tools/r8/internal/Em0;

    .line 43
    iput-object v3, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    .line 44
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_6

    .line 45
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    move v1, v2

    .line 46
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {p1, v0, v1, v2, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 48
    iput-object v3, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jk;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/nk;->j:Lcom/android/tools/r8/internal/ik;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/ik;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/nk;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jk;->a(Lcom/android/tools/r8/internal/nk;)Lcom/android/tools/r8/internal/jk;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 4
    check-cast p2, Lcom/android/tools/r8/internal/nk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jk;->a(Lcom/android/tools/r8/internal/nk;)Lcom/android/tools/r8/internal/jk;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/nk;)Lcom/android/tools/r8/internal/jk;
    .locals 6

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/nk;->i:Lcom/android/tools/r8/internal/nk;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/nk;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->c:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->c:Ljava/io/Serializable;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    goto :goto_0

    .line 21
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    .line 23
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    .line 25
    iget-object v3, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_2

    .line 28
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    .line 34
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 35
    iput-object v2, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    .line 36
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    .line 38
    iget v3, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/tools/r8/internal/jk;->b:I

    .line 39
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_5

    .line 40
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    .line 43
    iput-object v2, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    goto :goto_1

    :cond_5
    move-object v3, v2

    .line 44
    :goto_1
    iput-object v3, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    goto :goto_2

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    .line 46
    iget-object v3, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    .line 47
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 48
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nk;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->e:Lcom/android/tools/r8/internal/qk;

    if-nez v0, :cond_8

    .line 50
    sget-object v0, Lcom/android/tools/r8/internal/qk;->h:Lcom/android/tools/r8/internal/qk;

    .line 51
    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/jk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v3, :cond_a

    .line 52
    iget v3, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    if-eqz v3, :cond_9

    .line 53
    sget-object v4, Lcom/android/tools/r8/internal/qk;->h:Lcom/android/tools/r8/internal/qk;

    if-eq v3, v4, :cond_9

    .line 54
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qk;->a()Lcom/android/tools/r8/internal/pk;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/qk;)Lcom/android/tools/r8/internal/pk;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/qk;)Lcom/android/tools/r8/internal/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pk;->d()Lcom/android/tools/r8/internal/qk;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    goto :goto_3

    .line 56
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    .line 57
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_4

    .line 58
    :cond_a
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 59
    :goto_4
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_e

    .line 61
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->f:Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 64
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->f:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    .line 66
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    goto :goto_5

    .line 67
    :cond_c
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_d

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    .line 69
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    .line 70
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    .line 71
    iget-object v1, p1, Lcom/android/tools/r8/internal/nk;->f:Ljava/util/List;

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_6

    .line 74
    :cond_e
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->f:Ljava/util/List;

    .line 75
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 77
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 80
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 81
    iput-object v2, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 82
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->f:Ljava/util/List;

    .line 83
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    .line 84
    iget v3, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/android/tools/r8/internal/jk;->b:I

    .line 85
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_f

    .line 86
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 88
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 89
    iput-object v2, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    move-object v2, v3

    .line 90
    :cond_f
    iput-object v2, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    goto :goto_6

    .line 91
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 92
    iget-object v1, p1, Lcom/android/tools/r8/internal/nk;->f:Ljava/util/List;

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 94
    :cond_11
    :goto_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->g:Lcom/android/tools/r8/internal/zR;

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 97
    iget-object v0, p1, Lcom/android/tools/r8/internal/nk;->g:Lcom/android/tools/r8/internal/zR;

    .line 98
    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    .line 99
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    goto :goto_7

    .line 100
    :cond_12
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_13

    .line 101
    new-instance v0, Lcom/android/tools/r8/internal/xR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xR;-><init>(Lcom/android/tools/r8/internal/zR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    .line 102
    iget v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/tools/r8/internal/jk;->b:I

    .line 103
    :cond_13
    iget-object v0, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    .line 104
    iget-object v1, p1, Lcom/android/tools/r8/internal/nk;->g:Lcom/android/tools/r8/internal/zR;

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :goto_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 107
    :cond_14
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jk;

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jk;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/nk;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/nk;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/nk;-><init>(Lcom/android/tools/r8/internal/jk;)V

    iget v1, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/jk;->c:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/nk;->c:Ljava/io/Serializable;

    iget-object v4, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/android/tools/r8/internal/jk;->b:I

    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    iput-object v4, v0, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    :goto_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nk;->e:Lcom/android/tools/r8/internal/qk;

    goto :goto_2

    :cond_3
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/qk;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nk;->e:Lcom/android/tools/r8/internal/qk;

    :goto_2
    or-int/lit8 v2, v2, 0x2

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/tools/r8/internal/jk;->b:I

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nk;->f:Ljava/util/List;

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nk;->f:Ljava/util/List;

    :goto_3
    iget v1, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    iget v1, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/tools/r8/internal/jk;->b:I

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->j:Lcom/android/tools/r8/internal/zR;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nk;->g:Lcom/android/tools/r8/internal/zR;

    iput v2, v0, Lcom/android/tools/r8/internal/nk;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jk;->b()Lcom/android/tools/r8/internal/nk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nk;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final build()Lcom/android/tools/r8/internal/kW;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jk;->b()Lcom/android/tools/r8/internal/nk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nk;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jk;->b()Lcom/android/tools/r8/internal/nk;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/nk;->i:Lcom/android/tools/r8/internal/nk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/nk;->i:Lcom/android/tools/r8/internal/nk;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->o:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->p:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/nk;

    const-class v2, Lcom/android/tools/r8/internal/jk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/jk;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/jk;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/tk;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/tk;

    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tk;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/jk;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/jk;->f:Lcom/android/tools/r8/internal/qk;

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/tools/r8/internal/qk;->h:Lcom/android/tools/r8/internal/qk;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/qk;

    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/jk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/nk;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/nk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jk;->a(Lcom/android/tools/r8/internal/nk;)Lcom/android/tools/r8/internal/jk;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;Ljava/util/Map;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/jk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/nk;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/nk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jk;->a(Lcom/android/tools/r8/internal/nk;)Lcom/android/tools/r8/internal/jk;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;Ljava/util/Map;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/jk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jk;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jk;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jk;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jk;

    return-object p1
.end method
