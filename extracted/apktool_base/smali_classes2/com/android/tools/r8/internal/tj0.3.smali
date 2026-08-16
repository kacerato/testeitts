.class public final Lcom/android/tools/r8/internal/tj0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lcom/android/tools/r8/internal/ii0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/tj0;->b:I

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/uj0;->f:Lcom/android/tools/r8/internal/uj0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/tools/r8/internal/tj0;->b:I

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/uj0;->f:Lcom/android/tools/r8/internal/uj0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/tj0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/uj0;->g:Lcom/android/tools/r8/internal/sj0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/uj0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/uj0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/tj0;->a(Lcom/android/tools/r8/internal/uj0;)Lcom/android/tools/r8/internal/tj0;

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
    check-cast p2, Lcom/android/tools/r8/internal/uj0;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/tj0;->a(Lcom/android/tools/r8/internal/uj0;)Lcom/android/tools/r8/internal/tj0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/uj0;)Lcom/android/tools/r8/internal/tj0;
    .locals 4

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/uj0;->f:Lcom/android/tools/r8/internal/uj0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/uj0;->d:Lcom/android/tools/r8/internal/ii0;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/tj0;->d:Lcom/android/tools/r8/internal/ii0;

    if-eqz v1, :cond_1

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/ii0;->e:Lcom/android/tools/r8/internal/ii0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ii0;->a()Lcom/android/tools/r8/internal/hi0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/hi0;->a(Lcom/android/tools/r8/internal/ii0;)Lcom/android/tools/r8/internal/hi0;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/hi0;->a(Lcom/android/tools/r8/internal/ii0;)Lcom/android/tools/r8/internal/hi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hi0;->b()Lcom/android/tools/r8/internal/ii0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tj0;->d:Lcom/android/tools/r8/internal/ii0;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/tj0;->d:Lcom/android/tools/r8/internal/ii0;

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 16
    :cond_2
    iget v0, p1, Lcom/android/tools/r8/internal/uj0;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    .line 17
    :goto_1
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iput v1, p0, Lcom/android/tools/r8/internal/tj0;->b:I

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/uj0;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/tj0;->c:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_3

    .line 21
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uj0;->a()Lcom/android/tools/r8/internal/oj0;

    move-result-object v0

    .line 22
    iget v1, p0, Lcom/android/tools/r8/internal/tj0;->b:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/tj0;->c:Ljava/lang/Object;

    .line 23
    sget-object v3, Lcom/android/tools/r8/internal/oj0;->h:Lcom/android/tools/r8/internal/oj0;

    if-eq v1, v3, :cond_8

    .line 24
    check-cast v1, Lcom/android/tools/r8/internal/oj0;

    .line 25
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/oj0;->b()Lcom/android/tools/r8/internal/nj0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/nj0;->a(Lcom/android/tools/r8/internal/oj0;)Lcom/android/tools/r8/internal/nj0;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nj0;->a(Lcom/android/tools/r8/internal/oj0;)Lcom/android/tools/r8/internal/nj0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nj0;->b()Lcom/android/tools/r8/internal/oj0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/tj0;->c:Ljava/lang/Object;

    goto :goto_2

    .line 27
    :cond_8
    iput-object v0, p0, Lcom/android/tools/r8/internal/tj0;->c:Ljava/lang/Object;

    .line 28
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 29
    iput v2, p0, Lcom/android/tools/r8/internal/tj0;->b:I

    .line 30
    :goto_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/tj0;

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/tj0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/uj0;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/uj0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/uj0;-><init>(Lcom/android/tools/r8/internal/tj0;)V

    iget v1, p0, Lcom/android/tools/r8/internal/tj0;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/tj0;->c:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/tools/r8/internal/uj0;->c:Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/tj0;->c:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/tools/r8/internal/uj0;->c:Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/tj0;->d:Lcom/android/tools/r8/internal/ii0;

    iput-object v2, v0, Lcom/android/tools/r8/internal/uj0;->d:Lcom/android/tools/r8/internal/ii0;

    iput v1, v0, Lcom/android/tools/r8/internal/uj0;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tj0;->b()Lcom/android/tools/r8/internal/uj0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/uj0;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tj0;->b()Lcom/android/tools/r8/internal/uj0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/uj0;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tj0;->b()Lcom/android/tools/r8/internal/uj0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/tj0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/uj0;->f:Lcom/android/tools/r8/internal/uj0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/uj0;->f:Lcom/android/tools/r8/internal/uj0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->G0:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->H0:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/uj0;

    const-class v2, Lcom/android/tools/r8/internal/tj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/tj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/tj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/uj0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/uj0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/tj0;->a(Lcom/android/tools/r8/internal/uj0;)Lcom/android/tools/r8/internal/tj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/tj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/tj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/uj0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/uj0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/tj0;->a(Lcom/android/tools/r8/internal/uj0;)Lcom/android/tools/r8/internal/tj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/tj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/tj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/tj0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/tj0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/tj0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/tj0;

    return-object p1
.end method
