.class public final Lcom/android/tools/r8/internal/Y90;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/android/tools/r8/internal/M90;

.field public i:I

.field public j:Lcom/android/tools/r8/internal/M90;

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y90;->h:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y90;->j:Lcom/android/tools/r8/internal/M90;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y90;->c()Lcom/android/tools/r8/internal/Z90;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Z90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 38
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 39
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Z90;->n:Lcom/android/tools/r8/internal/X90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v1, Lcom/android/tools/r8/internal/Z90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Z90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Y90;->a(Lcom/android/tools/r8/internal/Z90;)Lcom/android/tools/r8/internal/Y90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 43
    check-cast p2, Lcom/android/tools/r8/internal/Z90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Y90;->a(Lcom/android/tools/r8/internal/Z90;)Lcom/android/tools/r8/internal/Y90;

    .line 46
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 34
    check-cast p1, Lcom/android/tools/r8/internal/Z90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y90;->a(Lcom/android/tools/r8/internal/Z90;)Lcom/android/tools/r8/internal/Y90;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Z90;)Lcom/android/tools/r8/internal/Y90;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Z90;->m:Lcom/android/tools/r8/internal/Z90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/Z90;->d:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/Z90;->e:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/Y90;->f:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget v1, p1, Lcom/android/tools/r8/internal/Z90;->f:I

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/Y90;->g:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    .line 10
    iget v2, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y90;->h:Lcom/android/tools/r8/internal/M90;

    .line 11
    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v2, v3, :cond_3

    .line 12
    invoke-static {v2}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y90;->h:Lcom/android/tools/r8/internal/M90;

    goto :goto_0

    .line 13
    :cond_3
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y90;->h:Lcom/android/tools/r8/internal/M90;

    .line 14
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 15
    :cond_4
    iget v0, p1, Lcom/android/tools/r8/internal/Z90;->d:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 16
    iget v1, p1, Lcom/android/tools/r8/internal/Z90;->h:I

    .line 17
    iget v3, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 18
    iput v1, p0, Lcom/android/tools/r8/internal/Y90;->i:I

    :cond_5
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    .line 20
    iget v2, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y90;->j:Lcom/android/tools/r8/internal/M90;

    .line 21
    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v2, v3, :cond_6

    .line 22
    invoke-static {v2}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y90;->j:Lcom/android/tools/r8/internal/M90;

    goto :goto_1

    .line 23
    :cond_6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y90;->j:Lcom/android/tools/r8/internal/M90;

    .line 24
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 25
    :cond_7
    iget v0, p1, Lcom/android/tools/r8/internal/Z90;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 26
    iget v0, p1, Lcom/android/tools/r8/internal/Z90;->j:I

    .line 27
    iget v2, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    .line 28
    iput v0, p0, Lcom/android/tools/r8/internal/Y90;->k:I

    .line 29
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 31
    iget-object p1, p1, Lcom/android/tools/r8/internal/Z90;->c:Lcom/android/tools/r8/internal/l8;

    .line 32
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Z90;->m:Lcom/android/tools/r8/internal/Z90;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Z90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/Z90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Z90;-><init>(Lcom/android/tools/r8/internal/Y90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Y90;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/Y90;->f:I

    iput v2, v0, Lcom/android/tools/r8/internal/Z90;->e:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/Y90;->g:I

    iput v2, v0, Lcom/android/tools/r8/internal/Z90;->f:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/Y90;->h:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Lcom/android/tools/r8/internal/Y90;->i:I

    iput v2, v0, Lcom/android/tools/r8/internal/Z90;->h:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/Y90;->j:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Z90;->i:Lcom/android/tools/r8/internal/M90;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/Y90;->k:I

    iput v1, v0, Lcom/android/tools/r8/internal/Z90;->j:I

    iput v3, v0, Lcom/android/tools/r8/internal/Z90;->d:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Y90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Y90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y90;->c()Lcom/android/tools/r8/internal/Z90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Y90;->a(Lcom/android/tools/r8/internal/Z90;)Lcom/android/tools/r8/internal/Y90;

    move-result-object v0

    return-object v0
.end method
