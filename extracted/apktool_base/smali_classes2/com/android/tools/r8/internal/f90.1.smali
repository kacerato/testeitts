.class public final Lcom/android/tools/r8/internal/f90;
.super Lcom/android/tools/r8/internal/Ry;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ry;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 3

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/g90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/g90;-><init>(Lcom/android/tools/r8/internal/f90;)V

    .line 13
    iget v1, p0, Lcom/android/tools/r8/internal/f90;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/f90;->f:I

    .line 15
    iput v1, v0, Lcom/android/tools/r8/internal/g90;->e:I

    .line 16
    iput v2, v0, Lcom/android/tools/r8/internal/g90;->d:I

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/g90;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 19
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 2

    const/4 v0, 0x0

    .line 20
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/g90;->i:Lcom/android/tools/r8/internal/e90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/g90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/g90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/f90;->a(Lcom/android/tools/r8/internal/g90;)Lcom/android/tools/r8/internal/f90;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 24
    check-cast p2, Lcom/android/tools/r8/internal/g90;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/f90;->a(Lcom/android/tools/r8/internal/g90;)Lcom/android/tools/r8/internal/f90;

    .line 27
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 11
    check-cast p1, Lcom/android/tools/r8/internal/g90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/f90;->a(Lcom/android/tools/r8/internal/g90;)Lcom/android/tools/r8/internal/f90;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/g90;)Lcom/android/tools/r8/internal/f90;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/g90;->h:Lcom/android/tools/r8/internal/g90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/g90;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p1, Lcom/android/tools/r8/internal/g90;->e:I

    .line 4
    iget v2, p0, Lcom/android/tools/r8/internal/f90;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/f90;->e:I

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/f90;->f:I

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ry;->a(Lcom/android/tools/r8/internal/Ty;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/g90;->c:Lcom/android/tools/r8/internal/l8;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Yy;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/g90;->h:Lcom/android/tools/r8/internal/g90;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/f90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f90;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/g90;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/g90;-><init>(Lcom/android/tools/r8/internal/f90;)V

    iget v2, p0, Lcom/android/tools/r8/internal/f90;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/f90;->f:I

    iput v2, v1, Lcom/android/tools/r8/internal/g90;->e:I

    iput v3, v1, Lcom/android/tools/r8/internal/g90;->d:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/f90;->a(Lcom/android/tools/r8/internal/g90;)Lcom/android/tools/r8/internal/f90;

    move-result-object v0

    return-object v0
.end method
