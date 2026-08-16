.class public final Lcom/android/tools/r8/internal/N80;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:I

.field public e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/O80;->h:Lcom/android/tools/r8/internal/O80;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/O80;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p1, Lcom/android/tools/r8/internal/O80;->d:I

    .line 4
    iget v2, p0, Lcom/android/tools/r8/internal/N80;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/N80;->c:I

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/N80;->d:I

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/N80;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/N80;->c:I

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/N80;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/N80;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/N80;->c:I

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    .line 16
    iget-object v1, p1, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/O80;->b:Lcom/android/tools/r8/internal/l8;

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/N80;->c()Lcom/android/tools/r8/internal/O80;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/O80;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 26
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 27
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/O80;->i:Lcom/android/tools/r8/internal/F80;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/F80;->b(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O80;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 31
    check-cast p2, Lcom/android/tools/r8/internal/O80;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    .line 34
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 22
    check-cast p1, Lcom/android/tools/r8/internal/O80;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/O80;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/O80;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/O80;-><init>(Lcom/android/tools/r8/internal/N80;)V

    iget v1, p0, Lcom/android/tools/r8/internal/N80;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/N80;->d:I

    iput v2, v0, Lcom/android/tools/r8/internal/O80;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/N80;->c:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/tools/r8/internal/N80;->c:I

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/N80;->e:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/O80;->e:Ljava/util/List;

    iput v3, v0, Lcom/android/tools/r8/internal/O80;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/N80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/N80;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/N80;->c()Lcom/android/tools/r8/internal/O80;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    move-result-object v0

    return-object v0
.end method
