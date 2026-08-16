.class public final Lcom/android/tools/r8/internal/pk;
.super Lcom/android/tools/r8/internal/hz;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ljava/util/List;

.field public g:Lcom/android/tools/r8/internal/Af0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/hz;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pk;->e()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/hz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 6
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    .line 7
    sget-boolean p1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pk;->e()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/pk;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/qk;->i:Lcom/android/tools/r8/internal/ok;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/ok;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qk;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/qk;)Lcom/android/tools/r8/internal/pk;

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
    check-cast p2, Lcom/android/tools/r8/internal/qk;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/qk;)Lcom/android/tools/r8/internal/pk;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qk;)Lcom/android/tools/r8/internal/pk;
    .locals 2

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/qk;->h:Lcom/android/tools/r8/internal/qk;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/qk;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/qk;->d:Z

    .line 11
    iget v1, p0, Lcom/android/tools/r8/internal/pk;->c:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/pk;->c:I

    .line 12
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/pk;->d:Z

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/qk;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 15
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/qk;->e:Z

    .line 16
    iget v1, p0, Lcom/android/tools/r8/internal/pk;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/tools/r8/internal/pk;->c:I

    .line 17
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/pk;->e:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/internal/qk;->f:Ljava/util/List;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/internal/qk;->f:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    .line 25
    iget v0, p0, Lcom/android/tools/r8/internal/pk;->c:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/pk;->c:I

    goto :goto_0

    .line 26
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/pk;->c:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    .line 28
    iget v0, p0, Lcom/android/tools/r8/internal/pk;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/pk;->c:I

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    .line 30
    iget-object v1, p1, Lcom/android/tools/r8/internal/qk;->f:Ljava/util/List;

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 33
    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/qk;->f:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 40
    iput-object v1, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    .line 41
    iget-object v0, p1, Lcom/android/tools/r8/internal/qk;->f:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    .line 43
    iget v0, p0, Lcom/android/tools/r8/internal/pk;->c:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/pk;->c:I

    .line 44
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_6

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pk;->e()Lcom/android/tools/r8/internal/Af0;

    move-result-object v1

    :cond_6
    iput-object v1, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    goto :goto_1

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    .line 47
    iget-object v1, p1, Lcom/android/tools/r8/internal/qk;->f:Ljava/util/List;

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 49
    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/iz;)V

    .line 50
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/pk;

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/pk;

    return-object p1
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pk;->d()Lcom/android/tools/r8/internal/qk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qk;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pk;->d()Lcom/android/tools/r8/internal/qk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qk;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pk;->d()Lcom/android/tools/r8/internal/qk;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/pk;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/qk;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/qk;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/qk;-><init>(Lcom/android/tools/r8/internal/pk;)V

    iget v1, p0, Lcom/android/tools/r8/internal/pk;->c:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/pk;->d:Z

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/qk;->d:Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/pk;->e:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/qk;->e:Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v3, :cond_3

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/pk;->c:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/tools/r8/internal/pk;->c:I

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/qk;->f:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/qk;->f:Ljava/util/List;

    :goto_1
    iput v2, v0, Lcom/android/tools/r8/internal/qk;->c:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/Af0;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/pk;->c:I

    and-int/lit8 v2, v2, 0x4

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

    iput-object v0, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/qk;->h:Lcom/android/tools/r8/internal/qk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/qk;->h:Lcom/android/tools/r8/internal/qk;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->G:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->H:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/qk;

    const-class v2, Lcom/android/tools/r8/internal/pk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/pk;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/pk;->f:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/pk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/qk;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/qk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/qk;)Lcom/android/tools/r8/internal/pk;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/pk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/qk;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/qk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/qk;)Lcom/android/tools/r8/internal/pk;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/pk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/pk;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/hz;->b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/pk;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/pk;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/pk;

    return-object p1
.end method
