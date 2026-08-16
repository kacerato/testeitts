.class public final Lcom/android/tools/r8/internal/Lk;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/io/Serializable;

.field public d:Ljava/io/Serializable;

.field public e:Lcom/android/tools/r8/internal/zR;

.field public f:Lcom/android/tools/r8/internal/TI;

.field public g:Lcom/android/tools/r8/internal/TI;

.field public h:Ljava/util/List;

.field public i:Lcom/android/tools/r8/internal/Af0;

.field public j:Ljava/util/List;

.field public k:Lcom/android/tools/r8/internal/Af0;

.field public l:Ljava/util/List;

.field public m:Lcom/android/tools/r8/internal/Af0;

.field public n:Ljava/util/List;

.field public o:Lcom/android/tools/r8/internal/Af0;

.field public p:Lcom/android/tools/r8/internal/Qk;

.field public q:Lcom/android/tools/r8/internal/Em0;

.field public r:Lcom/android/tools/r8/internal/sl;

.field public s:Lcom/android/tools/r8/internal/Em0;

.field public t:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->c:Ljava/io/Serializable;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->d:Ljava/io/Serializable;

    .line 4
    sget-object v1, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    .line 7
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    .line 8
    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    .line 9
    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    .line 10
    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->t:Ljava/io/Serializable;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lk;->c()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 14
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Lk;->c:Ljava/io/Serializable;

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/internal/Lk;->d:Ljava/io/Serializable;

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/android/tools/r8/internal/Lk;->t:Ljava/io/Serializable;

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lk;->c()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Lk;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Mk;->q:Lcom/android/tools/r8/internal/Kk;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/Kk;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Mk;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Lk;->a(Lcom/android/tools/r8/internal/Mk;)Lcom/android/tools/r8/internal/Lk;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 4
    check-cast p2, Lcom/android/tools/r8/internal/Mk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
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

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Lk;->a(Lcom/android/tools/r8/internal/Mk;)Lcom/android/tools/r8/internal/Lk;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Mk;)Lcom/android/tools/r8/internal/Lk;
    .locals 6

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->c:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->c:Ljava/io/Serializable;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 16
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->d:Ljava/io/Serializable;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->d:Ljava/io/Serializable;

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 19
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    .line 23
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    .line 24
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    goto :goto_0

    .line 25
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/xR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xR;-><init>(Lcom/android/tools/r8/internal/zR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    .line 27
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    .line 29
    iget-object v1, p1, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 32
    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    .line 36
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    .line 37
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    goto :goto_1

    .line 38
    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->mutableCopy(Lcom/android/tools/r8/internal/TI;)Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    .line 40
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    .line 42
    iget-object v1, p1, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    .line 43
    check-cast v0, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/DH;->addAll(Ljava/util/Collection;)Z

    .line 44
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 45
    :cond_8
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    .line 49
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    .line 50
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    goto :goto_2

    .line 51
    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_a

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->mutableCopy(Lcom/android/tools/r8/internal/TI;)Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    .line 53
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    .line 55
    iget-object v1, p1, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    .line 56
    check-cast v0, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/DH;->addAll(Ljava/util/Collection;)Z

    .line 57
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 59
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 62
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    .line 63
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    .line 64
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    goto :goto_3

    .line 65
    :cond_c
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_d

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    .line 67
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 68
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    .line 69
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    .line 70
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_5

    .line 72
    :cond_e
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 75
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 77
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 78
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 79
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 80
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    .line 81
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    .line 82
    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 83
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_f

    .line 84
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 85
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 87
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    goto :goto_4

    :cond_f
    move-object v3, v2

    .line 88
    :goto_4
    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    goto :goto_5

    .line 89
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    .line 90
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    .line 91
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 92
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_14

    .line 93
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 95
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    .line 98
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    goto :goto_6

    .line 99
    :cond_12
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_13

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    .line 101
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 102
    :cond_13
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    .line 103
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    :goto_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_8

    .line 106
    :cond_14
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    .line 107
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    .line 109
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 110
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 111
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    .line 112
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 113
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    .line 114
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    .line 115
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    .line 116
    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 117
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_15

    .line 118
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 119
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 120
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    .line 121
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    goto :goto_7

    :cond_15
    move-object v3, v2

    .line 122
    :goto_7
    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    goto :goto_8

    .line 123
    :cond_16
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    .line 124
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    .line 125
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 126
    :cond_17
    :goto_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1a

    .line 127
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 129
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 130
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    .line 131
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    .line 132
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    goto :goto_9

    .line 133
    :cond_18
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_19

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    .line 135
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 136
    :cond_19
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    .line 137
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    .line 138
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    :goto_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_b

    .line 140
    :cond_1a
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    .line 141
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 142
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    .line 143
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 145
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    .line 146
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 147
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    .line 148
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    .line 149
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    .line 150
    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 151
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_1b

    .line 152
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 153
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 154
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    .line 155
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    goto :goto_a

    :cond_1b
    move-object v3, v2

    .line 156
    :goto_a
    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    goto :goto_b

    .line 157
    :cond_1c
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    .line 158
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    .line 159
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 160
    :cond_1d
    :goto_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_20

    .line 161
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    .line 162
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 163
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 164
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    .line 165
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    .line 166
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    goto :goto_c

    .line 167
    :cond_1e
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1f

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    .line 169
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 170
    :cond_1f
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    .line 171
    iget-object v1, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    :goto_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_d

    .line 174
    :cond_20
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 176
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    .line 177
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 179
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    .line 180
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 181
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    .line 182
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    .line 183
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    .line 184
    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 185
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_21

    .line 186
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 187
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 188
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    .line 189
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    move-object v2, v3

    .line 190
    :cond_21
    iput-object v2, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    goto :goto_d

    .line 191
    :cond_22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    .line 192
    iget-object v1, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 194
    :cond_23
    :goto_d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Mk;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 195
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-nez v0, :cond_24

    .line 196
    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    .line 197
    :cond_24
    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_26

    .line 198
    iget v1, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->p:Lcom/android/tools/r8/internal/Qk;

    if-eqz v1, :cond_25

    .line 199
    sget-object v2, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    if-eq v1, v2, :cond_25

    .line 200
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Qk;->a()Lcom/android/tools/r8/internal/Ok;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;

    move-result-object v1

    .line 201
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ok;->d()Lcom/android/tools/r8/internal/Qk;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->p:Lcom/android/tools/r8/internal/Qk;

    goto :goto_e

    .line 202
    :cond_25
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->p:Lcom/android/tools/r8/internal/Qk;

    .line 203
    :goto_e
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_f

    .line 204
    :cond_26
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 205
    :goto_f
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 206
    :cond_27
    iget v0, p1, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2b

    .line 207
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    if-nez v0, :cond_28

    .line 208
    sget-object v0, Lcom/android/tools/r8/internal/sl;->d:Lcom/android/tools/r8/internal/sl;

    .line 209
    :cond_28
    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->s:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2a

    .line 210
    iget v1, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->r:Lcom/android/tools/r8/internal/sl;

    if-eqz v1, :cond_29

    .line 211
    sget-object v2, Lcom/android/tools/r8/internal/sl;->d:Lcom/android/tools/r8/internal/sl;

    if-eq v1, v2, :cond_29

    .line 212
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/sl;->a()Lcom/android/tools/r8/internal/ol;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/ol;->a(Lcom/android/tools/r8/internal/sl;)Lcom/android/tools/r8/internal/ol;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ol;->a(Lcom/android/tools/r8/internal/sl;)Lcom/android/tools/r8/internal/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ol;->b()Lcom/android/tools/r8/internal/sl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->r:Lcom/android/tools/r8/internal/sl;

    goto :goto_10

    .line 214
    :cond_29
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->r:Lcom/android/tools/r8/internal/sl;

    .line 215
    :goto_10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_11

    .line 216
    :cond_2a
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 217
    :goto_11
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 218
    :cond_2b
    iget v0, p1, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2c

    .line 219
    iget v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 220
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    .line 221
    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->t:Ljava/io/Serializable;

    .line 222
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 223
    :cond_2c
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lk;

    .line 225
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lk;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Mk;
    .locals 7

    new-instance v0, Lcom/android/tools/r8/internal/Mk;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Mk;-><init>(Lcom/android/tools/r8/internal/Lk;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/tools/r8/internal/Lk;->c:Ljava/io/Serializable;

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->c:Ljava/io/Serializable;

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v5, p0, Lcom/android/tools/r8/internal/Lk;->d:Ljava/io/Serializable;

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->d:Ljava/io/Serializable;

    iget v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v5}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    iget v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v5, v5, -0x5

    iput v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    :cond_2
    iget-object v5, p0, Lcom/android/tools/r8/internal/Lk;->e:Lcom/android/tools/r8/internal/zR;

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    iget v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    check-cast v6, Lcom/android/tools/r8/internal/s1;

    iput-boolean v3, v6, Lcom/android/tools/r8/internal/s1;->b:Z

    and-int/lit8 v5, v5, -0x9

    iput v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    :cond_3
    iget-object v5, p0, Lcom/android/tools/r8/internal/Lk;->f:Lcom/android/tools/r8/internal/TI;

    iput-object v5, v0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    iget v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    check-cast v6, Lcom/android/tools/r8/internal/s1;

    iput-boolean v3, v6, Lcom/android/tools/r8/internal/s1;->b:Z

    and-int/lit8 v3, v5, -0x11

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->g:Lcom/android/tools/r8/internal/TI;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v3, :cond_8

    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    :cond_7
    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v3, :cond_a

    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v3, :cond_c

    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    iget v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    :cond_b
    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    :goto_4
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->p:Lcom/android/tools/r8/internal/Qk;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    goto :goto_5

    :cond_d
    iput-boolean v4, v3, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Qk;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    :goto_5
    or-int/lit8 v2, v2, 0x4

    :cond_e
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->s:Lcom/android/tools/r8/internal/Em0;

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/tools/r8/internal/Lk;->r:Lcom/android/tools/r8/internal/sl;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    goto :goto_6

    :cond_f
    iput-boolean v4, v3, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/sl;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    :goto_6
    or-int/lit8 v2, v2, 0x8

    :cond_10
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_11

    or-int/lit8 v2, v2, 0x10

    :cond_11
    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->t:Ljava/io/Serializable;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    iput v2, v0, Lcom/android/tools/r8/internal/Mk;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lk;->b()Lcom/android/tools/r8/internal/Mk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Mk;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lk;->b()Lcom/android/tools/r8/internal/Mk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Mk;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lk;->b()Lcom/android/tools/r8/internal/Mk;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 8

    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_a

    new-instance v1, Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->p:Lcom/android/tools/r8/internal/Qk;

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Qk;

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v1, v0, v2, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->q:Lcom/android/tools/r8/internal/Em0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->p:Lcom/android/tools/r8/internal/Qk;

    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->s:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_d

    new-instance v1, Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lk;->r:Lcom/android/tools/r8/internal/sl;

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/tools/r8/internal/sl;->d:Lcom/android/tools/r8/internal/sl;

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/sl;

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v1, v0, v2, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Lk;->s:Lcom/android/tools/r8/internal/Em0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Lk;->r:Lcom/android/tools/r8/internal/sl;

    :cond_d
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Lk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->a:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->b:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Mk;

    const-class v2, Lcom/android/tools/r8/internal/Lk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hk;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hk;

    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hk;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_4
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/nk;

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/nk;

    :goto_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nk;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_7

    :cond_8
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jl;

    goto :goto_8

    :cond_9
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jl;

    :goto_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/jl;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_a

    :cond_c
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lk;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ek;

    goto :goto_b

    :cond_d
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ek;

    :goto_b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    iget v1, p0, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lk;->p:Lcom/android/tools/r8/internal/Qk;

    if-nez v1, :cond_11

    sget-object v1, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    goto :goto_c

    :cond_10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Qk;

    :cond_11
    :goto_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Qk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Lk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Lk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Mk;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Lk;->a(Lcom/android/tools/r8/internal/Mk;)Lcom/android/tools/r8/internal/Lk;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;Ljava/util/Map;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Lk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Lk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Mk;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Lk;->a(Lcom/android/tools/r8/internal/Mk;)Lcom/android/tools/r8/internal/Lk;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;Ljava/util/Map;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Lk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Lk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lk;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lk;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lk;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lk;

    return-object p1
.end method
