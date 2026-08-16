.class public final Lcom/android/tools/r8/internal/J80;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:Lcom/android/tools/r8/internal/K80;

.field public e:J

.field public f:F

.field public g:D

.field public h:I

.field public i:I

.field public j:I

.field public k:Lcom/android/tools/r8/internal/O80;

.field public l:Ljava/util/List;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/K80;->c:Lcom/android/tools/r8/internal/K80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    sget-object v0, Lcom/android/tools/r8/internal/O80;->h:Lcom/android/tools/r8/internal/O80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/J80;->k:Lcom/android/tools/r8/internal/O80;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/L80;)Lcom/android/tools/r8/internal/J80;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/L80;->q:Lcom/android/tools/r8/internal/L80;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/L80;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    .line 7
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/L80;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 8
    iget-wide v0, p1, Lcom/android/tools/r8/internal/L80;->e:J

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/J80;->a(J)V

    .line 10
    :cond_2
    iget v0, p1, Lcom/android/tools/r8/internal/L80;->c:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 11
    iget v1, p1, Lcom/android/tools/r8/internal/L80;->f:F

    .line 12
    iget v3, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 13
    iput v1, p0, Lcom/android/tools/r8/internal/J80;->f:F

    :cond_3
    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 14
    iget-wide v3, p1, Lcom/android/tools/r8/internal/L80;->g:D

    .line 15
    iget v1, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 16
    iput-wide v3, p0, Lcom/android/tools/r8/internal/J80;->g:D

    :cond_4
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 17
    iget v1, p1, Lcom/android/tools/r8/internal/L80;->h:I

    .line 18
    iget v3, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 19
    iput v1, p0, Lcom/android/tools/r8/internal/J80;->h:I

    :cond_5
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 20
    iget v1, p1, Lcom/android/tools/r8/internal/L80;->i:I

    .line 21
    iget v3, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 22
    iput v1, p0, Lcom/android/tools/r8/internal/J80;->i:I

    :cond_6
    and-int/lit8 v1, v0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 23
    iget v1, p1, Lcom/android/tools/r8/internal/L80;->j:I

    .line 24
    iget v3, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 25
    iput v1, p0, Lcom/android/tools/r8/internal/J80;->j:I

    :cond_7
    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    .line 26
    iget-object v0, p1, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    .line 27
    iget v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/J80;->k:Lcom/android/tools/r8/internal/O80;

    .line 28
    sget-object v3, Lcom/android/tools/r8/internal/O80;->h:Lcom/android/tools/r8/internal/O80;

    if-eq v2, v3, :cond_8

    .line 29
    new-instance v3, Lcom/android/tools/r8/internal/N80;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/N80;-><init>()V

    .line 30
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/N80;->a(Lcom/android/tools/r8/internal/O80;)Lcom/android/tools/r8/internal/N80;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/N80;->c()Lcom/android/tools/r8/internal/O80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/J80;->k:Lcom/android/tools/r8/internal/O80;

    goto :goto_0

    .line 32
    :cond_8
    iput-object v0, p0, Lcom/android/tools/r8/internal/J80;->k:Lcom/android/tools/r8/internal/O80;

    .line 33
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 34
    :cond_9
    iget-object v0, p1, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x100

    if-nez v0, :cond_c

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    iget-object v0, p1, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    .line 39
    iget v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    goto :goto_1

    .line 40
    :cond_a
    iget v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    .line 42
    iget v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 43
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    .line 44
    iget-object v2, p1, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_c
    :goto_1
    iget v0, p1, Lcom/android/tools/r8/internal/L80;->c:I

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x200

    if-ne v2, v1, :cond_d

    .line 47
    iget v1, p1, Lcom/android/tools/r8/internal/L80;->m:I

    .line 48
    iget v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 49
    iput v1, p0, Lcom/android/tools/r8/internal/J80;->m:I

    :cond_d
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_e

    .line 50
    iget v0, p1, Lcom/android/tools/r8/internal/L80;->n:I

    .line 51
    iget v1, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 52
    iput v0, p0, Lcom/android/tools/r8/internal/J80;->n:I

    .line 53
    :cond_e
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 54
    iget-object p1, p1, Lcom/android/tools/r8/internal/L80;->b:Lcom/android/tools/r8/internal/l8;

    .line 55
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J80;->c()Lcom/android/tools/r8/internal/L80;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L80;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 61
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 62
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/L80;->r:Lcom/android/tools/r8/internal/I80;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v1, Lcom/android/tools/r8/internal/L80;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/L80;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/J80;->a(Lcom/android/tools/r8/internal/L80;)Lcom/android/tools/r8/internal/J80;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 66
    check-cast p2, Lcom/android/tools/r8/internal/L80;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/J80;->a(Lcom/android/tools/r8/internal/L80;)Lcom/android/tools/r8/internal/J80;

    .line 69
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 57
    check-cast p1, Lcom/android/tools/r8/internal/L80;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J80;->a(Lcom/android/tools/r8/internal/L80;)Lcom/android/tools/r8/internal/J80;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/J80;->c:I

    .line 71
    iput-wide p1, p0, Lcom/android/tools/r8/internal/J80;->e:J

    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/L80;
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/L80;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/L80;-><init>(Lcom/android/tools/r8/internal/J80;)V

    iget v1, p0, Lcom/android/tools/r8/internal/J80;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/J80;->d:Lcom/android/tools/r8/internal/K80;

    iput-object v2, v0, Lcom/android/tools/r8/internal/L80;->d:Lcom/android/tools/r8/internal/K80;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-wide v4, p0, Lcom/android/tools/r8/internal/J80;->e:J

    iput-wide v4, v0, Lcom/android/tools/r8/internal/L80;->e:J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/J80;->f:F

    iput v2, v0, Lcom/android/tools/r8/internal/L80;->f:F

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-wide v4, p0, Lcom/android/tools/r8/internal/J80;->g:D

    iput-wide v4, v0, Lcom/android/tools/r8/internal/L80;->g:D

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/J80;->h:I

    iput v2, v0, Lcom/android/tools/r8/internal/L80;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget v2, p0, Lcom/android/tools/r8/internal/J80;->i:I

    iput v2, v0, Lcom/android/tools/r8/internal/L80;->i:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget v2, p0, Lcom/android/tools/r8/internal/J80;->j:I

    iput v2, v0, Lcom/android/tools/r8/internal/L80;->j:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    :cond_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/J80;->k:Lcom/android/tools/r8/internal/O80;

    iput-object v2, v0, Lcom/android/tools/r8/internal/L80;->k:Lcom/android/tools/r8/internal/O80;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/android/tools/r8/internal/J80;->c:I

    :cond_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/J80;->l:Ljava/util/List;

    iput-object v2, v0, Lcom/android/tools/r8/internal/L80;->l:Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    :cond_9
    iget v2, p0, Lcom/android/tools/r8/internal/J80;->m:I

    iput v2, v0, Lcom/android/tools/r8/internal/L80;->m:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/J80;->n:I

    iput v1, v0, Lcom/android/tools/r8/internal/L80;->n:I

    iput v3, v0, Lcom/android/tools/r8/internal/L80;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/J80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J80;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J80;->c()Lcom/android/tools/r8/internal/L80;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/J80;->a(Lcom/android/tools/r8/internal/L80;)Lcom/android/tools/r8/internal/J80;

    move-result-object v0

    return-object v0
.end method
