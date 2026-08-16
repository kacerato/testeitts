.class public final Lcom/android/tools/r8/internal/il;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/io/Serializable;

.field public d:Ljava/util/List;

.field public e:Lcom/android/tools/r8/internal/Af0;

.field public f:Lcom/android/tools/r8/internal/ml;

.field public final g:Lcom/android/tools/r8/internal/Em0;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/internal/il;->c:Ljava/io/Serializable;

    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    .line 4
    sget-boolean v2, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v2, :cond_4

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/Af0;

    iget v3, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_4

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    if-nez v1, :cond_3

    .line 13
    sget-object v1, Lcom/android/tools/r8/internal/ml;->g:Lcom/android/tools/r8/internal/ml;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ml;

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/il;->g:Lcom/android/tools/r8/internal/Em0;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 5

    .line 18
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 19
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/il;->c:Ljava/io/Serializable;

    .line 20
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget v2, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    .line 26
    iput-object v1, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/il;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_4

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_2

    .line 29
    iget-object p1, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    if-nez p1, :cond_3

    .line 30
    sget-object p1, Lcom/android/tools/r8/internal/ml;->g:Lcom/android/tools/r8/internal/ml;

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ml;

    .line 32
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v3

    invoke-direct {v0, p1, v2, v3}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->g:Lcom/android/tools/r8/internal/Em0;

    .line 34
    iput-object v1, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/il;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/jl;->h:Lcom/android/tools/r8/internal/hl;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/hl;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jl;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/il;->a(Lcom/android/tools/r8/internal/jl;)Lcom/android/tools/r8/internal/il;

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
    check-cast p2, Lcom/android/tools/r8/internal/jl;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/il;->a(Lcom/android/tools/r8/internal/jl;)Lcom/android/tools/r8/internal/il;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/jl;)Lcom/android/tools/r8/internal/il;
    .locals 6

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/jl;->g:Lcom/android/tools/r8/internal/jl;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/jl;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/jl;->c:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->c:Ljava/io/Serializable;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    goto :goto_0

    .line 21
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    .line 23
    iget v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    .line 25
    iget-object v1, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 28
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    .line 34
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 35
    iput-object v1, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    .line 36
    iget-object v0, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    .line 38
    iget v2, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/tools/r8/internal/il;->b:I

    .line 39
    sget-boolean v2, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v2, :cond_5

    .line 40
    new-instance v2, Lcom/android/tools/r8/internal/Af0;

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    .line 43
    iput-object v1, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    move-object v1, v2

    .line 44
    :cond_5
    iput-object v1, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    goto :goto_1

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    .line 46
    iget-object v1, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 48
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jl;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    iget-object v0, p1, Lcom/android/tools/r8/internal/jl;->e:Lcom/android/tools/r8/internal/ml;

    if-nez v0, :cond_8

    .line 50
    sget-object v0, Lcom/android/tools/r8/internal/ml;->g:Lcom/android/tools/r8/internal/ml;

    .line 51
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_a

    .line 52
    iget v1, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    if-eqz v1, :cond_9

    .line 53
    sget-object v2, Lcom/android/tools/r8/internal/ml;->g:Lcom/android/tools/r8/internal/ml;

    if-eq v1, v2, :cond_9

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ml;->a()Lcom/android/tools/r8/internal/ll;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/ll;->a(Lcom/android/tools/r8/internal/ml;)Lcom/android/tools/r8/internal/ll;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ll;->a(Lcom/android/tools/r8/internal/ml;)Lcom/android/tools/r8/internal/ll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ll;->d()Lcom/android/tools/r8/internal/ml;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    goto :goto_2

    .line 56
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    .line 57
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_3

    .line 58
    :cond_a
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 59
    :goto_3
    iget v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/il;->b:I

    .line 60
    :cond_b
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/il;

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/il;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/jl;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/jl;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jl;-><init>(Lcom/android/tools/r8/internal/il;)V

    iget v1, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/il;->c:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/jl;->c:Ljava/io/Serializable;

    iget-object v4, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/android/tools/r8/internal/il;->b:I

    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    iput-object v4, v0, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    :goto_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    iput-object v1, v0, Lcom/android/tools/r8/internal/jl;->e:Lcom/android/tools/r8/internal/ml;

    goto :goto_2

    :cond_3
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ml;

    iput-object v1, v0, Lcom/android/tools/r8/internal/jl;->e:Lcom/android/tools/r8/internal/ml;

    :goto_2
    or-int/lit8 v2, v2, 0x2

    :cond_4
    iput v2, v0, Lcom/android/tools/r8/internal/jl;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/il;->b()Lcom/android/tools/r8/internal/jl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jl;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/il;->b()Lcom/android/tools/r8/internal/jl;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jl;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/il;->b()Lcom/android/tools/r8/internal/jl;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/il;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/jl;->g:Lcom/android/tools/r8/internal/jl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/jl;->g:Lcom/android/tools/r8/internal/jl;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->u:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->v:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/jl;

    const-class v2, Lcom/android/tools/r8/internal/il;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/il;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/il;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Wk;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Wk;

    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Wk;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/il;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/il;->f:Lcom/android/tools/r8/internal/ml;

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/tools/r8/internal/ml;->g:Lcom/android/tools/r8/internal/ml;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ml;

    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ml;->isInitialized()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/il;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/il;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/jl;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/jl;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/il;->a(Lcom/android/tools/r8/internal/jl;)Lcom/android/tools/r8/internal/il;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/il;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/il;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/jl;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/jl;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/il;->a(Lcom/android/tools/r8/internal/jl;)Lcom/android/tools/r8/internal/il;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/il;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/il;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/il;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/il;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

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

    check-cast p1, Lcom/android/tools/r8/internal/il;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/il;

    return-object p1
.end method
