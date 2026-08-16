.class public final Lcom/android/tools/r8/internal/Xh0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lcom/android/tools/r8/internal/Ig0;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/Xh0;->b:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xh0;->d:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/Zh0;->j:Lcom/android/tools/r8/internal/Zh0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/tools/r8/internal/Xh0;->b:I

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xh0;->d:Ljava/lang/String;

    .line 8
    sget-object p1, Lcom/android/tools/r8/internal/Zh0;->j:Lcom/android/tools/r8/internal/Zh0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Xh0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Zh0;->k:Lcom/android/tools/r8/internal/Wh0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Zh0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Zh0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/Xh0;

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
    check-cast p2, Lcom/android/tools/r8/internal/Zh0;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/Xh0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/Xh0;
    .locals 3

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Zh0;->j:Lcom/android/tools/r8/internal/Zh0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/Zh0;->b:I

    if-eqz v0, :cond_1

    .line 11
    iput v0, p0, Lcom/android/tools/r8/internal/Xh0;->b:I

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 13
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/Zh0;->c:I

    if-eqz v0, :cond_2

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/Xh0;->c:I

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zh0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/Zh0;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xh0;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 19
    :cond_3
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Zh0;->e:Z

    if-eqz v0, :cond_4

    .line 20
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Xh0;->e:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 22
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/Zh0;->f:Lcom/android/tools/r8/internal/Ig0;

    if-eqz v0, :cond_6

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xh0;->f:Lcom/android/tools/r8/internal/Ig0;

    if-eqz v1, :cond_5

    .line 24
    sget-object v2, Lcom/android/tools/r8/internal/Ig0;->d:Lcom/android/tools/r8/internal/Ig0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ig0;->a()Lcom/android/tools/r8/internal/Hg0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Hg0;->a(Lcom/android/tools/r8/internal/Ig0;)Lcom/android/tools/r8/internal/Hg0;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Hg0;->a(Lcom/android/tools/r8/internal/Ig0;)Lcom/android/tools/r8/internal/Hg0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hg0;->b()Lcom/android/tools/r8/internal/Ig0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xh0;->f:Lcom/android/tools/r8/internal/Ig0;

    goto :goto_0

    .line 26
    :cond_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/Xh0;->f:Lcom/android/tools/r8/internal/Ig0;

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 28
    :cond_6
    iget v0, p1, Lcom/android/tools/r8/internal/Zh0;->g:I

    if-eqz v0, :cond_7

    .line 29
    iput v0, p0, Lcom/android/tools/r8/internal/Xh0;->g:I

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 31
    :cond_7
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Zh0;->h:Z

    if-eqz v0, :cond_8

    .line 32
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Xh0;->h:Z

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 34
    :cond_8
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Xh0;

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Xh0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Zh0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Zh0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Zh0;-><init>(Lcom/android/tools/r8/internal/Xh0;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Xh0;->b:I

    iput v1, v0, Lcom/android/tools/r8/internal/Zh0;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/Xh0;->c:I

    iput v1, v0, Lcom/android/tools/r8/internal/Zh0;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xh0;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Zh0;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Xh0;->e:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Zh0;->e:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xh0;->f:Lcom/android/tools/r8/internal/Ig0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Zh0;->f:Lcom/android/tools/r8/internal/Ig0;

    iget v1, p0, Lcom/android/tools/r8/internal/Xh0;->g:I

    iput v1, v0, Lcom/android/tools/r8/internal/Zh0;->g:I

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Xh0;->h:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Zh0;->h:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Xh0;->b()Lcom/android/tools/r8/internal/Zh0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zh0;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Xh0;->b()Lcom/android/tools/r8/internal/Zh0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zh0;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Xh0;->b()Lcom/android/tools/r8/internal/Zh0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Xh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Zh0;->j:Lcom/android/tools/r8/internal/Zh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Zh0;->j:Lcom/android/tools/r8/internal/Zh0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->S:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->T:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Zh0;

    const-class v2, Lcom/android/tools/r8/internal/Xh0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Xh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Zh0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Zh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/Xh0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Xh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Zh0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Zh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/Xh0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Xh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Xh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Xh0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Xh0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Xh0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Xh0;

    return-object p1
.end method
