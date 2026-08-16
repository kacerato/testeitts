.class public final Lcom/android/tools/r8/internal/fl;
.super Lcom/android/tools/r8/internal/hz;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:Ljava/util/List;

.field public e:Lcom/android/tools/r8/internal/Af0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/hz;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fl;->e()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/hz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 6
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    .line 7
    sget-boolean p1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fl;->e()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fl;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/gl;->f:Lcom/android/tools/r8/internal/el;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/el;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/gl;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;

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
    check-cast p2, Lcom/android/tools/r8/internal/gl;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;
    .locals 2

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/fl;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/fl;->c:I

    goto :goto_0

    .line 16
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/fl;->c:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    .line 18
    iget v0, p0, Lcom/android/tools/r8/internal/fl;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/fl;->c:I

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    .line 20
    iget-object v1, p1, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 30
    iput-object v1, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    .line 31
    iget-object v0, p1, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    .line 33
    iget v0, p0, Lcom/android/tools/r8/internal/fl;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/fl;->c:I

    .line 34
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fl;->e()Lcom/android/tools/r8/internal/Af0;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    goto :goto_1

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    .line 37
    iget-object v1, p1, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 39
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/iz;)V

    .line 40
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fl;

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fl;

    return-object p1
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fl;->d()Lcom/android/tools/r8/internal/gl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gl;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fl;->d()Lcom/android/tools/r8/internal/gl;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gl;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fl;->d()Lcom/android/tools/r8/internal/gl;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fl;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/gl;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/gl;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/gl;-><init>(Lcom/android/tools/r8/internal/fl;)V

    iget v1, p0, Lcom/android/tools/r8/internal/fl;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/fl;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/tools/r8/internal/fl;->c:I

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/gl;->c:Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/Af0;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/fl;->c:I

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

    iput-object v0, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->E:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->F:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/gl;

    const-class v2, Lcom/android/tools/r8/internal/fl;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/fl;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/fl;->d:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fl;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/gl;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/gl;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fl;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/gl;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/gl;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fl;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fl;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/hz;->b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fl;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fl;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fl;

    return-object p1
.end method
