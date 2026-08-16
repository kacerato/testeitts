.class public final Lcom/android/tools/r8/internal/I90;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:I

.field public d:Lcom/android/tools/r8/internal/J90;

.field public e:Lcom/android/tools/r8/internal/M90;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/J90;->e:Lcom/android/tools/r8/internal/J90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/I90;->d:Lcom/android/tools/r8/internal/J90;

    sget-object v0, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/I90;->e:Lcom/android/tools/r8/internal/M90;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/K90;)Lcom/android/tools/r8/internal/I90;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/K90;->i:Lcom/android/tools/r8/internal/K90;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/K90;->d:Lcom/android/tools/r8/internal/J90;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v2, p0, Lcom/android/tools/r8/internal/I90;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/I90;->c:I

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/I90;->d:Lcom/android/tools/r8/internal/J90;

    .line 7
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    .line 9
    iget v2, p0, Lcom/android/tools/r8/internal/I90;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/I90;->e:Lcom/android/tools/r8/internal/M90;

    .line 10
    sget-object v3, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    if-eq v2, v3, :cond_2

    .line 11
    invoke-static {v2}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/I90;->e:Lcom/android/tools/r8/internal/M90;

    goto :goto_0

    .line 12
    :cond_2
    iput-object v0, p0, Lcom/android/tools/r8/internal/I90;->e:Lcom/android/tools/r8/internal/M90;

    .line 13
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/I90;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/I90;->c:I

    .line 14
    :cond_3
    iget v0, p1, Lcom/android/tools/r8/internal/K90;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 15
    iget v0, p1, Lcom/android/tools/r8/internal/K90;->f:I

    .line 16
    iget v2, p0, Lcom/android/tools/r8/internal/I90;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/I90;->c:I

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/I90;->f:I

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/K90;->b:Lcom/android/tools/r8/internal/l8;

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/I90;->c()Lcom/android/tools/r8/internal/K90;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/K90;->isInitialized()Z

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
    sget-object v1, Lcom/android/tools/r8/internal/K90;->j:Lcom/android/tools/r8/internal/H90;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v1, Lcom/android/tools/r8/internal/K90;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/K90;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/I90;->a(Lcom/android/tools/r8/internal/K90;)Lcom/android/tools/r8/internal/I90;

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
    check-cast p2, Lcom/android/tools/r8/internal/K90;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/I90;->a(Lcom/android/tools/r8/internal/K90;)Lcom/android/tools/r8/internal/I90;

    .line 34
    :cond_0
    throw p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Yy;)Lcom/android/tools/r8/internal/Qy;
    .locals 0

    .line 22
    check-cast p1, Lcom/android/tools/r8/internal/K90;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I90;->a(Lcom/android/tools/r8/internal/K90;)Lcom/android/tools/r8/internal/I90;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/K90;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/K90;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/K90;-><init>(Lcom/android/tools/r8/internal/I90;)V

    iget v1, p0, Lcom/android/tools/r8/internal/I90;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/I90;->d:Lcom/android/tools/r8/internal/J90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/K90;->d:Lcom/android/tools/r8/internal/J90;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/I90;->e:Lcom/android/tools/r8/internal/M90;

    iput-object v2, v0, Lcom/android/tools/r8/internal/K90;->e:Lcom/android/tools/r8/internal/M90;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/I90;->f:I

    iput v1, v0, Lcom/android/tools/r8/internal/K90;->f:I

    iput v3, v0, Lcom/android/tools/r8/internal/K90;->c:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/I90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/I90;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/I90;->c()Lcom/android/tools/r8/internal/K90;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/I90;->a(Lcom/android/tools/r8/internal/K90;)Lcom/android/tools/r8/internal/I90;

    move-result-object v0

    return-object v0
.end method
