.class public final Lcom/android/tools/r8/internal/V90;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:Ljava/util/List;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/V90;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V90;->c()Lcom/android/tools/r8/internal/W90;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W90;->isInitialized()Z

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
    sget-object v1, Lcom/android/tools/r8/internal/W90;->i:Lcom/android/tools/r8/internal/U90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v1, Lcom/android/tools/r8/internal/W90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/W90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

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
    check-cast p2, Lcom/android/tools/r8/internal/W90;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    .line 34
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 22
    check-cast p1, Lcom/android/tools/r8/internal/W90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/V90;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/V90;->c:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/V90;->c:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/V90;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/V90;->c:I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    .line 12
    iget-object v2, p1, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget v0, p1, Lcom/android/tools/r8/internal/W90;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 15
    iget v0, p1, Lcom/android/tools/r8/internal/W90;->e:I

    .line 16
    iget v1, p0, Lcom/android/tools/r8/internal/V90;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/tools/r8/internal/V90;->c:I

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/V90;->e:I

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/W90;->b:Lcom/android/tools/r8/internal/l8;

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/W90;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/W90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/W90;-><init>(Lcom/android/tools/r8/internal/V90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/V90;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/V90;->c:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/tools/r8/internal/V90;->c:I

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/V90;->d:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/V90;->e:I

    iput v1, v0, Lcom/android/tools/r8/internal/W90;->e:I

    iput v3, v0, Lcom/android/tools/r8/internal/W90;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/V90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/V90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V90;->c()Lcom/android/tools/r8/internal/W90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v0

    return-object v0
.end method
