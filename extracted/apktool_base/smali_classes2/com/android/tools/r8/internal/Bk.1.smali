.class public final Lcom/android/tools/r8/internal/Bk;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Ljava/io/Serializable;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/io/Serializable;

.field public h:Ljava/io/Serializable;

.field public i:Ljava/io/Serializable;

.field public j:I

.field public k:Ljava/io/Serializable;

.field public l:Lcom/android/tools/r8/internal/Jk;

.field public final m:Lcom/android/tools/r8/internal/Em0;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/internal/Bk;->c:Ljava/io/Serializable;

    const/4 v2, 0x1

    .line 3
    iput v2, p0, Lcom/android/tools/r8/internal/Bk;->e:I

    .line 4
    iput v2, p0, Lcom/android/tools/r8/internal/Bk;->f:I

    .line 5
    iput-object v1, p0, Lcom/android/tools/r8/internal/Bk;->g:Ljava/io/Serializable;

    .line 6
    iput-object v1, p0, Lcom/android/tools/r8/internal/Bk;->h:Ljava/io/Serializable;

    .line 7
    iput-object v1, p0, Lcom/android/tools/r8/internal/Bk;->i:Ljava/io/Serializable;

    .line 8
    iput-object v1, p0, Lcom/android/tools/r8/internal/Bk;->k:Ljava/io/Serializable;

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bk;->m:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_2

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v1, :cond_1

    .line 13
    sget-object v1, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Jk;

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v3

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/Bk;->m:Lcom/android/tools/r8/internal/Em0;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 3

    .line 18
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 19
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bk;->c:Ljava/io/Serializable;

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->e:I

    .line 21
    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->f:I

    .line 22
    iput-object p1, p0, Lcom/android/tools/r8/internal/Bk;->g:Ljava/io/Serializable;

    .line 23
    iput-object p1, p0, Lcom/android/tools/r8/internal/Bk;->h:Ljava/io/Serializable;

    .line 24
    iput-object p1, p0, Lcom/android/tools/r8/internal/Bk;->i:Ljava/io/Serializable;

    .line 25
    iput-object p1, p0, Lcom/android/tools/r8/internal/Bk;->k:Ljava/io/Serializable;

    .line 26
    sget-boolean p1, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_2

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/internal/Bk;->m:Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_2

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/Em0;

    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez p1, :cond_1

    .line 30
    sget-object p1, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Jk;

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Em0;-><init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->m:Lcom/android/tools/r8/internal/Em0;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Bk;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Ek;->p:Lcom/android/tools/r8/internal/Ak;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/Ak;->parsePartialFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ek;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Bk;->a(Lcom/android/tools/r8/internal/Ek;)Lcom/android/tools/r8/internal/Bk;

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
    check-cast p2, Lcom/android/tools/r8/internal/Ek;
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
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Bk;->a(Lcom/android/tools/r8/internal/Ek;)Lcom/android/tools/r8/internal/Bk;

    .line 7
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ek;)Lcom/android/tools/r8/internal/Bk;
    .locals 3

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/Ek;->o:Lcom/android/tools/r8/internal/Ek;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ek;->c:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->c:Ljava/io/Serializable;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    :cond_1
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 15
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 16
    iget v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->d:I

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 19
    :cond_2
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 20
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->e:I

    .line 21
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v0

    if-nez v0, :cond_3

    .line 22
    sget-object v0, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    .line 23
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 24
    iget v0, v0, Lcom/android/tools/r8/internal/Ck;->b:I

    .line 25
    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->e:I

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 27
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->f:I

    .line 29
    invoke-static {v0}, Lcom/android/tools/r8/internal/Dk;->a(I)Lcom/android/tools/r8/internal/Dk;

    move-result-object v0

    if-nez v0, :cond_5

    .line 30
    sget-object v0, Lcom/android/tools/r8/internal/Dk;->c:Lcom/android/tools/r8/internal/Dk;

    .line 31
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 32
    iget v0, v0, Lcom/android/tools/r8/internal/Dk;->b:I

    .line 33
    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->f:I

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 35
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 37
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ek;->g:Ljava/io/Serializable;

    .line 38
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->g:Ljava/io/Serializable;

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 40
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    iget v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 42
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ek;->h:Ljava/io/Serializable;

    .line 43
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->h:Ljava/io/Serializable;

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 45
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 46
    iget v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 47
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ek;->i:Ljava/io/Serializable;

    .line 48
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->i:Ljava/io/Serializable;

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 50
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->j:I

    .line 52
    iget v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 53
    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->j:I

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 55
    :cond_a
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    .line 56
    iget v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 57
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    .line 58
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->k:Ljava/io/Serializable;

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 60
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v0, :cond_c

    .line 62
    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    .line 63
    :cond_c
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bk;->m:Lcom/android/tools/r8/internal/Em0;

    if-nez v1, :cond_e

    .line 64
    iget v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    if-eqz v1, :cond_d

    .line 65
    sget-object v2, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    if-eq v1, v2, :cond_d

    .line 66
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Jk;->b()Lcom/android/tools/r8/internal/Gk;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Gk;->d()Lcom/android/tools/r8/internal/Jk;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    goto :goto_0

    .line 68
    :cond_d
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 70
    :cond_e
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Em0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 71
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 72
    :cond_f
    iget v0, p1, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    .line 73
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Ek;->m:Z

    .line 74
    iget v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    .line 75
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Bk;->n:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 77
    :cond_10
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Bk;

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bk;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Ek;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/Ek;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ek;-><init>(Lcom/android/tools/r8/internal/Bk;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/Bk;->c:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Ek;->c:Ljava/io/Serializable;

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/tools/r8/internal/Bk;->d:I

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->d:I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget v4, p0, Lcom/android/tools/r8/internal/Bk;->e:I

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->e:I

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget v4, p0, Lcom/android/tools/r8/internal/Bk;->f:I

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->f:I

    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_4

    or-int/lit8 v2, v2, 0x10

    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/Bk;->g:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Ek;->g:Ljava/io/Serializable;

    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_5

    or-int/lit8 v2, v2, 0x20

    :cond_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/Bk;->h:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Ek;->h:Ljava/io/Serializable;

    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_6

    or-int/lit8 v2, v2, 0x40

    :cond_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/Bk;->i:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Ek;->i:Ljava/io/Serializable;

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/tools/r8/internal/Bk;->j:I

    iput v4, v0, Lcom/android/tools/r8/internal/Ek;->j:I

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_8

    or-int/lit16 v2, v2, 0x100

    :cond_8
    iget-object v4, p0, Lcom/android/tools/r8/internal/Bk;->k:Ljava/io/Serializable;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/tools/r8/internal/Bk;->m:Lcom/android/tools/r8/internal/Em0;

    if-nez v4, :cond_9

    iget-object v3, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    goto :goto_1

    :cond_9
    iput-boolean v3, v4, Lcom/android/tools/r8/internal/Em0;->d:Z

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Jk;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    :goto_1
    or-int/lit16 v2, v2, 0x200

    :cond_a
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Bk;->n:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Ek;->m:Z

    or-int/lit16 v2, v2, 0x400

    :cond_b
    iput v2, v0, Lcom/android/tools/r8/internal/Ek;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bk;->b()Lcom/android/tools/r8/internal/Ek;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bk;->b()Lcom/android/tools/r8/internal/Ek;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bk;->b()Lcom/android/tools/r8/internal/Ek;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Bk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ek;->o:Lcom/android/tools/r8/internal/Ek;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Ek;->o:Lcom/android/tools/r8/internal/Ek;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zl;->k:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->l:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Ek;

    const-class v2, Lcom/android/tools/r8/internal/Bk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Bk;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bk;->m:Lcom/android/tools/r8/internal/Em0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bk;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Em0;->d()Lcom/android/tools/r8/internal/K0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Jk;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Bk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Bk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Ek;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Bk;->a(Lcom/android/tools/r8/internal/Ek;)Lcom/android/tools/r8/internal/Bk;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Bk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Bk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Ek;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Bk;->a(Lcom/android/tools/r8/internal/Ek;)Lcom/android/tools/r8/internal/Bk;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Bk;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Bk;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Bk;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bk;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

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

    check-cast p1, Lcom/android/tools/r8/internal/Bk;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Bk;

    return-object p1
.end method
