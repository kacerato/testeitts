.class public final Lcom/android/tools/r8/internal/Pg;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public A:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pg;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->e:I

    .line 4
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->k:I

    .line 5
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->l:I

    .line 6
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->m:I

    .line 7
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->n:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->o:I

    .line 9
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->p:I

    .line 10
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->q:I

    .line 11
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->r:I

    .line 12
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->t:I

    .line 13
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->u:I

    .line 14
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->v:I

    .line 15
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->w:I

    .line 16
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->x:I

    .line 17
    iput v1, p0, Lcom/android/tools/r8/internal/Pg;->z:I

    .line 18
    iput-object v0, p0, Lcom/android/tools/r8/internal/Pg;->A:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 21
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pg;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->e:I

    .line 23
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->k:I

    .line 24
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->l:I

    .line 25
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->m:I

    .line 26
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->n:I

    .line 27
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->o:I

    .line 28
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->p:I

    .line 29
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->q:I

    .line 30
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->r:I

    .line 31
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->t:I

    .line 32
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->u:I

    .line 33
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->v:I

    .line 34
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->w:I

    .line 35
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->x:I

    .line 36
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->z:I

    .line 37
    iput-object p1, p0, Lcom/android/tools/r8/internal/Pg;->A:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Pg;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/fh;->D:Lcom/android/tools/r8/internal/Og;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/fh;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/fh;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;

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
    check-cast p2, Lcom/android/tools/r8/internal/fh;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->b:I

    if-eqz v0, :cond_1

    .line 11
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->b:I

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 13
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->c:I

    if-eqz v0, :cond_2

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->c:I

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 16
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pg;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 23
    :cond_4
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->e:I

    if-eqz v0, :cond_5

    .line 24
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->e:I

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 26
    :cond_5
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->f:I

    if-eqz v0, :cond_6

    .line 27
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->f:I

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 29
    :cond_6
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->g:I

    if-eqz v0, :cond_7

    .line 30
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->g:I

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 32
    :cond_7
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->h:I

    if-eqz v0, :cond_8

    .line 33
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->h:I

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 35
    :cond_8
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->i:I

    if-eqz v0, :cond_9

    .line 36
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->i:I

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 38
    :cond_9
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->j:I

    if-eqz v0, :cond_a

    .line 39
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->j:I

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 41
    :cond_a
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->k:I

    if-eqz v0, :cond_b

    .line 42
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->k:I

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 44
    :cond_b
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->l:I

    if-eqz v0, :cond_c

    .line 45
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->l:I

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 47
    :cond_c
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->m:I

    if-eqz v0, :cond_d

    .line 48
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->m:I

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 50
    :cond_d
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->n:I

    if-eqz v0, :cond_e

    .line 51
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->n:I

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 53
    :cond_e
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->o:I

    if-eqz v0, :cond_f

    .line 54
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->o:I

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 56
    :cond_f
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->p:I

    if-eqz v0, :cond_10

    .line 57
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->p:I

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 59
    :cond_10
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->q:I

    if-eqz v0, :cond_11

    .line 60
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->q:I

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 62
    :cond_11
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->r:I

    if-eqz v0, :cond_12

    .line 63
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->r:I

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 65
    :cond_12
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->s:I

    if-eqz v0, :cond_13

    .line 66
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->s:I

    .line 67
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 68
    :cond_13
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->t:I

    if-eqz v0, :cond_14

    .line 69
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->t:I

    .line 70
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 71
    :cond_14
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->u:I

    if-eqz v0, :cond_15

    .line 72
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->u:I

    .line 73
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 74
    :cond_15
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->v:I

    if-eqz v0, :cond_16

    .line 75
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->v:I

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 77
    :cond_16
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->w:I

    if-eqz v0, :cond_17

    .line 78
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->w:I

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 80
    :cond_17
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->x:I

    if-eqz v0, :cond_18

    .line 81
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->x:I

    .line 82
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 83
    :cond_18
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->y:I

    if-eqz v0, :cond_19

    .line 84
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->y:I

    .line 85
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 86
    :cond_19
    iget v0, p1, Lcom/android/tools/r8/internal/fh;->z:I

    if-eqz v0, :cond_1a

    .line 87
    iput v0, p0, Lcom/android/tools/r8/internal/Pg;->z:I

    .line 88
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 89
    :cond_1a
    iget-object v0, p1, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    if-eqz v0, :cond_1b

    goto :goto_1

    .line 90
    :cond_1b
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    .line 91
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    .line 92
    iput-object v0, p1, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    .line 93
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 94
    iget-object v0, p1, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pg;->A:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 96
    :cond_1c
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Pg;

    .line 98
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Pg;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/fh;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/fh;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/fh;-><init>(Lcom/android/tools/r8/internal/Pg;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->b:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->c:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pg;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->e:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->e:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->f:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->f:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->g:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->g:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->h:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->h:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->i:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->i:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->j:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->k:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->k:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->l:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->l:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->m:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->m:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->n:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->n:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->o:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->o:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->p:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->p:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->q:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->q:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->r:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->r:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->s:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->s:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->t:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->t:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->u:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->u:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->v:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->v:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->w:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->w:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->x:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->x:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->y:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->y:I

    iget v1, p0, Lcom/android/tools/r8/internal/Pg;->z:I

    iput v1, v0, Lcom/android/tools/r8/internal/fh;->z:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pg;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pg;->b()Lcom/android/tools/r8/internal/fh;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fh;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pg;->b()Lcom/android/tools/r8/internal/fh;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fh;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pg;->b()Lcom/android/tools/r8/internal/fh;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Pg;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/gh;->a:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/gh;->b:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/fh;

    const-class v2, Lcom/android/tools/r8/internal/Pg;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Pg;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/fh;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/fh;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Pg;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/fh;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/fh;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Pg;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Pg;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Pg;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Pg;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Pg;

    return-object p1
.end method
