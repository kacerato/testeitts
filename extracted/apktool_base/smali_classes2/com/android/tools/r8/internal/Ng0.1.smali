.class public final Lcom/android/tools/r8/internal/Ng0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:Lcom/android/tools/r8/internal/fh;

.field public c:Lcom/android/tools/r8/internal/ej0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ng0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Og0;->f:Lcom/android/tools/r8/internal/Mg0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Og0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Og0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Og0;)Lcom/android/tools/r8/internal/Ng0;

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
    check-cast p2, Lcom/android/tools/r8/internal/Og0;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Og0;)Lcom/android/tools/r8/internal/Ng0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Og0;)Lcom/android/tools/r8/internal/Ng0;
    .locals 3

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ng0;->b:Lcom/android/tools/r8/internal/fh;

    if-eqz v1, :cond_1

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fh;->a()Lcom/android/tools/r8/internal/Pg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pg;->b()Lcom/android/tools/r8/internal/fh;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ng0;->b:Lcom/android/tools/r8/internal/fh;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ng0;->b:Lcom/android/tools/r8/internal/fh;

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Og0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-nez v0, :cond_3

    .line 18
    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ng0;->c:Lcom/android/tools/r8/internal/ej0;

    if-eqz v1, :cond_4

    .line 20
    sget-object v2, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ej0;->b()Lcom/android/tools/r8/internal/dj0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dj0;->b()Lcom/android/tools/r8/internal/ej0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ng0;->c:Lcom/android/tools/r8/internal/ej0;

    goto :goto_1

    .line 22
    :cond_4
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ng0;->c:Lcom/android/tools/r8/internal/ej0;

    .line 23
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 24
    :cond_5
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ng0;

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ng0;

    return-object p1
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Og0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Og0;-><init>(Lcom/android/tools/r8/internal/Ng0;)V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ng0;->b:Lcom/android/tools/r8/internal/fh;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ng0;->c:Lcom/android/tools/r8/internal/ej0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Og0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final build()Lcom/android/tools/r8/internal/kW;
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Og0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Og0;-><init>(Lcom/android/tools/r8/internal/Ng0;)V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ng0;->b:Lcom/android/tools/r8/internal/fh;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ng0;->c:Lcom/android/tools/r8/internal/ej0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Og0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Og0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Og0;-><init>(Lcom/android/tools/r8/internal/Ng0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ng0;->b:Lcom/android/tools/r8/internal/fh;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ng0;->c:Lcom/android/tools/r8/internal/ej0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ng0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->I:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->J:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Og0;

    const-class v2, Lcom/android/tools/r8/internal/Ng0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ng0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Og0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Og0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Og0;)Lcom/android/tools/r8/internal/Ng0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ng0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Og0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Og0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Og0;)Lcom/android/tools/r8/internal/Ng0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ng0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ng0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ng0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ng0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ng0;

    return-object p1
.end method
