.class public final Lcom/android/tools/r8/internal/ba0;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/android/tools/r8/internal/ca0;

.field public g:I

.field public h:I

.field public i:Lcom/android/tools/r8/internal/da0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/ca0;->d:Lcom/android/tools/r8/internal/ca0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ba0;->f:Lcom/android/tools/r8/internal/ca0;

    sget-object v0, Lcom/android/tools/r8/internal/da0;->c:Lcom/android/tools/r8/internal/da0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ba0;->i:Lcom/android/tools/r8/internal/da0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ba0;->c()Lcom/android/tools/r8/internal/ea0;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ea0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 32
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 1

    const/4 p2, 0x0

    .line 33
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/internal/ea0;->m:Lcom/android/tools/r8/internal/aa0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance v0, Lcom/android/tools/r8/internal/ea0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ea0;-><init>(Lcom/android/tools/r8/internal/Ae;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ba0;->a(Lcom/android/tools/r8/internal/ea0;)Lcom/android/tools/r8/internal/ba0;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 37
    check-cast v0, Lcom/android/tools/r8/internal/ea0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ba0;->a(Lcom/android/tools/r8/internal/ea0;)Lcom/android/tools/r8/internal/ba0;

    .line 40
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 28
    check-cast p1, Lcom/android/tools/r8/internal/ea0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ba0;->a(Lcom/android/tools/r8/internal/ea0;)Lcom/android/tools/r8/internal/ba0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ea0;)Lcom/android/tools/r8/internal/ba0;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ea0;->l:Lcom/android/tools/r8/internal/ea0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/ea0;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/ea0;->d:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/ba0;->d:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget v1, p1, Lcom/android/tools/r8/internal/ea0;->e:I

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/ba0;->e:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget v2, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/ba0;->f:Lcom/android/tools/r8/internal/ca0;

    .line 13
    :cond_3
    iget v0, p1, Lcom/android/tools/r8/internal/ea0;->c:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 14
    iget v1, p1, Lcom/android/tools/r8/internal/ea0;->g:I

    .line 15
    iget v3, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 16
    iput v1, p0, Lcom/android/tools/r8/internal/ba0;->g:I

    :cond_4
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 17
    iget v1, p1, Lcom/android/tools/r8/internal/ea0;->h:I

    .line 18
    iget v3, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 19
    iput v1, p0, Lcom/android/tools/r8/internal/ba0;->h:I

    :cond_5
    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget v2, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    .line 23
    iput-object v0, p0, Lcom/android/tools/r8/internal/ba0;->i:Lcom/android/tools/r8/internal/da0;

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/internal/ea0;->b:Lcom/android/tools/r8/internal/l8;

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/ea0;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/ea0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ea0;-><init>(Lcom/android/tools/r8/internal/ba0;)V

    iget v1, p0, Lcom/android/tools/r8/internal/ba0;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/ba0;->d:I

    iput v2, v0, Lcom/android/tools/r8/internal/ea0;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/ba0;->e:I

    iput v2, v0, Lcom/android/tools/r8/internal/ea0;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/ba0;->f:Lcom/android/tools/r8/internal/ca0;

    iput-object v2, v0, Lcom/android/tools/r8/internal/ea0;->f:Lcom/android/tools/r8/internal/ca0;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Lcom/android/tools/r8/internal/ba0;->g:I

    iput v2, v0, Lcom/android/tools/r8/internal/ea0;->g:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/ba0;->h:I

    iput v2, v0, Lcom/android/tools/r8/internal/ea0;->h:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/ba0;->i:Lcom/android/tools/r8/internal/da0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/ea0;->i:Lcom/android/tools/r8/internal/da0;

    iput v3, v0, Lcom/android/tools/r8/internal/ea0;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/ba0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ba0;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ba0;->c()Lcom/android/tools/r8/internal/ea0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ba0;->a(Lcom/android/tools/r8/internal/ea0;)Lcom/android/tools/r8/internal/ba0;

    move-result-object v0

    return-object v0
.end method
