.class public Lcom/android/tools/r8/internal/jc;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/graph/M2;

.field public final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 2
    iput-object p3, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/jc;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 6
    iput-boolean p4, p0, Lcom/android/tools/r8/internal/jc;->l:Z

    return-void
.end method


# virtual methods
.method public final D()Lcom/android/tools/r8/internal/jc;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 31
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 32
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

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V
    .locals 4

    .line 34
    sget-boolean p3, Lcom/android/tools/r8/internal/jc;->m:Z

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    if-nez p3, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    if-nez p3, :cond_3

    .line 40
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p3, :cond_5

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    if-eq p1, p3, :cond_5

    .line 42
    instance-of p1, v0, Lcom/android/tools/r8/internal/Zd0;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 46
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected nullability of value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " defined by "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to be "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", but was "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "(context: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 4
    iget v4, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 5
    iget-object v5, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 6
    invoke-virtual {v5, v2, v4}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 7
    iget-object v4, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/jc;->b(I)Lcom/android/tools/r8/internal/Ln;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 9
    :cond_0
    iget v5, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 10
    iget-object v6, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v6, v4, v5}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/jc;->b(I)Lcom/android/tools/r8/internal/Ln;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/jc;->b(I)Lcom/android/tools/r8/internal/Ln;

    move-result-object v5

    const/16 v6, 0xf

    if-gt v4, v6, :cond_2

    if-gt v2, v6, :cond_2

    .line 13
    new-instance v6, Lcom/android/tools/r8/internal/Lq;

    invoke-direct {v6, v4, v2}, Lcom/android/tools/r8/internal/Lq;-><init>(II)V

    new-array v1, v1, [Lcom/android/tools/r8/internal/Np;

    aput-object v6, v1, v3

    aput-object v5, v1, v0

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;[Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 14
    :cond_2
    new-instance v6, Lcom/android/tools/r8/internal/Mq;

    invoke-direct {v6, v4, v2}, Lcom/android/tools/r8/internal/Mq;-><init>(II)V

    new-array v1, v1, [Lcom/android/tools/r8/internal/Np;

    aput-object v6, v1, v3

    aput-object v5, v1, v0

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;[Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 49
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/jc;->l:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_0

    const/16 v2, 0xe1

    goto :goto_0

    :cond_0
    const/16 v2, 0xc0

    .line 55
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 56
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/i9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 2

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/nJ;->i1:Z

    const/4 p4, 0x1

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p3

    if-eqz p3, :cond_1

    return p4

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p3

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-static {v0, p2, p3, v1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    :goto_0
    return p4

    .line 24
    :cond_4
    iget-object p2, p1, Lcom/android/tools/r8/graph/y;->J:Lcom/android/tools/r8/internal/i40;

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/i40;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p2

    if-nez p2, :cond_5

    return p4

    .line 26
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    .line 29
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    :goto_1
    return p4
.end method

.method public b(I)Lcom/android/tools/r8/internal/Ln;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Ln;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 3
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/jc;->l:Z

    .line 4
    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Ln;-><init>(ILcom/android/tools/r8/graph/M2;Z)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final t1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
