.class public final Lcom/android/tools/r8/internal/kj0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/android/tools/r8/internal/ii0;

.field public f:I

.field public g:Lcom/android/tools/r8/internal/hh0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->d:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/kj0;->b:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/internal/kj0;->c:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/kj0;->d:Ljava/lang/String;

    .line 10
    sget-object p1, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kj0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/lj0;->j:Lcom/android/tools/r8/internal/jj0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/lj0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/lj0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/lj0;)Lcom/android/tools/r8/internal/kj0;

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
    check-cast p2, Lcom/android/tools/r8/internal/lj0;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/lj0;)Lcom/android/tools/r8/internal/kj0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/lj0;)Lcom/android/tools/r8/internal/kj0;
    .locals 3

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 23
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v0, :cond_6

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/kj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v1, :cond_5

    .line 25
    sget-object v2, Lcom/android/tools/r8/internal/ii0;->e:Lcom/android/tools/r8/internal/ii0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ii0;->a()Lcom/android/tools/r8/internal/hi0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/hi0;->a(Lcom/android/tools/r8/internal/ii0;)Lcom/android/tools/r8/internal/hi0;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/hi0;->a(Lcom/android/tools/r8/internal/ii0;)Lcom/android/tools/r8/internal/hi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hi0;->b()Lcom/android/tools/r8/internal/ii0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->e:Lcom/android/tools/r8/internal/ii0;

    goto :goto_1

    .line 27
    :cond_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->e:Lcom/android/tools/r8/internal/ii0;

    .line 28
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 29
    :cond_6
    iget v0, p1, Lcom/android/tools/r8/internal/lj0;->f:I

    if-eqz v0, :cond_7

    .line 30
    iput v0, p0, Lcom/android/tools/r8/internal/kj0;->f:I

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 32
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lj0;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    iget-object v0, p1, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-nez v0, :cond_8

    .line 34
    sget-object v0, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    .line 35
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/kj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-eqz v1, :cond_9

    .line 36
    sget-object v2, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hh0;->d()Lcom/android/tools/r8/internal/gh0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gh0;->c()Lcom/android/tools/r8/internal/hh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->g:Lcom/android/tools/r8/internal/hh0;

    goto :goto_2

    .line 38
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/kj0;->g:Lcom/android/tools/r8/internal/hh0;

    .line 39
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 40
    :cond_a
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kj0;

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kj0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/lj0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/lj0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/lj0;-><init>(Lcom/android/tools/r8/internal/kj0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/kj0;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kj0;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kj0;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kj0;->e:Lcom/android/tools/r8/internal/ii0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    iget v1, p0, Lcom/android/tools/r8/internal/kj0;->f:I

    iput v1, v0, Lcom/android/tools/r8/internal/lj0;->f:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/kj0;->g:Lcom/android/tools/r8/internal/hh0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kj0;->b()Lcom/android/tools/r8/internal/lj0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lj0;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kj0;->b()Lcom/android/tools/r8/internal/lj0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lj0;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kj0;->b()Lcom/android/tools/r8/internal/lj0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/kj0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->M0:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->N0:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/lj0;

    const-class v2, Lcom/android/tools/r8/internal/kj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/lj0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/lj0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/lj0;)Lcom/android/tools/r8/internal/kj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/lj0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/lj0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/lj0;)Lcom/android/tools/r8/internal/kj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kj0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kj0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kj0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/kj0;

    return-object p1
.end method
