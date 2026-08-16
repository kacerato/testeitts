.class public final Lcom/android/tools/r8/internal/ck;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/android/tools/r8/internal/zk;

.field public final f:Lcom/android/tools/r8/internal/Em0;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ck;->f:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zk;

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/ck;->f:Lcom/android/tools/r8/internal/Em0;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 3

    .line 11
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/ck;->f:Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_2

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    if-nez p1, :cond_1

    .line 16
    sget-object p1, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zk;

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ck;->f:Lcom/android/tools/r8/internal/Em0;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ck;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/dk;->h:Lcom/android/tools/r8/internal/bk;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/dk;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/dk;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/ck;->a(Lcom/android/tools/r8/internal/dk;)Lcom/android/tools/r8/internal/ck;

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
    check-cast p2, Lcom/android/tools/r8/internal/dk;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ck;->a(Lcom/android/tools/r8/internal/dk;)Lcom/android/tools/r8/internal/ck;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/dk;)Lcom/android/tools/r8/internal/ck;
    .locals 3

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 11
    iget v0, p1, Lcom/android/tools/r8/internal/dk;->c:I

    .line 12
    iget v1, p0, Lcom/android/tools/r8/internal/ck;->b:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/ck;->b:I

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/ck;->c:I

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 15
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 16
    iget v0, p1, Lcom/android/tools/r8/internal/dk;->d:I

    .line 17
    iget v1, p0, Lcom/android/tools/r8/internal/ck;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/tools/r8/internal/ck;->b:I

    .line 18
    iput v0, p0, Lcom/android/tools/r8/internal/ck;->d:I

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dk;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v0, :cond_3

    .line 22
    sget-object v0, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ck;->f:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_5

    .line 24
    iget v1, p0, Lcom/android/tools/r8/internal/ck;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    if-eqz v1, :cond_4

    .line 25
    sget-object v2, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    if-eq v1, v2, :cond_4

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zk;->a()Lcom/android/tools/r8/internal/yk;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/yk;->a(Lcom/android/tools/r8/internal/zk;)Lcom/android/tools/r8/internal/yk;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/yk;->a(Lcom/android/tools/r8/internal/zk;)Lcom/android/tools/r8/internal/yk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yk;->d()Lcom/android/tools/r8/internal/zk;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    goto :goto_0

    .line 28
    :cond_4
    iput-object v0, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 30
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 31
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/ck;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/ck;->b:I

    .line 32
    :cond_6
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ck;

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ck;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/dk;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/dk;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/dk;-><init>(Lcom/android/tools/r8/internal/ck;)V

    iget v1, p0, Lcom/android/tools/r8/internal/ck;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/tools/r8/internal/ck;->c:I

    iput v2, v0, Lcom/android/tools/r8/internal/dk;->c:I

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/tools/r8/internal/ck;->d:I

    iput v4, v0, Lcom/android/tools/r8/internal/dk;->d:I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/ck;->f:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    iput-object v1, v0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    goto :goto_1

    :cond_2
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zk;

    iput-object v1, v0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    :goto_1
    or-int/lit8 v2, v2, 0x4

    :cond_3
    iput v2, v0, Lcom/android/tools/r8/internal/dk;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ck;->b()Lcom/android/tools/r8/internal/dk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dk;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ck;->b()Lcom/android/tools/r8/internal/dk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dk;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ck;->b()Lcom/android/tools/r8/internal/dk;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ck;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->e:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->f:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/dk;

    const-class v2, Lcom/android/tools/r8/internal/ck;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ck;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ck;->f:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ck;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zk;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ck;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ck;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/dk;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/dk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ck;->a(Lcom/android/tools/r8/internal/dk;)Lcom/android/tools/r8/internal/ck;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ck;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ck;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/dk;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/dk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ck;->a(Lcom/android/tools/r8/internal/dk;)Lcom/android/tools/r8/internal/ck;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ck;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ck;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ck;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ck;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

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

    check-cast p1, Lcom/android/tools/r8/internal/ck;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ck;

    return-object p1
.end method
