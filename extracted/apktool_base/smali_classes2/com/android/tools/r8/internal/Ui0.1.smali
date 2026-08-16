.class public final Lcom/android/tools/r8/internal/Ui0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/Yi0;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;

.field public f:Lcom/android/tools/r8/internal/Af0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->d:Ljava/lang/String;

    .line 3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Vi0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ui0;->c()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ui0;->d:Ljava/lang/String;

    .line 8
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Vi0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ui0;->c()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ui0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Vi0;->g:Lcom/android/tools/r8/internal/Ti0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Vi0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Vi0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Ui0;->a(Lcom/android/tools/r8/internal/Vi0;)Lcom/android/tools/r8/internal/Ui0;

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
    check-cast p2, Lcom/android/tools/r8/internal/Vi0;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ui0;->a(Lcom/android/tools/r8/internal/Vi0;)Lcom/android/tools/r8/internal/Ui0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Vi0;)Lcom/android/tools/r8/internal/Ui0;
    .locals 3

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Vi0;->f:Lcom/android/tools/r8/internal/Vi0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vi0;->b:Lcom/android/tools/r8/internal/Yi0;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->c:Lcom/android/tools/r8/internal/Yi0;

    if-eqz v1, :cond_1

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/Yi0;->d:Lcom/android/tools/r8/internal/Yi0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yi0;->a()Lcom/android/tools/r8/internal/Xi0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Xi0;->a(Lcom/android/tools/r8/internal/Yi0;)Lcom/android/tools/r8/internal/Xi0;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Xi0;->a(Lcom/android/tools/r8/internal/Yi0;)Lcom/android/tools/r8/internal/Xi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Xi0;->b()Lcom/android/tools/r8/internal/Yi0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->c:Lcom/android/tools/r8/internal/Yi0;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->c:Lcom/android/tools/r8/internal/Yi0;

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 16
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vi0;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/android/tools/r8/internal/Vi0;->c:Ljava/lang/String;

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vi0;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_7

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    .line 27
    iget v0, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    goto :goto_2

    .line 28
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    .line 30
    iget v0, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_3

    .line 33
    :cond_7
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    .line 35
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 39
    iput-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    .line 40
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    .line 41
    iget v0, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    .line 42
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_8

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ui0;->c()Lcom/android/tools/r8/internal/Af0;

    move-result-object v1

    :cond_8
    iput-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    goto :goto_3

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 45
    :cond_a
    :goto_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ui0;

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ui0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Vi0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Vi0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Vi0;-><init>(Lcom/android/tools/r8/internal/Ui0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->c:Lcom/android/tools/r8/internal/Yi0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Vi0;->b:Lcom/android/tools/r8/internal/Yi0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Vi0;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ui0;->b()Lcom/android/tools/r8/internal/Vi0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Vi0;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ui0;->b()Lcom/android/tools/r8/internal/Vi0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Vi0;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ui0;->b()Lcom/android/tools/r8/internal/Vi0;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Af0;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Ui0;->b:I

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

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->e:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ui0;->f:Lcom/android/tools/r8/internal/Af0;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ui0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Vi0;->f:Lcom/android/tools/r8/internal/Vi0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Vi0;->f:Lcom/android/tools/r8/internal/Vi0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->s:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->t:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Vi0;

    const-class v2, Lcom/android/tools/r8/internal/Ui0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ui0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ui0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Vi0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Vi0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ui0;->a(Lcom/android/tools/r8/internal/Vi0;)Lcom/android/tools/r8/internal/Ui0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ui0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ui0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Vi0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Vi0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ui0;->a(Lcom/android/tools/r8/internal/Vi0;)Lcom/android/tools/r8/internal/Ui0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ui0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ui0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ui0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ui0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ui0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ui0;

    return-object p1
.end method
