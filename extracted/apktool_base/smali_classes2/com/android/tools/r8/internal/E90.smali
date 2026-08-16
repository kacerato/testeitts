.class public final Lcom/android/tools/r8/internal/E90;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:Lcom/android/tools/r8/internal/yR;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/F90;->f:Lcom/android/tools/r8/internal/F90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/E90;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/E90;->c:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/E90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/wR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/wR;-><init>(Lcom/android/tools/r8/internal/yR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/E90;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/E90;->c:I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    .line 12
    iget-object v1, p1, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/internal/F90;->b:Lcom/android/tools/r8/internal/l8;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/E90;->c()Lcom/android/tools/r8/internal/F90;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 22
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 1

    const/4 p2, 0x0

    .line 23
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/internal/F90;->g:Lcom/android/tools/r8/internal/D90;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/F90;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/F90;-><init>(Lcom/android/tools/r8/internal/Ae;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    :try_start_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 27
    check-cast v0, Lcom/android/tools/r8/internal/F90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    .line 30
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 18
    check-cast p1, Lcom/android/tools/r8/internal/F90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/F90;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/F90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/F90;-><init>(Lcom/android/tools/r8/internal/E90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/E90;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yR;->e()Lcom/android/tools/r8/internal/Fv0;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    iget v1, p0, Lcom/android/tools/r8/internal/E90;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/tools/r8/internal/E90;->c:I

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/E90;->d:Lcom/android/tools/r8/internal/yR;

    iput-object v1, v0, Lcom/android/tools/r8/internal/F90;->c:Lcom/android/tools/r8/internal/yR;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/E90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/E90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/E90;->c()Lcom/android/tools/r8/internal/F90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/E90;->a(Lcom/android/tools/r8/internal/F90;)Lcom/android/tools/r8/internal/E90;

    move-result-object v0

    return-object v0
.end method
