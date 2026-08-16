.class public final Lcom/android/tools/r8/internal/Gk;
.super Lcom/android/tools/r8/internal/hz;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/util/List;

.field public k:Lcom/android/tools/r8/internal/Af0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/hz;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/Gk;->d:I

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/Gk;->f:I

    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Gk;->e()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/hz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/tools/r8/internal/Gk;->d:I

    .line 9
    iput p1, p0, Lcom/android/tools/r8/internal/Gk;->f:I

    .line 10
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    .line 11
    sget-boolean p1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Gk;->e()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Gk;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Jk;->m:Lcom/android/tools/r8/internal/Fk;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/Fk;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Jk;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;

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
    check-cast p2, Lcom/android/tools/r8/internal/Jk;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;
    .locals 2

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 10
    iget v0, p1, Lcom/android/tools/r8/internal/Jk;->d:I

    .line 11
    invoke-static {v0}, Lcom/android/tools/r8/internal/Hk;->a(I)Lcom/android/tools/r8/internal/Hk;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/Hk;->c:Lcom/android/tools/r8/internal/Hk;

    .line 13
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    .line 14
    iget v0, v0, Lcom/android/tools/r8/internal/Hk;->b:I

    .line 15
    iput v0, p0, Lcom/android/tools/r8/internal/Gk;->d:I

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jk;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Jk;->e:Z

    .line 19
    iget v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    .line 20
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Gk;->e:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 22
    :cond_3
    iget v0, p1, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 23
    iget v0, p1, Lcom/android/tools/r8/internal/Jk;->f:I

    .line 24
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ik;->a(I)Lcom/android/tools/r8/internal/Ik;

    move-result-object v0

    if-nez v0, :cond_4

    .line 25
    sget-object v0, Lcom/android/tools/r8/internal/Ik;->c:Lcom/android/tools/r8/internal/Ik;

    .line 26
    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    .line 27
    iget v0, v0, Lcom/android/tools/r8/internal/Ik;->b:I

    .line 28
    iput v0, p0, Lcom/android/tools/r8/internal/Gk;->f:I

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 30
    :cond_5
    iget v0, p1, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 31
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Jk;->g:Z

    .line 32
    iget v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    .line 33
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Gk;->g:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 35
    :cond_6
    iget v0, p1, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 36
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Jk;->h:Z

    .line 37
    iget v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    .line 38
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Gk;->h:Z

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 40
    :cond_7
    iget v0, p1, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 41
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Jk;->i:Z

    .line 42
    iget v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    .line 43
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Gk;->i:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 45
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_b

    .line 46
    iget-object v0, p1, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p1, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    .line 51
    iget v0, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    goto :goto_0

    .line 52
    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_a

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    .line 54
    iget v0, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    .line 55
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    .line 56
    iget-object v1, p1, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 59
    :cond_b
    iget-object v0, p1, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    .line 62
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    .line 65
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 66
    iput-object v1, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    .line 67
    iget-object v0, p1, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    .line 68
    iput-object v0, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    .line 69
    iget v0, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    .line 70
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_c

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Gk;->e()Lcom/android/tools/r8/internal/Af0;

    move-result-object v1

    :cond_c
    iput-object v1, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    goto :goto_1

    .line 72
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    .line 73
    iget-object v1, p1, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 75
    :cond_e
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/iz;)V

    .line 76
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Gk;

    .line 78
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Gk;

    return-object p1
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Gk;->d()Lcom/android/tools/r8/internal/Jk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jk;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Gk;->d()Lcom/android/tools/r8/internal/Jk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jk;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Gk;->d()Lcom/android/tools/r8/internal/Jk;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Gk;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/Jk;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Jk;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jk;-><init>(Lcom/android/tools/r8/internal/Gk;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/Gk;->d:I

    iput v3, v0, Lcom/android/tools/r8/internal/Jk;->d:I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Gk;->e:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Jk;->e:Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget v3, p0, Lcom/android/tools/r8/internal/Gk;->f:I

    iput v3, v0, Lcom/android/tools/r8/internal/Jk;->f:I

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Gk;->g:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Jk;->g:Z

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Gk;->h:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Jk;->h:Z

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Gk;->i:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Jk;->i:Z

    or-int/lit8 v2, v2, 0x20

    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v3, :cond_7

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    :goto_1
    iput v2, v0, Lcom/android/tools/r8/internal/Jk;->c:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/Af0;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Gk;->c:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->C:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->D:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Jk;

    const-class v2, Lcom/android/tools/r8/internal/Gk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Gk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Gk;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yl;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yl;

    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yl;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hz;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Gk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Jk;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Jk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Gk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Jk;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Jk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Gk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Gk;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/hz;->b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Gk;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Gk;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Gk;

    return-object p1
.end method
