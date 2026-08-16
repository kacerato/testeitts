.class public final Lcom/android/tools/r8/internal/Ok;
.super Lcom/android/tools/r8/internal/hz;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:Ljava/io/Serializable;

.field public e:Ljava/io/Serializable;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Ljava/io/Serializable;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Ljava/io/Serializable;

.field public r:Ljava/io/Serializable;

.field public s:Ljava/io/Serializable;

.field public t:Ljava/io/Serializable;

.field public u:Ljava/io/Serializable;

.field public v:Ljava/io/Serializable;

.field public w:Ljava/io/Serializable;

.field public x:Ljava/util/List;

.field public y:Lcom/android/tools/r8/internal/Af0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/hz;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->d:Ljava/io/Serializable;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->e:Ljava/io/Serializable;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->i:I

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->j:Ljava/io/Serializable;

    .line 6
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/Ok;->p:Z

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->q:Ljava/io/Serializable;

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->r:Ljava/io/Serializable;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->s:Ljava/io/Serializable;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->t:Ljava/io/Serializable;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->u:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->v:Ljava/io/Serializable;

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->w:Ljava/io/Serializable;

    .line 14
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ok;->e()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/hz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 18
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->d:Ljava/io/Serializable;

    .line 19
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->e:Ljava/io/Serializable;

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->i:I

    .line 21
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->j:Ljava/io/Serializable;

    .line 22
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->p:Z

    .line 23
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->q:Ljava/io/Serializable;

    .line 24
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->r:Ljava/io/Serializable;

    .line 25
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->s:Ljava/io/Serializable;

    .line 26
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->t:Ljava/io/Serializable;

    .line 27
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->u:Ljava/io/Serializable;

    .line 28
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->v:Ljava/io/Serializable;

    .line 29
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->w:Ljava/io/Serializable;

    .line 30
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    .line 31
    sget-boolean p1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ok;->e()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ok;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Qk;->A:Lcom/android/tools/r8/internal/Nk;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/Nk;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Qk;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;

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
    check-cast p2, Lcom/android/tools/r8/internal/Qk;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;
    .locals 3

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->d:Ljava/io/Serializable;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 16
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->e:Ljava/io/Serializable;

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 19
    :cond_2
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 20
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->f:Z

    .line 21
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 22
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->f:Z

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 24
    :cond_3
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 25
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->g:Z

    .line 26
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 27
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->g:Z

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 29
    :cond_4
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 30
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->h:Z

    .line 31
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 32
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->h:Z

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 34
    :cond_5
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 35
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->i:I

    .line 36
    invoke-static {v0}, Lcom/android/tools/r8/internal/Pk;->a(I)Lcom/android/tools/r8/internal/Pk;

    move-result-object v0

    if-nez v0, :cond_6

    .line 37
    sget-object v0, Lcom/android/tools/r8/internal/Pk;->c:Lcom/android/tools/r8/internal/Pk;

    .line 38
    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 39
    iget v0, v0, Lcom/android/tools/r8/internal/Pk;->b:I

    .line 40
    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->i:I

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 42
    :cond_7
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 43
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    .line 45
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->j:Ljava/io/Serializable;

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 47
    :cond_8
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 48
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->k:Z

    .line 49
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 50
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->k:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 52
    :cond_9
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 53
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->l:Z

    .line 54
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 55
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->l:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 57
    :cond_a
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 58
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->m:Z

    .line 59
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 60
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->m:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 62
    :cond_b
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 63
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->n:Z

    .line 64
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 65
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->n:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 67
    :cond_c
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_d

    .line 68
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->o:Z

    .line 69
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 70
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->o:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 72
    :cond_d
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    .line 73
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Qk;->p:Z

    .line 74
    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 75
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ok;->p:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 77
    :cond_e
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    .line 78
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 79
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    .line 80
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->q:Ljava/io/Serializable;

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 82
    :cond_f
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_10

    .line 83
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 84
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    .line 85
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->r:Ljava/io/Serializable;

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 87
    :cond_10
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 88
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 89
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    .line 90
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->s:Ljava/io/Serializable;

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 92
    :cond_11
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 93
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 94
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    .line 95
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->t:Ljava/io/Serializable;

    .line 96
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 97
    :cond_12
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 98
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 99
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    .line 100
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->u:Ljava/io/Serializable;

    .line 101
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 102
    :cond_13
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    .line 103
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 104
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    .line 105
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->v:Ljava/io/Serializable;

    .line 106
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 107
    :cond_14
    iget v0, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 108
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 109
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    .line 110
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->w:Ljava/io/Serializable;

    .line 111
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 112
    :cond_15
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    const v1, -0x100001

    if-nez v0, :cond_18

    .line 113
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 115
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 116
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    .line 117
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    .line 118
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    goto :goto_0

    .line 119
    :cond_16
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    .line 121
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 122
    :cond_17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    .line 123
    iget-object v1, p1, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 126
    :cond_18
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 128
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    .line 129
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 130
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 131
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    const/4 v2, 0x0

    .line 132
    iput-object v2, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 133
    iput-object v2, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    .line 134
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    .line 135
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    .line 136
    iget v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    .line 137
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_19

    .line 138
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ok;->e()Lcom/android/tools/r8/internal/Af0;

    move-result-object v2

    :cond_19
    iput-object v2, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    goto :goto_1

    .line 139
    :cond_1a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    .line 140
    iget-object v1, p1, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 142
    :cond_1b
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/iz;)V

    .line 143
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ok;

    .line 145
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/hz;->a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ok;

    return-object p1
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ok;->d()Lcom/android/tools/r8/internal/Qk;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Qk;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ok;->d()Lcom/android/tools/r8/internal/Qk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Qk;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ok;->d()Lcom/android/tools/r8/internal/Qk;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ok;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/Qk;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/Qk;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Qk;-><init>(Lcom/android/tools/r8/internal/Ok;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->d:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->e:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->f:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->f:Z

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->g:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->g:Z

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->h:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->h:Z

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    :cond_5
    iget v3, p0, Lcom/android/tools/r8/internal/Ok;->i:I

    iput v3, v0, Lcom/android/tools/r8/internal/Qk;->i:I

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x40

    :cond_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->j:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->k:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->k:Z

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->l:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->l:Z

    or-int/lit16 v2, v2, 0x100

    :cond_8
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->m:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->m:Z

    or-int/lit16 v2, v2, 0x200

    :cond_9
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->n:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->n:Z

    or-int/lit16 v2, v2, 0x400

    :cond_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->o:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->o:Z

    or-int/lit16 v2, v2, 0x800

    :cond_b
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_c

    or-int/lit16 v2, v2, 0x1000

    :cond_c
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Ok;->p:Z

    iput-boolean v3, v0, Lcom/android/tools/r8/internal/Qk;->p:Z

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    or-int/lit16 v2, v2, 0x2000

    :cond_d
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->q:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    or-int/lit16 v2, v2, 0x4000

    :cond_e
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->r:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    const v3, 0x8000

    and-int v4, v1, v3

    if-eqz v4, :cond_f

    or-int/2addr v2, v3

    :cond_f
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->s:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    const/high16 v3, 0x10000

    and-int v4, v1, v3

    if-eqz v4, :cond_10

    or-int/2addr v2, v3

    :cond_10
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->t:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    const/high16 v3, 0x20000

    and-int v4, v1, v3

    if-eqz v4, :cond_11

    or-int/2addr v2, v3

    :cond_11
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->u:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    const/high16 v3, 0x40000

    and-int v4, v1, v3

    if-eqz v4, :cond_12

    or-int/2addr v2, v3

    :cond_12
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok;->v:Ljava/io/Serializable;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    or-int/2addr v2, v3

    :cond_13
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ok;->w:Ljava/io/Serializable;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_15

    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    const v3, -0x100001

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    :cond_14
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    goto :goto_1

    :cond_15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    :goto_1
    iput v2, v0, Lcom/android/tools/r8/internal/Qk;->c:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/Af0;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Ok;->c:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->y:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->z:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Qk;

    const-class v2, Lcom/android/tools/r8/internal/Ok;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok;->y:Lcom/android/tools/r8/internal/Af0;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yl;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yl;

    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yl;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hz;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ok;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Qk;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Qk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ok;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Qk;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Qk;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Ok;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ok;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/hz;->b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ok;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ok;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ok;

    return-object p1
.end method
