.class public final Lcom/android/tools/r8/internal/ZL;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/O0;
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZL;->c()Lcom/android/tools/r8/internal/aM;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aM;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 17
    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/Qy;
    .locals 1

    const/4 p2, 0x0

    .line 18
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/internal/aM;->i:Lcom/android/tools/r8/internal/YL;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/aM;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/aM;-><init>(Lcom/android/tools/r8/internal/Ae;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ZL;->a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 22
    check-cast v0, Lcom/android/tools/r8/internal/aM;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ZL;->a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;

    .line 25
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 13
    check-cast p1, Lcom/android/tools/r8/internal/aM;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ZL;->a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/aM;->h:Lcom/android/tools/r8/internal/aM;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/aM;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lcom/android/tools/r8/internal/aM;->d:I

    .line 4
    iget v3, p0, Lcom/android/tools/r8/internal/ZL;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/ZL;->c:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/ZL;->d:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p1, Lcom/android/tools/r8/internal/aM;->e:I

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/ZL;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/ZL;->c:I

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/ZL;->e:I

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/aM;->b:Lcom/android/tools/r8/internal/l8;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l8;->a(Lcom/android/tools/r8/internal/l8;)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/aM;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/aM;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/aM;-><init>(Lcom/android/tools/r8/internal/ZL;)V

    iget v1, p0, Lcom/android/tools/r8/internal/ZL;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/ZL;->d:I

    iput v2, v0, Lcom/android/tools/r8/internal/aM;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/ZL;->e:I

    iput v1, v0, Lcom/android/tools/r8/internal/aM;->e:I

    iput v3, v0, Lcom/android/tools/r8/internal/aM;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/ZL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ZL;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZL;->c()Lcom/android/tools/r8/internal/aM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ZL;->a(Lcom/android/tools/r8/internal/aM;)Lcom/android/tools/r8/internal/ZL;

    move-result-object v0

    return-object v0
.end method
