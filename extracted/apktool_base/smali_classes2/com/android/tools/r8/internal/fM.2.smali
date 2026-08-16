.class public final Lcom/android/tools/r8/internal/fM;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:Lcom/android/tools/r8/internal/aM;

.field public e:Lcom/android/tools/r8/internal/dM;

.field public f:Lcom/android/tools/r8/internal/dM;

.field public g:Lcom/android/tools/r8/internal/dM;

.field public h:Lcom/android/tools/r8/internal/dM;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/aM;->h:Lcom/android/tools/r8/internal/aM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->d:Lcom/android/tools/r8/internal/aM;

    sget-object v0, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->e:Lcom/android/tools/r8/internal/dM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->f:Lcom/android/tools/r8/internal/dM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->g:Lcom/android/tools/r8/internal/dM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->h:Lcom/android/tools/r8/internal/dM;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fM;->c()Lcom/android/tools/r8/internal/gM;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gM;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 47
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 48
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/gM;->l:Lcom/android/tools/r8/internal/eM;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v1, Lcom/android/tools/r8/internal/gM;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/gM;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fM;->a(Lcom/android/tools/r8/internal/gM;)Lcom/android/tools/r8/internal/fM;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 52
    check-cast p2, Lcom/android/tools/r8/internal/gM;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fM;->a(Lcom/android/tools/r8/internal/gM;)Lcom/android/tools/r8/internal/fM;

    .line 55
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 43
    check-cast p1, Lcom/android/tools/r8/internal/gM;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fM;->a(Lcom/android/tools/r8/internal/gM;)Lcom/android/tools/r8/internal/fM;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/gM;)Lcom/android/tools/r8/internal/fM;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/gM;->k:Lcom/android/tools/r8/internal/gM;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    .line 4
    iget v2, p0, Lcom/android/tools/r8/internal/fM;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->d:Lcom/android/tools/r8/internal/aM;

    .line 5
    sget-object v3, Lcom/android/tools/r8/internal/aM;->h:Lcom/android/tools/r8/internal/aM;

    if-eq v2, v3, :cond_1

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/ZL;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ZL;-><init>()V

    .line 7
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/ZL;->a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/ZL;->a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ZL;->c()Lcom/android/tools/r8/internal/aM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->d:Lcom/android/tools/r8/internal/aM;

    goto :goto_0

    .line 9
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->d:Lcom/android/tools/r8/internal/aM;

    .line 10
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    .line 11
    :cond_2
    iget v0, p1, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    .line 13
    iget v2, p0, Lcom/android/tools/r8/internal/fM;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->e:Lcom/android/tools/r8/internal/dM;

    .line 14
    sget-object v3, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    if-eq v2, v3, :cond_3

    .line 15
    invoke-static {v2}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->e:Lcom/android/tools/r8/internal/dM;

    goto :goto_1

    .line 16
    :cond_3
    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->e:Lcom/android/tools/r8/internal/dM;

    .line 17
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    .line 18
    :cond_4
    iget v0, p1, Lcom/android/tools/r8/internal/gM;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    .line 20
    iget v2, p0, Lcom/android/tools/r8/internal/fM;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->f:Lcom/android/tools/r8/internal/dM;

    .line 21
    sget-object v3, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    if-eq v2, v3, :cond_5

    .line 22
    invoke-static {v2}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->f:Lcom/android/tools/r8/internal/dM;

    goto :goto_2

    .line 23
    :cond_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->f:Lcom/android/tools/r8/internal/dM;

    .line 24
    :goto_2
    iget v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    .line 25
    :cond_6
    iget v0, p1, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 26
    iget-object v0, p1, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    .line 27
    iget v2, p0, Lcom/android/tools/r8/internal/fM;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->g:Lcom/android/tools/r8/internal/dM;

    .line 28
    sget-object v3, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    if-eq v2, v3, :cond_7

    .line 29
    invoke-static {v2}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->g:Lcom/android/tools/r8/internal/dM;

    goto :goto_3

    .line 30
    :cond_7
    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->g:Lcom/android/tools/r8/internal/dM;

    .line 31
    :goto_3
    iget v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    .line 32
    :cond_8
    iget v0, p1, Lcom/android/tools/r8/internal/gM;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    .line 33
    iget-object v0, p1, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    .line 34
    iget v2, p0, Lcom/android/tools/r8/internal/fM;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->h:Lcom/android/tools/r8/internal/dM;

    .line 35
    sget-object v3, Lcom/android/tools/r8/internal/dM;->h:Lcom/android/tools/r8/internal/dM;

    if-eq v2, v3, :cond_9

    .line 36
    invoke-static {v2}, Lcom/android/tools/r8/internal/dM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/cM;->a(Lcom/android/tools/r8/internal/dM;)Lcom/android/tools/r8/internal/cM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cM;->c()Lcom/android/tools/r8/internal/dM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->h:Lcom/android/tools/r8/internal/dM;

    goto :goto_4

    .line 37
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/fM;->h:Lcom/android/tools/r8/internal/dM;

    .line 38
    :goto_4
    iget v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/fM;->c:I

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 40
    iget-object p1, p1, Lcom/android/tools/r8/internal/gM;->b:Lcom/android/tools/r8/internal/l8;

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/gM;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/gM;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/gM;-><init>(Lcom/android/tools/r8/internal/fM;)V

    iget v1, p0, Lcom/android/tools/r8/internal/fM;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->d:Lcom/android/tools/r8/internal/aM;

    iput-object v2, v0, Lcom/android/tools/r8/internal/gM;->d:Lcom/android/tools/r8/internal/aM;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->e:Lcom/android/tools/r8/internal/dM;

    iput-object v2, v0, Lcom/android/tools/r8/internal/gM;->e:Lcom/android/tools/r8/internal/dM;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->f:Lcom/android/tools/r8/internal/dM;

    iput-object v2, v0, Lcom/android/tools/r8/internal/gM;->f:Lcom/android/tools/r8/internal/dM;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/fM;->g:Lcom/android/tools/r8/internal/dM;

    iput-object v2, v0, Lcom/android/tools/r8/internal/gM;->g:Lcom/android/tools/r8/internal/dM;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/fM;->h:Lcom/android/tools/r8/internal/dM;

    iput-object v1, v0, Lcom/android/tools/r8/internal/gM;->h:Lcom/android/tools/r8/internal/dM;

    iput v3, v0, Lcom/android/tools/r8/internal/gM;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/fM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fM;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fM;->c()Lcom/android/tools/r8/internal/gM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fM;->a(Lcom/android/tools/r8/internal/gM;)Lcom/android/tools/r8/internal/fM;

    move-result-object v0

    return-object v0
.end method
