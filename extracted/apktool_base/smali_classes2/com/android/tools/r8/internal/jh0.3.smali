.class public final Lcom/android/tools/r8/internal/jh0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/android/tools/r8/internal/Di0;

.field public e:Ljava/util/List;

.field public f:Lcom/android/tools/r8/internal/Af0;

.field public g:Ljava/util/List;

.field public h:Lcom/android/tools/r8/internal/Af0;

.field public i:Lcom/android/tools/r8/internal/ii0;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->c:Ljava/lang/String;

    .line 3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/kh0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    .line 10
    iput-object v1, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v2, v3

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    .line 15
    iput-object v1, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 7

    .line 16
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 17
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/jh0;->c:Ljava/lang/String;

    .line 18
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/android/tools/r8/internal/kh0;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 22
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    .line 25
    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_3

    .line 27
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    move v1, v2

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {p1, v3, v1, v2, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    .line 30
    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jh0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/kh0;->i:Lcom/android/tools/r8/internal/ih0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/kh0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/kh0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/kh0;)Lcom/android/tools/r8/internal/jh0;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 5
    check-cast p2, Lcom/android/tools/r8/internal/kh0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/kh0;)Lcom/android/tools/r8/internal/jh0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/kh0;)Lcom/android/tools/r8/internal/jh0;
    .locals 6

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/kh0;->h:Lcom/android/tools/r8/internal/kh0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/android/tools/r8/internal/kh0;->b:Ljava/lang/String;

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 17
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->c:Lcom/android/tools/r8/internal/Di0;

    if-eqz v0, :cond_4

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->d:Lcom/android/tools/r8/internal/Di0;

    if-eqz v1, :cond_3

    .line 19
    sget-object v2, Lcom/android/tools/r8/internal/Di0;->e:Lcom/android/tools/r8/internal/Di0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Di0;->b()Lcom/android/tools/r8/internal/zi0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/zi0;->a(Lcom/android/tools/r8/internal/Di0;)Lcom/android/tools/r8/internal/zi0;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zi0;->a(Lcom/android/tools/r8/internal/Di0;)Lcom/android/tools/r8/internal/zi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zi0;->b()Lcom/android/tools/r8/internal/Di0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->d:Lcom/android/tools/r8/internal/Di0;

    goto :goto_1

    .line 21
    :cond_3
    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->d:Lcom/android/tools/r8/internal/Di0;

    .line 22
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    .line 27
    iget v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    goto :goto_2

    .line 28
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    .line 30
    iget v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/kh0;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_4

    .line 33
    :cond_7
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    .line 35
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    .line 38
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 39
    iput-object v2, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    .line 40
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    .line 41
    iget v3, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    .line 42
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_8

    .line 43
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    .line 46
    iput-object v2, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    goto :goto_3

    :cond_8
    move-object v0, v2

    .line 48
    :goto_3
    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    goto :goto_4

    .line 49
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/kh0;->d:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 50
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_d

    .line 51
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    .line 54
    iget v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    goto :goto_5

    .line 55
    :cond_b
    iget v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_c

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    .line 57
    iget v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    .line 58
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    iget-object v1, p1, Lcom/android/tools/r8/internal/kh0;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_6

    .line 60
    :cond_d
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    .line 62
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    .line 65
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 66
    iput-object v2, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    .line 67
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    .line 68
    iget v3, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    .line 69
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_e

    .line 70
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 72
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    .line 73
    iput-object v2, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    .line 74
    iget-object v2, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    .line 75
    :cond_e
    iput-object v2, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    goto :goto_6

    .line 76
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/kh0;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 77
    :cond_10
    :goto_6
    iget-object v0, p1, Lcom/android/tools/r8/internal/kh0;->f:Lcom/android/tools/r8/internal/ii0;

    if-eqz v0, :cond_12

    .line 78
    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->i:Lcom/android/tools/r8/internal/ii0;

    if-eqz v1, :cond_11

    .line 79
    sget-object v2, Lcom/android/tools/r8/internal/ii0;->e:Lcom/android/tools/r8/internal/ii0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ii0;->a()Lcom/android/tools/r8/internal/hi0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/hi0;->a(Lcom/android/tools/r8/internal/ii0;)Lcom/android/tools/r8/internal/hi0;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/hi0;->a(Lcom/android/tools/r8/internal/ii0;)Lcom/android/tools/r8/internal/hi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hi0;->b()Lcom/android/tools/r8/internal/ii0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->i:Lcom/android/tools/r8/internal/ii0;

    goto :goto_7

    .line 81
    :cond_11
    iput-object v0, p0, Lcom/android/tools/r8/internal/jh0;->i:Lcom/android/tools/r8/internal/ii0;

    .line 82
    :goto_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 83
    :cond_12
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jh0;

    .line 85
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jh0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/kh0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/kh0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kh0;-><init>(Lcom/android/tools/r8/internal/jh0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/kh0;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->d:Lcom/android/tools/r8/internal/Di0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/kh0;->c:Lcom/android/tools/r8/internal/Di0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->f:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->e:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/kh0;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/kh0;->d:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->h:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/tools/r8/internal/jh0;->b:I

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->g:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/kh0;->e:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/kh0;->e:Ljava/util/List;

    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/jh0;->i:Lcom/android/tools/r8/internal/ii0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/kh0;->f:Lcom/android/tools/r8/internal/ii0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jh0;->b()Lcom/android/tools/r8/internal/kh0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kh0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final build()Lcom/android/tools/r8/internal/kW;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jh0;->b()Lcom/android/tools/r8/internal/kh0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kh0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jh0;->b()Lcom/android/tools/r8/internal/kh0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/kh0;->h:Lcom/android/tools/r8/internal/kh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/kh0;->h:Lcom/android/tools/r8/internal/kh0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->O0:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->P0:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/kh0;

    const-class v2, Lcom/android/tools/r8/internal/jh0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/kh0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/kh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/kh0;)Lcom/android/tools/r8/internal/jh0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/kh0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/kh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/kh0;)Lcom/android/tools/r8/internal/jh0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/jh0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jh0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jh0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jh0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jh0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/jh0;

    return-object p1
.end method
