.class public final Lcom/android/tools/r8/internal/cl;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/io/Serializable;

.field public d:Lcom/android/tools/r8/internal/gl;

.field public final e:Lcom/android/tools/r8/internal/Em0;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/internal/cl;->c:Ljava/io/Serializable;

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/cl;->e:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    if-nez v1, :cond_1

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/gl;

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/cl;->e:Lcom/android/tools/r8/internal/Em0;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 3

    .line 12
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 13
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/cl;->c:Ljava/io/Serializable;

    .line 14
    sget-boolean p1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/cl;->e:Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_2

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    if-nez p1, :cond_1

    .line 18
    sget-object p1, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/gl;

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/cl;->e:Lcom/android/tools/r8/internal/Em0;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/cl;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/dl;->g:Lcom/android/tools/r8/internal/bl;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/bl;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dl;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/cl;->a(Lcom/android/tools/r8/internal/dl;)Lcom/android/tools/r8/internal/cl;

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
    check-cast p2, Lcom/android/tools/r8/internal/dl;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/cl;->a(Lcom/android/tools/r8/internal/dl;)Lcom/android/tools/r8/internal/cl;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/dl;)Lcom/android/tools/r8/internal/cl;
    .locals 3

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/dl;->f:Lcom/android/tools/r8/internal/dl;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/dl;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/cl;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/cl;->b:I

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/dl;->c:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/cl;->c:Ljava/io/Serializable;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dl;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/dl;->d:Lcom/android/tools/r8/internal/gl;

    if-nez v0, :cond_2

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/cl;->e:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_4

    .line 18
    iget v1, p0, Lcom/android/tools/r8/internal/cl;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    if-eqz v1, :cond_3

    .line 19
    sget-object v2, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    if-eq v1, v2, :cond_3

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gl;->a()Lcom/android/tools/r8/internal/fl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/fl;->a(Lcom/android/tools/r8/internal/gl;)Lcom/android/tools/r8/internal/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fl;->d()Lcom/android/tools/r8/internal/gl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    goto :goto_0

    .line 22
    :cond_3
    iput-object v0, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 25
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/cl;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/cl;->b:I

    .line 26
    :cond_5
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/cl;

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cl;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/dl;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/dl;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/dl;-><init>(Lcom/android/tools/r8/internal/cl;)V

    iget v1, p0, Lcom/android/tools/r8/internal/cl;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/cl;->c:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/dl;->c:Ljava/io/Serializable;

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/cl;->e:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    iput-object v1, v0, Lcom/android/tools/r8/internal/dl;->d:Lcom/android/tools/r8/internal/gl;

    goto :goto_1

    :cond_1
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/gl;

    iput-object v1, v0, Lcom/android/tools/r8/internal/dl;->d:Lcom/android/tools/r8/internal/gl;

    :goto_1
    or-int/lit8 v2, v2, 0x2

    :cond_2
    iput v2, v0, Lcom/android/tools/r8/internal/dl;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cl;->b()Lcom/android/tools/r8/internal/dl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dl;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cl;->b()Lcom/android/tools/r8/internal/dl;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dl;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cl;->b()Lcom/android/tools/r8/internal/dl;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/cl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/dl;->f:Lcom/android/tools/r8/internal/dl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/dl;->f:Lcom/android/tools/r8/internal/dl;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->m:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->n:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/dl;

    const-class v2, Lcom/android/tools/r8/internal/cl;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/cl;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cl;->e:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/cl;->d:Lcom/android/tools/r8/internal/gl;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/gl;->e:Lcom/android/tools/r8/internal/gl;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/gl;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gl;->isInitialized()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/cl;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/cl;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/dl;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/dl;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/cl;->a(Lcom/android/tools/r8/internal/dl;)Lcom/android/tools/r8/internal/cl;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/cl;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/cl;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/dl;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/dl;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/cl;->a(Lcom/android/tools/r8/internal/dl;)Lcom/android/tools/r8/internal/cl;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/cl;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/cl;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/cl;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cl;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

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

    check-cast p1, Lcom/android/tools/r8/internal/cl;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/cl;

    return-object p1
.end method
