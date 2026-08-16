.class public final Lcom/android/tools/r8/internal/jh;
.super Lcom/android/tools/r8/internal/lh;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final l:Lcom/android/tools/r8/graph/M2;

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lh;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/jh;->n:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/jh;->m:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/jh;)Lcom/android/tools/r8/internal/jh;
    .locals 2

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/internal/jh;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 31
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/jh;

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    return-object v0
.end method


# virtual methods
.method public final F()Lcom/android/tools/r8/internal/jh;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 5
    iget-object p3, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-ne p3, p2, :cond_6

    goto :goto_1

    .line 10
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/jh;->n:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 12
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 13
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-static {p3, p2, v0, v1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/G1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Am0;

    move-result-object p1

    return-object p1

    .line 18
    :cond_6
    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 44
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/pu0;->a:Z

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v1, v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 42
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 35
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 36
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 37
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 38
    new-instance v1, Lcom/android/tools/r8/internal/go;

    iget-object v2, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 39
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/jh;->m:Z

    .line 40
    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/go;-><init>(ILcom/android/tools/r8/graph/M2;Z)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 3
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/jh;->m:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/16 v1, 0xe2

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 3

    .line 48
    new-instance v0, Lcom/android/tools/r8/internal/t9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    .line 49
    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 50
    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 2

    .line 19
    iget-object p3, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 21
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    return v0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p4

    const/4 v1, 0x1

    if-nez p4, :cond_2

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p3, p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 24
    :cond_2
    sget-boolean p4, Lcom/android/tools/r8/internal/jh;->n:Z

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p4

    .line 26
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 27
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-static {p3, p2, p4, p1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/jh;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/jh;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ConstClass has no register arguments."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
