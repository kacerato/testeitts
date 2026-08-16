.class public final Lcom/android/tools/r8/internal/i90;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/android/tools/r8/internal/j90;

.field public g:Lcom/android/tools/r8/internal/M90;

.field public h:I

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/j90;->c:Lcom/android/tools/r8/internal/j90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->f:Lcom/android/tools/r8/internal/j90;

    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->g:Lcom/android/tools/r8/internal/M90;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i90;->c()Lcom/android/tools/r8/internal/k90;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 56
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 57
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/k90;->n:Lcom/android/tools/r8/internal/h90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    new-instance v1, Lcom/android/tools/r8/internal/k90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/k90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 61
    check-cast p2, Lcom/android/tools/r8/internal/k90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    .line 64
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 52
    check-cast p1, Lcom/android/tools/r8/internal/k90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/k90;->m:Lcom/android/tools/r8/internal/k90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/k90;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/k90;->d:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/i90;->c:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/i90;->d:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget v1, p1, Lcom/android/tools/r8/internal/k90;->e:I

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/i90;->c:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/i90;->e:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/k90;->f:Lcom/android/tools/r8/internal/j90;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget v2, p0, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/i90;->c:I

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->f:Lcom/android/tools/r8/internal/j90;

    .line 13
    :cond_3
    iget v0, p1, Lcom/android/tools/r8/internal/k90;->c:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    .line 15
    iget v2, p0, Lcom/android/tools/r8/internal/i90;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/i90;->g:Lcom/android/tools/r8/internal/M90;

    .line 16
    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v2, v3, :cond_4

    .line 17
    invoke-static {v2}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->g:Lcom/android/tools/r8/internal/M90;

    goto :goto_0

    .line 18
    :cond_4
    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->g:Lcom/android/tools/r8/internal/M90;

    .line 19
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    .line 20
    :cond_5
    iget v0, p1, Lcom/android/tools/r8/internal/k90;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 21
    iget v0, p1, Lcom/android/tools/r8/internal/k90;->h:I

    .line 22
    iget v2, p0, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/i90;->c:I

    .line 23
    iput v0, p0, Lcom/android/tools/r8/internal/i90;->h:I

    .line 24
    :cond_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p1, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    .line 29
    iget v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    goto :goto_1

    .line 30
    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    .line 32
    iget v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    .line 34
    iget-object v1, p1, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_9
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    iget-object v0, p1, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    .line 41
    iget v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    goto :goto_2

    .line 42
    :cond_a
    iget v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    .line 44
    iget v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/i90;->c:I

    .line 45
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    .line 46
    iget-object v1, p1, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/internal/k90;->b:Lcom/android/tools/r8/internal/l8;

    .line 50
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/k90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/k90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/k90;-><init>(Lcom/android/tools/r8/internal/i90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/i90;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/i90;->d:I

    iput v2, v0, Lcom/android/tools/r8/internal/k90;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/i90;->e:I

    iput v2, v0, Lcom/android/tools/r8/internal/k90;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/i90;->f:Lcom/android/tools/r8/internal/j90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/k90;->f:Lcom/android/tools/r8/internal/j90;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/i90;->g:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/k90;->g:Lcom/android/tools/r8/internal/M90;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/i90;->h:I

    iput v2, v0, Lcom/android/tools/r8/internal/k90;->h:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/i90;->c:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/android/tools/r8/internal/i90;->c:I

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/i90;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/k90;->i:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/i90;->c:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/i90;->c:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/android/tools/r8/internal/i90;->c:I

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/i90;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/k90;->j:Ljava/util/List;

    iput v3, v0, Lcom/android/tools/r8/internal/k90;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/i90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/i90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i90;->c()Lcom/android/tools/r8/internal/k90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/i90;->a(Lcom/android/tools/r8/internal/k90;)Lcom/android/tools/r8/internal/i90;

    move-result-object v0

    return-object v0
.end method
