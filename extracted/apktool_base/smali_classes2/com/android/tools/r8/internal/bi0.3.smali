.class public final Lcom/android/tools/r8/internal/bi0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/ri0;

.field public d:Ljava/util/List;

.field public e:Lcom/android/tools/r8/internal/Af0;

.field public f:Ljava/util/List;

.field public g:Lcom/android/tools/r8/internal/Af0;

.field public h:Ljava/util/List;

.field public i:Lcom/android/tools/r8/internal/Af0;

.field public j:Ljava/util/List;

.field public k:Lcom/android/tools/r8/internal/Af0;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/ci0;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->d()Lcom/android/tools/r8/internal/Af0;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    .line 12
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_3

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    .line 17
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    move v2, v3

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    .line 22
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 7

    .line 23
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 24
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    .line 28
    invoke-static {}, Lcom/android/tools/r8/internal/ci0;->access$1300()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->d()Lcom/android/tools/r8/internal/Af0;

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 31
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    .line 34
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_3

    .line 36
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 37
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    .line 39
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    .line 40
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_5

    .line 41
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    move v1, v2

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {p1, v3, v1, v2, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    .line 44
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/bi0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/ci0;->i:Lcom/android/tools/r8/internal/ai0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/ci0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/ci0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/bi0;->a(Lcom/android/tools/r8/internal/ci0;)Lcom/android/tools/r8/internal/bi0;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 5
    check-cast p2, Lcom/android/tools/r8/internal/ci0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
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

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bi0;->a(Lcom/android/tools/r8/internal/ci0;)Lcom/android/tools/r8/internal/bi0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ci0;)Lcom/android/tools/r8/internal/bi0;
    .locals 6

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/ci0;->h:Lcom/android/tools/r8/internal/ci0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->c:Lcom/android/tools/r8/internal/ri0;

    if-eqz v1, :cond_1

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/ri0;->d:Lcom/android/tools/r8/internal/ri0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ri0;->a()Lcom/android/tools/r8/internal/qi0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/qi0;->a(Lcom/android/tools/r8/internal/ri0;)Lcom/android/tools/r8/internal/qi0;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/qi0;->a(Lcom/android/tools/r8/internal/ri0;)Lcom/android/tools/r8/internal/qi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qi0;->b()Lcom/android/tools/r8/internal/ri0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->c:Lcom/android/tools/r8/internal/ri0;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->c:Lcom/android/tools/r8/internal/ri0;

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    goto :goto_1

    .line 21
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    .line 23
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_3

    .line 26
    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    .line 28
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    .line 31
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 32
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    .line 33
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    .line 34
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    .line 35
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_6

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->d()Lcom/android/tools/r8/internal/Af0;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    goto :goto_3

    .line 37
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    iget-object v2, p1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 38
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 39
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    .line 42
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    goto :goto_4

    .line 43
    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    .line 45
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    .line 46
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_6

    .line 48
    :cond_b
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    .line 50
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    .line 53
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 54
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    .line 55
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    .line 56
    iget v3, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    .line 57
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_c

    .line 58
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    .line 61
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    goto :goto_5

    :cond_c
    move-object v0, v1

    .line 63
    :goto_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    goto :goto_6

    .line 64
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 65
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_11

    .line 66
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    .line 69
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    goto :goto_7

    .line 70
    :cond_f
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_10

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    .line 72
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    .line 73
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :goto_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_9

    .line 75
    :cond_11
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    .line 77
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    .line 80
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 81
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    .line 82
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    .line 83
    iget v3, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    .line 84
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_12

    .line 85
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    .line 88
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    goto :goto_8

    :cond_12
    move-object v0, v1

    .line 90
    :goto_8
    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    goto :goto_9

    .line 91
    :cond_13
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 92
    :cond_14
    :goto_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_17

    .line 93
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    .line 96
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    goto :goto_a

    .line 97
    :cond_15
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_16

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    .line 99
    iget v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    .line 100
    :cond_16
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :goto_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_b

    .line 102
    :cond_17
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    .line 104
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 105
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 106
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    .line 107
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 108
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    .line 109
    iget-object v0, p1, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    .line 110
    iget v3, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    .line 111
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_18

    .line 112
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 113
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 114
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    .line 115
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    .line 116
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    .line 117
    :cond_18
    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    goto :goto_b

    .line 118
    :cond_19
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 119
    :cond_1a
    :goto_b
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bi0;

    .line 121
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bi0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/ci0;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->c()Lcom/android/tools/r8/internal/ci0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ci0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->b()Lcom/android/tools/r8/internal/ci0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->b()Lcom/android/tools/r8/internal/ci0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->c()Lcom/android/tools/r8/internal/ci0;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/ci0;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ci0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ci0;-><init>(Lcom/android/tools/r8/internal/bi0;)V

    iget v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/bi0;->c:Lcom/android/tools/r8/internal/ri0;

    iput-object v2, v0, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/bi0;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/Af0;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/bi0;->b:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bi0;->d:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bi0;->e:Lcom/android/tools/r8/internal/Af0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ci0;->h:Lcom/android/tools/r8/internal/ci0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/ci0;->h:Lcom/android/tools/r8/internal/ci0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->k:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->l:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/ci0;

    const-class v2, Lcom/android/tools/r8/internal/bi0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/bi0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/bi0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/ci0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/ci0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/bi0;->a(Lcom/android/tools/r8/internal/ci0;)Lcom/android/tools/r8/internal/bi0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/bi0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/bi0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/ci0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/ci0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/bi0;->a(Lcom/android/tools/r8/internal/ci0;)Lcom/android/tools/r8/internal/bi0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/bi0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/bi0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bi0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bi0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bi0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bi0;

    return-object p1
.end method
