.class public final Lcom/android/tools/r8/internal/ak;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/io/Serializable;

.field public d:Ljava/util/List;

.field public e:Lcom/android/tools/r8/internal/Af0;

.field public f:Ljava/util/List;

.field public g:Lcom/android/tools/r8/internal/Af0;

.field public h:Ljava/util/List;

.field public i:Lcom/android/tools/r8/internal/Af0;

.field public j:Ljava/util/List;

.field public k:Lcom/android/tools/r8/internal/Af0;

.field public l:Ljava/util/List;

.field public m:Lcom/android/tools/r8/internal/Af0;

.field public n:Ljava/util/List;

.field public o:Lcom/android/tools/r8/internal/Af0;

.field public p:Lcom/android/tools/r8/internal/Tk;

.field public final q:Lcom/android/tools/r8/internal/Em0;

.field public r:Ljava/util/List;

.field public s:Lcom/android/tools/r8/internal/Af0;

.field public t:Lcom/android/tools/r8/internal/zR;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->c:Ljava/io/Serializable;

    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    .line 4
    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    .line 6
    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    .line 7
    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 8
    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    .line 9
    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    .line 10
    sget-object v2, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    .line 11
    sget-boolean v2, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v2, :cond_10

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/Af0;

    iget v5, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v2, v1, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_3

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/Af0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    .line 21
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_5

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/Af0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    .line 24
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    .line 26
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    .line 27
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_7

    .line 28
    new-instance v1, Lcom/android/tools/r8/internal/Af0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    move v5, v3

    .line 29
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    .line 31
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    .line 32
    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_9

    .line 33
    new-instance v1, Lcom/android/tools/r8/internal/Af0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_8

    move v5, v4

    goto :goto_4

    :cond_8
    move v5, v3

    .line 34
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    .line 36
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 37
    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_b

    .line 38
    new-instance v1, Lcom/android/tools/r8/internal/Af0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a

    move v5, v4

    goto :goto_5

    :cond_a
    move v5, v3

    .line 39
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v6

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v7

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    .line 41
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    .line 42
    :cond_b
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_e

    .line 43
    new-instance v2, Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_c

    .line 44
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    if-nez v1, :cond_d

    .line 45
    sget-object v1, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    goto :goto_6

    .line 46
    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Tk;

    .line 47
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {v2, v1, v5, v6}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->q:Lcom/android/tools/r8/internal/Em0;

    .line 49
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    .line 50
    :cond_e
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_10

    .line 51
    new-instance v1, Lcom/android/tools/r8/internal/Af0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    iget v5, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_f

    move v3, v4

    .line 52
    :cond_f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    .line 54
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    :cond_10
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 7

    .line 55
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 56
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->c:Ljava/io/Serializable;

    .line 57
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    .line 65
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_10

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {v0, p1, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    .line 70
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_3

    .line 72
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 73
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {p1, v0, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    .line 75
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_5

    .line 77
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    .line 78
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {p1, v0, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    .line 80
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    .line 81
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_7

    .line 82
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    .line 83
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {p1, v0, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    .line 85
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    .line 86
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_9

    .line 87
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_4

    :cond_8
    move v4, v1

    .line 88
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {p1, v0, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    .line 90
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 91
    :cond_9
    iget-object p1, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_b

    .line 92
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    .line 93
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v5

    .line 94
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v6

    invoke-direct {p1, v0, v4, v5, v6}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    .line 95
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    .line 96
    :cond_b
    iget-object p1, p0, Lcom/android/tools/r8/internal/ak;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_e

    .line 97
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_c

    .line 98
    iget-object p1, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    if-nez p1, :cond_d

    .line 99
    sget-object p1, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    goto :goto_6

    .line 100
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Tk;

    .line 101
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 102
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v0, p1, v4, v5}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->q:Lcom/android/tools/r8/internal/Em0;

    .line 103
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    .line 104
    :cond_e
    iget-object p1, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    if-nez p1, :cond_10

    .line 105
    new-instance p1, Lcom/android/tools/r8/internal/Af0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_f

    move v1, v2

    .line 106
    :cond_f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {p1, v0, v1, v2, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    .line 108
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    :cond_10
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ak;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/hk;->o:Lcom/android/tools/r8/internal/Zj;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/Zj;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/hk;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ak;->a(Lcom/android/tools/r8/internal/hk;)Lcom/android/tools/r8/internal/ak;

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
    check-cast p2, Lcom/android/tools/r8/internal/hk;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ak;->a(Lcom/android/tools/r8/internal/hk;)Lcom/android/tools/r8/internal/ak;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/hk;)Lcom/android/tools/r8/internal/ak;
    .locals 6

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/hk;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->c:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->c:Ljava/io/Serializable;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    goto :goto_0

    .line 21
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    .line 23
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    .line 25
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_2

    .line 28
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    .line 34
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 35
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    .line 36
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    .line 38
    iget v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 39
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_5

    .line 40
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    .line 43
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    goto :goto_1

    :cond_5
    move-object v3, v2

    .line 44
    :goto_1
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    goto :goto_2

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    .line 46
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    .line 47
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 48
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_a

    .line 49
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 52
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    .line 53
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    .line 54
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    goto :goto_3

    .line 55
    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_9

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    .line 57
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    .line 59
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_5

    .line 62
    :cond_a
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    .line 65
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    .line 68
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 69
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    .line 70
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    .line 71
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    .line 72
    iget v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 73
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_b

    .line 74
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    .line 77
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    goto :goto_4

    :cond_b
    move-object v3, v2

    .line 78
    :goto_4
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    goto :goto_5

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    .line 80
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    .line 81
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 82
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_10

    .line 83
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    .line 84
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 86
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    .line 87
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    .line 88
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    goto :goto_6

    .line 89
    :cond_e
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_f

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    .line 91
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 92
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    .line 93
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    :goto_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_8

    .line 96
    :cond_10
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    .line 99
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 101
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    .line 102
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 103
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    .line 104
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    .line 105
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    .line 106
    iget v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 107
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_11

    .line 108
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 110
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    .line 111
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    goto :goto_7

    :cond_11
    move-object v3, v2

    .line 112
    :goto_7
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    goto :goto_8

    .line 113
    :cond_12
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    .line 114
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    .line 115
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 116
    :cond_13
    :goto_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_16

    .line 117
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    .line 118
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 119
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 120
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    .line 121
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    .line 122
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    goto :goto_9

    .line 123
    :cond_14
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_15

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    .line 125
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 126
    :cond_15
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    .line 127
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    .line 128
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    :goto_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_b

    .line 130
    :cond_16
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 132
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    .line 133
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 134
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 135
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    .line 136
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 137
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    .line 138
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    .line 139
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    .line 140
    iget v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 141
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_17

    .line 142
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 143
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 144
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    .line 145
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    goto :goto_a

    :cond_17
    move-object v3, v2

    .line 146
    :goto_a
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    goto :goto_b

    .line 147
    :cond_18
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    .line 148
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    .line 149
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 150
    :cond_19
    :goto_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1c

    .line 151
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 153
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 154
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    .line 155
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 156
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    goto :goto_c

    .line 157
    :cond_1a
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1b

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 159
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 160
    :cond_1b
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 161
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    .line 162
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    :goto_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_e

    .line 164
    :cond_1c
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 166
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    .line 167
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 168
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 169
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    .line 170
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 171
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    .line 172
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    .line 173
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 174
    iget v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 175
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_1d

    .line 176
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 177
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 178
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    .line 179
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    goto :goto_d

    :cond_1d
    move-object v3, v2

    .line 180
    :goto_d
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    goto :goto_e

    .line 181
    :cond_1e
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    .line 182
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    .line 183
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 184
    :cond_1f
    :goto_e
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_22

    .line 185
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 187
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 188
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    .line 189
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    .line 190
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    goto :goto_f

    .line 191
    :cond_20
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_21

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    .line 193
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 194
    :cond_21
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    .line 195
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    .line 196
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    :goto_f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_11

    .line 198
    :cond_22
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    .line 199
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 200
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    .line 201
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 202
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 203
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    .line 204
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 205
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    .line 206
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    .line 207
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    .line 208
    iget v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 209
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_23

    .line 210
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 211
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 212
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    .line 213
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    goto :goto_10

    :cond_23
    move-object v3, v2

    .line 214
    :goto_10
    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    goto :goto_11

    .line 215
    :cond_24
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    .line 216
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    .line 217
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 218
    :cond_25
    :goto_11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hk;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 219
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-nez v0, :cond_26

    .line 220
    sget-object v0, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    .line 221
    :cond_26
    iget-object v3, p0, Lcom/android/tools/r8/internal/ak;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez v3, :cond_28

    .line 222
    iget v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    if-eqz v3, :cond_27

    .line 223
    sget-object v4, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    if-eq v3, v4, :cond_27

    .line 224
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Tk;->a()Lcom/android/tools/r8/internal/Sk;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/Sk;->a(Lcom/android/tools/r8/internal/Tk;)Lcom/android/tools/r8/internal/Sk;

    move-result-object v3

    .line 225
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/Sk;->a(Lcom/android/tools/r8/internal/Tk;)Lcom/android/tools/r8/internal/Sk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Sk;->d()Lcom/android/tools/r8/internal/Tk;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    goto :goto_12

    .line 226
    :cond_27
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    .line 227
    :goto_12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_13

    .line 228
    :cond_28
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 229
    :goto_13
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 230
    :cond_29
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_2c

    .line 231
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    .line 232
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 233
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 234
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    .line 235
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    .line 236
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    goto :goto_14

    .line 237
    :cond_2a
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2b

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    .line 239
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 240
    :cond_2b
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    .line 241
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    :goto_14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_15

    .line 244
    :cond_2c
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 246
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    .line 247
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 248
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 249
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    .line 250
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 251
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    .line 252
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    .line 253
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    .line 254
    iget v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 255
    sget-boolean v3, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v3, :cond_2d

    .line 256
    new-instance v3, Lcom/android/tools/r8/internal/Af0;

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v4

    .line 258
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    .line 259
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    move-object v2, v3

    .line 260
    :cond_2d
    iput-object v2, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    goto :goto_15

    .line 261
    :cond_2e
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    .line 262
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    .line 263
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 264
    :cond_2f
    :goto_15
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    .line 265
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 266
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 267
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    .line 268
    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    .line 269
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    goto :goto_16

    .line 270
    :cond_30
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_31

    .line 271
    new-instance v0, Lcom/android/tools/r8/internal/xR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xR;-><init>(Lcom/android/tools/r8/internal/zR;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    .line 272
    iget v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/tools/r8/internal/ak;->b:I

    .line 273
    :cond_31
    iget-object v0, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    .line 274
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    :goto_16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 277
    :cond_32
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ak;

    .line 279
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ak;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/hk;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/hk;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/hk;-><init>(Lcom/android/tools/r8/internal/ak;)V

    iget v1, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->c:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->c:Ljava/io/Serializable;

    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    :cond_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    :cond_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    :goto_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    :cond_7
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    :goto_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_a

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    :cond_9
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    goto :goto_5

    :cond_a
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    :goto_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_c

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    iget v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v4, v4, -0x41

    iput v4, p0, Lcom/android/tools/r8/internal/ak;->b:I

    :cond_b
    iget-object v4, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    goto :goto_6

    :cond_c
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    iput-object v1, v0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    goto :goto_7

    :cond_d
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Tk;

    iput-object v1, v0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    :goto_7
    or-int/lit8 v2, v2, 0x2

    :cond_e
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->s:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_10

    iget v1, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/android/tools/r8/internal/ak;->b:I

    :cond_f
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->r:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    goto :goto_8

    :cond_10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/hk;->k:Ljava/util/List;

    :goto_8
    iget v1, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/zR;->e()Lcom/android/tools/r8/internal/zR;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    iget v1, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/android/tools/r8/internal/ak;->b:I

    :cond_11
    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->t:Lcom/android/tools/r8/internal/zR;

    iput-object v1, v0, Lcom/android/tools/r8/internal/hk;->l:Lcom/android/tools/r8/internal/zR;

    iput v2, v0, Lcom/android/tools/r8/internal/hk;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ak;->b()Lcom/android/tools/r8/internal/hk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hk;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ak;->b()Lcom/android/tools/r8/internal/hk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hk;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ak;->b()Lcom/android/tools/r8/internal/hk;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ak;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->c:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->d:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/hk;

    const-class v2, Lcom/android/tools/r8/internal/ak;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->e:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ek;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ek;

    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_4
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->g:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ek;

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ek;

    :goto_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_7

    :cond_8
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hk;

    goto :goto_8

    :cond_9
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hk;

    :goto_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hk;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_a

    :cond_c
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->k:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/nk;

    goto :goto_b

    :cond_d
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/nk;

    :goto_b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nk;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    move v1, v0

    :goto_c
    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_d

    :cond_10
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_d
    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/dk;

    goto :goto_e

    :cond_11
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/dk;

    :goto_e
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dk;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    move v1, v0

    :goto_f
    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_10

    :cond_14
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_10
    if-ge v1, v2, :cond_17

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->o:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/tools/r8/internal/ak;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/dl;

    goto :goto_11

    :cond_15
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/dl;

    :goto_11
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dl;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_17
    iget v1, p0, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->q:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/tools/r8/internal/ak;->p:Lcom/android/tools/r8/internal/Tk;

    if-nez v1, :cond_19

    sget-object v1, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    goto :goto_12

    :cond_18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Tk;

    :cond_19
    :goto_12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Tk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ak;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ak;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/hk;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/hk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ak;->a(Lcom/android/tools/r8/internal/hk;)Lcom/android/tools/r8/internal/ak;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ak;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ak;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/hk;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/hk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ak;->a(Lcom/android/tools/r8/internal/hk;)Lcom/android/tools/r8/internal/ak;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ak;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/ak;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ak;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ak;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

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

    check-cast p1, Lcom/android/tools/r8/internal/ak;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ak;

    return-object p1
.end method
