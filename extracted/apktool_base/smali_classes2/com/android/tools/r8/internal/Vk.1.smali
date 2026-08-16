.class public final Lcom/android/tools/r8/internal/Vk;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/io/Serializable;

.field public d:Ljava/io/Serializable;

.field public e:Ljava/io/Serializable;

.field public f:Lcom/android/tools/r8/internal/al;

.field public final g:Lcom/android/tools/r8/internal/Em0;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/internal/Vk;->c:Ljava/io/Serializable;

    .line 3
    iput-object v1, p0, Lcom/android/tools/r8/internal/Vk;->d:Ljava/io/Serializable;

    .line 4
    iput-object v1, p0, Lcom/android/tools/r8/internal/Vk;->e:Ljava/io/Serializable;

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Vk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v1, :cond_1

    .line 9
    sget-object v1, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/al;

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/Vk;->g:Lcom/android/tools/r8/internal/Em0;

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 3

    .line 14
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 15
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vk;->c:Ljava/io/Serializable;

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/internal/Vk;->d:Ljava/io/Serializable;

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/internal/Vk;->e:Ljava/io/Serializable;

    .line 18
    sget-boolean p1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/internal/Vk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_2

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    if-nez p1, :cond_1

    .line 22
    sget-object p1, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/al;

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vk;->g:Lcom/android/tools/r8/internal/Em0;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Vk;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Wk;->k:Lcom/android/tools/r8/internal/Uk;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/Uk;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Wk;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vk;->a(Lcom/android/tools/r8/internal/Wk;)Lcom/android/tools/r8/internal/Vk;

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
    check-cast p2, Lcom/android/tools/r8/internal/Wk;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vk;->a(Lcom/android/tools/r8/internal/Wk;)Lcom/android/tools/r8/internal/Vk;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Wk;)Lcom/android/tools/r8/internal/Vk;
    .locals 3

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/Wk;->j:Lcom/android/tools/r8/internal/Wk;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/Wk;->c:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/Vk;->c:Ljava/io/Serializable;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    .line 16
    iget-object v0, p1, Lcom/android/tools/r8/internal/Wk;->d:Ljava/io/Serializable;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/internal/Vk;->d:Ljava/io/Serializable;

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 19
    :cond_2
    iget v0, p1, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/Wk;->e:Ljava/io/Serializable;

    .line 22
    iput-object v0, p0, Lcom/android/tools/r8/internal/Vk;->e:Ljava/io/Serializable;

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Wk;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p1, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v0, :cond_4

    .line 26
    sget-object v0, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    .line 27
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Vk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_6

    .line 28
    iget v1, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    if-eqz v1, :cond_5

    .line 29
    sget-object v2, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    if-eq v1, v2, :cond_5

    .line 30
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/al;->a()Lcom/android/tools/r8/internal/Yk;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Yk;->a(Lcom/android/tools/r8/internal/al;)Lcom/android/tools/r8/internal/Yk;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yk;->a(Lcom/android/tools/r8/internal/al;)Lcom/android/tools/r8/internal/Yk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yk;->d()Lcom/android/tools/r8/internal/al;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    goto :goto_0

    .line 32
    :cond_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 34
    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 35
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    .line 36
    :cond_7
    iget v0, p1, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 37
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Wk;->g:Z

    .line 38
    iget v1, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    .line 39
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Vk;->h:Z

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 41
    :cond_8
    iget v0, p1, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 42
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Wk;->h:Z

    .line 43
    iget v1, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    .line 44
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Vk;->i:Z

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 46
    :cond_9
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Vk;

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Vk;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Wk;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/Wk;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Wk;-><init>(Lcom/android/tools/r8/internal/Vk;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/Vk;->c:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Wk;->c:Ljava/io/Serializable;

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/Vk;->d:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Wk;->d:Ljava/io/Serializable;

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/Vk;->e:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Wk;->e:Ljava/io/Serializable;

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/tools/r8/internal/Vk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    goto :goto_1

    :cond_3
    iput-boolean v3, v4, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/al;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    :goto_1
    or-int/lit8 v2, v2, 0x8

    :cond_4
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Vk;->h:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Wk;->g:Z

    or-int/lit8 v2, v2, 0x10

    :cond_5
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Vk;->i:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Wk;->h:Z

    or-int/lit8 v2, v2, 0x20

    :cond_6
    iput v2, v0, Lcom/android/tools/r8/internal/Wk;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Vk;->b()Lcom/android/tools/r8/internal/Wk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Wk;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Vk;->b()Lcom/android/tools/r8/internal/Wk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Wk;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Vk;->b()Lcom/android/tools/r8/internal/Wk;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Vk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Wk;->j:Lcom/android/tools/r8/internal/Wk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Wk;->j:Lcom/android/tools/r8/internal/Wk;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->w:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->x:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Wk;

    const-class v2, Lcom/android/tools/r8/internal/Vk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Vk;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vk;->g:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/al;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/al;->isInitialized()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Vk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Vk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Wk;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Wk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vk;->a(Lcom/android/tools/r8/internal/Wk;)Lcom/android/tools/r8/internal/Vk;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Vk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Vk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Wk;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Wk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vk;->a(Lcom/android/tools/r8/internal/Wk;)Lcom/android/tools/r8/internal/Vk;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Vk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Vk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Vk;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Vk;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

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

    check-cast p1, Lcom/android/tools/r8/internal/Vk;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Vk;

    return-object p1
.end method
