.class public final Lcom/android/tools/r8/internal/dj0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/wz;

.field public d:Lcom/android/tools/r8/internal/fi0;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/dj0;->b:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/dj0;->e:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/tools/r8/internal/dj0;->b:I

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/dj0;->e:Ljava/lang/String;

    .line 8
    sget-object p1, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/dj0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/ej0;->i:Lcom/android/tools/r8/internal/cj0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/ej0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/ej0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;

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
    check-cast p2, Lcom/android/tools/r8/internal/ej0;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;
    .locals 4

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/dj0;->d:Lcom/android/tools/r8/internal/fi0;

    if-eqz v1, :cond_1

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/fi0;->e:Lcom/android/tools/r8/internal/fi0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fi0;->a()Lcom/android/tools/r8/internal/ei0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/ei0;->a(Lcom/android/tools/r8/internal/fi0;)Lcom/android/tools/r8/internal/ei0;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ei0;->a(Lcom/android/tools/r8/internal/fi0;)Lcom/android/tools/r8/internal/ei0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ei0;->b()Lcom/android/tools/r8/internal/fi0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/dj0;->d:Lcom/android/tools/r8/internal/fi0;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/dj0;->d:Lcom/android/tools/r8/internal/fi0;

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 16
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/dj0;->e:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 23
    :cond_4
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/ej0;->f:Z

    if-eqz v0, :cond_5

    .line 24
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dj0;->f:Z

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 26
    :cond_5
    iget v0, p1, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    const/4 v0, 0x3

    .line 27
    :goto_2
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_9

    goto :goto_6

    .line 28
    :cond_9
    iget v0, p1, Lcom/android/tools/r8/internal/ej0;->b:I

    if-ne v0, v3, :cond_a

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Lg0;

    goto :goto_3

    .line 30
    :cond_a
    sget-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    .line 31
    :goto_3
    iget v1, p0, Lcom/android/tools/r8/internal/dj0;->b:I

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/dj0;->c:Lcom/android/tools/r8/internal/wz;

    .line 32
    sget-object v2, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    if-eq v1, v2, :cond_b

    .line 33
    check-cast v1, Lcom/android/tools/r8/internal/Lg0;

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Lg0;->c()Lcom/android/tools/r8/internal/Kg0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kg0;->b()Lcom/android/tools/r8/internal/Lg0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/dj0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_4

    .line 36
    :cond_b
    iput-object v0, p0, Lcom/android/tools/r8/internal/dj0;->c:Lcom/android/tools/r8/internal/wz;

    .line 37
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 38
    iput v3, p0, Lcom/android/tools/r8/internal/dj0;->b:I

    goto :goto_6

    .line 39
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ej0;->a()Lcom/android/tools/r8/internal/hh0;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/android/tools/r8/internal/dj0;->b:I

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/dj0;->c:Lcom/android/tools/r8/internal/wz;

    .line 41
    sget-object v3, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    if-eq v1, v3, :cond_d

    .line 42
    check-cast v1, Lcom/android/tools/r8/internal/hh0;

    .line 43
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hh0;->d()Lcom/android/tools/r8/internal/gh0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gh0;->c()Lcom/android/tools/r8/internal/hh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/dj0;->c:Lcom/android/tools/r8/internal/wz;

    goto :goto_5

    .line 45
    :cond_d
    iput-object v0, p0, Lcom/android/tools/r8/internal/dj0;->c:Lcom/android/tools/r8/internal/wz;

    .line 46
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 47
    iput v2, p0, Lcom/android/tools/r8/internal/dj0;->b:I

    .line 48
    :goto_6
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dj0;

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dj0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/ej0;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ej0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ej0;-><init>(Lcom/android/tools/r8/internal/dj0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/dj0;->d:Lcom/android/tools/r8/internal/fi0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dj0;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/dj0;->f:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/ej0;->f:Z

    iget v1, p0, Lcom/android/tools/r8/internal/dj0;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/dj0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/dj0;->c:Lcom/android/tools/r8/internal/wz;

    iput-object v2, v0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    :cond_1
    iput v1, v0, Lcom/android/tools/r8/internal/ej0;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dj0;->b()Lcom/android/tools/r8/internal/ej0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ej0;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dj0;->b()Lcom/android/tools/r8/internal/ej0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ej0;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dj0;->b()Lcom/android/tools/r8/internal/ej0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dj0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->K:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->L:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/ej0;

    const-class v2, Lcom/android/tools/r8/internal/dj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/dj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/ej0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/ej0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/dj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/ej0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/ej0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/dj0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dj0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dj0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dj0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dj0;

    return-object p1
.end method
