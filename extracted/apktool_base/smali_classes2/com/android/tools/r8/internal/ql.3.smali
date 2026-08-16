.class public final Lcom/android/tools/r8/internal/ql;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/TI;

.field public d:Lcom/android/tools/r8/internal/TI;

.field public e:Ljava/io/Serializable;

.field public f:Ljava/io/Serializable;

.field public g:Lcom/android/tools/r8/internal/zR;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->e:Ljava/io/Serializable;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->f:Ljava/io/Serializable;

    .line 6
    sget-object v0, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    .line 10
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/ql;->e:Ljava/io/Serializable;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/internal/ql;->f:Ljava/io/Serializable;

    .line 12
    sget-object p1, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ql;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/rl;->l:Lcom/android/tools/r8/internal/pl;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/pl;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/rl;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ql;->a(Lcom/android/tools/r8/internal/rl;)Lcom/android/tools/r8/internal/ql;

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
    check-cast p2, Lcom/android/tools/r8/internal/rl;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ql;->a(Lcom/android/tools/r8/internal/rl;)Lcom/android/tools/r8/internal/ql;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rl;)Lcom/android/tools/r8/internal/ql;
    .locals 2

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/rl;->k:Lcom/android/tools/r8/internal/rl;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    goto :goto_0

    .line 15
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->mutableCopy(Lcom/android/tools/r8/internal/TI;)Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    .line 19
    iget-object v1, p1, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    .line 20
    check-cast v0, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/DH;->addAll(Ljava/util/Collection;)Z

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 22
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p1, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    .line 26
    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    .line 27
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    goto :goto_1

    .line 28
    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->mutableCopy(Lcom/android/tools/r8/internal/TI;)Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    .line 30
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    .line 32
    iget-object v1, p1, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    .line 33
    check-cast v0, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/DH;->addAll(Ljava/util/Collection;)Z

    .line 34
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 35
    :cond_6
    iget v0, p1, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    .line 37
    iget-object v0, p1, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    .line 38
    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->e:Ljava/io/Serializable;

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 40
    :cond_7
    iget v0, p1, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 41
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    .line 42
    iget-object v0, p1, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    .line 43
    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->f:Ljava/io/Serializable;

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 45
    :cond_8
    iget-object v0, p1, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p1, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    .line 49
    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    .line 50
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    goto :goto_2

    .line 51
    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_a

    .line 52
    new-instance v0, Lcom/android/tools/r8/internal/xR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xR;-><init>(Lcom/android/tools/r8/internal/zR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    .line 53
    iget v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/tools/r8/internal/ql;->b:I

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    .line 55
    iget-object v1, p1, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 58
    :cond_b
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ql;

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ql;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/rl;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/rl;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/rl;-><init>(Lcom/android/tools/r8/internal/ql;)V

    iget v1, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    check-cast v2, Lcom/android/tools/r8/internal/s1;

    iput-boolean v3, v2, Lcom/android/tools/r8/internal/s1;->b:Z

    and-int/lit8 v2, v1, -0x2

    iput v2, p0, Lcom/android/tools/r8/internal/ql;->b:I

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/ql;->c:Lcom/android/tools/r8/internal/TI;

    iput-object v2, v0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    iget v2, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    check-cast v4, Lcom/android/tools/r8/internal/s1;

    iput-boolean v3, v4, Lcom/android/tools/r8/internal/s1;->b:Z

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/tools/r8/internal/ql;->b:I

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/ql;->d:Lcom/android/tools/r8/internal/TI;

    iput-object v2, v0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/ql;->e:Ljava/io/Serializable;

    iput-object v2, v0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v3, v3, 0x2

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ql;->f:Ljava/io/Serializable;

    iput-object v1, v0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    iget v1, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    iget v1, p0, Lcom/android/tools/r8/internal/ql;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/tools/r8/internal/ql;->b:I

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/ql;->g:Lcom/android/tools/r8/internal/zR;

    iput-object v1, v0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    iput v3, v0, Lcom/android/tools/r8/internal/rl;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ql;->b()Lcom/android/tools/r8/internal/rl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rl;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ql;->b()Lcom/android/tools/r8/internal/rl;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rl;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ql;->b()Lcom/android/tools/r8/internal/rl;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ql;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/rl;->k:Lcom/android/tools/r8/internal/rl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/rl;->k:Lcom/android/tools/r8/internal/rl;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->U:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->V:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/rl;

    const-class v2, Lcom/android/tools/r8/internal/ql;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ql;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ql;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/rl;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/rl;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ql;->a(Lcom/android/tools/r8/internal/rl;)Lcom/android/tools/r8/internal/ql;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ql;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ql;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/rl;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/rl;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ql;->a(Lcom/android/tools/r8/internal/rl;)Lcom/android/tools/r8/internal/ql;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ql;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ql;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ql;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ql;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

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

    check-cast p1, Lcom/android/tools/r8/internal/ql;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ql;

    return-object p1
.end method
